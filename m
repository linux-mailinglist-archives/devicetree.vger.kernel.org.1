Return-Path: <devicetree+bounces-181450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77168AC7A40
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 10:32:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4C4A61C04270
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 08:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09A5921B19E;
	Thu, 29 May 2025 08:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="bRD7c4Lj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BCA21ABAE
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 08:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748507532; cv=none; b=hW7MlQAjfh/bY54g/qTOCF1jNiZ+9kvJ6IO7fbswqgVMxy9SuzjIXOubHFNgFf/vy8YGZ3RLULk7gYWtuFTgSOsp16gz3bxZK57ximcTJ5Iz+EpU0TCs21LNfLfRO7YZ6+y8u+wCocUsgSqonVJF70Y0EUi6n68wvaW4kZvlkec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748507532; c=relaxed/simple;
	bh=4ITvAOY5SZnpMgKLoIBNZ/Af1z/Tno1JfKRlDjhk/AI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=juj2u+2E6kdi1mpIm4yo4gf9cnuDGHe/IzhBGU5E2ZG1z4m/yFXk9/Hpop9EJozQXKeGVyFMo5zAOZaFGrnuKts88VywSNSXISvnjGkHawqnd86RZgpSJp09e8SBE/Kst31AwhzsSWi1Hu0KiprIR5QnMayr5y7APk9sQbAiu8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=bRD7c4Lj; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad1b94382b8so107043466b.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 01:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748507530; x=1749112330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLld78XiVd+nLe8SAk0vnNkUleLC+2Mse8SgdBs27No=;
        b=bRD7c4LjK7sMpPvjk51CFbAabyi+yCOeC3RkFOXGpTDvO1VV/G0XIqVAhMe7o2uzyq
         W+PEI42KeSCtJ+eqGlfWD/Vncf9bd0MmXcA7Lb6JxhHJLPGa6r09GqoGCowaCUGtjdyt
         0IRtTm9NXj6b+SKFtbEEx+cKXYzWxV6arOf/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748507530; x=1749112330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PLld78XiVd+nLe8SAk0vnNkUleLC+2Mse8SgdBs27No=;
        b=AyMlkvGOR6c5H+7zebygf/cRogrwNCYMqEJRKkxdkbX7r69zD54lArZiZXFI1bgoUS
         jeWI5EpbPr4AbVz8zrmP+UnwDDw3R9J8Qa5uuIap/5LppJWXWbVBr0D8iuWGtKVB3M0j
         N/O6jOdUG93Ye9gcKocy/TimRlQ7EKCbCGNw2Fm73DH2Lq7V8oMx150JSsA0CE6adCRm
         yR210dB4Z1XuYjwZtOWmZNap5eEcWaTg0jSXzX1hCEGYx8tyFzpTVN5EsZfxdhbZ8G4R
         oqlqCzbBDboIkbbNhSHe7SLZ0nE+WAIEsrMt/FRyWk1tVep4ary1jch+L5wGGGBDam8D
         m1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXjZCQwwiqdS7PeM+vVGwj7Vzfjk54uL/RJFD/ZBrVqi8ZjlC8FZ9FTopg4OA9u8c53VF0cX+L9rLeV@vger.kernel.org
X-Gm-Message-State: AOJu0YyBoQ6DzWSCgYFlnT9cUnVTup5oDRNz1Vm1vQaKlYRh4ZihPOXu
	uNpOKbFlcy8O7o67pxCptvfEwWQR5pT7lsceS3PZpbn299RUK1YdmeG0rUkjB2JLav8=
X-Gm-Gg: ASbGncvp00/a+mg+0fjYNIPl7Op2etunpTLKZVl3iRZIPgAd4y80WmYzMTC//rJIdmP
	tViBuiXbEZkQwnFumn/G8EnRW01mXEu7I48CymbOuWfg1YBFSOiBBnVlYx0Fmi9Gw3c8JFWbKUx
	yl/BQ+IuiAbmSCGtVe94XVwAFqVsab6EAcP/Z1lPyDGxlLbAkDOXEoR/FmY3g5Ip5wR2LsPY70w
	zdfgxi+/UuJvOAKVQr/ESwu0rrMR63ODJsQ+P9oCY1Lvcqae93cw9F57IYGW2IzhJ0fNJs36QpH
	27N9QO4/tQyo/aGQTau5Q/tVVRu/HgY4YI2denroDv9t1lUFQffm2UG6GNdRFzSFIRgZIFEb8AH
	Of7e/mPTFYxhgYqPkIdP4ju+4nL0=
X-Google-Smtp-Source: AGHT+IFdikkmzQilN7TiGR565IDIriKeCOFiTpijPBoqeaSwXu+CGLn9Jz9Qio+NdGj3viXD7/eBzw==
X-Received: by 2002:a17:907:6d11:b0:ad8:8ac5:c75e with SMTP id a640c23a62f3a-adadf2a2945mr112016566b.60.1748507529623;
        Thu, 29 May 2025 01:32:09 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e87esm100609866b.63.2025.05.29.01.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 01:32:09 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/4] ARM: dts: imx28: add pwm7 muxing options
Date: Thu, 29 May 2025 10:31:05 +0200
Message-ID: <20250529083201.2286915-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250529083201.2286915-1-dario.binacchi@amarulasolutions.com>
References: <20250529083201.2286915-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add alternative pinmuxing for pwm7.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v3:
- Add commit body

 arch/arm/boot/dts/nxp/mxs/imx28.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index bbea8b77386f..ece46d0e7c7f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -755,6 +755,16 @@ MX28_PAD_PWM4__PWM_4
 					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
+				pwm7_pins_a: pwm7@0 {
+					reg = <0>;
+					fsl,pinmux-ids = <
+						MX28_PAD_SAIF1_SDATA0__PWM_7
+					>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
+				};
+
 				lcdif_24bit_pins_a: lcdif-24bit@0 {
 					reg = <0>;
 					fsl,pinmux-ids = <
-- 
2.43.0


