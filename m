Return-Path: <devicetree+bounces-140040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF6A17E1D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 13:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D30923A2DBC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 12:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617BE1F238B;
	Tue, 21 Jan 2025 12:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b="B+g/uppj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684071F2374
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 12:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737464181; cv=none; b=G6WxgrGIf/L5a399vQwA+iR4KYIU4eblfhCqQOk17j3Pl7osfQOyhLQUv9CqhgWEakqtIOjI2KhqBesCMFxNNZ4i6o6My48pnHUOJsgrM6695rHW7DxbMnZDZb5me1ZKmBzrKH7hn2bV9sQidINxxATWoUzhueTzU0Nsf0U7KRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737464181; c=relaxed/simple;
	bh=KM7rRQg9FRTtIHSC3uykL15GVvhQMMaufjE4QwFczwA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZW3uSA4/BXX8ERCWu3xgKDZxlcpFneRpAAcNy+nHwY+82KNz+3XWU9aGCXNm0MZa7RvEZGR0q/r/+XNGTAcrNRdgjmuSx0yVWOk5aFXGAjXMqgkdItdGHHmvOjwKfr9SOlbQAc5UCtNtp5CecwDp2n9ZnJzbj/hR5hgHSCucoZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com; spf=pass smtp.mailfrom=thaumatec.com; dkim=pass (2048-bit key) header.d=thaumatec-com.20230601.gappssmtp.com header.i=@thaumatec-com.20230601.gappssmtp.com header.b=B+g/uppj; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=thaumatec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thaumatec.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab322ecd75dso983771066b.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1737464175; x=1738068975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2tKEcOHUOoj6M1N+AbaF6ST0bT5lNvPCmN4NWW4SFdg=;
        b=B+g/uppjILe9sgdMYwgazahChzNHR7GndvYtx5KcDrxMHFyBOo9WA2iwXFHG5PVbTb
         GRwypvvOavDzWRGcyBXnJ5BLQHwDnWlpfwHQBJvCo17DEID0pIVNUOSf6c8ZWT1dy08c
         R0h+zpRQAk8ru8PqAQRz/HttumKggXs+QzZXqklr3JCzHhfulmG7Vx+OHWK3Mx8+8kG4
         VwD0yJmfTkBGBUJRekfN81mrTpzAnQjW0YQHWUaMpHfGh+dySFVF4Gmp3LkGD27qDyFn
         ZRDhQ6gWFgUJ8+K0m1Jp9ND+BRv+W/H8ggdrh7wXaSZS/+3Ff241JD2+g/G2WmIK+ARI
         ujOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737464175; x=1738068975;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tKEcOHUOoj6M1N+AbaF6ST0bT5lNvPCmN4NWW4SFdg=;
        b=Esg2ceEWpwo7NFro7/Jh5CU8QraphwniogVJ5LUibSb7ZI61jgZdRvRN3wzE9TNIJC
         v3jC7KJVsxeKzSnolkayjDEn+EbPpIGG2BQjw6iz26SlE98+DQZW96DYo6C6gaku3gcr
         qkJyjwhZIySBkjpbrUaWYXYvjV+HfJNBTVDK6uIfUV1jqdYUorHMMpPJVQVxfr85SJGz
         0z2eXVP4k5Y8WqVxYnKm8mDgmnMK+UQT8fSkcbx+FiTaOQNci5GaprKjMXP3FL1y6crZ
         1YTlV9CvkzCjtQIZq+4sjEFCr/FuruPMOa1zocIzfD8YCczImL+oln7ymchuQa881Rf+
         vmjw==
X-Forwarded-Encrypted: i=1; AJvYcCUgRXPWIyCV9bWmXCAWeEhw/I9mfsx0FrcP7EvsWRwtoYXNMvqaE3EjoeDUvuYl+ctQ/IWztbYsalKF@vger.kernel.org
X-Gm-Message-State: AOJu0YwlBN0HmHuSOmR+KTqpQvcNzTgujIqL9g5F2UcaXJsYfEW4pfTc
	5sncYxnBBdrLnt6QqyJTwrkbZrbXmGmaHkdzkSLD7pEjx7qJHPNfvJbtfBY9KRXCijUfzcmwEsn
	g
X-Gm-Gg: ASbGncsD9VEldFdXcBl61eA1d4KeNiUYyQDlRSufgJrHKxlBcu0dP4xR7zp3uaOmssW
	Hw6AJu+wICIKrA62E/Gad1Z6GQ8S/ILPTGUmMa5dZ3H5uzTbXhU8pKrPmL/a1VuB2pciflyMPem
	l98gprUG3wWH5uakLQoud+M23CFqI2wIoxew92zF9fHGczF9xivyg1BbTFZ+/GlJRkyulU8i189
	T7xAaImMQ3dGh6LOJpO7DxZQQV6IkpI5BwFn60duqhBdSxKsWAOOk8ck0YSnRv5fGrzcjfeRpiq
	quCc1iC0Me4VK3BnWe0L6S+fhQ==
X-Google-Smtp-Source: AGHT+IHR/cBAroTUZCaiEdxwuMtCTe0EdEvbyOMLExycVSHdkWsyOdkdL4afo+lVY6hdc2SpvD4elg==
X-Received: by 2002:a17:907:97ce:b0:ab2:f255:59f5 with SMTP id a640c23a62f3a-ab38cc9056cmr1524096566b.16.1737464175468;
        Tue, 21 Jan 2025 04:56:15 -0800 (PST)
Received: from lczechowski-Latitude-5440.. ([78.9.4.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384ce0529sm740943866b.43.2025.01.21.04.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 04:56:14 -0800 (PST)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
To: linux-arm-kernel@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@cherry.de,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH v2 0/2] Disable DMA on secondary UART on PX30 Ringneck
Date: Tue, 21 Jan 2025 13:56:02 +0100
Message-ID: <20250121125604.3115235-1-lukasz.czechowski@thaumatec.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PX30-uQ7 (Ringneck) SoM has two external UARTs, connected to
uart0 and uart5 controllers on the PX30 SoC. The uart5 does not
expose RTS/CTS pins on the Q7 connector, as they are used for
different purposes. It was observed that UART controllers without
hardware flow controller behave unstable if the DMA is enabled.
This patch series moves the pinctrl-0 to SoM dtsi file and uses
/delete-property/ to remove DMA from this UART controller.
----
Changes v2:
 - Update commit message of patch 1/2
 - Add Cc: stable@vger.kernel.org

Lukasz Czechowski (2):
  arm64: dts: rockchip: Move uart5 pin configuration to SoM dtsi
  arm64: dts: rockchip: Disable DMA for uart5 on px30-ringneck

 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       | 6 ++++++
 2 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.43.0


