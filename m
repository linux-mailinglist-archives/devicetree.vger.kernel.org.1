Return-Path: <devicetree+bounces-98180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E09D79650E9
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 22:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67816B20A78
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 20:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCBC18A926;
	Thu, 29 Aug 2024 20:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nrRV42L+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F4A1514DC
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 20:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724964462; cv=none; b=g2dHjepseazvWoMNDJagaqwoU4Xaq8Q63MwU9Bn8HUBw0m532SpJAmBAg2b0WaH2JDSMPeHiHh2rjh13AKkvbpNVK0GcaJbzVDXloKeJNv59DynMpMFNJBJn7IjtPZRBepMAx+3ju2xXMtIDzyIr+D1Jtt0kKCEjVy2EsPZeNk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724964462; c=relaxed/simple;
	bh=3pcMO9a6jTqlwPPsnMrSrG4EyZe/eRFbd47l60nkKPs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=WAMLt8j3cI0jhFFuoz5hrtzyOYjPO/3n0L7EUKuPBdViXLDqek+AnPmLfhlhW1jwWGkTkZ6WdubTmPjsVXaoAIgj01mMdKkU7M9FrPxgbhCpD8d/Bidjfdvx+Kj1oXpdhbhrL6VtnPULQCWihhNUSRDdc8udNPUjn3bvvesD1F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nrRV42L+; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2689f749702so622499fac.3
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964460; x=1725569260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ueInwXLwaIVKZNglMY0IfI5rgEO3spGMWCSk2L/UpmM=;
        b=nrRV42L+MqVrdxapr9oHT1js/bsi6L+LL/CsEL3J6VOFFFNwRKRrM1nggO6ylIrsgu
         BlT2QvM7e2R+22IzbGjWC0Ggyi90CDdttWg3OvedxODQ5P4/DxkWbuPVcZs2/7wwIpPC
         k0+Vr06PM0UbBx/kemW/VO+UU8YkpmYxUCwhz+YPdJ2v5AX9d3gKHKIk3c3MIl8kTbI2
         gA9MtgsRGSL+HjWyQNgGh0rLl1sGdqJ16CDF0YREf5WrhsEBL4uLg7OZ2rESKfLuiCUe
         eh+1mKX7uinkfqOmYx95IlNb0WRlHo3oZoF+GB8JvZlEUch2wS3wPSZtTspHr1lC73Pt
         jvQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964460; x=1725569260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueInwXLwaIVKZNglMY0IfI5rgEO3spGMWCSk2L/UpmM=;
        b=UwwmH0+TYn06aSDxkkl9rLP9c64KgWbSyeEkhEMXRjc7cw2Ua9/DXlZOwen3HqIxdz
         dFlVi0DOhRP9ojS1KwYB9AdMqPlPLsZJx1GfhT7CwyrVNo4G97Ww/YqH9vIU/Nl7BGMZ
         9OsWbdwQH7Bt49P8IMlPWd0ccbIf2/Znq4F+Hm+l8JwHN/xh73XXpbRYUF0aQM1hEKqK
         eMfdxNbb3xZrCiYDpAF8tPo7ZMCEGjgniVlP1JGH7lT0Zo9yLscaFJkTC94Zst9pZjph
         6fil74E6Vk4sR/IuwRRX7QFiLS7SL8R4f24zOwzjIzvByTMW5R/LF+3ZRQx8R14aQnCe
         OPBQ==
X-Gm-Message-State: AOJu0YxKA8WVfmMbJ+5Iv470JkAEG8fYoF7V++DE9pn6fv3gbXEMUT/N
	jJ6h8at6Uwfnn+X9ZEmP873cbVAoyA+5ApmQAnFjsG7QzlQWMAtv
X-Google-Smtp-Source: AGHT+IF+/KZ2OOiicKDPsbZHDFTQdU5PAg7CFiPMVkO5XDpdO5vdnXMFrTSuCplFSqO8VQuJrqMoRw==
X-Received: by 2002:a05:6870:a34e:b0:270:463e:4b72 with SMTP id 586e51a60fabf-2779013aa77mr4568889fac.20.1724964460256;
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Add GameForce Ace
Date: Thu, 29 Aug 2024 15:45:14 -0500
Message-Id: <20240829204517.398669-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the GameForce Ace. The GameForce Ace is an RK3588s
based gaming device with a 1080p display, touchscreen, hall effect
joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
and support for a 2242 NVME.

Changes since V1:
 - Update eMMC changes to note proper authorship.
 - Removed cw2015 changes for dual cell configuration. For the moment
   it's just cosmetic (aside from voltage_now reading incorrectly, no
   other issues were observed).
 - Removed USB bindings because vbus regulator isn't ready yet.

Alex Zhao (1):
  arm64: dts: rockchip: rk3588s fix sdio pins to pull up

Chris Morgan (2):
  dt-bindings: arm: rockchip: Add GameForce Ace
  arm64: dts: rockchip: Add GameForce Ace

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
 4 files changed, 1248 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts

-- 
2.34.1


