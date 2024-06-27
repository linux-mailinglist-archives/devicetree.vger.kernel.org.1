Return-Path: <devicetree+bounces-80880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0EA91AA47
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:03:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBBED288DC5
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED7F198E89;
	Thu, 27 Jun 2024 15:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="gyo4P4vE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CB8197A90
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 15:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719500606; cv=none; b=CytcWYKMkFY6MP6ZPi+Mc0spJnecl4ET5cAw1g9Xuj5GHlCehAbLlcz9R8GDthpjRLOcZWuhnSi2yuMaGW8YXnfzlNdfKK7LWCak1+FfzQZz3nMQDkkMdSNzPAgtRHqHDMG/pxwTUpFFqGqQR/PARe6lc8/tZId8cZ/7Fz0TvqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719500606; c=relaxed/simple;
	bh=MOy/zclnpM1qz9tlFoI7C6TAtMnrzA/3fX7zjAQAoDQ=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lqJXVQWSxGOLUrhW5UojxceKfC89Uus/fpVKNhKzt6nuyOOEvdVZ7K+R66QWuazVZMzH33zkf+gZ7x6HFz3b1yf/o74jVMYTVx2NuglrrC48f4dzfG5+F4+s7O9NHyO7K/jEveNiIABTE+J594svZxTFCuf5W9q/sWhR8MVRcUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=gyo4P4vE; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cd80e55efso11181648e87.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1719500601; x=1720105401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfvNY7tGM2S+4v6UaWLAdWnrWccCsZezGAwDSPje/fE=;
        b=gyo4P4vE+W5TaJExutRzBG+QEGdzwh/9iqGOxcMgc7WFtP0Lii/MnqY7xd/Byi9iUT
         Evg1RpHPRKiJlLku3jTvnNZU/zCE7v31DlkU9RQQezKZESdhs/hgPmOxCwos/KYY80MV
         LBlLejvW6Bx75tD1SNYa9sZXXyIwEmWdXxSroBWsfGCiS+YmflKU2zVLDC89/yl9YWYu
         qwYjPjkkm786l1F9wUfM39oFxOqAaXViIVIRfnpWIbVJ16Fyi7/KOlZxB4J3dLv8xJ/I
         lPQzkCzhNqTcsaLnSd3jl34uUv5UgckOsURYNAFDTQcL0LnRkLl+k31DdliwUOhW+j17
         vNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719500601; x=1720105401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfvNY7tGM2S+4v6UaWLAdWnrWccCsZezGAwDSPje/fE=;
        b=tChyRf7zhq0HOtYTtvusLnnmkibDOgnwxkyxvbTioLOEBLL4WNjYtx6WS0Bzfe6owc
         Y2Ir7ShryYvGuU85BEToJSbCnk17szSeDoku9/h0Se3ZkB+yxziRm5dcwrtcNqW3tiCZ
         A3RQsK82hhlKjNlp8cH5ZsZk4Bl2cSpRDqS9F7xHvpdBW2CpSIqMlLyMsXp0sQ2Dr26M
         Rb31sqFojMFU5kAtxB3a2n78RoIqqfBZQvAO1wsQqM0+2mSdvaoG1wB7HL4RM1tc7Q5F
         3VlJsm+zCeU+zVXMOJvOynN5bWu34D8dnd+4LBxG3g5FzkwBNmr5Rw8dV6xMFlRnPmHa
         ewfQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1Fs1YzHErfNU9XmwDajVqqe5/DoaDEPB/9DaMttZLajmF+7NZwXSaBrqhqfZ6I03eFwf7fDuEIybIF9JlPSluEfhugxW/s7HHfQ==
X-Gm-Message-State: AOJu0YzHpUU+UQkrUO8AJXnm+q29YhRWmsT0igdk4O5EU7gzZw5EJyOj
	mJlml3jeWksyWR07/AOos7tcjYaKMcvN6EhTjOqik8E0cAF24jFCzI02uxqy/ik=
X-Google-Smtp-Source: AGHT+IHllh+sTlu3HrGAUtGTIRMnmFNSl2sKuSvILBbha0AGpyRun3RsrXSjlrG4YcRJnhpgiuUbGw==
X-Received: by 2002:a05:6512:3b95:b0:52c:dd94:bda9 with SMTP id 2adb3069b0e04-52ce185c196mr13457029e87.56.1719500601213;
        Thu, 27 Jun 2024 08:03:21 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a729d7ca289sm67189066b.222.2024.06.27.08.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 08:03:20 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"J.M.B. Downing" <jonathan.downing@nautel.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Yangtao Li <frank.li@vivo.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Li Zetao <lizetao1@huawei.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Corentin Labbe <clabbe@baylibre.com>,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sound@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-mtd@lists.infradead.org
Subject: [Patch v5 06/12] ARM: dts: lpc32xx: Add missing i2s properties
Date: Thu, 27 Jun 2024 17:00:24 +0200
Message-Id: <20240627150046.258795-7-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240627150046.258795-1-piotr.wojtaszczyk@timesys.com>
References: <20240627150046.258795-1-piotr.wojtaszczyk@timesys.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds properties declared in the new DT binding nxp,lpc3220-i2s.yaml

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
---
Changes for v5:
- This patch is new in v5
- Split previous patch for lpc32xx.dtsi in to 3 patches

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 6135ce4dde61..c58dc127e59f 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -240,8 +240,11 @@ spi2: spi@20090000 {
 			i2s0: i2s@20094000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x20094000 0x1000>;
+				interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S0>;
 				dmas = <&dma 0 1>, <&dma 13 1>;
 				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
@@ -260,8 +263,11 @@ sd: sd@20098000 {
 			i2s1: i2s@2009c000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x2009c000 0x1000>;
+				interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S1>;
 				dmas = <&dma 2 1>, <&dmamux 10 1 1>;
 				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
-- 
2.25.1


