Return-Path: <devicetree+bounces-256623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A2930D39CF8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C16B300AC75
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C9C29B228;
	Mon, 19 Jan 2026 03:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vp8uDvin"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C3286410
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793451; cv=none; b=D+ofjneWNL16XGugmvuOLtwm6k0tWsPxom4uV+7FvtJLUOYIsQMppv02c1kqQ8irQNgceAj0KUSYWeH5nniy8lZ4Xw2Bwmdl9rCk57ENgTvMgHv6Wn1LrL3NiYwIisJledvD0PxgZnEjepoZ8rT2thGKM71PhABCNsWj+aHSRmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793451; c=relaxed/simple;
	bh=eLdlv9TEAKtAVrbAkOJSd2uzG1zAErgJhfjsS5MIxoE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZVPVS80wRPN4UweOAn8IQolv5SScNqcaGnfybYRzKB+GhcWK4IUQZ2hIqgeVtnbb8MpXtA1a7VxT516FqrGEiElKg495OpbA14cMZWBsnV7JpnAiFdm9LdEVnUvKEDrmLuVWuUO2GIRm0yp0WfIIJwgMQ6yfRRyh3QhJADhINmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vp8uDvin; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-88a288811a4so40642966d6.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793448; x=1769398248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xT+OlgLwisjDHGRQGA0CO4AmF6Wqh7tGvnECOOk06AE=;
        b=Vp8uDvin6Vl4VNt0Bsp5GIT18BgI1C2ommmoJ4zIx/ZkpRfx0lwl4mfY1eCreZKJcH
         mGONuCcyjz1MYS9mIoMFbMTtHa4yx4NDNqYX7EhimdEEm7VJ3wOksw6booBT0spT0agM
         YJ0nNJCuxXJZbm4diBU/xRzKPYqSaNMllEfI1Neo10wAjYQ+K2XaMGFDKpIpBhjmcjq+
         0UIigk0Kym5G1XdCb/o07jqq9hb9BntzU5QLLPSBCn7rwRjO6ogImtT0RhATM9J9g4mB
         yc1deJ8LANj8bcI8CJxSh3Isvo3JuTtxmimx6sLThkRDv3YmyeUaSkjw92uCWRf1MkBl
         FZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793448; x=1769398248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xT+OlgLwisjDHGRQGA0CO4AmF6Wqh7tGvnECOOk06AE=;
        b=fXZ75wmcNuzSC4BH0aG4Tx0JyzDZZakfK0PcXTJU8Ra3BjfGr9hbEN2kt9EWiPMdxm
         gLTFUIeHZp2fScBTO+ThU8DnHW+J6GnFVv2aJzKnNhU1XVXaT0xn5wSdAD+NWe1evUkv
         wTMUDdnwXXisAGL3XqkTfjWuDD3SZ/V8HkVEqbLgqLOxig6zBuSjKYDO2DM86YWFXk0x
         +5jaIHv44McL8koMFS+wX3aWWmBVAvXBiHrDlVztB4GaLKzFUfrSPkW6ghk+6jHLGIIf
         z3wk1RUHgrnnjrjtIkFaZc0vZcoH8/SkZTIeMDr2btmeLr1FVgs4TvXiZklW1gCKI4wD
         WcLg==
X-Forwarded-Encrypted: i=1; AJvYcCUspu8v4D3IAgnyN1+BZuz7YDX0iCKYsSzVQSir25Vq10KiguO/rlXv1KNTzOd5sy+4oQCExLQlgDlw@vger.kernel.org
X-Gm-Message-State: AOJu0YwuP1DnQ03szS5rKxhdjUlVRh3gG4ZoH8xDAWL9on16exrUWZzh
	Vv2Kh7pt3U6bHp8Ldo687ZXvu8SfR7953jdgIjJQNj0/OMpeobOO94xO
X-Gm-Gg: AY/fxX6RZChIS+GdF6deTz/bGLaLd1Tf+6wako9+haqE4hClyj3MK6CVraSrkznoMSb
	n+XspzNOcwdfB+/bwa88TqcRdmCDjUwysXAUTi7XdHFzGxJ3LjQm4qRy4+9L/9HYdhgGqST3Mml
	rX5WqyGwoSIYvWNNMzEkfw79mBCGS5Iy5a4AFoTGSwhSjPmt9tpCmYx0GgSt1tVBcil3d76LX0u
	oXVcw4x0Si4IafrWfh3dP9I9UZYi6K+EFch5HvWIAOTCZ8jfiFWJX3XBzUVqhWuPguSk5zlKZaw
	3QF8nqjUPfyKK98VXhBwR4X5LAElcJdyovjq1cREgMA3DRsWFZ++lY1YcYLbXhwD2QzTzjI9eih
	Xnm7IEHfseUSX2YiCgXTgzSv9+7WBKGRECfV7+2FKkHO7ezjobuEZexKSTqzpoifct+ICuziArw
	ofG6rW1zU/5YKGncRJVConCDxng8H5fCLikjGRAQJxXU5JsAmNt2oDgktRhmHtGzBpqZw=
X-Received: by 2002:a05:6214:1d25:b0:7d2:e1e6:f79f with SMTP id 6a1803df08f44-8942dda1871mr127151346d6.47.1768793448154;
        Sun, 18 Jan 2026 19:30:48 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:47 -0800 (PST)
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
	linux-hardening@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 04/10] dt-bindings: display: panel-lvds: Add compatible for Samsung LTN070NL01 Panel
Date: Sun, 18 Jan 2026 22:30:29 -0500
Message-ID: <20260119033035.57538-6-bavishimithil@gmail.com>
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

The LTN070NL01 is a 7.0 inch 1024x600, 24 bit, VESA Compatible, TFT
display panel

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index dbc01e640..68c16c1ae 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -58,6 +58,8 @@ properties:
           - hydis,hv070wx2-1e0
           # Jenson Display BL-JT60050-01A 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - jenson,bl-jt60050-01a
+          # Samsung LTN070NL01 7.0" WSVGA (1024x600) TFT LCD LVDS panel
+          - samsung,ltn070nl01
           - tbs,a711-panel
           # Winstar WF70A8SYJHLNGA 7" WSVGA (1024x600) color TFT LCD LVDS panel
           - winstar,wf70a8syjhlnga
-- 
2.43.0


