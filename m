Return-Path: <devicetree+bounces-325061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzioB7GaU2rKcAMAu9opvQ
	(envelope-from <devicetree+bounces-325061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:46:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC28744D9E
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:46:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=quora.org header.s=google header.b=kzr7Fioa;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325061-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325061-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 173F73004927
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 13:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAD93AFCE1;
	Sun, 12 Jul 2026 13:46:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE373ACA6A
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 13:46:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783863983; cv=none; b=TCcuHcA+3MRY+NOpMpjL3bQWbYIOCvOMIvl8h2+fkE6XeNV8rMa3bPyLMFvcaY9y+THmqw1Zpm+rDPphoYGgyTXl7EP9rRt4GrC/EguvoWBL95lE/Zur+0+eA0sihpGOlUG7ke17qJJ7x9Zy++SxrzI4A+IpOk2hmpP6p8TgISA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783863983; c=relaxed/simple;
	bh=87hn5TFUDcNPqNEFDrMHeJsAgwkmV6iykor7Fs/0wnM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lh1dZiJhF8FtTLY3LpY4/5Iy9w3KtYLYJ0Q/kTSMgK16fwNHjOQbOQUWU0EuGpfs0GSH6QiZ5+qOZ+xg3dUhsE7p073PJoGQDgtSqHBK6yCex4N7hoO0LdyL1LfL9zLaGROlUrzd2sbk6pUlW2X8tNxazcqK846/hjqdh98xpJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=quora.org; spf=pass smtp.mailfrom=quora.org; dkim=pass (1024-bit key) header.d=quora.org header.i=@quora.org header.b=kzr7Fioa; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-38a0c7e841fso2726719a91.2
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 06:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quora.org; s=google; t=1783863981; x=1784468781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eIM+uNh/QyNlbPgrqlOmJt4o8sZ8tvceUtl7h0dqrqk=;
        b=kzr7FioafEpNOkSGKDqXWf3Ql3KSTZMloHCfPu7aWKKUMro4cDIZj+CCPwteZKGDGZ
         1b248MameRptuTRQz21WcDRJWG5BiqCpcBemy9H0B3jw6YtZQ/jI12l4z/rjypv+NcfU
         bobcpFuRvL0tt191my4jF1bsG33vxLSvcqpZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783863981; x=1784468781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eIM+uNh/QyNlbPgrqlOmJt4o8sZ8tvceUtl7h0dqrqk=;
        b=sEWnj8Dbe3wJtpWMeriPllyGG5DkQIsF2O1kbrIEVyXhfYfi8Dx0kZsOsnYAKwu7SI
         fOvhns5HOUFrQ4knmQBIAqf+EeAzzUTvKrs59vRDFprzXYICWTlcfK7vOVwGGEVGQvIU
         tfiBJxiqFaO0XE2pEwEPJiOSd5c67iBaTZSZ6xrKva1oGX+Jcm1C6bysJZ/ImCHo0t3Q
         /7rbcagG6tx9lfTEbG+bHXNfF9IM6FWOVUl0GngqDT0W3GYb/uQ/U/T9YAWOR8fqQMq1
         WniBDPn4n/dBishUptpXPaqWqzdZYVjsz8OPtYdkD0b1FDN1Qqhs38MRr1LP3zK7DJJh
         O4Hg==
X-Forwarded-Encrypted: i=1; AHgh+RpjymLnra0UqG5vTIxl9cm4Gaf3A9NZ5uaL+aTAAnmIMO5m8QfZYqBrfWYUZaFVHZMGyFmMZzCYwmcd@vger.kernel.org
X-Gm-Message-State: AOJu0YyGmUVEnMQo9Cer2uhlwRI36Kskd8XL4x6DeiCbZeqr2zZZvtD+
	Evgy+kVV23VxpfAp1lBcB2p0rUL9KpakC0/nf5VAriICMjJSsx6a6I8zNW7TlOEP1tE3dWl9kBk
	inTTu++TEjg==
X-Gm-Gg: AfdE7cnHHPcmRaOhHr0zYbTrBVQAYqa6Ix5WzTq7BTSn3YtrhM2zdmrshFkBopoAg7N
	dSx1u5Z+E2mATzo60JDrsGmmFkm+Nu2KlK+7UrdCyYGmP2f1YHt3Jo7wUkMnFJIet4rwUlnOX2U
	LaSX59SJ3ud4+oo3cgYvsE22CqiLT9rVHsCDNMAm0NIf673GfsijtLaKbDcqxUtoi8yDQKk+Dkr
	o/b9wi/TVf3XNWjUdwT20TapzEcmYcY62VW80xZ73FWXMgVxBv1D3a6qR6dukoFTN0PYfgVd0Rf
	+mafRxsxk9M38bx0FeI7oTGlNOcDJ6F5QXQjapTXM3LOvqHJvLwMFO8jUx5z0l+YIuf23+h3i/R
	mlMCTn0+v7gnQH3r2V6VhiP+amSrhJhW49XmGPXC53synO0IYSSE2b1aZS4lA/4hLl4HKj6axXj
	wEkZ8ciRFjHuSRoQ0Y/9ruUsmFrK8pp5hMpGE8lG3p/AkAhS7zEQb4Xp10rTT5UnJ4+67Z5UH6g
	qGhf1Rw+JqFuSMpDOoP02U/S355zWP4E1oRxF1kC77mMbYg9TQsC+xwhhp0Mpr3cU8XvZoLmTpG
	YpREpjRRdfB/O1Z6qFSy0/Ly87ByTZVEX8WEFnxwu1OOSn24TMpLyw==
X-Received: by 2002:a17:90b:4f81:b0:387:e0db:3faa with SMTP id 98e67ed59e1d1-38dc7775133mr5507488a91.35.1783863981052;
        Sun, 12 Jul 2026 06:46:21 -0700 (PDT)
Received: from aegis ([2001:fd8:4d03:6b00:edd2:3bb4:3b99:6291])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38d11b82d32sm2122434a91.0.2026.07.12.06.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 06:46:20 -0700 (PDT)
From: Daniel J Blueman <daniel@quora.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	"Bjorn Andersson" <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	"Sibi Sankar" <sibi.sankar@oss.qualcomm.com>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Hans de Goede" <hansg@kernel.org>,
	"Randy Dunlap" <rdunlap@infradead.org>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	linux-kernel@vger.kernel.org,
	Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Akhil P Oommen <akhilpo@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
	Daniel J Blueman <daniel@quora.org>
Subject: [PATCH v4 RESEND 2/2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add Embedded Controller node
Date: Sun, 12 Jul 2026 21:45:56 +0800
Message-ID: <20260712134601.99191-2-daniel@quora.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260712134601.99191-1-daniel@quora.org>
References: <20260712134601.99191-1-daniel@quora.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[quora.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325061-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:andersson@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:sibi.sankar@oss.qualcomm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hansg@kernel.org,m:rdunlap@infradead.org,m:bryan.odonoghue@linaro.org,m:linux-kernel@vger.kernel.org,m:anvesh.p@oss.qualcomm.com,m:maccraft123mc@gmail.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:dmitry.baryshkov@oss.qualcomm.com,m:akhilpo@oss.qualcomm.com,m:abel.vesa@oss.qualcomm.com,m:gaurav.kohli@oss.qualcomm.com,m:daniel@quora.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[quora.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,oss.qualcomm.com,kernel.org,infradead.org,linaro.org,gmail.com,quora.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@quora.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[quora.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,quora.org:from_mime,quora.org:email,quora.org:mid,quora.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CC28744D9E

The Lenovo Slim7x uses the same Embedded Controller as the Qualcomm Hamoa
X1 Customer Reference Device. Use the lenovo,yoga-slim7x-ec compatible
for fan control, thermal sensor and suspend behaviour.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Daniel J Blueman <daniel@quora.org>
---
v4:
- add reviews
v3:
- use lenovo,yoga-slim7x-ec compatible (introduced by patch 1)
v2:
- corrected DT compatible node

 .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index beb1475d7fa0..1ee2a2296129 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -951,6 +951,22 @@ retimer_ss0_con_sbu_out: endpoint {
 	};
 };
 
+&i2c5 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	embedded-controller@76 {
+		compatible = "lenovo,yoga-slim7x-ec", "qcom,hamoa-crd-ec";
+		reg = <0x76>;
+
+		interrupts-extended = <&tlmm 66 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&ec_int_n_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c7 {
 	clock-frequency = <400000>;
 
@@ -1352,6 +1368,12 @@ &tlmm {
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
 
+	ec_int_n_default: ec-int-n-state {
+		pins = "gpio66";
+		function = "gpio";
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";
-- 
2.53.0


