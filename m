Return-Path: <devicetree+bounces-54328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D90388907F8
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 19:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E70D6B21F43
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 18:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55321311BD;
	Thu, 28 Mar 2024 18:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UT0VdSwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7189F44365
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 18:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711649161; cv=none; b=tbSBjVPAW+yQLgy0ewgguCPbnqbhkwnETVVznpTjbnb/ITyWl6pGnyiUGBSlde+T1x2Gg1zxIEop8buWa/Qa5YcIf9pqPCjApgP34f8CisN4JRIIBq0XtIRwjV2dTQpJI68DXc2uloMN7vse3R0iyWtxa8NUV0exwxKU9SuPDu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711649161; c=relaxed/simple;
	bh=qscsAbt40/gPl52rNo4WQoaER2qxQL2qTuz6RBrwmTw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RK+PGkhAHICLY86GOwRmlggKsRHWPhDBLEE6kSCOQK0RzIlBHKUa7Xorb6VfVCgY57JPpEcln3fprHYhoTvRmOueyVR+IUZ7P6zzedCMZKgGoa8E903D0JwdHDLHHmlKIuMrrytcBKSSlA8W4ziYhyKqFPsPNubYYvVPRfJiVgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UT0VdSwQ; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6e69a9c0eaeso733857a34.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 11:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711649159; x=1712253959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ek5wO3LM3gGmqgT3OwHpdUS57Kk7r4zUT9EM6m/kBdI=;
        b=UT0VdSwQnJFnHwwWdvWWrAjZqpkBH+TQifLacA15cj9BCOBth2U7xUCvmiFcEQkgJM
         4I+BT9ph0oeuW+u4KV/N9GkfZewqEDBK5jy9mQKntTRN2Di0H4/qytUigVTEwdtmVvDO
         DD+UxSTeE42CT7OF7EGj5j0ZgKHqOXXwsEtH0A/evTa4thpD6e3yWKGuVwRYytwV2+zJ
         kRaqZ1sC0Uhzar5eaOOhqGiNmm3F5fgdNfAA8FIEY98ZMKWOOTeshkJWeGOZmFUk2zLX
         dN4tdZ1zr0QUpfzTzol2oilJ2ZqbUdXWegQ6mX1CkEGrrdycFYSPgnm4/vYem/nX190c
         YVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711649159; x=1712253959;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ek5wO3LM3gGmqgT3OwHpdUS57Kk7r4zUT9EM6m/kBdI=;
        b=l45gpRtUrdAxNVmtZ8uNYlgFLCIbW8xMrQCQ19OnlqyGqo9nr24IDulQG1j6V9pQyC
         //R5qfIBupah/DQ1Vti+Jta4jvFI6A57HHI4MVQvqIunpw8Ap6Z/2/5Iv0C01Md9wjhh
         6qDgD/hO+LoSRliEwvShXdTw2lmyIwYSCbgFWjmGUd+hkEOet2KeQF/FC834j/Gx0GpN
         FA4mjbOC3lOdCgs/SulZLxDdBqVMXcdjJKJ49DZxjmhNJ0ns8xBYhD7lSWE8Cn3wC6TF
         6l9sGmarUBKuEb3AnjImVlTLctO1VG+4THQULXz0n4lEGiguE7N1tZo1aHg38Tm+3uJu
         2AUQ==
X-Gm-Message-State: AOJu0YzkZgnYFJ83AWJ3rU3Xz/bOwa6YVED7QRiOBfKjUhrlG9DGsWaO
	6S71AeZRHgK2wRz7ax5LBDUsApv8GtTFfXx7+/PZ4TPX8Yfi0VOq
X-Google-Smtp-Source: AGHT+IEfHD7GQesgpsHHesu6fwh/997Z91EzpeVi+1/3m3wiNcMuX28CSm3m4gywzDkMi6pLp3cQcw==
X-Received: by 2002:a05:6830:1202:b0:6e6:ff6d:986d with SMTP id r2-20020a056830120200b006e6ff6d986dmr2878825otp.19.1711649159512;
        Thu, 28 Mar 2024 11:05:59 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id l7-20020a9d7347000000b006e68a501dfasm323840otk.75.2024.03.28.11.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:05:59 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable device-tree overlay support for select devices
Date: Thu, 28 Mar 2024 13:05:51 -0500
Message-Id: <20240328180551.361381-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the '-@' DTC option for the Rock 5B and Indiedroid Nova devices.
These two devices are relatively new both with external GPIO headers
for expansion. This does impact the filesize of the DTB substantially.

rk3588-rock-5b.dtb		75352 -> 150094 bytes
rk3588s-indiedroid-nova.dtb	69507 -> 136739 bytes

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f906a868b71a..26f306db0aea 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,4 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
+
+# Enable support for external device-tree overlays
+DTC_FLAGS_rk3588-rock-5b			:= -@
+DTC_FLAGS_rk3588s-indiedroid-nova		:= -@
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
-- 
2.34.1


