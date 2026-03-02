Return-Path: <devicetree+bounces-269994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMeFCKqFpWkeDAYAu9opvQ
	(envelope-from <devicetree+bounces-269994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:42:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 919871D8DD1
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:42:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 289283088EF3
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A440836E490;
	Mon,  2 Mar 2026 12:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oaYK+QnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5736DA08
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772454926; cv=none; b=IoUJVnMmQ6To40Mv1PWCRePnyN06U36wnrgcV8aW1aOneEaqqa/5a00Vymp/fXqJrQeMKdnjTgR7ggTaekHBwYzsdJgqFq7zFlppy1csQToQQaxOvNvLfOyeMY8ndp8slIbjGGPcVJB6RsRxC/mjTpEagSo0uys1HT5BapwzXSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772454926; c=relaxed/simple;
	bh=W9fZ2b52wwosErryye9t8dYBv8NiSHFLIJOzm0GsXs4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=D64uCq8J8ciDFp9XXwiy58Sok9agu0gqyEXOA1EK0K6RFKydajwQi1xAsnQj2U1KPgsIqIh89KsfNlhg9OvECKs/rITshn5+ynCls71xKHnIILTXwa7wcE8yNz9/k+pChKbmftPnc+1/fuGaYqLuqGj6vRzwdwgVCsJvhLj7Zfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oaYK+QnP; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-65f767a8d62so7807595a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772454923; x=1773059723; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2rDUb9e+S6LVzbXGDafH6Ju6lYi+mwgweBRhLhcVRjo=;
        b=oaYK+QnPX/p1Pq9pH+beU6fC+HyE9Y6EKuXeXq8feTK4SOPdO20UQhTrxNYXKVirsU
         sf8Ydq7/M5Sxa8+ELk9Gug9In9HhlYseX9t2RNVTwVmN75pgqGl3tf6goBj+PiWMJC3f
         8g7tbVOzuX9f4ARsafZRuFfFhts9t4mISaGrFhutlCNbRJhdz2YM2oUwCc99TKnncb43
         I3i1ZvXa4lLVzwdoYEFT+CfTWgivpp5cw/ZXSwyStmWmIwsk5MEyqsSiXX4T/7GUHqQb
         uxfD6OY7GN1KdUfA42xgfzptJNV/ISXT36VQhHi/nRzbwoL2gof2f8vowGD7/+UQ33xX
         9yiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772454923; x=1773059723;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2rDUb9e+S6LVzbXGDafH6Ju6lYi+mwgweBRhLhcVRjo=;
        b=Ordg3L4EABTp34EEBHhaf3DxxAK9EukgMhVW3lp9V6TDxzHqEK1aPX5NLagap04+rl
         N/2iskSz0Fjoig/TW+uLCLFOP3k7ykdWkHLcZvtr10kwBdIzGAO6+wKGmQ7OsMxzWiwQ
         n77CQLmubORP78Jljni7idZcE9qnv50GkzF5z20cHbMkj1MCgkXAf7Dv/Cl6NFa1nT25
         MRV7GFKgdLxeFBwSTdunbJrk0Qit/7TAJTcIhqc516hLWz23DMz1x3zLTlOxzccRcFrR
         yvKDc7pbZ7rXxjY+cq8Ys8WH9IqWUJMoZoFS8+wknmZ4atDA+O4nhdlgvX4pIGL5OUlJ
         roKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2qlCbCR0xwLcXdtJ9X+Y4y73rf7gMIH5aybUat1wldFDVmy1SfOG04Bxpt++OxM/NcJoOWAfkwTmw@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd6Ftz6JHEggpWb7YPLWA620SubRDL3dFe9/m9Ta8hwUEb+m1f
	V/+orKmmDhJkC1SPzdSeXhIOK6ocWvEt5ddamfjloTh9OX9yPS5YPc2czKMdw0YhmgY=
X-Gm-Gg: ATEYQzySzQw/zB97gLv68+jOiRiSyIrA2fREumIsgbgJ08h+edAvPy2cEWBjHC7ZlL+
	qCyYN3WLXVLbgIXsY18esW1IWgr8OLKHnaxuBekzV7MlihmPTP2Ejv7bDtYjrt+S6KEdx6qeg3r
	TF7dwVKg+UHE4B48kho5CxnOYevb9u3F1Kh2UJ1UDyMOEIu5rMPg+O+YjSKNfqSimLTaI7Bpd55
	EGHzZ+REjGvGAlj+Fls3ivkcgsGIOrWl5R+gJ8VTssfAymfC3IOQMKxHn44cnKkO2Kpd75C+mhA
	ui3BEaxwQv12cOPmu9uRiIth8WBRdbpKMnac1pDXjsKWsTKRPJDbpEgiIvWRSynz4MFHG5mBNH8
	/tJSnvwAtdLy6XaCvz6V/AU4W8Ickr6SSp4EYVHZ8TO+wEEleL3cpunwrqdiRFul66VmWS9HKnM
	wuO4trQfXnl+mq5jrRbOQS1QNIwXbrybS3nXM0Pw+AL+eoW1GWxsc0mSefXWtUEH1fC/h1riwGw
	udj7Jj6e/1zLLw=
X-Received: by 2002:a05:6402:e8a:b0:65f:a9fa:cbab with SMTP id 4fb4d7f45d1cf-65fde0e6110mr6740003a12.32.1772454923452;
        Mon, 02 Mar 2026 04:35:23 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660057835e2sm1979643a12.18.2026.03.02.04.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 04:35:23 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 12:35:22 +0000
Subject: [PATCH v2] arm64: dts: exynos: gs101-pixel-common: add Maxim
 MAX77759 fuel gauge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-dts-v2-1-12f1109a6fee@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAmEpWkC/3WNQQrDIBRErxL+uhajjWJXvUfJQpMf86GNQYOkB
 O9em32Z1RuYNwckjIQJ7s0BETMlCksFcWlgmO3ikdFYGQQXiguh2dvuWuvOsMmzcUvMtQLd2Fn
 DnYS6WiNOtJ/GZ195prSF+DkPcvtr/7tyy2rU0Gkp0dzU8HjRYmO4huihL6V8AeyWI0mvAAAA
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269994-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.66:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email,0.0.0.36:email]
X-Rspamd-Queue-Id: 919871D8DD1
X-Rspamd-Action: no action

On Pixel 6 (and Pro), a MAX77759 companion PMIC for USB Type-C
applications is used, which contains four functional blocks (at
distinct I2C addresses):
  * top (including GPIO & NVMEM)
  * charger
  * fuel gauge
  * TCPCi

This change adds the fuel gauge.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- typo Maxin -> Maxim in subject
- collect tags
- Link to v1: https://lore.kernel.org/r/20260227-max77759-fg-dts-v1-1-16c5733e946c@linaro.org
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
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260227-max77759-fg-dts-b12ebd5a90b3

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


