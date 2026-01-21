Return-Path: <devicetree+bounces-257963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIG6BVLZcGnCaQAAu9opvQ
	(envelope-from <devicetree+bounces-257963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:49:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD8957E7D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 14:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4BE2350E00B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78258494A00;
	Wed, 21 Jan 2026 13:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lwiFNn8u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA10048C8CD
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 13:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769002002; cv=none; b=m+xQgFY7rhLZgtaJILqpNpbgysDCJZWzWqM90TwE9cKS8k7720g7Yi7V/CDFZccuGrpP/XstF7jWf/9p75ng1vtzbbU7Hlxqhj5XihqQVjiP5tSpCP3ZIRCqGdaigdotjORPMODp8kerW5p3EaBogr7WIms+/f9wD8hsRI1G/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769002002; c=relaxed/simple;
	bh=hB2PWZM4ZB4CYZFskv7vZ7lEVdcGMkMbujOg9c56v/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EjAmNca5XVtG7YSehtLtTiodwFqpROF5mv67WzBrtWNQUL1GUbEPCYmSOZDpHko7im9IBq1wElEhCaiwMOGd/EaxlEOyJ18arHzB/M2Cz8okKgFS1ZCzh4dPQlM8xzjm2qQ3xluHHNuEF7ZfZ0GXMyyQvyvZSd1DsSoaxOpIqtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lwiFNn8u; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-29efd139227so43294005ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769002000; x=1769606800; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R+7aTGNuxDFTgmCknBnDaH+B7WOs4xXCLJbz/Zl7coA=;
        b=lwiFNn8uC+rfRIsxEnP6L0qpRgKk1Vc+OVSZFlFiUBkiWgTwKC0vvFfLn99HjRZOEl
         F3r3KnoXSXbcy0w9wCdvnCUpnQL1n/XHxECmn76zgGVCOjh89gyswjn0Y+i6w8XSQuEh
         GMt3K82Kw1nlwwNR7YBfc+3DI2xdAGUoi7DLbBB+Ty1ToC0orD3mufsdHHMR/Nbbnp6g
         NmsvCIZLeQUakTPApk1lJw9kHKR0XgOtaPOPwudrBK39JS06hBfs/LHvdUSB2n8Dt3Eb
         3s+RA5zTfUMwCKLyXkjfETG5zWZnKjsgMwywpCZ6bQ19JXhgu0AhcnGyq+QjvgNNhJ1e
         MbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769002000; x=1769606800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R+7aTGNuxDFTgmCknBnDaH+B7WOs4xXCLJbz/Zl7coA=;
        b=i1MS4Y4jFm4cmlau7/pF8k9izmt5e/2ogin+a8WjhmxSrvCCnknixppSo/T3pocjLS
         cXYkTXuSD8TRbTE8tj5UKnUJ3b2bKP2N2IWOVaF6C/Y3amPMFm3gq41yKEgy/VAjgqf1
         uhaqUgYPIkY+hxmBbrZke6zqPTAd9TH6EK9kDtdjx8CCRI8xwa/jblWpAKah6WhtTITe
         gYFaH2x0YtuQLT7hDWAzx8u/mQTkrrqsF0OvcYeWpVDm1+nvUHbGfzOiz+nYHL2N6RQY
         0IA//qCGTRFp0D81e3QRKsRJpDfa0XWRUVChAe2+etCFniZG52KCCJCdwXAXPThzaXq0
         xEqg==
X-Forwarded-Encrypted: i=1; AJvYcCUk7a5RAtnC58o+2Nm3MiDuSTsKM8yEa1QJjwPLTToE7429rrfS4Kw/K4tuPFUM5/HUmexoq2+phIAi@vger.kernel.org
X-Gm-Message-State: AOJu0YxktPdjEQcgLmOc5WxBaVfumRsb5EBeWiZEmjUaeAVQXWa6TWx6
	55gsjXA2q/jifIITgn31hTI4kbnDRbFC09XB9zlLSkNKQzL4a0g9M7vT
X-Gm-Gg: AZuq6aKwThjBYXNL/yAnTou9egov3jMAFj3AsKFIvhhcyFEjkBW8ovZHyxgpN9vLFHD
	xzcNojbU7seB13SWHd4gcUBaQl3UdnmzuzZLct8MJerH9eMCW7m0Tqk3HgkKWxq1Xi5lB/FkXhc
	cahsI9+yiDYh5B+v3tqsgmqXisUZCcGl8Hfvz7Cnbc1mabTQMOafDfu80LjRN54xsdZfZXenLYz
	qdhEHd28droH+YZsk7newKTq2GiI1I0R5ryD4ubeXz+mimrJ0rkYzWmdxk67UohAwOsIr4Fep09
	eCwyfUhoFeb73nw83Wq6iZSrE7ZQINuUc6g5lGRJPOCtAXNaU0tdejMk6pu/mu1qEAA0aAhGxnU
	ixKHgoVquTu/9VfDs0zvqiOtCl8CVdADU5mx5RRbhuYwRzJzIXc9lu8M8aIaqrKc3HwxfgKEawo
	ZBNe5ve7rsjx3SQ0ZB
X-Received: by 2002:a17:902:f745:b0:2a7:9163:8e68 with SMTP id d9443c01a7336-2a7916393e4mr31219985ad.6.1769002000008;
        Wed, 21 Jan 2026 05:26:40 -0800 (PST)
Received: from [192.168.0.101] ([45.113.101.30])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7194164dfsm151487235ad.88.2026.01.21.05.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 05:26:39 -0800 (PST)
From: Biswapriyo Nath <nathbappai@gmail.com>
Date: Wed, 21 Jan 2026 13:26:19 +0000
Subject: [PATCH v2 3/5] arm64: dts: qcom: sm6125: Add debug UART node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260121-xiaomi-ginkgo-features-v2-3-fb3ee94922d0@gmail.com>
References: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
In-Reply-To: <20260121-xiaomi-ginkgo-features-v2-0-fb3ee94922d0@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Biswapriyo Nath <nathbappai@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769001984; l=1390;
 i=nathbappai@gmail.com; s=20260118; h=from:subject:message-id;
 bh=hB2PWZM4ZB4CYZFskv7vZ7lEVdcGMkMbujOg9c56v/I=;
 b=+tNfMlVu/60v1/8jW5BzCD87Jr+udO9JBnfv1+at5mgstF0y01P/XnjTm2D/jC+ZQZOKWxtXQ
 CNMWoZ8Q7QIA4QyH+6lk30XL2gRk//hJ9pIY3ZMNOH2n58HjwHir+DH
X-Developer-Key: i=nathbappai@gmail.com; a=ed25519;
 pk=slmb/9yXbet+KTiT3EYLCp0p0MEOYa3EdjUXP+HXfjg=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257963-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nathbappai@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,4a90000:email,0.21.92.192:email]
X-Rspamd-Queue-Id: 7FD8957E7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

qup0 on sm6125 has 6 SEs and SE4 is used as debug uart. The uart node
and the associated pinctrl are added here.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Biswapriyo Nath <nathbappai@gmail.com>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index e60d4d74c..0540fb865 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -661,6 +661,13 @@ qup_spi9_sleep: qup-spi9-sleep-state {
 				drive-strength = <6>;
 				bias-disable;
 			};
+
+			qup_uart4_default: qup-uart4-default-state {
+				pins = "gpio16", "gpio17";
+				function = "qup04";
+				drive-strength = <2>;
+				bias-disable;
+			};
 		};
 
 		gcc: clock-controller@1400000 {
@@ -985,6 +992,17 @@ i2c4: i2c@4a90000 {
 				#size-cells = <0>;
 				status = "disabled";
 			};
+
+			uart4: serial@4a90000 {
+				compatible = "qcom,geni-debug-uart";
+				reg = <0x04a90000 0x4000>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S4_CLK>;
+				clock-names = "se";
+				interrupts = <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-0 = <&qup_uart4_default>;
+				pinctrl-names = "default";
+				status = "disabled";
+			};
 		};
 
 		gpi_dma1: dma-controller@4c00000 {

-- 
2.52.0


