Return-Path: <devicetree+bounces-75893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3589090A4
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:41:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F005B25C5D
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DF6D19CCE8;
	Fri, 14 Jun 2024 16:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="FlN+Hvdt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B93F19ADB6
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718382955; cv=none; b=ifdbaE4PMf5md5F3qwAzflrv5Wi2PaFgfoQxtQLUoJiG8qjSoKcn18EH2HZySL1Hog4XXmPsbZtAUAHA8sH0ykV2aY7u/u+D6/UhwOC6fNjACdlVjQSJ2CTOAElcV28s6V5M4KWq5TKTB5r+rHulbAgloLCnDUcG8fgI9Q+Q1Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718382955; c=relaxed/simple;
	bh=9Uv//PIDIhNFrEud7zayoVo2Y2+fPu69lRG3uydiDVk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=etMDCdywLBIP5fuNlyHPQCxU7ipJQ/wwlB6uuXtgwEeogpe46De0kr8w/Vx9hK30wJXfMyT+WAwV0A5FHfQAyl04f6Xk+9o/T6kesexdOsBPaxsX/rcKsQoN7dF9ISAFWUB1sd320W3ppiPjAZEvne5TkJRs+fJMlSnZsRzNfD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=FlN+Hvdt; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57a4d7ba501so2966279a12.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718382952; x=1718987752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D1mZ6Xg3BCF5HN9VBGCY2svS6vlfsx+tF7JIqIcFeQo=;
        b=FlN+HvdtSGBu3ZoVYasoq53tKWVh8YG5HPCcuazoJOxw/pH1eyhCVCBnvCjdwJk/Ku
         GkZQzH7xZDroCNXD38HmvPCLIEf6ui4J6GdeiqVYsiaLshSQdMXhrSCRMXVeKVLj9adu
         WNW8WRbgpectAczzvgBgISvFZi9GWvIFjcLA5vm8oKCtgERGWBRxZuNlkxarmMLA+uI1
         HKZN/0wBPDfDPk/bDL5OF1Mp3Ofq2OGBbIPbaujjH5N+kkmI60bRoL8rAf/jxdpKDBwF
         fyeuklTLvbvLw5U61r7FFD8O+ojKTxJtoTKucdiwqVb42xUedqI+Mlo47bTTrVBarFK9
         s2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382952; x=1718987752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D1mZ6Xg3BCF5HN9VBGCY2svS6vlfsx+tF7JIqIcFeQo=;
        b=HKM2b5laqXx4uOjEIu5ja0ANxE/YWPndUMavmWU9H2rdhe+td+lR8djjH2ulYoG8Q0
         rzqwWaEar3TyVQyywAhGNps8hPn0pYTrD6mj7EJtVnd8lxMfcskKkoXhJbA1HwjXZsSJ
         e/GsTw8yE0o9eN7jE9nDZDwfYobdRbq4cU/SE0biEi/B9x3rkci/V+84Stsm+kb9rNTX
         Dej4ocgOfCSrjVSYYSw90PiO3dOJCkga+Ny6AT+S0Hn56oC1jIYeB4UmCjjivEr3Pw0K
         5iakqOwmf/BqiWCsR8YD2QXdHG/hSsvXePNF8jHeiMCC7cMPPtMQS+dMlUk8CRLGQ0/Z
         Nhlw==
X-Forwarded-Encrypted: i=1; AJvYcCWZ4PI2tmwMrm+MizrE0S4vRjPaC+CXJGzJkV1GN82msiFueobV8rnpEZ2r13Vijbas8Qd2IwUl/V7X0RLUyvoYyKq9/c0Atn880g==
X-Gm-Message-State: AOJu0Yy4N2B/qM+r51xyOFZSY8VRRRMOtLTJvFGYi2TvEUaH5HS3v6ak
	HH4iRvqbwBEc6aU4mVEVWwnS0Gl7sCqeCiuKm6hErcDBR1PqN0rmCTbS62kAz2k=
X-Google-Smtp-Source: AGHT+IFU7jz24QjE0aD7m2kTzDTqVT4xFAQAa5WztkGdzqrtdSmWclJ5lx57DK5AVkuZNzL75iIn+Q==
X-Received: by 2002:aa7:d298:0:b0:57c:c3db:2a5c with SMTP id 4fb4d7f45d1cf-57cc3db2c52mr1787153a12.10.1718382952002;
        Fri, 14 Jun 2024 09:35:52 -0700 (PDT)
Received: from localhost.localdomain ([91.216.213.152])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72da156sm2462893a12.22.2024.06.14.09.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:35:51 -0700 (PDT)
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
To: 
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Russell King <linux@armlinux.org.uk>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	"J.M.B. Downing" <jonathan.downing@nautel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Chancel Liu <chancel.liu@nxp.com>,
	Arnd Bergmann <arnd@arndb.de>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v3 2/4] ARM: dts: lpc32xx: Add missing properties for the i2s interfaces
Date: Fri, 14 Jun 2024 18:34:50 +0200
Message-Id: <20240614163500.386747-3-piotr.wojtaszczyk@timesys.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com>
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <20240614163500.386747-1-piotr.wojtaszczyk@timesys.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 'dma-vc-names' correspond to virtual pl08x dma channels declared in
the 'phy3250.c' platform file.

Signed-off-by: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
---
Changes for v3:
- Split previous commit for separate subsystems
- Add properties to match dt binding

 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 974410918f35..bbd2b8b6963c 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -221,6 +221,10 @@ spi2: spi@20090000 {
 			i2s0: i2s@20094000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x20094000 0x1000>;
+				interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S0>;
+				dma-vc-names = "i2s0-tx", "i2s0-rx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
@@ -237,6 +241,10 @@ sd: sd@20098000 {
 			i2s1: i2s@2009c000 {
 				compatible = "nxp,lpc3220-i2s";
 				reg = <0x2009c000 0x1000>;
+				interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk LPC32XX_CLK_I2S1>;
+				dma-vc-names = "i2s1-tx", "i2s1-rx";
+				#sound-dai-cells = <0>;
 				status = "disabled";
 			};
 
-- 
2.25.1


