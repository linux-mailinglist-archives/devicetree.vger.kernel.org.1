Return-Path: <devicetree+bounces-174834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6FAAECFE
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 812BD7BC856
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D9AD28ECD9;
	Wed,  7 May 2025 20:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AsnX3Amh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE4428ECCB
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649368; cv=none; b=FvPJeBdCeyOSxRlBeM9USABnao0BF/gArrYgQLIcrai+jrjMWLNSvYVa0dchthKj5NTEx7pIQSOYm/LilltGtGPyX1aaktPFW3KbQTF8zO921qQmINmjp0cx+CgqBm+1XV7aKPXHmplxAqbfKvvDY6GXTpKECxusEaHX2G0vFUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649368; c=relaxed/simple;
	bh=wXQ7W7ZWxl7n7ZHArkFcw/VRY6p8yLTzSjGvpRdnACk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SB69kPf0l12QhXxbUbdLBMe+2d2iAhkVHX0eg7EHQbnVZWl0VmWSSgFoQAIXI5ZKd+dpnglTO3itKCe/YPet+5Y296kWhLtYFqoT7CjQr1QBGPGpXuF6880JldMUN7e1scIJ1yi3RJc8+Q/a1XHJq42OWAHkcxwLCtm/XDgGtpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AsnX3Amh; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72c173211feso67569a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649365; x=1747254165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SjhJjaIvcnDBaUHu5Cl0khV6aJlrP78s/O1dFNpl7CI=;
        b=AsnX3Amh0e71UqD8VrB/afmDLBblvz1qRXPxYgN80sTeQJAg72OWyJktjaxlF6Nl1j
         x1Wcr/IvxuC4kQwH1s/jxlZMLTpXu2iHUP8uOy3m18y+I3+3USDgMa7oA0+dL/3Nd0p8
         BvMpVs5uTCnSMv/0VewMN/7ebJJGF2ZqUlJcHEyAjpOvKZeJiUoV6NJTKnimpShbsflH
         Q0ebu1ElQ+G+MYyDq7KcNfYLmb3woUVHXEZEDhuuHeRKinGQPy6JQ0vIBTHaodTYT2eh
         x7IVle3qQHaIU4rnQLAgb4pKGPxPjGqBx6c+iV+Q+w+UcsOmkyOJbcG/PneVn3/AgwLC
         gn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649365; x=1747254165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SjhJjaIvcnDBaUHu5Cl0khV6aJlrP78s/O1dFNpl7CI=;
        b=jbFckUJbdWtWIXgX3Kfh70c0WDpD7CraELtbe0woxTKBZ937wdlaZZUMNoCqmK+bCI
         kZvl079yTalvxOqw9mCuXbRWQrstyGNdafn/AZnnQunnNVeWG5y3yIRlzfhBfV72JsHE
         6Iqtj0lUNBWqEwUv7bJ1hfBKadvumCQ5zo4+7HuGR9QhK8CrOmIo/EiJwHxEGzIdor2t
         ak6A5xEx/Z2F/+GVe6sz40Rhrkb1682hcT/j6Q7yL4tB0QgnHoTYNT1sTuD/XlKjLTZP
         uy7xcjZi8tlVbOpKnwH7cqdipR2ai3VQjrfCcVwQBcdHkTJrCWJAbEyj/Zp5f0gQhQ/g
         mBQg==
X-Gm-Message-State: AOJu0Yy1FvitBEjImpoCLiaRZhEiYArinbI1ekvhhwIlhYToGW/gTF8w
	Xn6L8Smid8ZzO8dpFd4OXEC29Pes68LYsuzrTg7ZkiBIIMRzT2/5
X-Gm-Gg: ASbGncuUMIpbFEI2rqvK0xYO81DcEeqrfS30rVK+WhnBuIUccqPiwV/T+SpN2ZBJMuV
	IoS8mjwwLKKE3CoPvOHmrVbF+rYEDHM0HfAKPRH04gHbadAsaB3skbqt0V7o73mbBDSsCUP58gO
	wpQDD2E0tCJ0xuQOjNYvhxPdPNC0fS8KRT4tuMFDWAXbWSfNdrI6lHzeCqvnRlxCf5a9OpfZC2u
	RjyfNvzR6RrOo+8UHGHi6dc7GVmWjIUdJscQmvvRybtJcKvBQCW7ImHuyCFBPdcUeZlbQqAGG2s
	YLziXQ3CTh2HJxwr84G/fe06oL9heYUpEDb+qUN5NPUhmMbNpGSi7Q7YA9Xg
X-Google-Smtp-Source: AGHT+IG4VEv+ll1E+etIO/RyZfeFwZQSA+7FeaHNtj2wtpn38UfCsWG5LnoVjjBVpMiy/mgpRspIwg==
X-Received: by 2002:a05:6830:3985:b0:727:423c:95d5 with SMTP id 46e09a7af769-73210a6eba3mr3371615a34.3.1746649364822;
        Wed, 07 May 2025 13:22:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:44 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 23/24] arm64: dts: allwinner: rg35xx: Add GPIO backlight control
Date: Wed,  7 May 2025 15:19:42 -0500
Message-ID: <20250507201943.330111-24-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The LCD backlight for this device can be exposed as a simple GPIO-
controlled device. It would be more accurately modelled using PWM to
enable brightness control, however the PWM driver design for the H616 is
not yet upstreamed.

Add a GPIO backlight node to the DTS.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 7e17ca07892d..95f2ae04bd95 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -21,6 +21,12 @@ aliases {
 		serial0 = &uart0;
 	};
 
+	backlight: backlight {
+		compatible = "gpio-backlight";
+		gpios = <&pio 3 28 GPIO_ACTIVE_HIGH>; // PD28
+		default-on;
+	};
+
 	battery: battery {
 		compatible = "simple-battery";
 		constant-charge-current-max-microamp = <1024000>;
-- 
2.43.0


