Return-Path: <devicetree+bounces-135214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 961F5A00212
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 01:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C156718816D8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 00:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721883CF73;
	Fri,  3 Jan 2025 00:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KINHtgYM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF08515C0
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 00:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735864906; cv=none; b=R5HDFDJOpmGDXDx3tF9TVwY85LKsxkW93s92YX8eMI3rCgXSWU/3cskvmFVnfMb4SMZiunq+uFF1D1WO9zHIooPp2tWAA1V3kQo1qRNUP0WcZB5R8/ZSrHWu6hRTGwyKgi2yazSBWpVe4aszECdNJSyn+3zrjtJqXCf8fmKWBVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735864906; c=relaxed/simple;
	bh=kEjTXeiGd1ETkJYCgXYtBMmeiQcIgaCTevhLFEjXjJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jT7miBgMhJMvxxaUQT6rwlXpMoy8cUENsohwhUye5eKShyIhJH1YCsBrfbLQIlp6pAlvwUW7HPV7Qx+t1nY2/nVSlDQK3K7h7hXm2nbuxmZ8YI+M2U98tW2TF5Jj8VSmKXfUz7BRL7Y48jrhYa9Q+pp4ySK9deDvOgz0k3gudT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KINHtgYM; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3ee29277d44so4455156b6e.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 16:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735864904; x=1736469704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B8v6uqtbrgtFXWBbv11wmm4bIaVeFWrU62HFvHHEutk=;
        b=KINHtgYMoKHRpHOqy8nCpie1hxOv6psMiVRyREJXPCxy/dnT8reJXRGUGCd2RqczM0
         4CnOGDgoPzpG8DKLfZ5++vVipL0CJeA5euU9cSoLhSWuJ6a8lk+y9Yf8a59dowmrM7uk
         VuutgS6FPrVjBTwJ2YhrNLnLlNucEjHlPClT565GN5jdIOcIfUzi4ni43s798SHSIJf1
         U8suGFCl/ZSE7w1lYJnsKZMx9z5gtoKRJpYSBehDhz+pyjY6XtrXOHJ42bJ9puE5ec9G
         fB5esuvdh0cE3kYR2EsqgIa7ihapX1H36G0o+wn4CHReSFn09AxhgwTfSOVgYtw3QJCB
         pXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735864904; x=1736469704;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8v6uqtbrgtFXWBbv11wmm4bIaVeFWrU62HFvHHEutk=;
        b=nSpZH1mLvnjkZJkMomqjvWbK+T5x+WetDglMd1bI/jSW5l1y1jDLVAlI8aLRLrkV3e
         VGWPVPRLcPBzNWDjWKg3iOh8qVJE7JuRgpja/COVJ7ulfBxNqfRQUJmZqsJObywoXvZH
         7wWm/yqAK0bKFWpvTEm+QAWiYNOO5uaPO3uSTroy4U9BbPxd7WeI6HUwysaRCRYJxGGM
         6JvX7APyVehDQ44EQIohEBN4OLAQtcP59dIBR7YqJeJ1j2uUDqEe9M2E6I0yqy4RuOBP
         aSQhkVIu4VZvltpHRL0ki+ueex/lJDHDsJUja90o4tsflqUmBrXNM6YWxsnjBn6tMN9W
         Timg==
X-Forwarded-Encrypted: i=1; AJvYcCUvq287+vWLWNCgAjaPnrV2Q9vazUSHHBZrU7y5X2cA/iWSzjARF4iTD19rrjk1g5JmyoPfnGNiRjKm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKZneSqNYQBKoB+nb8jzpZi5szSOTmeT4froR9u3qnYsNMbZFz
	887pXrLMrmhrz3MaSSVmRA7vsnU/r9C3yU3VjXWyQM34DR3xOrpO
X-Gm-Gg: ASbGncslNF7hVE0oAzqqRfOXjBAYcKMGLWx181PXPpfUbE+PHS/93XY57yXfcksJXup
	qd11tsE6wQPWsxIo3T6rUN5/ZuoWbIf21B6QPg5AL/NyXQczcNIIUhGUWexzVP31vvQA01R3zw/
	szCa95s4i9NT9VhHZ9Bm817ANhH3WSrVEAKG6JvWQ+ibG88Sw9EzYhGs98RVWXIdlYNBG2yE3F1
	UQdL+8uOvV1mMYIH1qz4radctcNlIHMoo8uZNY8vcpX1IH/PkVjKwqXVDKHgwGsmA==
X-Google-Smtp-Source: AGHT+IEO+EHHquaLaJGM8mJz60yerNlQhCuDujC6QrXjn/VefwZGrwI9E2QKYbGRjYGhJdxYDlOuxQ==
X-Received: by 2002:a05:6808:23cf:b0:3ec:d34f:4c6f with SMTP id 5614622812f47-3ed88f3def7mr25419306b6e.15.1735864903762;
        Thu, 02 Jan 2025 16:41:43 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:19f2:4f54:d97c:af6e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ece2549542sm8087778b6e.32.2025.01.02.16.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 16:41:42 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v5 0/4] Orange Pi 5 Max
Date: Thu,  2 Jan 2025 18:41:09 -0600
Message-ID: <20250103004114.1902-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v5:
- Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
- Defer Orange Pi 5 Ultra to a later series
- Defer Orange Pi 5 Plus HDMI1 to a later series
Link to v4: https://lore.kernel.org/linux-rockchip/20241229184256.1870-2-honyuenkwun@gmail.com/

Changes in v4:
- Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
- Move HDMI0 from common to the board level
- Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
- Updates for the newly submitted HDMI1 support
- Add Ack for dt-binding

Changes in v3:
- Refactor to share common include with Orange Pi 5 Plus

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

Jimmy Hon (4):
  arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
  arm64: dts: rockchip: Add Orange Pi 5 Max board
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 101 +++
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 806 +++++++++++++++++
 6 files changed, 1128 insertions(+), 792 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi


base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
prerequisite-patch-id: 6346d482f91509dec24bfe5d4f0ca0d345b90deb
prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
-- 
2.47.1


