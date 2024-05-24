Return-Path: <devicetree+bounces-69010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E378CE58A
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 14:56:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45CFE1F2182B
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 12:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6315286628;
	Fri, 24 May 2024 12:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DXAZNvdH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA108405F
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 12:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716555395; cv=none; b=aElHnl/Hz+ZGYzXxkxTwtoB0etUaq7urVVAAi59+l3u69nCWtMayHa7Mvpw8q1ig+XhCDesQYcfI85iR6FXFwo/J1G8z8QmLslLmNYS40tqxihkQmJ98U6Bk+pXd1FxdjsGwHNTqOu1RYkwED0afMSVxmzAnrM88Jp9QktgdjHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716555395; c=relaxed/simple;
	bh=4iD27Sim4+e2wzlhpjRuO8FmRH3AJxgJ6ximiXPdbq8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=nx3wtTSQ9jZbVUaZ00I7VE0XtRkL93TFVKJv06xki80iRuO6oBQ4gIHfg39LIYDu8uNRSQhJZ7t5Nqgw69/pq3jtX932SD9Rp/s8a6Rcy1wFdH4ZmtqZnuA/Xz2h1HwvR7DBOzh7XrbdaeUdv16mF92O1mLdeUwB8HJJBUDYvHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DXAZNvdH; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6266ffdba8so75802866b.1
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 05:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716555391; x=1717160191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=abVzUJ4nv1X5c9kfchVIBpN3UehgMPQfJIiYqIjebGY=;
        b=DXAZNvdHMeH+i3W7oHa082We8UknQUGJ1WiULjvPqlXeCAaKVLySD3mktOdjJXDEAB
         He9qV6mL58N26P4TOXWt8FCTjtdLzNAe0RHmT849UxdHN0pbiiFDX0F8FVcycEmFdqM2
         GOxo/6LYUycq3eRLym6Q8Utde6eon8gIiqwxvCSqTWw4fNYI8y+3r/meZb0iOPDR4wI0
         DsfcO/RzcgiW8Y4JfkN8p7hprkBthwH7Q4W45/GDdwnfI3RF+YHn19yNsQ6FhA2PzpU9
         sTpfvpVcS3W8frIxClrgl+ksZ3o3PRYEcVmBKfYAYtA8PLPwgJ5EO/sHdyhKDaRafJDb
         VGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716555391; x=1717160191;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abVzUJ4nv1X5c9kfchVIBpN3UehgMPQfJIiYqIjebGY=;
        b=qTskpaGe+hWOPNxp9qOIzRZJurA/j45cyCF8BCTFE62w3Zz9m3CWjKNFpA5nvM0chp
         lHb8aFXzZutX+UqB/G5CKK1Zo30kvuMoj4OJ2ap8g9+M9vd/9cxS5tslDMu6MlBE2Bkd
         86y4nSaD/2Q67N2fz5BF4am6776NYFjK3dQ1sCRF3uKX4AwjgxnswEbQYSJHQjIJVwNB
         9MxlgAjo57auk4tHDJZN+0xKfevSU/bZONTyhlV0TdM5TEFwpA/DFCliCeD0YchA+/XJ
         kcEV5jRSTfOhO/MJ2owOVaZvBrPRNZtP5tjDZ7y7GefqW62jhOSlL77UfvOGml8NBgqy
         LvMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjKeW3YJfDrESVF1D9V6ND/u/ntpkA9uyAUaI6umEdRVF466yXRjrX/OXRK2vsKCW6Hq7GRVoxqvP1MBfShSO8lCHNpbyImVPAZg==
X-Gm-Message-State: AOJu0YzYeaVbpm6EVZT+HeAViYdCtRrBMvEdmT9lm7b1frnKzPRTX14T
	XwDKFiEhvOOKVKYeV3BJL6QFV0UdycEGbb6qKIPhb8GMFQYAfXHK
X-Google-Smtp-Source: AGHT+IHAdm3URxyXEPEqKRZPPrqmxvMxskLMKPdy8zLQHfXI81NFq3NKjCdR+jhr+YMpB4aoyggwEQ==
X-Received: by 2002:a17:906:cb8b:b0:a59:c3d0:550c with SMTP id a640c23a62f3a-a62643e4d86mr124642666b.43.1716555391165;
        Fri, 24 May 2024 05:56:31 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cda7cd3sm127570666b.216.2024.05.24.05.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 05:56:30 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: allwinner: convert NanoPi R1S H5 NVMEM content to layout syntax
Date: Fri, 24 May 2024 14:56:17 +0200
Message-Id: <20240524125617.27714-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Use cleaner (and non-deprecated) bindings syntax. See commit
bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
details.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts   | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
index 3a7ee44708a2..36e46e40b8f8 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-r1s-h5.dts
@@ -146,11 +146,15 @@ eeprom@51 {
 		reg = <0x51>;
 		pagesize = <16>;
 		read-only;
-		#address-cells = <1>;
-		#size-cells = <1>;
 
-		eth_mac1: mac-address@fa {
-			reg = <0xfa 0x06>;
+		nvmem-layout {
+			compatible = "fixed-layout";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			eth_mac1: mac-address@fa {
+				reg = <0xfa 0x06>;
+			};
 		};
 	};
 };
-- 
2.35.3


