Return-Path: <devicetree+bounces-148894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 353CBA3DABC
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1305C174064
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C55D81F561B;
	Thu, 20 Feb 2025 13:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DTRjlGQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511851EEA3E
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740056649; cv=none; b=k1Ftk12ShEeSPDO8ReMxr9L66KUVzQSFQV0ouM0jAq3HqnNcoVW5XWWyGcNbN9hVYMbHxKjzUhi3M0VQW4SHUK28CT554HGXNLNaJ0fLDjSxWgoirYuq76uwHT79ZW2L+IO3RGBTbPdrG79GrDLY2wJpbDnL4uV+zuziuLPyKVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740056649; c=relaxed/simple;
	bh=xystygcErXcBq5wnb9GNo7Nv6U+qrQwVkR0wFmGmVds=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CsdzPxdl543TRHEfZwe3c/Fetje8cmDS78r0WP8NFpuIahFdyYCylyHBja3m0vDxx7sT6dUHalaBMfAPLXKSqOKbbw1UfqKdb49eEMsR/JltOQKrvJUG4cwKb99L3DarXsO7lkYfUEvQNizOzMCOb2kt2xUXnWK2jYfiV80Pmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DTRjlGQx; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-220f048c038so15169475ad.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 05:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740056647; x=1740661447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y+3soSVCYAuRBJUKPnHhYTtwJmf6pTxAK2DqaA+2v2c=;
        b=DTRjlGQxCrjw9aAQBkO1CdgCbUVsFb1EMMGC3uVdfjGCy2s94m2yRRa7Fdzps7wH5L
         3Pr0NHEgEzX7S2API/61WstUdUko+gOsTLwfm9cseAX65Vmc3K0+ZWXN+w42FvCrvFUd
         mgD+XJbS5HUzv5w4Z9eY990LwC9MQS0dIGPHVvDIM3Lfr4irPyk1SKKTJ6Gdv0GV80KK
         vnPLvNZqFTbBsTRPkde+8Ui7iNhQube2xQnChpmyNvt6vbvjbZFORLliPbTminwHHBXm
         ZKELMGHKEdowgP+i4A+atpiQcUmW9D4Gf3epEumFfEeTuZ4RUSERIU0cwKEje/YuDHI+
         a9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740056647; x=1740661447;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y+3soSVCYAuRBJUKPnHhYTtwJmf6pTxAK2DqaA+2v2c=;
        b=LDMqJMmKrEBXKCfONwj1TfnV6w9jgCLD8oxYwJRnTw1MHoY4sDS4CaxMtivUP0TSwN
         2eddoa7qXUgFDKlsgsmK16Da8ovti+zRDLJRGPRx3hfDuni2aCquwR6A6n3U06IIE40I
         kGv6Tydrg771syz4nbI5JVv+0QJIbLQOh3c1Uw6C8Kfse9GKhXzHyJDqH2HvPvDDXa9d
         bjtZaH8Q6uBohS8s2ojEg31CRLt+1WZFcQyNfoFTB0ISA0ohIe1FW8YlPKXMZe4r02Kj
         MzG1zfShM9hJn5XPvuhEeOe1NEEWj8k/aNUe9ZtPK+JC0BgE+lgXaiFDmY02YcocHgjy
         Lnbw==
X-Forwarded-Encrypted: i=1; AJvYcCV477sW0GKsc4U/oiQrqM/pjJb1PjdHNjTV8WHBm5zyuqiUS8ZUXU/epF+Jz87tbmuQAcGpMdl5VQ+5@vger.kernel.org
X-Gm-Message-State: AOJu0YyvmX5o9rPEPiBm11yBVJoMi61euOezPRqjByx4HTUfrshyyYsm
	qhbeokFZO22xR7UJDOkfLdwu5KT8vQSshhfSnQVoDzDTfTJV+7z5pA5QlQ==
X-Gm-Gg: ASbGncuP1IcgeNAeAei53dWFU+tJwYQD2QPVek1dDRvQkN9LvugaUy5AMMZ6OYC+OTN
	P02e9/M36xl2G6ShuyOuMXz1HCMf4GAJ/VG8kxI2tysE9s7ORLEAaC+cDFJLPYfYY9IN36HvX6P
	MH4GifKby0fv+xCuuPtroWQftR0Zz0tQD4qZVCGvNsnictMH4Xpm5FalE6sY5IRydqmN6miqcjG
	c39Lk+e3ACbfKRovtp31+iQdkkQd1TMjnGzadoQy9pPfCguAYK01Q7Afc8VzV2e2LD3HdZtuZ8m
	SLFBZizha/u8qHVB5FvTw6EOOtiIDQ==
X-Google-Smtp-Source: AGHT+IGw9OEm8SoiJIbzYvzhoiOS9vLNOCY9vd2Z4Tmta8NM4PUADLO7vJbTIJwDirGm3pkUctatBA==
X-Received: by 2002:a05:6a00:14c2:b0:732:5954:a815 with SMTP id d2e1a72fcca58-732618f1fa8mr33765480b3a.22.1740056647430;
        Thu, 20 Feb 2025 05:04:07 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9a27:2e77:89d4:5724])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7326dba6585sm9508105b3a.14.2025.02.20.05.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 05:04:06 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx31: Use nand-controller as node name
Date: Thu, 20 Feb 2025 10:03:45 -0300
Message-Id: <20250220130345.2375204-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to mxc-nand.yaml, the correct node name must be
'nand-controller'.

Change it accordingly to fix the following dt-schema warning:

$nodename:0: 'nand@b8000000' does not match '^nand-controller(@.*)?'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx31.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx31.dtsi b/arch/arm/boot/dts/nxp/imx/imx31.dtsi
index 00006c90d9a7..813a81558c40 100644
--- a/arch/arm/boot/dts/nxp/imx/imx31.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx31.dtsi
@@ -340,7 +340,7 @@ emi@b8000000 { /* External Memory Interface */
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			nfc: nand@b8000000 {
+			nfc: nand-controller@b8000000 {
 				compatible = "fsl,imx31-nand", "fsl,imx27-nand";
 				reg = <0xb8000000 0x1000>;
 				interrupts = <33>;
-- 
2.34.1


