Return-Path: <devicetree+bounces-240459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9037EC71666
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 23:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id AB9F42C4A2
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 22:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D264E2FF64E;
	Wed, 19 Nov 2025 22:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z/JPpVUr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AD02D481F
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 22:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763593078; cv=none; b=q2YpCW1yVn1Te6Q2jdRH6yA+aPv6QO563TmIdqGrB1MmjMYNSSLvU0joc7mwAK2zwZiArikaMpR8fchNMypjx/u8vYWjHEjhxfbJyoH95JK/AWbXAr4nRH7EN9gDqQxmtDrCMJ0xZaxSuQqH1BZoaKOcIeGt3KMKn6GrYNJ2hI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763593078; c=relaxed/simple;
	bh=JnyNYT5+jEouV/8yUPXvRX7CeEyZGEPq2A0wuBBRJJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rG5ENNPaLGWzzeIvogFpuJDBLpaK+IgvmS6akCjK+4l6sA95pqmiVcduHL9Y006nAQCn6SkDwaLlZFvbLs91cTzRPUII7j2ccZZlJ73+zRqTKgMRXcv/ajDkWmlpqr3vDkAMxrNcAO+CPo4UnKqy2WXzf4PfcibwR+mMl8O4r2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z/JPpVUr; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-3e2eeb85822so90464fac.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 14:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593076; x=1764197876; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=Z/JPpVUrxyM1WZH1kTvoJntXzN9TsV9PTWnnXG5sIHJ8h82ef5iuTvTrRmNaRlPJvS
         rgUWb3njAfKWTi7z/gna1gRTu1YY31TpACHYhW01L1jky5gLna4eqcqr+6RkkRXaL97o
         rtY4FziDvuu1AK18ZhNTeqqZL42ZVZKjMJl4d+xY96zMr+9WHlyDdotXR4hQAMASoiFt
         qZn0kzknB1A3hX8IO4jjf0qzN5dHxZ2EY6BVfa/F3kzyS6731kLIfwxV3BOP8+9ALuMh
         cbEc3JOLdxccFgMlRyydGWHDP4o/jEJ1UbGyePsrie5lIMTrDpLGakUftMjeRKkBdhxy
         mTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593076; x=1764197876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ojyXh9J+hBwCNMVLciyvICBaCTIpiiyWT0C0jl060F0=;
        b=bqXXjyF7X8GLjsobuNI+Ir4DsVb1ojFx6o3H5DTq0W6mEipkbP+SXClp2X13q6u4Tb
         fdG7b+s0L+b82oB9Vxp6X4Wnq/yCraPOeWIWD4NM9AfEIZzAAv6PAtRhEWEKjMQzV31H
         UPfwshruFZYgVem85dI22aiM3NOnET/LI61SqUpu5YqvlJq3XxU+8JdtKjuv0P9wAwBX
         9lRaQSAyqz+VJ68XEJZhUgrISaVCHzS/sf0dIClRdkgFy823KyMaSBQC4QMWiirTmQYx
         HrFL/6ZcGSjGa8Ouo23hG4tPCr5+56zQwIDa0+EGBDMEEFcm1Ih1vgvGzJ1+kT0OpJXx
         KA/A==
X-Forwarded-Encrypted: i=1; AJvYcCUOERfzo5Qv8pV+0aHDKRwNDz6Mzjyojlv0nLawTpq2jc9YEIBTEMAQ4VUkL8AGh4szCdbbay02H0dj@vger.kernel.org
X-Gm-Message-State: AOJu0YyOv/xtRyBhcELi16gnivD2Ifd5jgawaxVVUn9jfPhzGHUnpBEG
	ytFumBxK5pQ1o0A421saubBS3g+pA/mux/zOcB4tL3e6+TeuUnw/pawE
X-Gm-Gg: ASbGnct4oIdmK2q7VXciCYhKNeGFvDEWC+R/742BhD3mXoEU8PfxicQZiBrSTUrgi1u
	ss7rodFMbw64f0nkp7T7oB9st49r2pEwLYndiTE8VYOXzItKx8sxp3/Piuqa2ehHkTbNdJdRnJO
	wsAQxU+q9UByM8FBlfFlclTKr+bdRqvIGI7J4zO54nhnlX6UvHk9e1DRyFaEczNtY/wqx1HXOUl
	dZH4y7GYiXw77kn2oYypgUtQMyE5fhuPFk1xzplqPFEcPT+uDVm7SjYiCNx7RgwkmLLGjnJ2n6q
	B23gZgxNqEUOZcUlIRy1XgQVj/AqgNO2dqby6qLWr1vJeLBCiVNcwRb3UWExezVhVkw6r+GuuWb
	TBTq7Cin4/j+2i3QPuQyazMqJqkY2NFveLEN4V+aY78wgRjBItM8U2YSDc3jPJcX1+1mv+O9A6q
	n8FxSRCD23l3yyxQdtrF9WHjrAQb9szQ==
X-Google-Smtp-Source: AGHT+IEkoK4IKUSKkADKn3nl7MMZN9fnLRgr8FuZfcsJqIloseBEgJ9BYQnnl0mgNPa4iiUW2K74ZQ==
X-Received: by 2002:a05:6871:825:b0:3d4:fe66:28f6 with SMTP id 586e51a60fabf-3eca16b166cmr140484fac.27.1763593076280;
        Wed, 19 Nov 2025 14:57:56 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:55 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	cristian.ciocaltea@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V3 1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
Date: Wed, 19 Nov 2025 16:55:24 -0600
Message-ID: <20251119225526.70588-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add an attribute of "no-hpd" for the Rockchip dw-hdmi-qp controller.
This is used to describe implementations where the HPD pin is not
connected or used for other purposes, such as in the RK3588S based
Gameforce Ace which repurposed the GPIO for an additional face
button.

The "no-hpd" option was chosen to be consistent with other devices
which already define this parameter for broken or missing hpd
functionality.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..07342838cd52 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -69,6 +69,12 @@ properties:
       - const: main
       - const: hpd
 
+  no-hpd:
+    type: boolean
+    description:
+      The HPD pin is not present or used for another purpose, and the EDID
+      must be polled instead to determine if a device is attached.
+
   phys:
     maxItems: 1
     description: The HDMI/eDP PHY
-- 
2.43.0


