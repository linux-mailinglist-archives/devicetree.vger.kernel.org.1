Return-Path: <devicetree+bounces-52954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1992688A849
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADD9A1F67EDC
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78ACD6F06E;
	Mon, 25 Mar 2024 13:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S/YguyXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EC16EB7A
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 13:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711374612; cv=none; b=p52S1G4ql0Ey+iW6TaUl0S5Lxdxr8Qwv9IDpQt9q0CXN/Aku1cLvSE+BJpoL7ro5DZQCce0I1KV5p0eFob6HQomRUx5nOqQ4SPGWfHQHpKdirSNl7ts3pzV9QgLeujzMdeIiLKHvOI0e+4jGnfALZfQ9M2iC9lYra5UdiW8t7dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711374612; c=relaxed/simple;
	bh=da+O2q31jUmmbISqRA/eygk+SKYwKavrD+1t2CMBlDU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RQS3zmXrenZsR6KVsP6H8v+02T1Ot9gGIJwXanUiuVRBzqFlV4g7lbSIXedObNVxGdIIKvzFuL1JdPXQNLOJ2b5ifeyUTX3i3Ri7sJPWymYyjeZ/3KZsQioxVIhjVNDfDmZZcFH/X9UrQxf6R5uE/VBT8By3wFI6rbRHuTxQd6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S/YguyXH; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6e673ffbd79so2602813a34.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 06:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374610; x=1711979410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JS2/Y8Y8K3ElC8Fmmv3IDuyjPkRstgcDAr5RHpoZx1I=;
        b=S/YguyXHPYpMpAHsxyvuOJgr1ifuexzWeaD/UTm+ID5g4qLRJIRUw2YDGWJOpoUu1y
         rysMsnZNAWcJdIuiSXLPuUYEzTOEzEJuY4n43u/KXIpJKo1hxdPLaXKRQF+VNMTYjIxG
         eQBO2VCkTvMHR/ufYeivf+bvjpsieLzwt68tVeRdNP8XKZndlIhLEXVtO0Tg7VDiZe0G
         dzRX7eW9X3RCk3qV6o0H6rmLGAWq0lTQczx59LokAGhd2PnKihnE8CKjTAyadYCp0llh
         HiWR7NF+L4EbbVvEVG0fthCM0cp3SYFK0xtmf1jkN6hxmQ3YXaLq4A9ESRH6DNoSYjp7
         OF4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374610; x=1711979410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JS2/Y8Y8K3ElC8Fmmv3IDuyjPkRstgcDAr5RHpoZx1I=;
        b=B9EdlVxtGw7slAYiGSNEx1g1JBQxRJEbpvkdVi7csMDNKFxh56CIS3renWoTfeqTYh
         1zNUmv7xlM7WGAv85nzSsDcsop3Ze+AGGVQ2LiD2idEaNaZVdXuBS/kJAZAOXm54gZgk
         JfRWWGC2gz5OIu/pn6obzJJ4DJ5FcgDaTXar+w+YjpVWc9pDpjK8RrUzPFaGWD5GdWVM
         B7AaPvy2+9IcLkAQ/j6Dmheb7TUpFRxWknbHeyUDIhoI4PrjAixWRuCau15yX7k5HtTH
         Wk9X3DD9Nfs/u4LfeqhgXh+ueAHFA/Nm3DoUf4+4ISsl0r6v/EJcDrDuex1HK+tW+W8E
         wUyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYtFRVLxaOTvoFCdvRbh8R8w6a1vo/ny3K7fs07rjGjUeyCk9tUpu/aFSOdhinhRwstDT1D8ZSlMgnpYxBwqbTnULl9YOu5XZ6qQ==
X-Gm-Message-State: AOJu0YycOACOrNvWd9mVsoNw7RCKTV/BI1byZEMFB0LesK+4XJlyu7jw
	osxt3cz98VcUjFXpCI4Jb9ZcCil3Yl2pj8dndGJ2U689XxW+8sll
X-Google-Smtp-Source: AGHT+IGWyhKpnx2GO0ioSHzyF5ByLr6tXZNNC6I7VkpE0YbA+gzx4HxXehD+qvNjWNPVR4VKwjL+zw==
X-Received: by 2002:a05:6830:91d:b0:6e6:9679:b3b2 with SMTP id v29-20020a056830091d00b006e69679b3b2mr10557687ott.21.1711374610064;
        Mon, 25 Mar 2024 06:50:10 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add GameForce Chi
Date: Mon, 25 Mar 2024 08:49:58 -0500
Message-Id: <20240325134959.11807-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The GameForce Chi is a handheld gaming device from GameForce powered
by the Rockchip RK3326 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74..a5498974ceb4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -236,6 +236,11 @@ properties:
           - const: friendlyarm,nanopc-t6
           - const: rockchip,rk3588
 
+      - description: GameForce Chi
+        items:
+          - const: gameforce,chi
+          - const: rockchip,rk3326
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.34.1


