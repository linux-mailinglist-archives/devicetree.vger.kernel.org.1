Return-Path: <devicetree+bounces-148669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A552A3D04D
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 74E3B189D06C
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50CDA1BF33F;
	Thu, 20 Feb 2025 04:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HX3w9o1Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9744423A0
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740024657; cv=none; b=j/Grcj27zXJuFvhkqD8QSuXoHfUa8Lf2HBLpoTkVMSkvrINNG8KmjHGI0jnxWTqvAeoTzL7XMZcpdpN1XJeyKDSC1u+tf06OMn7CFPTiQxfJOtF8OPc68FWF+yNkfXMxzdHTrfgDqKwTywk/bfxCOxcVT9Z60FyVWQtEskVtUiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740024657; c=relaxed/simple;
	bh=CgEKz6iJ7I2GmBJcV9e7zV2knctUiXzjgGD0teWuNCM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fNpJRWZd0giyxifhLrQUXpUh+zPc663Xi73FZxAxwQgwv98Ur7K1H3joiN2UcypwtFJX3cN2xgM9Cj2TXkjJhFHKDsEuHwbyF/+CnWJoK0cxjwIV1ma5ALzDKj6nPoNK0F0GL/jieJbOALcUYFzx/edpstp0lBHOPOXM9raj8v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HX3w9o1Q; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-72720572addso342207a34.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740024654; x=1740629454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9SOmEHKtxnt/FjMNuH1uNatxTpKuGKSJFXtnrbflUGQ=;
        b=HX3w9o1QgLob1EtI8SHwyi9tII3h4SV4bxYHLiskiMiGEi/tlF4e0Ino/DsxDtOVQR
         LeLTEUlo7v5Y9H5lG5s4M1/c9CMChTAQT9CVlRch8kT87hCwj5g0mc6L92lgkmiqWsS7
         aRiWhOOuAlAyp4xbO3l3Cuth1Aj0kk9cuiQan4WLWIPsdrdFgB1jX2jVsn0DpgxA5aKS
         SOz+KExD8VbcSQOH8dqiOG14t7TvVBtcwLiDbl6rUjYsOeSESh4zDEvIDINL3+cgcaXi
         BSGAOaOUI66P/cFrtmY+gtIx2ukQ4rBWdiuXDt/ildLhyw48j/4uydtib8+JUqlhuanD
         rfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740024654; x=1740629454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9SOmEHKtxnt/FjMNuH1uNatxTpKuGKSJFXtnrbflUGQ=;
        b=kNbMIpfN6pEoUBYcvMuPeNNsDUFb7PDsVYFyzDUYK4M1oUMzygndcv0LixSuJreQ0s
         nRWpG7iUktTLs25es9KmBFvLh/4/OlqxiZbqJpGiqm91MLD3pSR/nNSrGqivej0icPvK
         NErZ1l3WQBNNigp5hLD5MyKa9nIXbhVhxj9GkjBljQ84j9DzuymGMOBjbHxxPnKUQUeV
         O/xYNAGj5J+Gu0/U+PpAxZjObiT8VWNcRmu8YmWrUTsihiuzEVnSfZz0jA4RrMvbSWma
         FivV/13BsbcDBvIOYnOZXIl8qTVP1bRp+v8THdgbYLVqMQF1Sv3uf3vDwxrtBw99xgmQ
         EinQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLj/+iN+zPmNzCo1N4fNh2ILUPjQx2OZc+Bg7JfqONNyeGJe5Bszl+VjqZqNTMPWuT8vtD/pKvGoll@vger.kernel.org
X-Gm-Message-State: AOJu0YyOjuam2aPtieid0Cisvl8lQag3cXuoeJt77jOs6ByPZ79JN2FB
	Ko931rjZlrAwaVbcWrPOGqsny+6yUUDGsOqktiy1oifzhZqdT1tE
X-Gm-Gg: ASbGncv1NF0ScLnBNoXsVRTc+0CncTSoZYLKcsTuA9Nsvbiuv9L6XPu0uKR3kJqgtXg
	ZOhhRFszaCoUuWthiN1hvdgg2lhwYLkzMCUPnG1OLKZ3bc3RLRkMiZWBdH+PEXNaTRV1NqBTJ8G
	IE8CDApRT1jpYiN6In5QtBxvjnntrlz1xcT9YbR76yDvNahTsOZUld6ncB8qh2btAkz1mRrXqVp
	TeRtppAt23Z+1T4xF7v5slk8qohmt9zHkvRfM15qjLBfC1irWoSO389eCA3Bn2+KAnMk+yhagmW
	logb4iMOt83jcejL1rtvlVbe
X-Google-Smtp-Source: AGHT+IHCvbgOiUNK4JM990pKQOaGt/m682yZIACl+zliSAkxtTUBeduDoCl/w2cP2mdXDUodQ14SeA==
X-Received: by 2002:a05:6830:6a8a:b0:727:2c98:4b1c with SMTP id 46e09a7af769-727377694bdmr5641466a34.8.1740024654424;
        Wed, 19 Feb 2025 20:10:54 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:20f3:777f:5ae9:b018])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm1025875a34.47.2025.02.19.20.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:10:53 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Date: Wed, 19 Feb 2025 22:10:06 -0600
Message-ID: <20250220041010.3801-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device-tree for Orange Pi 5 Ultra

This patchset is looking for testers. I do not have the hardware to test.

The schematic has been published for the Orange 5 Ultra. [1]

It's a sibling of the Orange Pi 5 Max [2] with the HDMI0 switched out 
for the HDMI RX. As a side affect the pin for USB_OTG_PWREN [3][4] has 
changed.

Patch 1 and 2 can be used on 6.14-rc1
Patch 3 can be used with 6.15-rc1
Patch 4 is waiting for HDMI audio patchset [5]

My testing branch with dependent patchsets is on github [6].

[1] http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Ultra.html
[2] http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Max.html
[3] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts#L306
[4] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts#L321
[5] https://lore.kernel.org/linux-rockchip/20250217215641.372723-1-detlev.casanova@collabora.com/
[6] https://github.com/jimmyhon/linux/tree/integrate-6.15

Changes in v5:
- add USB 3.0
- add HDMI1
- add HDMI audio
Link to v4: https://lore.kernel.org/linux-rockchip/20241229184256.1870-10-honyuenkwun@gmail.com/

Jimmy Hon (4):
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
  arm64: dts: rockchip: Add Orange Pi 5 Ultra board
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
  arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra

 .../devicetree/bindings/arm/rockchip.yaml     |  3 +-
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 75 +++++++++++++++++++
 3 files changed, 78 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

base-commit: fa15cc73121279f93757ec76312b0d0b73f7462a
prerequisite-patch-id: e7cb3b62d173506d38a10a8e71eedd62ba6a1bc0
-- 
2.48.1


