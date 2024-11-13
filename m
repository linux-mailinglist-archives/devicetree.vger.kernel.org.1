Return-Path: <devicetree+bounces-121413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F3E9C6AFC
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F5581F24F4F
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D04FB18BC29;
	Wed, 13 Nov 2024 08:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="0QsHFDyL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5091D18BBBD
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731488069; cv=none; b=RoXh826QDvlgiX89Uxj78w05hjo5qjeBMWJadoJOllHWHqts9daAfLuaFuJD6ouHrNJZjJwKjMAdQ17KDbOMMT3MnaSxRqYfDqNCU75TYHtc9kKWmEGk8a5IwrruZK3fPD+w2BY/XmqJK78aKU8LpmkIMCQHGD3at9lYBr5YF14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731488069; c=relaxed/simple;
	bh=5rZEVE8ZG2QG5VfVFTqm/2+0sB7OhE8B8hdHzbk+2lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MpPXEigUpbHqurP6PRhBUyusqSVKQjDgNmafA08sYE3TLWVUWryVupClKqh3a8Hr1etAuc5CCQM8caJTgv3li8hYgJdKirllfFinYaDyWLauKW47pTGrGQ4OxK80JDQagzW7FltcMM0StZmB+JGCYVEfy0QngVbhNCDLqiqcE3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=0QsHFDyL; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7ea7ad1e01fso384564a12.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1731488067; x=1732092867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a/QQvBKfHWcx99S3MFyn6CIdzyDe++fvtDF8fIMsYbQ=;
        b=0QsHFDyLWvXErQ78o3GVBKaQtkrJzd0M40782OJXHR4s4TdgUvDDnRo0k0bNAvedh8
         TaFiDD0Daw/fymOSxOWQb4aAWv1fYV9awwLKxoR301YP9/LpPFv7u+cY8mBYeJqCl7Mg
         f89bvKDzdmJ6mGTHV3dnSu3Qo66Sjdr0VPnxKeUVL5aJm5KmdL/JvUJYFx6daX3S7jB0
         hsQ8/I0uD34EHsXKZvuJ93cDkkzAgN+L1keBv4aL+n1XEsDy1aHFTPoWQ35grMKTHKVW
         Roqo54OYahZLNsk9tGBBl2PS5Hir0hUJTqY6i5WZooBcVNPCi1/M1zAwQMzEafAH4mlL
         +brw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731488067; x=1732092867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a/QQvBKfHWcx99S3MFyn6CIdzyDe++fvtDF8fIMsYbQ=;
        b=cGkMgJUIeZuu5PKBMgdZZDs28tFRlfspsXFnAgr4a31LDYyvLcu75XHjwgvG4ar2Wb
         DvPBQWwvreFUKJLEm9NB4TkXFHjT0fCu3mOlHgketmG0/iwIaYCRlppb9pa/HqA9VBi1
         6+BzAT8sqfHY5oTUkZzx6mFPE2U8PC5NMEKbk7qxm2S5CPLXHLLuFFRqbD1R+0C1nZ5Q
         aCGFaFXDJ++4k8OIHo56nWh7uV1G83364J2JqxhwyIP8KOTDKa90gza0KBDbqgl/Pv/A
         3Vduwk6nwRJk9m2XIF37t62ySozsomStylh9oZJtL4W1DSZbEmI/cWQ4kdfg6jw+9xWz
         /row==
X-Forwarded-Encrypted: i=1; AJvYcCULGgmOdiMDJ2bsNfjhfNhWLOkp1cilqDGyxoLH7WT3niHokq1BYLCzUkQaAdEktzIH5rXevEYp3ZAu@vger.kernel.org
X-Gm-Message-State: AOJu0YyXxJyiPQvMPgjfURRm03FO9a4/LHtHRODy544K5v/KpYzyLRnz
	kaCUNhXogZVXxmSZLIVmoqzNXok0BHdgLLQVtZEZoXqkn2J5J5lH/GJpCNvy
X-Google-Smtp-Source: AGHT+IE88wJlLPAh5zibBEt5ecTqueLIppGyqpsefbMEfjjtHXPO/LKkFBoqmw1dPbdImmuU0m0nWQ==
X-Received: by 2002:a17:90b:4b88:b0:2e0:f035:8027 with SMTP id 98e67ed59e1d1-2e9b1ec3ad9mr27550774a91.2.1731488066639;
        Wed, 13 Nov 2024 00:54:26 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:a83:68dd:5f1c:4ed9])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3e94e8esm957843a91.3.2024.11.13.00.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:54:26 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: linux-rtc@vger.kernel.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: linux-amlogic@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 1/5] ARM: multi_v7_defconfig: Add RTC PCF8563 support
Date: Wed, 13 Nov 2024 17:53:51 +0900
Message-ID: <20241113085355.1972607-2-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241113085355.1972607-1-iwamatsu@nigauri.org>
References: <20241113085355.1972607-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are many ARM dts that support RTC PCF8563 but are not enabled in
multi_v7_defconfig.
This enable RTC PCF8563 to work with boards that uses this.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 9a5f5c439b8791..139b1c6fa656fa 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -997,6 +997,7 @@ CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_RS5C372=m
 CONFIG_RTC_DRV_PCF85063=m
 CONFIG_RTC_DRV_PCF85363=m
+CONFIG_RTC_DRV_PCF8563=m
 CONFIG_RTC_DRV_BQ32K=m
 CONFIG_RTC_DRV_TWL4030=y
 CONFIG_RTC_DRV_PALMAS=y
-- 
2.45.2


