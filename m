Return-Path: <devicetree+bounces-186717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF4ADCEB9
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 16:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09BE91883A93
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 14:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09221547C0;
	Tue, 17 Jun 2025 14:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P7MdIbSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA5B2E7180
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 14:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750169126; cv=none; b=oMZM2Q7caBlh2iZc6Jo+lBmasNutCiMXxDMR/zbMfgvMeiQ/O0UjwoZTayNVjCRhPtuveNtkI6Z4+e/yy0PkF6XjSdIyjJkfTAtRIFxsO+9qMw9OPZhXUdyPB01kCljTqpgpi4sflFWDynZVRAUJILBk2b0qjGcjC41cDI8eNzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750169126; c=relaxed/simple;
	bh=wHQ5uG8gbzWQPZP108Fp8926jbj4aE7Ekwg2bPsr1IY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PLbsDj9o1eUle1NoMBSIWLfbF2/1dJfrKWQ559djDxiplS7dnRl2SpvU9AeNI0xHl5a0oYnqZJf0Tkvs9hGMomO5TL3lZ4fVLxiSBx9gZbQFtbPITjT3ywbsG5Iy2urHTEAWoDQu4qmmMyjTx7pCT3PncVa44A48fRMZC0GIFkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P7MdIbSg; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b2fd091f826so4203446a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 07:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750169124; x=1750773924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tk6I9EzaZ+W1EwXyeTL06fJaBXc6NaRZh1+FWMs/B84=;
        b=P7MdIbSgdzCLUKPLCKwitOChk6t04j6WK8t+T1z4WCANoyDsm+7rTZqjXh8fdftGjH
         hs7zhtCK7NGey3K2YZKig/qlxUkoW/3pdBqID3RUD8Yw6I3bHBGs6jUtyNme3lGCmwYG
         YZUyzSwuaqbC9/Z18dnGKKjV609Vt0fmT9DfWZ2dzGiiJzNA2CY4wpEvTeraXqSJ9W6M
         IwzyLkg6P+RNajPyonQ0TURrJcOC/DMX3qTBLDYvsLts4++nGGAnzwXEM/be2dl9dF+F
         ywe9YIU6N3+Zjkqujj4dvnQfRNJNalFj2WRyaSZPyqV7JPF4LW6mRDSxEgCnPvyDd1Et
         w5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750169124; x=1750773924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tk6I9EzaZ+W1EwXyeTL06fJaBXc6NaRZh1+FWMs/B84=;
        b=WevV6na/yuzpv4DO6i8ZtgHsLF+cQV7UAqQxj1jHJiuqpIV4FSx3kIeyO5OpSZXEcX
         UbjG8gBjHeLdNHYXlXko5/Dc3SwpPc1SJPbix344Ag81/zyER2zHqleFujK2mO/ZCymZ
         GJPn94FFFDEmdmf4yB050uRQ2/HVUL6A58LM31FDWO//RrQVWqZbQylaRMImk0Uk8Jad
         npPiXjKrRMj34iVdk6El+rXCtxO2YhPNbb/0cTW9uhBq/m4gMqaW48CIncw1o+0gyMlq
         Ezfc52frcvtWF1l4SoJBqLFRKWWoe8bnLtoz/aKXkbIePZcSxs2EhvOgGiIdL8bDxypv
         CHEw==
X-Forwarded-Encrypted: i=1; AJvYcCUDbkjPSzCclwlTkkUTUhaWW7IyQpKvKxBd13m9Rcf4IiaFr34NpYCil0QhcDcfiDLvh7vR8FKJZ3qh@vger.kernel.org
X-Gm-Message-State: AOJu0YwdTR5dCutv3+iYjclswLv/ayf/l+VO913qw7BkUdLRCytRJzaO
	JnvxqUD6gjCiU0s7yTtGCqH5PuK3+rX2DagvFvOGFvTIdDmGTT4Iob1G
X-Gm-Gg: ASbGncuXMvtQbUYAQbbotoS7tbfD19KNTjKPjVUd7yATIbYQKsQAykn5x0HhN5mL9bD
	S3jxRa9EQLalq3Gj3QIxvtylMX3+89H+Vyg+mlU7BbE8BwpGnCFhENAkssGA4Q3LfnhgZ9FJZpF
	SCF4hvQDejvsMLEqMenCxrev5rw6iTmncilzFHZHU7Wlfta5JbWUerMaj0f4hbyU32YY3447Emc
	RhA2x9sh5laATN9zN2PEy1A7P65YyDLICFEb6Q2jdkp6JzIUysK/W6kFIaGukppiBWZxc6yUthO
	IKFdJOD+Fcax5zyDvg+aRJBctFyoH1yK7aj7TY4c70SauHdkGW+N98Rw1w==
X-Google-Smtp-Source: AGHT+IHbKZPSqfh1gqigaZX04x3z6UHxXKBdLiZMKpd9JFG5J7rZIOuFOAUM8RsuNLpgmb1IEIuIWw==
X-Received: by 2002:a05:6a21:4006:b0:21d:98c:12c9 with SMTP id adf61e73a8af0-21fbc7fb787mr20507624637.21.1750169123256;
        Tue, 17 Jun 2025 07:05:23 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61::1000])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe163a0e7sm8906127a12.16.2025.06.17.07.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 07:05:22 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: claudiu.beznea@tuxon.dev
Cc: linux-arm-kernel@lists.infradead.org,
	nicolas.ferre@microchip.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] ARM: dts: at91-sama5d27_wlsom1: Improve the Wifi compatible
Date: Tue, 17 Jun 2025 11:05:01 -0300
Message-Id: <20250617140502.1042812-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The at91-sama5d27_wlsom1 SoM has a WIL3000 Wifi SDIO device populated.

Improve the description of the Wifi compatible string by passing the
more specific "microchip,wilc3000" string. 

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes since v1:
- Collected Reviewed-by tag.

 arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
index ef11606a82b3..e35dd79beb16 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
+++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
@@ -385,7 +385,7 @@ &sdmmc1 {
 
 	wilc: wifi@0 {
 		reg = <0>;
-		compatible = "microchip,wilc1000";
+		compatible = "microchip,wilc3000", "microchip,wilc1000";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_wilc_default>;
 		clocks = <&pmc PMC_TYPE_SYSTEM 9>;
-- 
2.34.1


