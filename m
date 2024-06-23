Return-Path: <devicetree+bounces-79016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66014913E2F
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:46:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 241EF1F21201
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7507183095;
	Sun, 23 Jun 2024 20:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RTADZMAL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC33183064
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719175582; cv=none; b=K7H31w/Sb+HOkpyAMgdo++a6RhqJwdC379plnzy3k5KEmtzk+KK5+rGTVtm5F/8IdoJB0cHlQGc0z7pgUZS5kkAeT1oIle3ELUe8EJLqi0A1/qJ1yvX0q2jZa2Sy3Ilm170fSV8QjPPGjmOijqFjSVXRUUaoWECnw4+WuNrX7DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719175582; c=relaxed/simple;
	bh=FfIuIJmnO5f6e2hrbKe+lBRLZmpBAVIJC3f63LGVgDM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NsmgSEQobw7u9PAUZoyR6APX1Xi0t9BZkG6t04ePykvcZhTXg9fdxM+41jpKcfTz16xx3lDHcga81MhG72v03BqWXH5L+u/ws0iG6c+vDFS10NhtoXeOsEpkNfFD1uewxx6S7XRQB8u0Gy8TgmvjfWw+Q25/GCdhPSUb1y8vkl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RTADZMAL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4248ea53493so3970065e9.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 13:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719175579; x=1719780379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3cWv67Fg8mTdK4Pi+joek/Kmr7BwxnfWI5aRVKACCFA=;
        b=RTADZMALvGbogNiRDL+Nvb7IuMGcHk1FNWhJYSV14WtuBRCqhTILdHW+IPfoDWOniA
         7nmURILT0cLFRIjqsXn9yJZyFLmhHudmABdrr7dR6zlMrWj4UiGlE9ck4/wPQk96nj2w
         ha/Cyvv+dhFSLvd3AdFh9xyg3t4J2zkgIqZiMAf3iaIStZR9zWcf4Z9FiuTuns7dd3Wf
         Irq9BcOBlYvVCiBFn9Mx/HSi0N/fBYuMV2LrBnIUvUAImHBeJDWCl3i7yl1ggnuMEkuy
         fdsdFLb64lqRGX1C/K6TxO2kcuV/bgtgpzwtcLHW0xCyhXobJ+fK0ftj96k+utdsd9IO
         bmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719175579; x=1719780379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cWv67Fg8mTdK4Pi+joek/Kmr7BwxnfWI5aRVKACCFA=;
        b=NozmZbUjjXdXDn/xemgYkJDHeBVws0hyinhRONmcgZTiPXB67028TaA4fbltYBKpqE
         EoW3nKrCW7X/11FCh48dcHI0Vzklc1GKUyBASAJ4y/3eu5v1gg0E0wleBFTvhIN3Y7DH
         qXaGbogT3wTZqTE1MPb8hsKVE8GH9et12BkZqTIADB8UzLYsRSJQzM8AHhCHPi9PBRB5
         hq19bivxvfpdkK4qRCj5e3pOe9vLUO8Ea6Eq2W6JjONCxF0qxHK6hm2xG6v8KANry/B/
         0nLy9H7legvkS7C1I0F8P0SP6tzAsTOh6CmpDkhdpDu7ySh01susM4n4j6EtjC+XGLHB
         4zhg==
X-Forwarded-Encrypted: i=1; AJvYcCWOdSZ3gj7cl1y7qJnjWUtXFdMuYqhmgkwwsyeOWoY2sW5VGq/ko/EOSvG1FMpBXoUPt5wRJNow4it4otHHv10NYDJpblbT9z4VqQ==
X-Gm-Message-State: AOJu0Yw3Pi4K3gy0qvhNmcci1d2BQuw5YyZ31EBwJLgmCfv2QKXuZz8f
	9DGrW4jDkfQ105OBMoL9QelDsT1poze7mdecXMYkgMGcDBlhtqqN
X-Google-Smtp-Source: AGHT+IHFcjdr/OYVzPkcIcOVBQ6TmReEze0gUrgCk8erGXGnk5uVw07TO7/v8XAMCIzLW20RtL7LUA==
X-Received: by 2002:a05:600c:4451:b0:422:615f:649e with SMTP id 5b1f17b1804b1-4248cc593d5mr21346275e9.27.1719175579132;
        Sun, 23 Jun 2024 13:46:19 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247101aac6sm138567635e9.0.2024.06.23.13.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:46:18 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
Date: Sun, 23 Jun 2024 21:46:14 +0100
Message-ID: <20240623204616.1344806-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PinePhone Pro as SPI flash on board so enable the SPI
interface and the flash.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 8c2a4aaa635d0..e94656dd64238 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -629,6 +629,16 @@ &sdhci {
 	status = "okay";
 };
 
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <1>;
-- 
2.45.2


