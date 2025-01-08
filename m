Return-Path: <devicetree+bounces-136498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF366A05660
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B01718889A3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DE51F63FC;
	Wed,  8 Jan 2025 09:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cJiKzHNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B5E1F4E32;
	Wed,  8 Jan 2025 09:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327404; cv=none; b=H19BNwa2rc8wyduuv+LsDRRNDdQpR1pf7q6hKfu871+j/ewk0+qzHxvGfC5l9QuL3WFuTL96hU1s1HcyMZkhKtuKWcD1+DELjURtjHcNswZhEtLARhUE4sjK3EocFtIdkOeVN6PjrG1kfZFowUl24TDBKohzhWXGCw8sa7TYAeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327404; c=relaxed/simple;
	bh=TYJnRulh9SsoN8lhqpA3Tk15WrSalmWYQbRKyBZQC+U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YiK49vxCJNECy4ZyUKSajdqTMEx/X7pBEgnPltYk3Ds/pLxfPOT025CtbjmPKEjrfg4iW0e6AdsblBhIaLX92s0wjUkfQhFOIbjIXIufFCo3PGCWuIqiwKidG4to3s+5WdPj5sxoW7eTayNRiPzYTXwiUMBMdJ9BCwm/ClcPnDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cJiKzHNc; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5401e6efffcso19069309e87.3;
        Wed, 08 Jan 2025 01:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736327400; x=1736932200; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=17/YkGcoUt73Y2+AfuHrh6H6j0zCznkX+tUdDNoqtVE=;
        b=cJiKzHNcZr9OXbDfzykoH42+ieq5GJGN4/vg+rpnkJRVTUe86g97wV8gbAcNYOxX3R
         SjFd2go79NAF+s22zp4YfAcwLgGGAZ/fX94KQBQQcvGLTjMmRp8fP4BlCRVO60PAafYL
         3rvrVtC+UyKRbc8/iVOUI8IE30lItN0xZDN3Q+zn50FtmLJ466HY9UyCwp1BEDDuKiQ6
         HslzsoB0IPMi2GB85lAWWIVtax47WgW9Na8Wf4YtFL0GpMRftFgbGe7cjhgupnw5sbTd
         tSSClJK0x+mY9rbLfzWT5J9+1jC+vdMRdtX4VgUQu1tmnX00Fwyc6yXTPTv6b/nqinUy
         muxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327400; x=1736932200;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=17/YkGcoUt73Y2+AfuHrh6H6j0zCznkX+tUdDNoqtVE=;
        b=WSScK03BozXRMY53etp8cZ0bsOycdONX6sl35s0yfLZukNNnFjoFAI2lJyA/H06gCM
         9uh5WcRO7thSE2F/P9dxI4fKfI7ucl+Az64yMcu4qxFOS4M/rZvOVmoXAL0jqL02+2jC
         +qvNtXybX4PwJwv4j3EwqYqJnrHriW1IHcdlbCRQz1lc8OxlJMTLGbKikuXl/ZXoQi84
         SEknsIwTLTpp7z+D8sENR1MDiyXR1DVn4AqO7Hx47EqlZJqU8lUMBFJUn6GuKrZanFVr
         G53AWibltwwdNEEHzbR+cuY33ePDpmM0UhKEmgj2oGPW8idlQli95bIH+CdR3In6gBf4
         XBrw==
X-Forwarded-Encrypted: i=1; AJvYcCULvbIQB/6AGFdtkmkqLIpsPYoxMdFjTtrct8YTV+wZdFnbTvflk0WADchAg+NmtKOESu1n8GEPT3OAia8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwVHvzyndzvOEtvW6d5DjNavBUTZF/6x0ts7R5Mb5hw8MNYnT
	dFQ27OHRUE8x6EYmZmPoFlUT47CY1HxgazScKQ3cpYwMlbwZtTMK
X-Gm-Gg: ASbGncuLZnMW5y2uR9NU+RtWVBfucs7K1WvbEWjmNv7leqG8GwahtJuLYl7Z9/erqlB
	rykQL8XAm7GR0CbpGYWZwypwmo9cqTDanrom/JIvAAb9DNoqGVyZ8b73ub0qnOfnnXBorFMn6Mj
	BGvmV0eWIF8aaO9XeGxFLDRNjgsK+bvYgN/adQKIISrQjYvm4APayeM549xD3va2yyXsiwDGfJW
	Wy/5PylW2aszs0mwT5pCImmKT3G2H3qqtxmg1wsZdGn7U6YtoO3USAh/Q==
X-Google-Smtp-Source: AGHT+IG9vDEilGecqfIee0EPhs6XC/SdCMZE5b3FTq0kDLUNQVPbKIBsetat4pMP6r/SXGR3mknQPw==
X-Received: by 2002:a05:6512:6d3:b0:542:2190:9d99 with SMTP id 2adb3069b0e04-542845b17e5mr550651e87.6.1736327400021;
        Wed, 08 Jan 2025 01:10:00 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223813898sm5386450e87.154.2025.01.08.01.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 01:09:58 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based
 TV box)
Date: Wed, 08 Jan 2025 13:09:05 +0400
Message-Id: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALFAfmcC/22NQQ6CMBBFr0Jm7Zi2Ok1x5T0MCywtTBRKWtNgC
 He3sHb5XvLfXyG5yC7BrVohusyJw1RAnSqwQzv1DrkrDEqoq9DSYHxdyBgcao1ju2Amg1ZZ+fT
 G6brWUIZzdJ6XI/poCg+cPiF+j48sd7vnSEih/+WyRIGdIkXkDUlv7/3Y8vtswwjNtm0/BaJqP
 rQAAAA=
X-Change-ID: 20240618-rk3588-h96-max-v58-c2c1bf8e6996
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736327393; l=2307;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=TYJnRulh9SsoN8lhqpA3Tk15WrSalmWYQbRKyBZQC+U=;
 b=ENiXKmahLqDMSh0OkgiT4U78QvZnxHkxL2aKvLLsWtNqIGWeADtT6txSEE2zLdZltKXaCB0Fm
 ofUft9c48d3BrZMsuu0DBbSPCqs/SNlVpIIG/2fwxuFlSGB76HxPg6g
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

Add support for H96 Max V58: a compact TV box based on Rockchip
RK3588 SoC [1] that ships with Android by default.

Note that there is no publicly available hardware documentation,
nor vendor sources to be used as a reference, so this implementation
is best effort based on poking around my board and staring at the
decompiled stock DTB. It works for me, but improvement suggestions
are very much welcome.

HDMI output is not tested, but expected to work.

Auxiliary LED display is not enabled (no mainline driver available).
The controller used is FD6551 connected to GPIO3 RK_PC7 (clk) and
GPIO3 RK_PD0 (data), which happen to be the right pins for
i2c5m0_xfer pinctrl config, and thus might potentially be used with
the hardware I2C5 controller (to be verified). Out of tree drivers
are available at [2] and another newer alternative at [3]

SPDIF output tested using a 2-channel digital to analog converter
box (higher channel counts not tested, but expected to work)

[1] https://www.h96tvbox.com/product/h96max-v58/
[2] https://github.com/arthur-liberman/linux_openvfd/blob/master/driver/controllers/fd650.c
[3] https://github.com/jefflessard/tm16xx-display

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v2:
- Added SPDIF support in SoC .dtsi files and board .dts
- Fixed DT warnings found by Rob's bot
- Reworded commit messages following Krzysztof's suggestion and
  collected his A-b
- Link to v1: https://lore.kernel.org/r/20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com

---
Alexey Charkov (3):
      dt-bindings: arm: rockchip: Add H96 Max V58 TV box
      arm64: dts: rockchip: Add SPDIF nodes to RK3588(s) device trees
      arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  64 ++
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi     |  30 +
 .../arm64/boot/dts/rockchip/rk3588-h96-max-v58.dts | 826 +++++++++++++++++++++
 5 files changed, 926 insertions(+)
---
base-commit: af349ca4d3f8659d84abc667125c826fda155109
change-id: 20240618-rk3588-h96-max-v58-c2c1bf8e6996

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


