Return-Path: <devicetree+bounces-275032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL1WJ6LRs2ncbAAAu9opvQ
	(envelope-from <devicetree+bounces-275032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A49FF280170
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A220301CC40
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D6836C0D6;
	Fri, 13 Mar 2026 08:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MnD9dN5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490B8DDCD
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392286; cv=none; b=gItRlyB4YKpM4PTbIGTYY0+rgbTmiqljZGb+DuCorf3pHq9pRLfrBniZ2tgDR2X+2k13r+BkY/nwyzRwLs0UCncXUKAk4UyOwEywFIO3BcLnweRp0yj50TDacJmKw8tp08rkoUbDvAYvoCDw+WBZU9QhWB8hBZaZMPCGrPexSHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392286; c=relaxed/simple;
	bh=M4rN2wgG1cklaxP8Xe45wDB+gC/3zcKZg8QCp2C+dN4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FBDKDe2+SJcnTMazpY9zLPXsmAleBAUkBus0MlhpqfcuEOdYhug7Q4ZJ4WRarteUAfuAD8VniHHNItCfNR/FqGuqV7xkhorN/Pr8Y6Ot+kcMofriuB+if9BA+sBDoYw2PYfss6ydLATdXMz/wx7dx3uX7sIoZ4R0uPVMf45ge6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MnD9dN5e; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4853f2826f7so18269125e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773392284; x=1773997084; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2itlYxryxighjPrEcU7jThIOdut7hYtrYJKXW7qdI6c=;
        b=MnD9dN5ejM3tWIA4XtajGN1UTv5qLtg60f0j6okbrbY3FzCPj+sczWo+kiSKIuecFr
         g59qh/huGyKoqil2CaUSQJ0QV2RY4OyLmo5dhI8nAmQt+e8B9dXnlmWBObJaum23YVUH
         5z0HcfpGAZOsqBALzOftIcP0TN8Du/C0t5BqoiLzYr2MxNb/Mn/Cu9v7q3x1KIN0vx+J
         lhNJUtZmZN0+fq1q+btYf59d0bzqWOzszQP3GNPARbOXytmGWuiR6lptwuxlSihpeGRv
         lO1qsVT15HzRz3d4gsilbr1P+6zNwY9wpfCVDRDNQuOZBaLT9WFnuSucn1kcSwAClich
         RKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392284; x=1773997084;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2itlYxryxighjPrEcU7jThIOdut7hYtrYJKXW7qdI6c=;
        b=VrP5uqGOJK0caZKeiolk5cKOPiPcG0HjcLBasOlfcZuEopCbjmDVnjS2+Yi18AjKDn
         ANtfwxwGVZBTLs1XNk+7MznmZZFGmOxKjhegKRRjzta5gRHyDGlz7HirLGfffzrCzkSE
         ECtUGFWegkUJOubg4JxnQaV1+j8huHa7q1DUInv2kGoCoAAp0pIr4/4pLglvJk+eO5+W
         uF4K6J+by40uxi0tZ2V66ykJ1ehZ3xi/blmL9F/g/xrl0c+kNmCzJaJj5b6kIm1v8cRF
         17y7+zeZ2CF8oM8DuWMgzHSPtvPYsf7CMULKzY31/pSCjo9y+5OizSb7DNM94ENz9wGP
         Z/VQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0/PL/ElGfznCpddtsEvlnJ+EbqLoFSlAcq98lPVFX9Mes224YFcV9lWUf65QnWAyAF8tIld22ee5V@vger.kernel.org
X-Gm-Message-State: AOJu0YzVyYFAlRHurxwdPHfN6IdqOtMkInHIdaJVkDqFO9aBZDQZigDC
	ip4uGJWxfRYwWkEYPBRdgEg6mLMn87Rfo/RE6y44QwJMFVrH7U5Aabau
X-Gm-Gg: ATEYQzwk4gHSvcfsh8mhwL6+8UtxskZ5ESCt0CBl4sfLKSUmk3YIfaW7bs1Nilp417i
	r5oOp/FZay7gUmEE5BUUXwVaoo9mx6btD8SxA58I4tquYSEpuguywrj4NmK6RqlYpa91w+iDGMG
	crk7dbijNQ5R0lOyItJF3jS8j/Yn6NqIf0abWbnqIKHuYWv8BM4HCNRbNc3U1tBlFc4ifjhagEG
	6hs4EKm4PHTni1KmTqa/Grh/vSewGZ5UVSWaFMrA0LwL+FPnVrpsCZstE8Ds2vkZJj6bYDZTGGn
	vfsjJNd0Wb/EGwjfOBSrAbAXTh78qIjbCUSSdw283ytDnsJds8e4j3BytimLLNrcQgDNryhLkoE
	QpkIXAumZeUTOO81i9KJPLiZOugwFdmJkbVMoNZo6nGUbRQyKKfdNXUtEZV2q44xTPLii0tbw/c
	Vk0UF7YMOe+1Iwgla/s0wY1dqXSNmh76Qsh8EvkLkeRTOts0O4njR/piY48/92BibBa9zQndHku
	h8S80MFQz10SzNkuivhaMRwshk=
X-Received: by 2002:a05:600c:45d5:b0:485:4535:73d with SMTP id 5b1f17b1804b1-485566cfb8amr37509835e9.2.1773392283369;
        Fri, 13 Mar 2026 01:58:03 -0700 (PDT)
Received: from ernest.hoecke-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a03cfd18fsm7663718f8f.36.2026.03.13.01.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:58:03 -0700 (PDT)
From: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Subject: [PATCH v2 0/6] arm64: dts: freescale: add Verdin iMX95
Date: Fri, 13 Mar 2026 09:57:41 +0100
Message-Id: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIXRs2kC/5WNQQ6CMBAAv0J6dk0pqYgn/mE4LO1WNkohLTYYw
 t+t/MDjzGFmE5ECUxS3YhOBEkeefAZ1KoQZ0D8I2GYWSqqLrKSGRMGyBx7XRsN7jksgHMEF9E9
 4MfQYCXpdY9/URmtTilyaAzlej8u9yzxwXKbwOaap/Nn/+qkECVdVObRSWXJNm3NoaT2baRTdv
 u9fA5NI6NgAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275032-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ernestvanhoecke@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A49FF280170
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Changes in v2:
- Fixed imx95-verdin.dtsi, imx95-verdin-dahlia.dtsi and imx95-verdin-ivy.dtsi node order

Link to v1: https://lore.kernel.org/r/20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com

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


