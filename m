Return-Path: <devicetree+bounces-113000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B759A434C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:08:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F9721F209B8
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F852022F9;
	Fri, 18 Oct 2024 16:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LXi6rwqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D15820264C
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267726; cv=none; b=lY9CWXWJd2evkNzD+4dTAWYB6evZaO5Moip901Tci48CrfR1EtP2G7Ba0N5UpdOKRirylF2kpGEKyOeohVULm/MmbUkrqBokLu867ek2vT3UQ3L+2aPyVBvNx9PlOD/Nb77ZUOVBGxMbTSb9d6YOuWp34IUBDzZmmT5kZ+OHDo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267726; c=relaxed/simple;
	bh=67aMbvxMWj4JUgRz/oPNgALnr+5vJQ//wdiYguyXanM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=havTOBQRxovQD7vYgTcxmgOdyRiPI3j9liNuQhaakKZpMCSUi2xqHq9oCL8dRYyhHSyBaYZyIdjygpdUQNwG1d06VzTcf/CuY1BVPxqmbvo4sLD+a8ScvKRVeJ8o6dXNigrEa5QUAZ4ndGbyu9RjNTG0aG83TN6tcooh4BmbAtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LXi6rwqu; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-288d70788d6so1107055fac.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267722; x=1729872522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TuiD2uDkps50GUExl36s+u/4uBbEmd5xbm83qX0a1SM=;
        b=LXi6rwquRd0efnX6n/U84lUhRMJC6+ONY8bzJk3UZOgR0jMh9Rl2QCKCjQ/ZzJbI3W
         ohVwC25kHX8B1eky1BpXSMwe5NgqGJq3YtIdB7Td4J076drcG0JL2mHc1VwOsU0kYwsS
         yJS3nETiXHU3YqDdrmJ//9ImVkUBz4GiUv6ePr/4IOCW8KuFr9PxDu0PefYJYQxk97Xh
         GO2orfyuYEgvq7xKP8MzkHg9aTIupsyoizbZEuwr5Wnavd4QbhzYLvhzCCANX513IcRJ
         BX/22W28MGBTM7w/rHju0epMBpNqHNkyKI5tulacIW2Q6O43Q8g99vB/aEvLJTQDS2uF
         neoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267722; x=1729872522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TuiD2uDkps50GUExl36s+u/4uBbEmd5xbm83qX0a1SM=;
        b=UgSjA4/JcP/FvizZk5LvZLpQ0QvvAmpmOR/6+J3WubrLVcF7ER/MtDuzOJbGJVF9h9
         avHLlHdFzydb+augD359gnALIzsuRawAYeVXIobxpLeDouwwQ5Fxzw93MPNQiz3ioo0k
         Oh1nDI4huEWAmU44fll1W2bBEUiNm6BX8mJMaVwub1/UCgXX6SyAUSSvEHTMjxbzJe+i
         L4ucUP2C/7vaIMW9+yE3LwSin7HAj+7oMVNcr/bIimPjCrqdAZYjtGGep5aPZtv1UJmv
         e3324KKWWB4WGa4g275WgZNFDr5KWKPetlUJQTCMW3iPhYEHrt0VYCXE1jDbRW8QW+cD
         MPtA==
X-Gm-Message-State: AOJu0Ywd7hVrftPGwPjumLB/5C5QxxGWMMKEBTiasXImVc1mD2yEKLNB
	kBhW2nVJlzz4BEK9xYOgbLKi9AumGI0q7u63hNPnAwzjw7k2coyK
X-Google-Smtp-Source: AGHT+IFXi/u7VPBRcfLS2sRmkr16DOy6F48nv95CHXp/+haDcFJoyk1DAULduRIKiVrDPKO0AjVb8Q==
X-Received: by 2002:a05:6870:ac28:b0:260:f43e:7d89 with SMTP id 586e51a60fabf-2892c29c666mr2368335fac.2.1729267722325;
        Fri, 18 Oct 2024 09:08:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2892afb01ebsm507350fac.50.2024.10.18.09.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:08:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: allwinner: h700: Set cpusldo to always-on for RG35XX
Date: Fri, 18 Oct 2024 11:06:15 -0500
Message-ID: <20241018160617.157083-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241018160617.157083-1-macroalpha82@gmail.com>
References: <20241018160617.157083-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Set the cpusldo regulator for the AXP717 to "regulator-always-on". Its
current functionality is still unknown as there are no schematics
available, however it was observed that upon reboot if this regulator
was disabled GPIO detection logic in the bootloader was inconsistent.
Keep the regulator powered on for now until it can be defined
correctly.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../allwinner/sun50i-h700-anbernic-rg35xx-2024.dts    | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index e2039fd76b3d..2896d51cec7d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -342,8 +342,17 @@ reg_boost: boost {
 				regulator-name = "boost";
 			};
 
+			/*
+			 * Regulator function is unknown, but reading
+			 * GPIO values in bootloader is inconsistent
+			 * on reboot if this is disabled. Setting to
+			 * default value from regulator OTP mem.
+			 */
 			reg_cpusldo: cpusldo {
-				/* unused */
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
 			};
 		};
 
-- 
2.43.0


