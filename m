Return-Path: <devicetree+bounces-216746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B32C7B55FD0
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8D601B27E31
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F66E260587;
	Sat, 13 Sep 2025 09:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="l+y4YXjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F022BE05F
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755006; cv=none; b=ESwN/mU/IOYYCVUvMEUooY4FtypW/4rBze4nmZgEOxaVeXzvlrkPjvJfUfyLD8z6krPtr+At0lanOtFUR5SqK8eC1NWdAbjkHGW1JGdSMk5iClD6Zld9zDYfiZaKlJHoERmwEFpy50NMMFmEPhqZTyrBgTWRG1PN6CHHCdceeDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755006; c=relaxed/simple;
	bh=50Wf/YvHyWAiEJIWnMiIPPQnOr1Oksxk5KmrCQPjYKg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ord6bW24iE+qypUcFtvliKNmjPmIMsTpo48ZbeFvmZ5VLRyGNb7jzma84EBPfb9WekyuEKsP2a9fy17HNfHM+DjbFKfTJMi+Klj9d/LNWg4BY6PVFceOx/ZvWiS3PHud2v90Vz03Vygmw5+evo3wmJ3lrx8DfIOgS1W/48vcY4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=l+y4YXjb; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so399836566b.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1757755003; x=1758359803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=woVp7FNEkX/bwtVc5utqy3tuJJ+oPzZT5NUOh8DxvE0=;
        b=l+y4YXjbImHVKyuj5lmFUruyQD7ePECOoY//Rg8awJ/nrfYsMtoqr3DnwWs5hJjXnU
         TJ1AxnNV2OGDh3noPIgDYMNPITbUSLhjo3FLIxepf+8GWgZ0wffLlw1S/XLIhEchqDsH
         insgMQG31fEegXwBmxSitBEpcDNCn2QdreqHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757755003; x=1758359803;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=woVp7FNEkX/bwtVc5utqy3tuJJ+oPzZT5NUOh8DxvE0=;
        b=WoNmr+TBxnPST9GGkj1tnV9/xA+O9qL5e3Yb4zV7uqcjYIzg0wud7jPWTwZtoDikfP
         87dWfGlFzurqc6WHDbG+5Zde8PPZT+KlR9AiO38mW78gjJlPmQxnf24OOkJImYAApzYY
         YMvqMlJBwAGHbTKVNPAOOo6lxUGfZcTL/BiHMK3tHN2or8Dg9b+pxrJ3nBKAmKi3zTDR
         Bru0Osbk7pyg4yGlArNstjdDUUt8yhzcebt7Lm2u6S3ZfNgRs0P4/XnVoabgA/Aq7Js5
         2BjxKMQQSZfwZHxR0yptKmDrXo0KsK6lfUutDlUU2VrVcLFAfq9Usv5g9iYQSig/PfiE
         E22w==
X-Forwarded-Encrypted: i=1; AJvYcCXHs4ZV20F7ZaV8w+rQWnY3WnW9BPRMQ2hgcCZf2dJanwL7QaAbr4/eDLHPN8OGCPrOmBrGsfM/Lyn9@vger.kernel.org
X-Gm-Message-State: AOJu0YzN1aHSahN0cL2WkhOHxyfS1LXeszF2i0ir8sjAJWtWvir+KQs4
	gAnAJb0JKr2+AIE6zP+62cSHKkIvJzgCJ59gB8IqdeDP3S5FZhDvrLP8rYCwnpPPDr4=
X-Gm-Gg: ASbGncsf545Ep0RnE5CwYt6FBGXxksr/IyJEdNJhU5vgkeZV482V00C1g0d9oRqiW6g
	UFEzgsGsdQ4bv/jd1/GOg93/tGnUoIUF5ZssWdFyOiQjQCuzhd/WQLYDFZIRpKzEliiPrGrjIbj
	Tu1ZP2dCMA/zaxVQvhxF8rk4Eg/Oc+YNNDC7o/M/8oszlD6sUNlOMm+0YpDgjPjdNyNaK0dMgFZ
	epU3oZkcOpy8DgD5Z7+1J+kdLSuy8mwNgyXwuV8seIlhq2UCDg+jOhRfaarZ3Ga/s5DRbQ7ddKX
	X6QnHsDZgwTQHIP3MQBL/LaOrGwir5nSEl1g8wBQGrlDQoYQUAzXbkv4lZ0nc4OyjFvqfQwVcHg
	Ben3YcH/RiYIUqYpN5enaTuQx4ejnR0HokFytkmPJ8tCTqBKvPbSL/zy+GTEYTYImHKnp1BvxCS
	OIz4OAEHNhL7auiLSYC8z27PtT8afWX5zacxrFpgpR036Y6bRyQ4wgekj4hUBb9Z0q
X-Google-Smtp-Source: AGHT+IFLQcrw9kq1ufoEVqOgFBOrdye9rBnznBZUzXL2tY70bbUV8mzf6aopgG578A5tsns/4TRC0w==
X-Received: by 2002:a05:6402:44d9:b0:628:e750:85d with SMTP id 4fb4d7f45d1cf-62ed8410affmr5076000a12.21.1757755002961;
        Sat, 13 Sep 2025 02:16:42 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-56-38-125.retail.telecomitalia.it. [82.56.38.125])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62efb5b8b0asm1593089a12.20.2025.09.13.02.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 02:16:42 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6ull-engicam-microgea-rmm: fix report-rate-hz value
Date: Sat, 13 Sep 2025 11:16:31 +0200
Message-ID: <20250913091638.1003563-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'report-rate-hz' property for the edt-ft5x06 driver was added and
handled in the Linux kernel by me with patches [1] and [2] for this
specific board.

The v1 upstream version, which was the one applied to the customer's
kernel, used the 'report-rate' property, which was written directly to
the controller register. During review, the 'hz' suffix was added,
changing its handling so that writing the value directly to the register
was no longer possible for the M06 controller.

Once the patches were accepted in mainline, I did not reapply them to
the customer's kernel, and when upstreaming the DTS for this board, I
forgot to correct the 'report-rate-hz' property value.

The property must be set to 60 because this board uses the M06 controller,
which expects the report rate in units of 10 Hz, meaning the actual value
written to the register is 6.

[1] 625f829586ea ("dt-bindings: input: touchscreen: edt-ft5x06: add report-rate-hz")
[2] 5bcee83a406c ("Input: edt-ft5x06 - set report rate by dts property")
Fixes: ffea3cac94ba ("ARM: dts: imx6ul: support Engicam MicroGEA RMM board")
Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
index 5d1cc8a1f555..8d41f76ae270 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
@@ -136,7 +136,7 @@ touchscreen: touchscreen@38 {
 		interrupt-parent = <&gpio2>;
 		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
 		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
-		report-rate-hz = <6>;
+		report-rate-hz = <60>;
 		/* settings valid only for Hycon touchscreen */
 		touchscreen-size-x = <1280>;
 		touchscreen-size-y = <800>;
-- 
2.43.0

base-commit: 22f20375f5b71f30c0d6896583b93b6e4bba7279
branch: report-rate-hz-on-microgea-rmm

