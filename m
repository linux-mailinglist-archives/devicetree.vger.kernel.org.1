Return-Path: <devicetree+bounces-235800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 23387C3D074
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BBB1C4E030C
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7343633FE07;
	Thu,  6 Nov 2025 18:11:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nO6Agab7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE1A1AA7BF
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762452700; cv=none; b=X2TgkCZ1Mi7I5X4E+LDzp/95qeH2Xpik69CH9NOv4Xw4UOsdt1j9rRpxMZWFuYMkeD0dptnrTvcx/8sshOtr5LCC1SVULQsUTKGuZom7eMmlXirNE3FX6dy3Yg2+3KaQ0Wfe2ZoWncCWttU5pGdqck9pDCW50aUDFAHY3qCl3mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762452700; c=relaxed/simple;
	bh=ZLJLWuUCdyiq8fKrFIh0WiaGFVubIqn5oqtt06D342s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Uix1Dxy74tUV/udBlE8CvA2dBrMLCros5Tmtqk6hSMhHpajbJ1JsbTPdWChdzt4/mvxNudmAe9yuFts0YdZaOyle93fpM4unvM/HnVLKt5iDHmTd/LMIMBpBdFxkP4mupoM9kg+OLLpG99nAX44Ase6uZ0r17wo44LpqGRZjspM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nO6Agab7; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-3e297b0452aso704738fac.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452698; x=1763057498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cpT0TLdGzfQfSoii4/bs36ZSx7naUbNo4dP7DJ25fa0=;
        b=nO6Agab7W1jXL/1k7dgnK1xvh6pxVOuXHId1P4dsMQza9a3AqVgrfpj3ZyMGgVDOjm
         2CY1u0BZ327p8fH53wtUeXXHLKNWhuraEQb9YD0zof4sbwgRI+HXaY9cX4Jd2ONvktD7
         QoY/yeGRfUCBf30d3vd8Z/CvuYslCpxUpUu/gctLF3tgWcqx9+DklxqFTy1Iqp4iBUna
         ew/MRjrapfQsJnQldLRSCxnGSxFtYPLnoQQdiQjH6OTVNWfFMYCPO1l5TLrKYQ8r0jr5
         NJESC9ytUUevo4racAq0JmQ/nM5zgdy57d1TfhU7uPsJ6zSWsFEK6XNkQYEl5TkKgiqq
         M11g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452698; x=1763057498;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cpT0TLdGzfQfSoii4/bs36ZSx7naUbNo4dP7DJ25fa0=;
        b=C07Klu+RcS1LxQcFJvXvmw4LjO7oD/VHfVoHD9pwLpUdjfWKLr2qMxEKXlaiETJwLV
         iAn27RnxFBlMpbJp2TWtX/pbVN7dvqd/AguoftfwMfNzMssbhZNjZLCBO9iyCAttLmR4
         x+tRhtgGePszQQAVCdLEwVx6YVLQ65mI22K2aN6fuN/9u115+R8dcAF1w1L5+FKcThfP
         L6uYr8BOSDLQKP0Qw8zbK9USotYjnKshJA9dyOmdOMR1t/SxB0M35zyReqIiPtfsq60P
         X2HyOAflDjxC4CQMrlgYs1mHZdFpq0spB4XKhq9Hkxe6UwyyTA9CZCOHPd9Pr8sA+0ad
         Cw1A==
X-Gm-Message-State: AOJu0YxDBMfoSS3ef5Yumdz8Orr92XwdB2No4DtefU5yIEPYbAKvPPLI
	ZZLfaL6gvZP4JSjhDwfTDy+sQ9i8u0EODyccYtXXH0hOPIdA0qoUJHlv
X-Gm-Gg: ASbGncuMjhnuivRr3/fhKIj1Q4/0feim6aMWEDELAyZC7kzXyJAKCXNvid+q1L7z0Le
	OK7ib0Wiq4lcwW+vWlCXSYYqY15kumnmOU45aKFYVG/Ft0/OrVU3U+1T3e5SMLwxHv4qC6dtoZk
	XaWwd3pDwxOYk3J5cPa0NVtgYR36RnGloEbq9KD71dxm3wElU1+c0cr0G9h2kJ8NIRU6j7K/XDo
	wnwZqqCfFap50K8Ky44oCTK+NvNQvuOdl6EunXLmQL7FSr/RpGokVb4js00Qv8J786ABz2UZ1AP
	eBICg08AdJHpCMKdRfuNandtxJKdKpZ2EYqoDaUtx9r9l+5l8pq1kIBRo87I9YaCg/lqlrujN/U
	rgbGCSdCxZJmS5PCQQ+RfGA68XJnOyrHNhdfg1pu4dJmJDTruUxAZw0KU5cGs/y/9bL973PgX9Q
	SVlKicTVGJTrRsFU3y5zA=
X-Google-Smtp-Source: AGHT+IGAvjoXA76/UDaqXpOU4Fcz8E3D7Krbf8yR4RW+nCN1vEdGUmxv0HqWHlh+xaipNHgHQc4imw==
X-Received: by 2002:a05:6871:5b1b:b0:3d2:5ad4:4e7 with SMTP id 586e51a60fabf-3e41e6afbb2mr348131fac.47.1762452697786;
        Thu, 06 Nov 2025 10:11:37 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	Laurent.pinchart@ideasonboard.com,
	rfoss@kernel.org,
	neil.armstrong@linaro.org,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	andy.yan@rock-chips.com,
	heiko@sntech.de,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add HDMI for Gameforce Ace
Date: Thu,  6 Nov 2025 12:09:11 -0600
Message-ID: <20251106180914.768502-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 35 +++++++++--
 3 files changed, 100 insertions(+), 4 deletions(-)

-- 
2.43.0


