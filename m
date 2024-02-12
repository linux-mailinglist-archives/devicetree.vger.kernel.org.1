Return-Path: <devicetree+bounces-40982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38006851D48
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE85A280CD3
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 664C03F9EF;
	Mon, 12 Feb 2024 18:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WIwREiAY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4DF4642B
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763800; cv=none; b=MEOIO10htyoGJ6QE5HlaDdHvbhJFrGhETSCvio8yGV2pkIrqSUDrD6kiLnl5X+oQhOuWkqNDhjQ53FObcnuHv1Nd+a9LiJjR/JD1B56yU8kIpCgN6LNKlxKymDQwhpPcpG2zRGYk+MfJW8m0i/ULBPYxQIDPOUt6vlPGEnbpcgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763800; c=relaxed/simple;
	bh=Y0F8UYx7l4ajzHmdoPnGjtEjj0bkZGfgypKE4bDFO6M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hFpx4u6+sj6P4yLI41OEZZGvqkvNUIRNcALy/pOSjf+KycLBWDGmFhSHI9G7FOB74G10O+KuGuTrxAE8v3+fXc6vI24n5EdCCXKBwJhtIkPCv5v8RTOjz4vvBUV4aFaHflJHsD10ELjL0mtUwpQrD0Qp9RfjSGydaFm2cYr7MeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WIwREiAY; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-58e256505f7so1630758eaf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763798; x=1708368598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BLzcSEHbNUSeOFrNtcrpXIPfOMtCBqOUofoVjSWgQKU=;
        b=WIwREiAYLVz2fWI/hxAyKJrWIINtI2fvubxTrfTELEL2bLGN2NZR82KqKbw2yyeW9b
         JCga94w004eZHOZgvygcWvUOuoiBENv5UloVCsY88cka9L+9/uwTmIiO4aHni+Gfk0J8
         s1KggcF+MvSWLze0F8gyyFSWMBaIZQ6ZLJodDQob7m+VmA+xdRjmWyoaPKW0vnPrVQBZ
         kxuT4QQxE0Sxfmc0hKUwvlRc/ku0onA2ot7BzkgTecaz+uO22L3FosOYnGLtKtB+raPM
         V8wa8Zifh1CtXJN4nUY3BL3K24UiFD1SLRoq+kAAtkz5GZ0BQHGCm1XqV5Mjvt1Kq4Zt
         U8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763798; x=1708368598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BLzcSEHbNUSeOFrNtcrpXIPfOMtCBqOUofoVjSWgQKU=;
        b=m8I35nvXgpiQnmNbf81hJ9OC6IS9jc8CJQIczxfaG9jdFWlE1jQLt/EYYxwCdnbOWa
         k5qslu/PuEz8J1dJAWxKSBIYEsrsDHazYNYlYc2lhcvcWvNQj80K0VgQNN3xOs4h+wYE
         wyWFgqmb2FDxEIA+7YYJcFDB8nqyzDIHMuzakTXbpf+vFt2/nPP6tmz3J/bcpN1Cu2Vm
         oZLGnJDFxQ9qNfmUCTxeu9MpzYQKA6O+REY0RXbou0t3abQDO3NuGSP0CpJNzIZpX8k0
         OqM6GliOFBHOX5KNnLdM51NpoCcWZS9rWnLi9xd8OBJoUF8nNwf9llnqpTwgK6sPo3/3
         xF0Q==
X-Gm-Message-State: AOJu0Yxo3JR12bL8FmwCInqev9Cc7uS+mNsMZADiIImdG0xvz2yp2sH5
	1DE231XkbfxQqt7AQVqwqBL5RZKZO3zywW4n7rArsGrNlfxLHPUT
X-Google-Smtp-Source: AGHT+IHneg5XD8S4MizRHRt/A1l7Ent/MUBvmmK/9w/tsrBI3iKx6+jgmxqd49TSSEHch/JK9vCwvg==
X-Received: by 2002:a05:6820:d87:b0:59d:3ada:e3dd with SMTP id ek7-20020a0568200d8700b0059d3adae3ddmr5725639oob.0.1707763797902;
        Mon, 12 Feb 2024 10:49:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWHcL7AtxWani3dggaoRAzrQC/P6uqNHc1JJtDf2wpBkcvKsUYL+Mn7PrL8YZRQLocnfPPeQz5C8DGAVmTrTxLhbWYbJ11eaV+hYG9IL/cO9tA16yA0uDP+/2gSK8rz72DBbrhUcGk3PAW97VdpdNpOii0/MEDbA+hxZH0hQPYv+f57lSrrSgGWdWSGbzx5Trf4o0l/kv7wOGz9pd7VbzC9pQSgtieEQC40NKGVdK8IrtWCIVpZVbBAfo691Y81XhkcF8skiqKeEvhDVeQiygVDaueAyf9COSoxBEgrRl8LwAhgPY8Rukz9sY1MdJnD6VeDL/n4SPFoNYyo8ljXUGxrDs+dsZWfndr5+Ds1ygJfq5hG440zQ5EYbCyo5rTfOGSdMO427pycf2/FurDo68VZ/AapVtlqsSnAlq/Kuwr2WxJXoVYFn+9OC8aJ0VNNZtuazEq2Kcx+wTwK/hEAUY1PsBhQEjP/w/9vEp7SaFsGDjWfvLnKgTuOnzWnNlV5EThGVUyiGxQdKgVtPkAmj3B/MgAc/wK9p1hxG5tBXZP5Hjl09nEhD4ONTIZy
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:57 -0800 (PST)
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
Subject: [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Mon, 12 Feb 2024 12:49:43 -0600
Message-Id: <20240212184950.52210-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB10MAX3 handheld gaming console.

[1] https://powkiddy.com/products/pre-sale-powkiddy-rgb10max3-handheld-game-console

Chris Morgan (7):
  dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
  drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
  dt-bindings: display: Document ST7703 panel rotation
  drm/panel: st7703: Add Panel Rotation Support
  arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
  dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
  arm64: dts: rockchip: Add Powkiddy RGB10MAX3

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 .../display/panel/rocktech,jh057n00900.yaml   |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3566-powkiddy-rgb10max3.dts    |  87 +++++++++++++++
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    |  18 +++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  18 +++
 .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  18 +--
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 104 ++++++++++++++++++
 8 files changed, 234 insertions(+), 17 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb10max3.dts

-- 
2.34.1


