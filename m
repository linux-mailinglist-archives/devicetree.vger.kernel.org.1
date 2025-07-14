Return-Path: <devicetree+bounces-195970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C50F2B03B15
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 751CD1A606FB
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA87246790;
	Mon, 14 Jul 2025 09:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nNmdLz41"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7394C2417EE
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486055; cv=none; b=UtdwomOVCv8Pf0m+ysVZYs2fzJFAADSBD4boFinHGAyZj2AkBD+MP6I6XVxViV9GMCDjyld4eZxtHoxVHriZ1OUkE+OkOXIFuYu5sEiiGUWw8KIdfglCEcxnhH8umWGyWo0XFjU6PJUc1wePHKPex6Nhd/0vFiDSFXPeeSG7tVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486055; c=relaxed/simple;
	bh=hAq0x+oX9cbcJkUs7e6ehMKp0TSf4ywLJDhNt9d1ea4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jbiI+i5pocW5HVuyGP+9wH9YOkZL4GoLKKgwohT/sZU0j0bW25FH8qJLxd40m0ZtjwB05msGc+en3efnv0b/0LG0ntt4maeQ4pAthkn7M/8xa5jQdWWllDOKv6Lck7t6xad8pZK76jTLA/5FaAT8F26ZChPUvinOwtu7n75k5YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nNmdLz41; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-451d7b50815so27105515e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752486052; x=1753090852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ldfd3zKYA1234Y8Fp1Vc0yI6IvJCQoMDmBQmNhJG3pA=;
        b=nNmdLz41H8PnCrgZhp5DlEMlVvXH+4TAOfkkMuR+5co7OTUnLGN9Chl9iVwVbQ7B0V
         EaHof10Ix5INsTxkEKlCsQbhky1i7qlZBvkUWZj6bJF+siyodOJperHDJEGg5z66vtBe
         ZTE3QWgkj0EyAoH0WLkSqJrqrt6mmz1G5qgpjRgOynJXgIaERh/iW4JOsJKr4ApWIgGx
         s/6BPQ2XUg/uBwVgGVSYcm30c+nNqbO/hannt60xVyCzWn2BLbS7qTRhOZyvOwOverK2
         9KwEfQLy6QCHOr8751EIMGgtWGKDMSHuF628C9xJ/B2dAew9LzBxVI8y9yPjBH2Ozscl
         FRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486052; x=1753090852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ldfd3zKYA1234Y8Fp1Vc0yI6IvJCQoMDmBQmNhJG3pA=;
        b=T7NHVK0YifVZsKc+E3zse6QFm/PvyV6g15J6H9yv7iZDLQMku1zny2dsB0GLO7GH62
         eq+F8xHILjo8ZyayyZ8O3TUJvGEpiKGGy7kc/kof8Wwr6wND3IUgsykzupLDlx8rYr5G
         I0Q0k1/s5MeWce4va/nhVJJiXfxVXzWvprQjO8Z0848lZXorfYoBe/cY6U9wdtvYGyjn
         PHlXeTdMBAnqVe8EhUoomHEU+wGj9AicAGzAKKK4iiiQxV3V4gLixYFoDQbmGSs3c1Cv
         lePfdmISeuRehHEJsxI0lpHLjVRrO0xkYWNIrQyXk6xNTiRj2ms8hAWOBF6I5D681pP5
         DZtA==
X-Forwarded-Encrypted: i=1; AJvYcCUvimkk+7C7mApQ/RUZJBSn4bFIdzOmBk2s7inb3vrw6unJUCJW7+i5gPr7Ay2KZn9ci7tD4dvUUnxR@vger.kernel.org
X-Gm-Message-State: AOJu0YyAe0HI5V60yyQ2njdIR0WmTl9TgeLW/593AT7clYf9MpHrtgHo
	BbOG5ZJohPrtb2B5D+SMAeZoe3EvpvAGW5JZ4Yvmxv8VYEMnNyXiVVn4tBaXgue3kyI=
X-Gm-Gg: ASbGncv2fImr3ImWfz9LjJtQ20E7REx6H1yK5uiw6HP2VNzamhP9wLUCDRq5tA+KX10
	rIjLdHvq/fYlBl5MkC9JILSKcvDaZiOcF2CVnMzFqEiVmuFbXgBg0CkLt62fdM33Oq62i6KGG27
	jHCC1CShj0rVYvf+trHroLOf3Qb4NMWrJLEHHgpmI0NmIvMuG/WrNfxIBauOAWtH9JDu3q4Ogqk
	TNF298QufbnjklTidguH6vckiNyw/HDtCVF+4k7L1ITl4wkxED7DyqMkztAvg+H9s3/daKbWQ91
	iUo9qZbqBZLXcte9d2CqAEi8LZqajgkTaDL25QHBIwOZuXKb4wpQo9ZaInzmUhNYfPMw2tvalw=
	=
X-Google-Smtp-Source: AGHT+IHBUTHXXfV/sAbab2DTdMAgIRdSFUuzZnhKWqGYxvLkdc88i2Qw/Sud4EEPv8EFPz7tb3aRDQ==
X-Received: by 2002:a05:6000:270b:b0:3a5:3b93:be4b with SMTP id ffacd0b85a97d-3b5f189621cmr8029790f8f.25.1752486051776;
        Mon, 14 Jul 2025 02:40:51 -0700 (PDT)
Received: from [127.0.1.1] ([2a09:0:1:2::3035])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561b25a948sm24989035e9.35.2025.07.14.02.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:40:51 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 14 Jul 2025 17:39:34 +0800
Subject: [PATCH v3 7/8] riscv: dts: spacemit: Enable PDMA0 on Banana Pi F3
 and Milkv Jupiter
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250714-working_dma_0701_v2-v3-7-8b0f5cd71595@riscstar.com>
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Enable the PDMA0 on the SpacemiT K1-based Banana Pi F3 and Milkv Jupiter
boards by setting its status to "okay".

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: adjust pdma0 position, ordering by name alphabetic
v2: added pdma0 enablement on Milkv Jupiter
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 4 ++++
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index fe22c747c5012fe56d42ac8a7efdbbdb694f31b6..310dbd42d99f2ac150356c2128a6e16d1723d19f 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -40,6 +40,10 @@ &emmc {
 	status = "okay";
 };
 
+&pdma0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 4483192141049caa201c093fb206b6134a064f42..15b814aabe10c0a21ece9f0d42264c775b505bb5 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -20,6 +20,10 @@ chosen {
 	};
 };
 
+&pdma0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;

-- 
2.43.0


