Return-Path: <devicetree+bounces-271650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAErApW9qWlKDwEAu9opvQ
	(envelope-from <devicetree+bounces-271650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B962163A3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 86AEB301489D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A573E1221;
	Thu,  5 Mar 2026 17:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hnKnjB7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C130E3D1CAF
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731498; cv=none; b=hTWLgBjvRlooU1ysEjgXSjwYjSmC9ySUVrUBCzyO5mBDZdRAVbJhVlE6cMqfPwOEyOPS2roV6zpUAq5fbbrV7VdBhXiCB6ek6y+2om6ehF5t7Mu+Mu4kGViXN+q8pcQAzh3qefxdDSAgATCPK4a0dLlZbuM8H2+2EmNu80F4C8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731498; c=relaxed/simple;
	bh=DJdkhzl95VtBfgRmIm7aKthuHYvHno4RWtiBaP6/SOE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PP2Nnl6xEAyJDeWmkMlxzPxhGhXpTp3DLlwTKDOfqvC1oLrbBuuACBgqiBUsDNS2PSubA98TwxCpNKlIEvEdulcOv5n4dLI8pqk7XDoIsw5SSd238QhMa0WEzl/CyNfYaWvhjZkI6K4LrKNAhWYWF6tTyZQB/QUnYjI8QI5FwMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hnKnjB7x; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-48069a48629so87211225e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772731495; x=1773336295; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lw259pcYxSLiNSL1/jRGj80sakZ8LNO4UKiJX/RHt8A=;
        b=hnKnjB7x+L7GrUWbAiI2NusfH/Qt1Ee5nsaWQC48AxYDPCwDsY0RWgneitySFjvPhX
         gjWjJiu26QZKyGdqwrsEiF2qsYCP7XBJUDYf9CkEMt21/cLYOf0JQIoT7REpcJ5rohQy
         UeRFxPL2zsF9B7Dx4Pd+6SmT33d+AdQhqBjyllu/OUzjCGxMXgyoPwP1qp3+i2Ti7cVQ
         lAZyemPbuWMrt6B0wUTuO5D0PImJN1lQ8tyUWizJ2TXFkTtwVO7r9QRWHTE8hytCX+T1
         M8uNWPZaMsE+HHK6cQTcW0R3FgLEhZysrsf0HIshjdfEvGGKXn+VjfzCmdRaK4SMoqc5
         6xsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772731495; x=1773336295;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lw259pcYxSLiNSL1/jRGj80sakZ8LNO4UKiJX/RHt8A=;
        b=SnAvTiYPH4AKZtbVv03AlXVNrumRqHHh1RCTNF0UvDAyb7y/iAuJlw2XKAGWuADgzE
         V4h4i5c8e9pS6KKfuqZCletssKSRR8ebwOsOvdppps3jlxJw6v1WOHj8ElbY/P6d550s
         fBYAiOA4Wu1H/A7ys7iycBH+XZQKB1aeUAOaxc1e/0vUiIJiu+5YRK4dcQ5mXL5thEgz
         1BIcRnEaXbVM/19iJUVzHF3T3OBYSj+c0h6XLKfT6I4NdPIxyRZl4a2b1HoZ4dsSQxGK
         sqPTe4X/AulxElpX2Lopy0n3TA9nhHpUZzv9gH9cUL7qe9hZNaqwaSrxISLibgnPnn4n
         HNFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm6GerRrRzgTBOvdrySlT6bIqX0KzpZ44xXRJ+sFLWNITEu2vZNqMXVnUSMdrLBfcvM0LOkqYT02RG@vger.kernel.org
X-Gm-Message-State: AOJu0YwaLBn4deg69v0VBTxCzOFGA/XvGU1OueUOfDv9GBT5QWkl3wXV
	uStngcXMyhOQa9ZLbnTrW6x+DJ5FegOGEa4GxIC0plyF16A8d0U9OY9zK1rsgwTZ
X-Gm-Gg: ATEYQzwLoftnfdrQNNfSAdnTNspaCBR0Cvy/ggTT0Ag6NqZ0fuJc67JCt1U9YkBke9U
	jlkhphwye9Efd1s/MdJ3T7H0u1k6p9n5ABV0tJq8oXy5iz4MbnKnc0roTCphtDTyGeUCRYmPwC7
	NTh2wCtfCuJ111bAPF0AoMjXcMYtzHUVeQGuHwy4+i65xSibNYCgT/cUWQl8Y1F4lnNcQEzKmPt
	/VA0a6h7wnQi7QGBZ4nXVpif/1ZD5fF2qieK5zOW3gsfyJC58j2hFKNjCyVSCINq4KMZiWsfZrD
	RMY2EgW2iLkvt5qPyIkAg2uLEN4Md/u6rmGiqrUrFihbFekvLqIbDOSFPq+Dni0IhfP9TSG2m9L
	5bSCGBZi3ag58UK6dVPNrtoQ5wc7mm+JFzquLOSV43G9/ZyHmUarumMPk6DdHQZDw9LwCs5zn2c
	6cEGHR5MKo71Sb0ZIYfnu5KJt3IA87kQwl39wyW7pMWNrdQzbVl11OfrP/rANZ9uEpD1KL8Chq6
	z464k/VEm9ykpoWUZuCXfJ7fFo=
X-Received: by 2002:a05:600c:a51:b0:47e:e20e:bbbe with SMTP id 5b1f17b1804b1-48519889928mr109001225e9.25.1772731494781;
        Thu, 05 Mar 2026 09:24:54 -0800 (PST)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851fafe4c9sm67153495e9.15.2026.03.05.09.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 09:24:53 -0800 (PST)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Subject: [PATCH 0/6] arm64: dts: freescale: add Verdin iMX95
Date: Thu, 05 Mar 2026 18:24:28 +0100
Message-Id: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEy8qWkC/x3NQQqDQAxA0atI1g2MllTsVUoXmTG2oXUqiRVBv
 LuDy7f5fwMXU3G4VxuYLOr6ywX1pYL05vwS1L4YmtDcwjUQLmK9ZtRx7Qj/k88mPOJgnD/4VYz
 sgpFajl2biFINpTSZDLqel8dz3w828f/ZdQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.13.0
X-Rspamd-Queue-Id: 19B962163A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271650-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

This patch series adds support for the Toradex Verdin i.MX95 SoM and its
currently available carrier boards: the Verdin Development Board, and
the Dahlia, Ivy, Mallow and Yavia carrier boards.

The module consists of an NXP i.MX95 family SoC, up to 16GB LPDDR4x RAM,
up to 128GB of storage, a USB 3.2 OTG and USB 2.0 Host, a Gigabit
Ethernet PHY, an I2C EEPROM and Temperature Sensor, an RX8130 RTC, an
I3C bus, one Quad lane CSI interface, one Quad lane DSI or CSI
interface, one LVDS interface (one or two channels), and some optional
addons: TPM 2.0, and a WiFi/BT module.

Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
Link: https://www.toradex.com/products/carrier-board/verdin-development-board-kit
Link: https://www.toradex.com/de/products/carrier-board/dahlia-carrier-board-kit
Link: https://www.toradex.com/products/carrier-board/ivy-carrier-board
Link: https://www.toradex.com/products/carrier-board/mallow-carrier-board
Link: https://www.toradex.com/products/carrier-board/yavia
---
Ernest Van Hoecke (6):
      dt-bindings: arm: fsl: add Verdin iMX95
      arm64: dts: freescale: Add Verdin iMX95 support
      arm64: dts: freescale: imx95-verdin: Add Dahlia carrier board
      arm64: dts: freescale: imx95-verdin: Add Ivy carrier board
      arm64: dts: freescale: imx95-verdin: Add Mallow carrier board
      arm64: dts: freescale: imx95-verdin: Add Yavia carrier board

 Documentation/devicetree/bindings/arm/fsl.yaml     |   24 +
 arch/arm64/boot/dts/freescale/Makefile             |   10 +
 .../boot/dts/freescale/imx95-verdin-dahlia.dtsi    |  270 +++++
 .../arm64/boot/dts/freescale/imx95-verdin-dev.dtsi |  250 +++++
 .../arm64/boot/dts/freescale/imx95-verdin-ivy.dtsi |  515 +++++++++
 .../boot/dts/freescale/imx95-verdin-mallow.dtsi    |  223 ++++
 .../dts/freescale/imx95-verdin-nonwifi-dahlia.dts  |   21 +
 .../dts/freescale/imx95-verdin-nonwifi-dev.dts     |   21 +
 .../dts/freescale/imx95-verdin-nonwifi-ivy.dts     |   21 +
 .../dts/freescale/imx95-verdin-nonwifi-mallow.dts  |   21 +
 .../dts/freescale/imx95-verdin-nonwifi-yavia.dts   |   21 +
 .../boot/dts/freescale/imx95-verdin-nonwifi.dtsi   |   16 +
 .../dts/freescale/imx95-verdin-wifi-dahlia.dts     |   21 +
 .../boot/dts/freescale/imx95-verdin-wifi-dev.dts   |   21 +
 .../boot/dts/freescale/imx95-verdin-wifi-ivy.dts   |   21 +
 .../dts/freescale/imx95-verdin-wifi-mallow.dts     |   21 +
 .../boot/dts/freescale/imx95-verdin-wifi-yavia.dts |   21 +
 .../boot/dts/freescale/imx95-verdin-wifi.dtsi      |   50 +
 .../boot/dts/freescale/imx95-verdin-yavia.dtsi     |  217 ++++
 arch/arm64/boot/dts/freescale/imx95-verdin.dtsi    | 1162 ++++++++++++++++++++
 20 files changed, 2947 insertions(+)
---
base-commit: a251f9ed77f01f16adaaa1b3d2f568fc1b5acbfd
change-id: 20260305-verdin-imx95-upstream-frank-li-base-b57ab97c55c1

Best regards,
-- 
Ernest Van Hoecke <ernest.vanhoecke@toradex.com>


