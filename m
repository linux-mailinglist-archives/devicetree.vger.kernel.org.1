Return-Path: <devicetree+bounces-269079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN6PBys4oWkbrQQAu9opvQ
	(envelope-from <devicetree+bounces-269079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:22:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 822C41B3310
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4664B3070951
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A26368965;
	Fri, 27 Feb 2026 06:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fWWaMz83"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2810332607
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772173351; cv=none; b=cXIEPOQP5XS/ZMawZuimivU7YBMZ6QV661pZez+jvKs0SZTIcCer2XmqSQ/LQV3/g7mFzQROxN46GlGH/RfP2ERVTarblzUzL21+jtyPCfUMpI3NPjmHLG2ntBhj04nse1tyjVvQGU2zBBLM7i03Nuwt3pCs3V3kIasQLNlLuws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772173351; c=relaxed/simple;
	bh=gNOuJ460SFNkmJpVXZXHfL9zScGnWSGktr92RCyUGPo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YuBNsze8voR4zUONOp3ddMzBfiBIPM4vg0vKM2xnDbBqKp2a3ckQobgysSALM3lSX6+nd6+yUS/Beu+llG2r6ABKbxMskMbKR85mE+qepzpNaWQIwe0qefuDKGuvpk960p32Mo+MEhulBJrQhW46Sl0Rtg97BrnsvASZBJnzX9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fWWaMz83; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b935a74b7c2so209470366b.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 22:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772173348; x=1772778148; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G5LPcgnHDezYmAmQJ8ddEK0GxF+9IPAjtDeRxnNjo3E=;
        b=fWWaMz83DlUm5pfyKyq1xA2ikGyDoF8m8uIzut7P7bzurlEOvo0EbCqCrssLTFWXIx
         f4a4yurlPeXhCu5jm1tOCtgaJZH6AJ4kdsuhCO7jXnP1Np2Ccs+uumdis5BoGo1N1hB1
         2aBFRz7U/NPbms6t9D5K8E1W4/FK13UaPdNtlBk6F7EJ1p5GLIqW8hFVpHSqhgDpcRyi
         12MrXDiPHasT2arpa/Bta7yJXLOobM7Bi85vINrrH8D0cbt4167MYmOP/Grw1scb5yNl
         688jX7Vra3sVjtm4Pg77cq84fG/xAGyx9H8eEUALDTXXcnxHeOb5qhkAai+j2e3mbJ3X
         hoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772173348; x=1772778148;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5LPcgnHDezYmAmQJ8ddEK0GxF+9IPAjtDeRxnNjo3E=;
        b=XmrMrJqPxlGHDN2GplFdolwnREGkxaJeiTspUE02Ad94zqH3xFjidivRbhkB326vKk
         hwujhf4/NpfIU9a2NizRybZ5yjK6wGFpGYW+N/H7JlQKI35ZkKLLEHq/fv3IMpCsW7uN
         LaQN4v1ZnA6W3IRcPkEy9kW2koygsvZhpU1oduSUfj2FLtWA/NOnFthAUzZmsFyIOv+D
         fKHKlbYNiC9iRW5KBu0D08TLBkSEQb2bdER4QEkclRdS5egKFbo+7gVNEUSpS0zt8Z1u
         DhTL9Sm+Q8dBYf+oFd2m0xNK1jpfvK/ao+8tTovrnRZIJWtkhv3qIBg8kOIzYllDd2rm
         1ueg==
X-Forwarded-Encrypted: i=1; AJvYcCXwuOzqk8y/VylxDMnNINfXcv/a0AGC3oSq7dgbXU+3IdeMAGq8yubmXxaMknhTix4BpMaLXWwxBHwp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+C7BzG0V/wknOvPX9YiIXO6etQk+rFjZmCRtTQwtVSHMwAHN5
	ZlaFIW+0lsWntH+bTrsm9yOBmhYIuE5H5bN15ljLDeN74JL/MGx+wDltQTjO1HmwbF4=
X-Gm-Gg: ATEYQzwTfOcYRONFzZWRN+ofhNDuSdttw2axZME9BSuExW5RK6icKKtKQef0voHRt0X
	oFiG0YjSRMOdw2eEzLO+7BioEEX6QaGN4mIHzxWmibtihEHbpm1TNEnblciTi61JDNSE+0yaAXM
	ScVvO3F6vRZzWkR0aBnbcuS7pT86pWkW123tysJDSDH0uxnBZv0Cut0rX0mWTFib4bLXrhftkMv
	MG7M9l/lUETmsT02BwG64NeNAYOkH4sx7l6Ze/GWCF4BjfmnWVgbC8Isp3es2ljTciGwvjo7bhP
	Tu8y0s+bNdm5BilNZnSc8iUKoEkAfW5fE9fkxBGFmgpSebmZxtwhuP5nOnm7ReEtLehLcrq0Izt
	YlcMa36Qp32FA9AJB4YPkJMB9iYtLo2QMSgiVotIqb9n2jI54BrtoB9h/FmAQSepLza7DgTjD7e
	u83xe0miPLV0slUp7FM6h1ZgNPW5h1mR8n+dX+zxOKxslz/H1DtHZ8DV0wiqqnLMHYcPymdct4Z
	ZVREXnRF+RQevKsgQ==
X-Received: by 2002:a17:907:847:b0:b93:5ad2:c6b3 with SMTP id a640c23a62f3a-b9376365c9cmr103968666b.2.1772173348221;
        Thu, 26 Feb 2026 22:22:28 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae61474sm118432166b.44.2026.02.26.22.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 22:22:27 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 06:22:23 +0000
Subject: [PATCH] arm64: dts: exynos: gs101-pixel-common: add Maxin MAX77759
 fuel gauge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-dts-v1-1-16c5733e946c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAB44oWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyNz3dzECnNzc1NL3bR03ZSSYt0kQ6PUpBTTREuDJGMloK6CotS0zAq
 widGxtbUAi+pzGWEAAAA=
X-Change-ID: 20260227-max77759-fg-dts-b12ebd5a90b3
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Juan Yescas <jyescas@google.com>, Amit Sunil Dhamne <amitsd@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269079-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.66:email,0.0.0.36:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 822C41B3310
X-Rspamd-Action: no action

On Pixel 6 (and Pro), a MAX77759 companion PMIC for USB Type-C
applications is used, which contains four functional blocks (at
distinct I2C addresses):
  * top (including GPIO & NVMEM)
  * charger
  * fuel gauge
  * TCPCi

This change adds the fuel gauge.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
For DT validation purposes, this patch depends on the binding updates
from https://lore.kernel.org/r/20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org
They have been ACKed, but not merged yet.
---
 .../boot/dts/exynos/google/gs101-pixel-common.dtsi     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
index 93892adaa679..c01fec7c867d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101-pixel-common.dtsi
@@ -225,6 +225,17 @@ usbc0_role_sw: endpoint {
 		};
 	};
 
+	fuel-gauge@36 {
+		compatible = "maxim,max77759-fg";
+		reg = <0x36>;
+
+		pinctrl-0 = <&if_pmic_fg_int>;
+		pinctrl-names = "default";
+		interrupts-extended = <&gpa9 3 IRQ_TYPE_LEVEL_LOW>;
+
+		shunt-resistor-micro-ohms = <5000>;
+	};
+
 	pmic@66 {
 		compatible = "maxim,max77759";
 		reg = <0x66>;
@@ -317,6 +328,13 @@ pmic_int: pmic-int-pins {
 		samsung,pin-pud = <GS101_PIN_PULL_NONE>;
 	};
 
+	if_pmic_fg_int: if-pmic-fg-int-pins {
+		samsung,pins = "gpa9-3";
+		samsung,pin-function = <GS101_PIN_FUNC_EINT>;
+		samsung,pin-pud = <GS101_PIN_PULL_UP>;
+		samsung,pin-drv = <GS101_PIN_DRV_2_5_MA>;
+	};
+
 	key_power: key-power-pins {
 		samsung,pins = "gpa10-1";
 		samsung,pin-function = <GS101_PIN_FUNC_EINT>;

---
base-commit: 877552aa875839314afad7154b5a561889e87ea9
change-id: 20260227-max77759-fg-dts-b12ebd5a90b3

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


