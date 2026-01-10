Return-Path: <devicetree+bounces-253430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66119D0CAD7
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 02:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E9C93010988
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 01:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEED620C001;
	Sat, 10 Jan 2026 01:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EnbWfqYw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3024F17B50F
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 01:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007251; cv=none; b=NecFifMWVbxbxNpztULevqa1W8zyGulZAUj3v5cQt+SaIj4uuAon+eN/wZLevLx8DutjU/rbRGCBB3YvSDzDiR2pVe5tRo4OA/ATtw0Knx1B7YUUsuUXEySQoI3i3jTTucvYVjZPEsGkPHg9vTv8TuDSe8MTeC1C95XH7B+BNOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007251; c=relaxed/simple;
	bh=G3rXZAwEVcy8xpSE0py21ph5FlouaPOccRvHf5EyOpY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZLWslcpRGBCYYWGEbXk3o8rocTB6DJ66ZojeXO5Nny5bXou/BOYE/WYcDMzwOZl05o0WioFiGSkajwO7nNSvm5654jt0Xar5dGZKfPnPuaMoVnI7NsnGTvaEB7uGOUoxziIsGrkj7LvMQ7tvko9WTZOLl3kGDic+RmWNSf6wQvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EnbWfqYw; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so36595425e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 17:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007248; x=1768612048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7DHIbUC9kH5ID0D9IUKqXIWIzs+CamKmp3PsS5mVQKg=;
        b=EnbWfqYwzhRhAeV5iS5hCdvGz5Ownv6okCsYZer7wGf7f8a9rtxLpyEwACyTLZfIz8
         XKTTSM1mGyfSZHV/gSvmnkWWKXIXDTCA0ZnGYLFIcgOW/KCiPUSsREJSDqgplzlw3kp/
         mABjmp6anDeyF5ueRpTNElI6Y1Wdv76qCSqQ95MUeJ3gyN992e0nC3emFfthenO5TFi0
         ZLNd7JgNgkyJQeMPQ3rSQl1sVRS61p58p+5/H1gkvam/6xoVvVNod1GCVhe83YQ8cjYB
         Ir/HyDbTkZ8iQDz/Tql223Bpk08Z6tyHnxNScG+tyWRqQsosszL10mtKO8hBQmiUOg2Q
         fqxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007248; x=1768612048;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7DHIbUC9kH5ID0D9IUKqXIWIzs+CamKmp3PsS5mVQKg=;
        b=rEPvTkrwdIp6qZksQsFC3gim45pmQKtvBjcMsLlq0K9MwmYJV2+NVNbefZzC37Au6U
         AF39bAKKyqluc05QmtM3GNcbnMMvj73L4uhTC2OCma1R2lAvBat6KZ1cQXnSvaL2ChIb
         xIDAXU8i7tH+avjOKXzaHH64qOTuQGnL5d/ODk2vsddjwkHUcYVTl9+dQlto/yYndeMM
         HFhLSdXOwpuZkIhE1NV+f1M87FPI9etfvMbyWULwvmLHHp9XDlcCzeAIPsJkBLPf6iuf
         BETPv3kPsFU1afjKZas75YPA1TO7kFqTuSCwc9UrUXoqXv3eI+DtDMIKZkQXHLHGE7Po
         KnZA==
X-Forwarded-Encrypted: i=1; AJvYcCVKdUBjxLx8aFLI/C7yvkPXIZoJCG8z+U6ucQ6No57j43BH3eu7I2T/KK2dB7kMAuo8Hh/BcvOzdUCP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn7YGyofocxAnlsH6Cv5NYBK2sNWyAQ0Tp7o9cR/EQWAz5LtJK
	Ps8pYO009Hhe7UAZfGIXokHO0Dxdguxp0mdHHHUDOD0DTXmCDTU1Nq0j
X-Gm-Gg: AY/fxX4zw4nhQMqeoIpSBoxAm1P3e/O9BVxYgRBW/qrStiEND0v/MLos5kybbRnxlCS
	kytap0oiwTZ4qids2jcOQd4oTBxWe9pL3qvrD326/wFBPV3JG9zF98gcIif/aJOpuZOi7N4l3hC
	Vm8MtXjy3sIAcgPxi3PEvXByxTk6uG8SjlkNxamTVskd8RPcQTNLyvANbnc8auDso+TDkXNSqMM
	zfzuj+oLTTbWd+hCpiH09CP9yeeETqQ5cj2mI0LVzFUCfKNjxiiGQvWiYHnYd3E7Evwa0SM4ak8
	A2sSP6jm/sslAaEk6qb13KVuXo5YsxngoZ684aEYmQaHJRgWa3uaQK9xAvs3R7ldSE86IwUSwzW
	0zBcOTFPXN6/47VdL2zgvgwPSU9F6HQG33zfHhrrrZRNL1U1AWJObi/B6ZyAS92dlrmkNoYI4ji
	QyAhcxDW7WMFiLtH2fIojOEfZz6hkSfRETb5QnSVYNgLBJTes8KxsnHAo7ucQA4d00xRNfWhcxF
	6qf2dI=
X-Google-Smtp-Source: AGHT+IEEsvTH07Jlq4vwgEsug+8S14LvBK1JHllAkePtf6I0e5EhJvagWLbuktY7BlslZdmsV7k6Dw==
X-Received: by 2002:a05:600c:4e86:b0:46f:b32e:5094 with SMTP id 5b1f17b1804b1-47d84b5b4fcmr123965385e9.32.1768007248471;
        Fri, 09 Jan 2026 17:07:28 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:27 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for NanoPi R76S
Date: Sat, 10 Jan 2026 02:07:12 +0100
Message-ID: <20260110010715.1610159-1-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series addresses a microSD stability issue on the FriendlyElec 
NanoPi R76S (RK3576). The board currently suffers from a 400kHz 
retuning loop when the controller attempts to enter runtime-suspend 
during idle periods.

Evidence of the failure in dmesg:
[Fri Jan  2 01:28:02 2026] mmc_host mmc1: Bus speed (slot 0) = 400000Hz 
[Fri Jan  2 01:28:03 2026] mmc_host mmc1: Bus speed (slot 0) = 198000000Hz
[Fri Jan  2 01:28:03 2026] dwmmc_rockchip 2a310000.mmc: Successfully tuned phase to 233
[Fri Jan  2 01:28:04 2026] mmc_host mmc1: Bus speed (slot 0) = 400000Hz

Testing confirmed that the issue can be manually addressed by 
disabling runtime PM via sysfs:
echo on > /sys/devices/platform/soc/2a310000.mmc/power/control

I experimented with various changes in the Device Tree, including 
lowering the bus frequency and attempting to keep the power domains 
active, but nothing stopped the retuning loop.
The issue only went away when I forced the controller to stay active 
by disabling the runtime power management.

This quirk is the only way I have found to keep the SDR104 link from 
crashing on the NanoPi R76S, I am open to suggestions if there is 
a better way to handle this in the driver or the DTS.

Marco Schirrmeister (3):
  dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
  mmc: host: dw_mmc-rockchip: add rockchip,disable-runtime-pm quirk
  arm64: dts: rockchip: add stability quirk to NanoPi R76S

 .../bindings/mmc/rockchip-dw-mshc.yaml        |  8 ++++++
 .../boot/dts/rockchip/rk3576-nanopi-r76s.dts  |  1 +
 drivers/mmc/host/dw_mmc-rockchip.c            | 25 ++++++++++++++++---
 3 files changed, 31 insertions(+), 3 deletions(-)

-- 
2.52.0


