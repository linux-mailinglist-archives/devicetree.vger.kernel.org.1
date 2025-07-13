Return-Path: <devicetree+bounces-195813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F37BAB0321C
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 18:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EF213B1479
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 16:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0886C1F03DE;
	Sun, 13 Jul 2025 16:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DTqXIWHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CE64A04
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 16:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424440; cv=none; b=qUAIvCwiDZ8Fmm043CGBoMMNZov6M+8MpVXM4msZZcBvjzivyR4I9CXAV9SfDUChr/Lz8tdYhgeJKHUWmzI8kTIVP1ukV9WApLQ+Wm1NpAJdnIpFFKXs6SX+FfwwP39YEyNA3CFJDkrb+54wWL+QkYH9TcCKZISo5ueBJRxbCPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424440; c=relaxed/simple;
	bh=sAduwPH2ABTlaRcbJAvNt1jPHknxL3l9ZXBVgwcg1NE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oxVPxgIYxM4vKQaUnYSXThMxjW25g3fwbvI0dJoLWnEX5iCMdh8ul4MK125DUQYBSL/43ApEvS2KlG7F5foYO45zvPB4WcWKamnDgg53WDjrlqXkE6unrWMqA+xQUrmnXwpV753by5eJYBN9tXnKlxdYONc9W8GCtfWStvETLoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DTqXIWHk; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-234b9dfb842so31756245ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 09:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752424439; x=1753029239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JNiZDWh09gSc17UD6XGs5p9O0T6ekFI4zm0JXhSeABA=;
        b=DTqXIWHkrdwLHa0nqXkY2M7ZiGhP0Un3QdPEq4lC3vH/ymCLpoNXA9ZlxmZsZlO3dG
         jmwm4f82WxfRylPzur6oRW3cYXHPJ9S7o78n3hYzoK7GxwJKWU1SvMNIPBWq0HhLyDsN
         U9BU0S8XodkNBp7XH6qpPdgLo4L3i6DWuv4d/3tP9DHrRYNaIYYfcHXuFbfU36VGaNlD
         Hs4wmpYNm4DzBv8EnchCcSUOgXjn0DRxDgZxiGodJh6NK+59Wy59gfO8cpnX/ELcwsYn
         2uDY6+tV7UZygl2PijaCKi/5FMrK/EJGqiUmu8vRzeUuU0T8Fzu7y/+ixdGqlHeX2WQI
         pCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752424439; x=1753029239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JNiZDWh09gSc17UD6XGs5p9O0T6ekFI4zm0JXhSeABA=;
        b=mTk/oiv0W6BcTwtPgQTC+DuCOQ+rWVcOlBo69hEz42oFTd4FjgEvXEUls/L0SFBunp
         1KCgR7nO8v6CBR5Cxj/yM+v541DUFdK+BsBximLEDLw2yRSvwbKlIBOZMYCbbpU0IbPR
         nPZJ0vRarW3116hLKNlCPtfnP5rWbja1c6Q6/Df5h6kwIIrIWuwNvBN1cYsYoHNI7j9s
         08vXNT1DirIB2PDD1udnT7JWLKgTWF0EZVpKo2mrpImAW3xt6T0ePOwXBB2xApWMu8Iy
         UOhBEbmWmiOPqQpcEDxoHbBGyFykuSoDh7e45aIVF5WedZSST+B/STF13UzxqWjnreac
         BWhw==
X-Gm-Message-State: AOJu0YyF8HjAxYC7AKhJYeAWJTOfkYRrNd47JOf+lGJa6Whchw8UQkY1
	b4pJb6muv92q8NlXNGbilOkS/DtxG4F4SPDdmPzyq8gJcNWKIMfD5b69
X-Gm-Gg: ASbGncukR+eZGyZLf8qXM8RXZzaGFCmts4dyWwH572rkD2NcxsF5cSLOGHS7Ibg9el5
	Lua7Kxqj1ANW8wz7mJVSh8yvIYTEtOeN4yiZxa0ezczJbMD3hqNxZJIAgT4/NwDcz2rX3F9l2L/
	B73FPejxd0X/2EBj9ISeRLgGEIq7QkfaAD9JwltbkX4oQyFF1475+yHWv4mLkXn3EOcAl64yBwq
	EiWbUmzqZLUIfQkEDz3T0mPP0ES7EM+QgP48Mvq01pFpg78vgqlvU+wlmDRkD1WhMMAMpU0Hiu1
	oePvI3Uwy3RhJbw6RO2ixT4E4pb80hujTW9T7WjZN3lKwb31AnF7Qg3FjXTAAzRGeENYJxUJhzN
	0p52hfA41bIsVKrBJowVrRkJ7h/qZl0cmtcg=
X-Google-Smtp-Source: AGHT+IEdyll58K8RJCfOj/b2BUuNNmUO/33CcfX5HEJHeRRkPpPprFi7Sds0ZndOnIvdOSA08auyYg==
X-Received: by 2002:a17:903:11d0:b0:234:c2e7:a102 with SMTP id d9443c01a7336-23dee292477mr170412915ad.43.1752424438807;
        Sun, 13 Jul 2025 09:33:58 -0700 (PDT)
Received: from arch.localdomain ([155.117.228.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4285ecbsm80809655ad.48.2025.07.13.09.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 09:33:58 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	dsimic@manjaro.org,
	naoki@radxa.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Cloud OEC turbo
Date: Mon, 14 Jul 2025 00:32:54 +0800
Message-ID: <20250713163255.163669-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250713163255.163669-1-jerrysteve1101@gmail.com>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the OneThing Cloud OEC turbo.

The OneThing Cloud OEC turbo features the RK3566 SoC, 4GB of RAM and 8GB
of eMMC storage, and supports one SATA interface and USB 3.0.

The original function of the OEC turbo (shipping with the vendor firmware)
is to serve as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5772d905f390..e662a6927e86 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -742,6 +742,11 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Cloud OEC turbo
+        items:
+          - const: onething,cloud-oec-turbo
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.50.1


