Return-Path: <devicetree+bounces-251179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD1BCEFCB1
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 09:32:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 32525300A512
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 08:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD7F42C0277;
	Sat,  3 Jan 2026 08:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SMZQyttO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3607F299954
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 08:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767429163; cv=none; b=Qa+FxmCWGWDBnRO/dyGa/WmvyM1vBZbZcVuhaLoqYjL3ArG6nFvVNB1U0VRCeRJralqMAgUNim2lAOk9JzcRyyXBCTFAwuX8v1ArsSYgERjDDoiUcL5aMlyeyCj30AIo7qHRny6rHBCgpCl1uOt/OD4sMI3zAV7YT5utGghRn8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767429163; c=relaxed/simple;
	bh=APEICU9rUkhpDIjej28NsSuSNcUg3PQt0p6LlFlD33Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PU6B6Lw2Olmq8XhRgK9nJA2a2ZO3z05Wne2nPQeriB7ONXUTtj1e0UFyYscqIp+q/pTwmvbK/Qave0ygCWnF4u+aCrmIZ/JDuRjGdPE7PutOAPLtIZij++DDQwmTbIRDIusX5biyiiGuU/3jwK/a75FAjeFkHDxXbdFvDGEfMEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SMZQyttO; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a0a33d0585so116122165ad.1
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 00:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429161; x=1768033961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/VnPzfp1fQvhkaRYisdGLmhxps8C201lJVc83Pn+yP8=;
        b=SMZQyttOMQgSZSnlTT+qciCxiSEDvRphl4LJ/0fb6P/8lx4OxbJt4UB/Ws4TOeIp5g
         S2BI6zlaNPLhClK9BvJnOfXVa+KooZi74jYMwDp3LtSSUDRrml8TKZaAf0xB6aO36NyF
         F27OILSj6eMqF7bwe1ufntnchmtXI3ekXDXZYbOyrUiDFNOYN9mpQ7Yurl1OfJppW2zW
         7t6yWjiuHw6q3JRNl2lBTUiAobHjuhcDb9K/eGfaiKpoX4Zub4p9uve6i32xPw1HXC89
         zfZduIz+/d3RhWR4OYmRj9A57nssjj+rtfs+3dt8W5DKOBXNbaUIFEBu41rg0+ExOTM6
         0B4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429161; x=1768033961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/VnPzfp1fQvhkaRYisdGLmhxps8C201lJVc83Pn+yP8=;
        b=rQ+lIvc+iF5fUilAlWHiwehPNXBcKOQtJilM1vjvm/47MOM74zhbt6r0RyTlCzqKWk
         9Hpn1qP4p7zyRqC+sC+FLtwjy5U7lTJkOvpfiSlCwRyGrHjiPaM0Knm9fd0JYnrhg8fR
         rd8jzJPtSDcsFvPiTrtIsWPypO0ynZ74tP0F0qOthHGESR4PXWFyX1ukVYvShF6W8o//
         hbB9icOqI2t5J9X1f0JYsovfA6ezJHWQNKhADofU0P0lyflfDLtsL81+4ILQfh3XbRXl
         5G3T1h+wk5YgK4O7hIMXqRtbkLMCrIYdXBrKblQxJDDlvYNZw4qj3EGyoRQJN/j0NyNM
         j2CQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNn4uhnsPcG19ZurTW4FnFc8MxvgsCoDnywE9ljphpQUw/kWaw3WDE4slUiVYmXZ55zssGQKBBSXuu@vger.kernel.org
X-Gm-Message-State: AOJu0YyFo/6iqau6K5gs+WinhEYMHzZc7viPSWiND59gaj6SV4wE36MC
	pCKOqByYr7/CKuFU3Tk8dB7almSnyPlapO9qTmSfXWm60z1zEmtBGlyr
X-Gm-Gg: AY/fxX6BrO8yI4QDbvubAC0UDqmk64bqAV47CXN3lQxGOm4HigKzYQdi3qgTs5j8i4g
	dGb4IaUL4hxZt2TKiQ8Obp9QoU8G7vx+0vUi4WFCmlU0VqZZwPLsDi9BlUZJmLs2mq7k3fOVez/
	IJ2V3jn1IC0QC4C1JIkma13Jfc+cKMs+m+J8EGTqvV4vbNAitCUqP4mrth5P02Mk54bcHTipTd5
	ugClxU0WRYUxV8EHRISCH/3deeFYo6uv1rWdJp5xt9n+tkhvQKiuAfiIGTwT5glb+nY4cXaWfWR
	9uWtno9hxcrJTSjJyT5qLecicI3YImHEV9gFFEaHu6002Oph4ZNCdYhxC9M97JWamWXKl92gj5F
	2jIQYobPbsee/4uS9Wp7Q0zclKg6BHBGnyRTilPWuEYficJrgvqFaNQKre8Yk4+45mh2lAdheb6
	Hh4K7VQQ==
X-Google-Smtp-Source: AGHT+IFoulmgJlcINPNA8cZbhnmS4JTmUEE8b7brlKlIn5OURft66LBge+OGHsQgzKapPNMd4n6VcQ==
X-Received: by 2002:a17:902:c103:b0:2a0:97d2:a264 with SMTP id d9443c01a7336-2a2f2735214mr289212675ad.37.1767429161344;
        Sat, 03 Jan 2026 00:32:41 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:32:40 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 0/3] Typc fusb302 powerloss issue on Radxa Rock 5b
Date: Sat,  3 Jan 2026 14:01:16 +0530
Message-ID: <20260103083232.9510-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi All

On the Radxa Rock 5B, the system occasionally experiences intermittent
hard resets during the boot process. Initially, I suspected a power supply
issue, but further investigation points to the Type-C fusb302 module as
the cause.

Specifically, probing or reloading the fusb302 module triggers a hard reset,
which can result in immediate power loss and a reboot.

[root@rockpi-5b ~]# rmmod fusb302
[root@rockpi-5b ~]# lsmod | grep  fusb302
[root@rockpi-5b ~]# modprobe fusb302
[root@rockpi-5b ~]# [ 3389.031608][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.
[ 3390.030444][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.

I attempted to trace the issue using ftrace but was unable to pinpoint the
root cause. The problem appears to originate either from the I2C controller
or the PMIC reset.

I have identified a potential workaround involving the I2C SCL debounce settings
for the RK3588 and submitted a patch here:

[1] https://lore.kernel.org/all/20260103052506.6743-1-linux.amoon@gmail.com/

Please note that the submitted changes address a minor aspect but do not fully
resolve the underlying issue.

Thanks
-Anand

Anand Moon (3):
  arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Correct Type-C pin bias
    settings
  arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix USB host phy-supply
    on Rock 5b-5bp-5t SbC
  usb: typec: fusb302: Switch to threaded interrupt handler

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 7 +++----
 drivers/usb/typec/tcpm/fusb302.c                        | 7 ++++---
 2 files changed, 7 insertions(+), 7 deletions(-)


base-commit: 805f9a061372164d43ddef771d7cd63e3ba6d845
-- 
2.50.1


