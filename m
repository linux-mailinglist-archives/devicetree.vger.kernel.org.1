Return-Path: <devicetree+bounces-40988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F90851D4D
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C92111F245CA
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DFF46B9B;
	Mon, 12 Feb 2024 18:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lvao136A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBC84655F
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763804; cv=none; b=OKi3U2lbqBO7RdMKeaTyJnnac7uXAOMQiyHHzaOwCD+SJNSuT8GAti3Vg5zH4saOAQz0++Ju2JcnTwVV4VjzrTiQxuNeg82Uiz8Ch3y3N27e+3swveKjG4kTFLLmrV63NvuurP/XyjWymqVb8jPk/XmpF5CFJquoWwUhkZG8J84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763804; c=relaxed/simple;
	bh=fsog7bRQyUmSQxm+iyi5bAQ24xHjHX/fPwKSICX+nzg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZvgIMBQp7yrOpTfjMcoimCGywY2Khp1dgLgswi5l8BbON2smnpdzpHmf9gio8qa80POtpCl1kU5oVmOj3MJ7xhvMdk21I0Q5MGKR8QYBzQSSLpOsXCNnTeINWmhT7Vs2Onuo1p8+bC014eT+sdAJ2MenuooUlDs/57H+EEhr6VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lvao136A; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-59883168a83so1191878eaf.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763802; x=1708368602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GAxk6zsY006+CdXJFHNEbBOsPg1Aj77aFmaDPPFfc8o=;
        b=lvao136ADpONcvdrZG3hIoI1CHJC4EJQlxQQzFmX+hsk89FJ02R2waZEHBtwB0oBHL
         Kq24VLO9Yrc4OJN3lOs57D1ewrF+zdYy29pthpl8PUnDXWnvx+tL2WGkjQA/Tpn73kNL
         +OWr9WQtTibDIGidzjQ+b+VgHcx7Hj3BRK3XKGn5QavQxB6O3ebXEBmoAOXKne/m7r5v
         Ti85mLsPvtG+hyWK6E4uYSkYyEkAueSbVfhFW2JANe3cffIgZYtSFFAg3hnULL46+sWK
         fsT84Q840o1WPWyvmkjF75GEtvYxn0Tu62x94O1X7l0uorWizm6CgUP9r/A+DRmBdXEm
         HtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763802; x=1708368602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GAxk6zsY006+CdXJFHNEbBOsPg1Aj77aFmaDPPFfc8o=;
        b=R5EdFWlonrRmaEgfqNO8fmlYMORMMDcm+h3WNHH/0pjyGfVFbdWRcsWqEsvtaA6Q9N
         kqSlEqkr3mmqVQOGZBu71EMldSDcg4kKQFHX5F+DoDgkZLrNuyzPVDwRHBaEAGA8RzHf
         RgTXVKXDBVEzuwhxzSzc6ZZAYz8uocMQ8rs/sJBJ7ecU7TQFqAOelJ3GLtg+u5HJ2vct
         tYtsLe+n2hcGp52HXUu5hW+pIf+AkL31FavvhVvxRf5bMha+6sB5omfobq/PiZwy/PIy
         gDbeUHLW8jCCiRhWDoU6BuF4AWO+ljw3rVIxyUpjo9AVLJ2ZqwApIcRCd92X30bk7g4s
         VwsA==
X-Gm-Message-State: AOJu0YxvbUFynKMZep+ZVe1op4JuhW9HK+fc6uPAyVJFPdx+EZvHb8ip
	gdFk0TNX++WuS+gneygKlnJaQ/619UunC7jnk4M30y1pncsfONrI
X-Google-Smtp-Source: AGHT+IG4JPNFvgManuBh98r3P3BSUJPLxom8f7QyRDcXHUAlIIydohC2YLLtPabAms2kr1vtYZp36Q==
X-Received: by 2002:a05:6820:c0f:b0:59d:4a67:cebc with SMTP id eh15-20020a0568200c0f00b0059d4a67cebcmr4021084oob.8.1707763802286;
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXMe37f4x8CkBxc259TgyyFevQ4PbfKk2cgrpJtoMQJprs4FHbRuHdqk6qGveNFCAO7mz0AUXnTqouRTOea3ifPqPOxxpUmzXeaPH3jiPiyNJz1Mx8lH3KjypKRbfSPqGXLxVrp88B2i8rqXcuV8B1aMScc/mynw4vtGfEQHGom3QBgVcTOAgv8MOZkRwHJqrq+LrSdwgnwQOS6+NjK4Q9CF7JQRBoyH1uIADgcuDKqOFQbBgt2AFBCQtYxrlP2qdiUNQhmvtVmM8Ls9sNqplA+VFY2/Jr7lPDLRg0/j+yRbxIiQhrKlVqICWjYZtFch4oAzixg+8yDgSjJ0kxxqAZIsCCAXtcPUokAbrAiDLr88KJ5ezBmVCilzL/lvSeac36P39iKP1IPyKA2QPGxBn4bJEHZV/62IswtO6LBNTD1piuZKoc5WeIL0Vk/GR614iuwOAnvl5ctMVY21O0upAUut/kN/LGzLNlspsRGZIHTdc84elIkBZbrT9XRrxVqKHDgPVl/YGjeqeB2YzU+PQq9VjZf8jMal/HH52dngMfkUugHFBhCJdNTkGTu
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:50:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
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
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:49 -0600
Message-Id: <20240212184950.52210-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RGB10MAX3 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..4ab0b92cf241 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -692,6 +692,7 @@ properties:
       - description: Powkiddy RK3566 Handheld Gaming Console
         items:
           - enum:
+              - powkiddy,rgb10max3
               - powkiddy,rgb30
               - powkiddy,rk2023
               - powkiddy,x55
-- 
2.34.1


