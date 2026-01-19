Return-Path: <devicetree+bounces-256627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F69D39D04
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 028E63007679
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41302D59FA;
	Mon, 19 Jan 2026 03:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ctGfwPBd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D354E2C11D6
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793455; cv=none; b=D8pNgGbp93Snsg842DoXakYnp07QEd24xR95MleO6bwLpAYjLX/YBSV2oGJ+bU3HnG8zvYr0sWikaDPCrf22nHRc3aGmEkhE6FhgCKSjqOTn+oEZtNb5836s3RuesMPEG1nDDgUEFfqyCgFY8HtkLiIayis/hrMBXx/C/n9aMu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793455; c=relaxed/simple;
	bh=Q3APeXQDiu6Dq0YbUctJvWNTMdYSUA/70lZgJEy7pCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZVAaMk6meNYnduFxPgk/7TZ0EELCfYUnkpX6An41YRIXowk46vIuX5sA+4KOZAFybXWYeUyiM6FG/X1gOgk+d9t5JQprHi0z5eE9XqRFpv1T3ikAPBldNQMfovYPzcm7o//u8OsfhFIH9Hqka/TT2waAv6VB4D+4WKYO0mLzXmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ctGfwPBd; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c6aaf3cd62so276819585a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793453; x=1769398253; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xiNtJwtw05QrNdGwEwvWFIn9UYOv/0m3Dr4ujrTo53Y=;
        b=ctGfwPBdcvMDrGDsfWYHtMYlcSDhX4WNYa6JCQ70eTIiJeoi/ZiVrfHESNzb979W7H
         y2FCjGyZTGCbgG4IbyzDjB3DiuXIv6f716EnAsKZq+xY3H1uEQxxlF+T0jx7bg7uCto7
         n1mq/JfMf3SyxdHqN8It/9hbCOM3qTVlVg/t32wanvMv8a9WVJJPZbK5adq1dP32hFMC
         /+C3n94/D7eW0Eb1M+CdB7plcm4Xei2BDGYOo/+wl+fouhRHPfZu9VxyxB7NVdV+4+Wy
         Hn7iW529Oy0pWhHHN4Ih9jq5ZmOUiC/nAMsirMwCPqvS22BpV4kfl9h1jErS4eHfmBPl
         eRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793453; x=1769398253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xiNtJwtw05QrNdGwEwvWFIn9UYOv/0m3Dr4ujrTo53Y=;
        b=S0RbvoxqRoM6lpkGbvBWvF55imq3pMqHVuqguqTdxLdxydOmVgOlOitA0Vuiowkkre
         TrXa5anEPjxM0rAMbBT/bylqNXo5yBMEE3/UFGKjl7llpm1SILWPVaBNnspKqzUGxUty
         UdgUx+SNkNhd4b8T9sJ+UZV7I/LncwTiG1Tr8dxdnxG9mihE3LGvPBgAE8m+c/R0ZQvq
         msZAeHkaqNXtzUnQDlbSCtRWcUchz7iRwsGjg6P+vHdFAR+mcAW0/oc6iPRIQTseJbju
         0GJyHBS8iCX1/kRX0eFIhMmmUyR02iFJ0LbXtQ9RgtOpW/GdNA5IBQBQuiRMzeux+Do2
         c5vA==
X-Forwarded-Encrypted: i=1; AJvYcCWXm4wHwce7sotNv8Lcem0AM2+Tyizkn1mK2xAc37g7IBUzPNHp1uZrC3/yxQGxF7czsow1z5CEM9lj@vger.kernel.org
X-Gm-Message-State: AOJu0YxhDRLqtDD4uxC2+9umpk3ojznWBfSi/Q9vJhXS5yYTojMjtBcs
	joGhoOhsi/vZ4YM6TqAgMFbYR4tq/oG9swVj1cik7J/GQ9ywYyaBdUSY
X-Gm-Gg: AY/fxX6gbG8kZjMVPAMGx9QXG+rDh4u+najmlpWlkKEr+dY5cy97zCZmgkI9ZWj7I3a
	DHuY8P+ieLXAB4t+SvbueWEoGZ4mZQBFlkhzLnGKV68BLplBVFaEQ3rQb/RqBKyyP86383pJN1m
	ZrZ9FjHUPbnnkqc1fFCFeoQkMLY0tCu3TtwU0XUJgLxxQMDxu/8PMaa4xZ1reRo39esWuTGE+6k
	ufh5ijDHKMH13mSTffNMvNsGUNoDsGLLoKJqI8CL2+afHu5WIVCfvq1e1MEe92EloCY0WpsHA+h
	Sv6fkvS3H0xhgXayzDA/+tI/DsSVYRDMFdimlLJvH+d3Z7rOfpYOsCIAdwUHIVWhzGz3dBVcLKL
	NkdL9Yd5Yu4N9ylW2UgmgDo/zsj9c04Ai3VtL1ox81Nik2iJldZyY7P0hVjtCcRcy5i0PZwL5Xe
	ezHNCfYrH4ZzDzI15lqgviVJ3saXB6h57TFsHEIonmBcS0GKBdYMpTd3h5I14l48sv1lc=
X-Received: by 2002:a05:620a:448e:b0:84f:110c:b6e8 with SMTP id af79cd13be357-8c6a678b831mr1437612485a.68.1768793452693;
        Sun, 18 Jan 2026 19:30:52 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:52 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 07/10] dt-bindings: omap: Add Samsung Galaxy Tab 2 7.0
Date: Sun, 18 Jan 2026 22:30:32 -0500
Message-ID: <20260119033035.57538-9-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add samsung-espresso7 codename for the 7 inch variant

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
---
 Documentation/devicetree/bindings/arm/ti/omap.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/omap.yaml b/Documentation/devicetree/bindings/arm/ti/omap.yaml
index 14f1b9d8f..d8774c676 100644
--- a/Documentation/devicetree/bindings/arm/ti/omap.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/omap.yaml
@@ -144,6 +144,7 @@ properties:
               - motorola,droid-bionic   # Motorola Droid Bionic XT875
               - motorola,xyboard-mz609
               - motorola,xyboard-mz617
+              - samsung,espresso7
               - ti,omap4-panda
               - ti,omap4-sdp
           - const: ti,omap4430
-- 
2.43.0


