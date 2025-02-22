Return-Path: <devicetree+bounces-149890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D210A40B73
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7B3B1894E6A
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 19:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11CE9200BBC;
	Sat, 22 Feb 2025 19:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TVBip7nb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CB5145B16
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 19:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740252857; cv=none; b=k0iSTw3pjF5bbqidgtFSmh0BemHZtKuNrgHCZTXudpn/fPEydqYsve67W+wvg5kWkpEFAkLpljMZ+yj7WBQma5dJZnqGA7mnaxByBcrLxrRIzrCaXszKDB0wtIXHN1jOpeZjrwordn9g9TW3NdWiOwRVuEumk27nm+LxZSjMJpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740252857; c=relaxed/simple;
	bh=zvmp7N8tL1zoPpfYDixqa/3EzhUslHblS6hVDEzmodk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gyxDHaqKO7CpcjEw3LUBGk4Yc/94jCl4qI8YQKTLetEYV8S0Wcj3GysmsoYAbstUtEGl/c2WRpJqt32FRkH7LwTI0mqblK7mzg6HkcAv/Qlyl/o7Ugl01n/p4IrmUho9mlzJBFTq5oJPKJQWFhpFbIlHz95oeJKZeFHPPo5WslQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TVBip7nb; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3f40a38cb6bso1466407b6e.1
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 11:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740252853; x=1740857653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPcfkurtbMpldzDsTGUmb4ViHTY8bVGf8RoBJkJSMuc=;
        b=TVBip7nb9sUiBfj3MS+Hr5oElR87PSYyWeV/Mzeb/Qs7SYOgQH4+X/sOGXXN6njYQL
         GoOX1fRGm+1UsZVH2i6mR3l+Z2iPnCO1nNf2MApX/xBGiDC4MCHcE4Jj38TthkHt4BbS
         4RB9vWgPs1h//ms7aJFMXhFL1DgO2qpBRh6CiIepN7PwhcuTBPeSZpbj0Bzeowgn214/
         9jM6WsW8AttV11vQSj7AZpvxIWrN/RLBeLeAdV0ZqgkI/xIQjtwKMsa2v6UveJG/4Dd4
         JnGaySi9rqix20sM7EX1igXvBvRLRVtdeFbisZcjhjv0FimuUWCoWfmFQx29iyl6E0V2
         IUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740252853; x=1740857653;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPcfkurtbMpldzDsTGUmb4ViHTY8bVGf8RoBJkJSMuc=;
        b=ZjE+AcbtWvhQtK7mrQCo9bEM2mnpPHHOtyq3ElQ74hu1rknMijI5Sv8d0wcTXzJaKw
         GljiylSR/ayUKyeO7ILO0g/eM1kjbJVccL1P0vOfl0uxxJjl8+XTMh/h+i+oUOe7xdgK
         Zsx8pH9YSYPsuxFtx9f29zcMrsQ+vDWMkr99PP7Plmk5e2MKTgI/YFVAbcDzh5vOmnbj
         SYmWse1UZsOu4qm35asP3QYa7+NUCcD6LqDzbqIWWQP8Yhhd4uj3oKI0Vu+hYhR6Cc8E
         4Q/FjQIIzCHCnfTK7X+9kJMFbzuCZIKb7BbHr5iHA9tYBDCO6OBqqUqRL6/CIfe/Nfjg
         40iA==
X-Forwarded-Encrypted: i=1; AJvYcCWwAGIngHkB1YaZY3yNO94wjkYzb64HyUkNPdtCA1xv6t2zkf4jNPZZ/+l0KSOUkp8RRJjYOye5zpSi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj0ntQ+BpWe8pZlhrqkYaoQTT7RWrNPB+NLaVm+CX9pDeEnp/H
	9/6GtG0qVyhpvWmiWEvmEerrzhAd+VxuWeGzad/kzKN+ZEXKNaTd
X-Gm-Gg: ASbGnct31Dx3zl4db4sWHb0wg6HWD3PiCV2qid+RaouTpubc4XPkRYU6LExnwBHm635
	/jXbqIJ6ZCbHi9p9SS4P0vtEXgRSHYLSSTUHaVM6UW8kKAHO9uubivh2SD9NpE7cOVDceJ0Ahn8
	+oIxBAX98plFGpXTfiNjMGQsx/4rkCCPa6CP/t5Rt9xUPer3zX3y8MlJO0tS/PiO1SpNf65ksPW
	6rUcLC9xdmJAAlh7WOiWviMpITvwQq9JVNrf4WFjs8wGXAU6HtoBRHQ8z9Lhxj+F9yvU5MpD2/R
	RqR6imIC6ztk7vYxtWwgSUjUBNfPO3Zhew==
X-Google-Smtp-Source: AGHT+IET6d/sWjLDjT9VEx0tIX/4VD8IoFUnsGN8UFD2USvFTiuHEvg9/taRe2SGLH4jcRNjtc0Kpg==
X-Received: by 2002:a05:6808:f8e:b0:3f4:600:7f73 with SMTP id 5614622812f47-3f4247a0099mr5578656b6e.33.1740252853486;
        Sat, 22 Feb 2025 11:34:13 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b69:ffa3:9d4e:2cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fce7afabd8sm2724012eaf.34.2025.02.22.11.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2025 11:34:13 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Johannes Erdfelt <johannes@erdfelt.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 2/5] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
Date: Sat, 22 Feb 2025 13:33:29 -0600
Message-ID: <20250222193332.1761-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Ultra board.

The Orange Pi 5 Ultra is a single board computer powered by the Rockchip
RK3588 with similar board layout as the 5 Max but with the HDMI0 swapped
for HDMI IN.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 23293344d8eb..c9914725264a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1141,11 +1141,12 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Max/Plus
+      - description: Xunlong Orange Pi 5 Max/Plus/Ultra
         items:
           - enum:
               - xunlong,orangepi-5-max
               - xunlong,orangepi-5-plus
+              - xunlong,orangepi-5-ultra
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.48.1


