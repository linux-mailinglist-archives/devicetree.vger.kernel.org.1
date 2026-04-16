Return-Path: <devicetree+bounces-287928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJjgDufn4GnhnAAAu9opvQ
	(envelope-from <devicetree+bounces-287928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:45:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A53C540F13C
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 15:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7AAA6304334E
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 13:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE2DB3CBE91;
	Thu, 16 Apr 2026 13:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GBLDYpXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574DA3CE494
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 13:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776347074; cv=none; b=tvf9eVI5wrRqgIOw8rpQUSStiXYzlxk5tcHgvMCbWX/NPr4m4BIrf9wjyWrwXw26V0g60ghZ/3/mgiqLAPH4FlVEhRYOeW1EYKb6ic2Ar1euF+HfyZLWRj2tpfJnsxe5nee9bxnWUCIsotU5jROJGdUtAeFQMTzuCwWtf1MQRiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776347074; c=relaxed/simple;
	bh=m0hAwjUa4hKV/coo6hpUGbx9jDVDQYsKSjHk22/b9Gw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cDGOi4mnQHkJ7ccspkk8m324UrZwL8g4u+BDEGILIlYCc16eL6yZH6XL1XjHAFMSJLk638l6rU6kthFpEgt+/nTtcjeKwY2pJ59UDepHld4+vSEfr5RLqZKK9fu30HK4w31LMaLcl6SDd2Np+nJ3/Sh2WuFhbNu5Tt9fS+7yAB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GBLDYpXh; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-79ab3e26cceso78586347b3.3
        for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 06:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776347064; x=1776951864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2d2nbf2g+hlQZgCrTOLd5o3o7R6PUXkz/sJenAfYET8=;
        b=GBLDYpXhhJoiGJxK64/GVAB6bg2YQ5czccTCjtFQ+PqiAjsMOTNxfrrBf5vEUFwdqh
         oyk8IyexRFbC1L1wdn8rXdFrKGKGGADcNk4fWyTF8dr4KToC0r5ynQqUIERiRw1qNOxU
         F4DmoeJMAnCqR0xe6oCnNOBD5oIoTSTAtoSUh9yG4XwReuPpG50wD3pTtrdmn3dq5wMo
         jJ6l0fBlfcc+LPmjoW27GXnkMlFPsOAPinwdFgoXbbGvxYDJ2mOl2TsDkS/kA4BfD92C
         tCfJ6IrjB8hdAd74xXMNSxS7NVl5Rc94OQZM7lTazILZGcN67FWuUk4grDmMl3iftqr4
         OVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776347064; x=1776951864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2d2nbf2g+hlQZgCrTOLd5o3o7R6PUXkz/sJenAfYET8=;
        b=bSIL3AwuvGTWU7so6byA0JuN95Fg+YCmehAg0E9sUauwb+D0QjHmsgPPnWs86BABd6
         Jd3X0gKBHmD2MkBOspqkqHpR6BiJb2alOvgQc3CewGqYEL65TNifWonr+fpIgJ51oClw
         SZwvChkrTtrd2ZzMd+PhJVrHtjY9epteVb6QzQJso3J0zm3aaJTSWlGAkwtpJY/PWgHZ
         skG2BIPDRqBKDNTDAtow4Z+z4u4WIkIPAtIc1mPEsBAltWbB0g9IFiitSIYO8WwzxSBL
         0DWAtpEeEjlPPxhQJxPbbDy7NyjVMZBA5K073aWSHh5ZHhAPxkfZL8DpgJMq483UpO72
         PdtA==
X-Forwarded-Encrypted: i=1; AFNElJ97fwG144JCj+ihiPH8tIJLETHEBwjpuXRHTpspY//zxveAZlgOcUbCwcsxLH9VUvorMc/eTTYAiH3I@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk1ZquX8w2Gy3UsnTFx4JvJgxYNko+a2zQQDCicfi1QOD7+OrD
	AQFSSJrKl99zWstmC2lV/XFza0Kh2nZzGrZDp/lyAhCoN2swS1wOTTnA
X-Gm-Gg: AeBDieswDl/V9pb3Je7ajO0thj7Jj0pzdK/huqKW32kV8TDlkycX+vvyJAUcl+ni7Uj
	313VJzkyMlKmrlGhVsXrT42YZesvdiPKhckoLY66f9Z1FFY28Pfqd5GhAuWGBWZ9m7wKirMdiA6
	1tY8X/QmKNf5q/BnZFAGpyzWlp8QnAJak6n307L/nZoQ6yhR5emoxTAsZsk05QPJCT0ha9q3Mds
	h+hUiSLNTjDUyAfZeTHX0QYfFo3zD29hF0ljHoq8D5QrPAStcNvl2RUyXE2ICW8Z8jcnuBGKIt+
	5MgZtTxW9/5UwESDemmZRyMJ79eHAsxDpMRn8ixfmlh9JMGwG8amjYDPJxGq7NcNit0d9HPSLGt
	1DaMs+GqBTMEolJlblI/Wb+BnxTbfwrypidszJGA1N0R9rU6dF4UtCZClwjKE5c9vE9wkXel+Da
	1MlPNAPpUdVUuCboCd7nVqlQ5SAw==
X-Received: by 2002:a05:690c:10d:b0:7b5:b474:e988 with SMTP id 00721157ae682-7b5b475118dmr110507387b3.50.1776347064060;
        Thu, 16 Apr 2026 06:44:24 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7b76931854esm23363737b3.37.2026.04.16.06.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 06:44:23 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 16 Apr 2026 16:43:51 +0300
Subject: [PATCH RFC 04/10] arm64: dts: qcom: msm8939: Add venus node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260416-msm8939-venus-rfc-v1-4-a09fcf2c23df@gmail.com>
References: <20260416-msm8939-venus-rfc-v1-0-a09fcf2c23df@gmail.com>
In-Reply-To: <20260416-msm8939-venus-rfc-v1-0-a09fcf2c23df@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[apitzsch.eu:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A53C540F13C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: André Apitzsch <git@apitzsch.eu>

Add DT entries for the msm8939 venus encoder/decoder.

Signed-off-by: André Apitzsch <git@apitzsch.eu>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index d4d7b0c9206c..b7cfd289d31c 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -1627,6 +1627,30 @@ opp-19200000 {
 			};
 		};
 
+		venus: video-codec@1d00000 {
+			compatible = "qcom,msm8939-venus";
+			reg = <0x01d00000 0xff000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gcc GCC_VENUS0_VCODEC0_CLK>,
+				 <&gcc GCC_VENUS0_AHB_CLK>,
+				 <&gcc GCC_VENUS0_AXI_CLK>;
+			clock-names = "core", "iface", "bus";
+			power-domains = <&gcc VENUS_GDSC>;
+			iommus = <&apps_iommu 5>;
+			memory-region = <&venus_mem>;
+			status = "disabled";
+
+			video-decoder {
+				compatible = "venus-decoder";
+				clocks = <&gcc GCC_VENUS0_CORE0_VCODEC0_CLK>,
+					 <&gcc GCC_VENUS0_CORE1_VCODEC0_CLK>;
+				clock-names = "core0", "core1";
+				power-domains = <&gcc VENUS_CORE0_GDSC>,
+						<&gcc VENUS_CORE1_GDSC>;
+				power-domain-names = "core0", "core1";
+			};
+		};
+
 		apps_iommu: iommu@1ef0000 {
 			compatible = "qcom,msm8916-iommu", "qcom,msm-iommu-v1";
 			reg = <0x01ef0000 0x3000>;

-- 
2.53.0


