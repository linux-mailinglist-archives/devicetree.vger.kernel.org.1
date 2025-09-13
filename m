Return-Path: <devicetree+bounces-216825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6F6B56326
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F204816C254
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 21:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9232B284670;
	Sat, 13 Sep 2025 21:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRiKKIgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C572836AF
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 21:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798491; cv=none; b=PtI8RHGoUq6AoeRVnFAbOhOkXtwjdT2voMbD6/obtjrtYcmwq7SxIsTms+7RZvN5Jc5cYZYglL3LkJH8mMpgGvY232v7RFlPVAkOhmHg5UAoCH6zeZovUOf3z42rgLBX4+XWzsGZhRCLBzYEbVvGvUZHwiy6MtSz8AoDKhVeOJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798491; c=relaxed/simple;
	bh=8zTxgMnEbpJztdLg6jikdNo8zifCDUcjqv2xo8Nf+pc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FCxpSJdE2vatI2KZQquMsz56Ux6fK3F4nKWd4QxRu68tYzseRxqYdkOQIK+yfC311tan6FLv29FveTwYg8twgNFNduv8nHHF6yGzpOncVf1wt76tVdnYUtmK3Zy+NR5YaMQGYG4nR45gVxj5CRnsByDD5v/SvH6wQFM3ZwF8ntI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRiKKIgV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45f2313dd86so16539945e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 14:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757798488; x=1758403288; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xL3C//pZp2AWlO03t2q6KgLvL06f+SJHlgWyKC0fL+c=;
        b=TRiKKIgVensxO2i3j1zTC8pttJJWmVAGxoOxvEr83YTgaWrPzbqkOZdMMP7IVqXz39
         j0iPl+s865CY9295gZNLSbJtBYhe4Qk/xdWjA8ancwnMQpjt9bRiAqlm6cOQ+7u7pRNI
         TGOqUG1QF/cZo2kEzjkybHu4zj2wbmKp5otuGy5+dX/A1P53G3oMhsCjHYNM6nZTW/F2
         5eFYsOp3FCOA6DtFwmh/9dX101hkL1GPkx5bzpRDrElPHHyqReDmSEXa3EkD1ik2n92F
         7aL6BAWfChsfwjq5Uzo5r1pLuBDzOYMl5Yq9P798xF6beWV3hiJTDmXnCMt6GIXDWqrv
         VTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757798488; x=1758403288;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xL3C//pZp2AWlO03t2q6KgLvL06f+SJHlgWyKC0fL+c=;
        b=MuanbwVhxDhyNyWgSRWUGztGpdmzJvMOFUC+Hku5S6sZ37C++bxEawEk2f9W7/6zBy
         c+6baqVk11PGVn2jJ3lFbrlPgOk4eo+gOk4UgC4fnAoBOx0697rckzIAMv9KvBQ6ZGlt
         npCi+lwZZKd68nXx7dcfazRkkjHito5/qoKHTTM9cQsthyebbE3/U+z/WRLQmAWk7H6r
         PtH4j7RX/kuJFl22nYJNQMo5lhJazCHuBIdhh3bTwCwOw5eqI4ElEbcKk5QCDYWEx7+8
         Cy/HVQXUUz+hMebhbqxqgxdMCLEQYqeKbMHXhLy+VJFRAwhWV8p6Vop/9es7oygtP9sk
         FVWA==
X-Forwarded-Encrypted: i=1; AJvYcCUvpRcgZXah4TOeU1NaHd9HPIPaQCWEI6CuZHF4iUsKtaMDTLmAaYnryUIHWxBPeshUPiicI5oEpG41@vger.kernel.org
X-Gm-Message-State: AOJu0YyeGzkrry8rqM9sMTXbPzfQzCZVG7LamZehsUAlPkeyYn8LtPhp
	P+uGkhzmG28hthKRMeMO9SkPkbq3pIRcKHp4boOxcO2sW9+wuuCjeAnx
X-Gm-Gg: ASbGncuOdZm+yDtrh4P6YtQVvFIqbAErQF2U/BE093or711pqPEK5F6F5mNtjDgGIdO
	gglR9udmLRBtF8RE9cqvZzhfRWQWavAwYgZU1DvRT+R6dZ53ljbUaJ6x/ITaU1Fdvtzhsvivpuu
	C2XFiXy14bCYtZhfBYdgfRwxQ/IPtQanvSmGMS0u3f/4XkW9VX0NVved1800boTa4wn9RLihmr8
	dy3Zy3F1B1WSmMGQpqLePIBP3BRU+vcOf9X5een9A6495TiP2Aw8/tAA2m4ANjMqwKQFJNyXoSp
	9z93fkUaNn7EB3NbJmmngmkhAXWfZpfgH7fu5m04Uf7+ec0LH/h7CTjU6vdgYIwxqo+uO0trM4i
	ggWAq52pLz9FJDbMM/ziYvGoB6XWWgYTUBGjqNaKKvA==
X-Google-Smtp-Source: AGHT+IFTCecBSyk7qSB9OZ+w6EvZXPsCkL9LEyhwk6+17yz+FRVjdFe1qhayQGm2rot65cvy44Mtdw==
X-Received: by 2002:a05:600c:1d2a:b0:45b:9c93:d21d with SMTP id 5b1f17b1804b1-45f24ef20d0mr59569695e9.8.1757798488110;
        Sat, 13 Sep 2025 14:21:28 -0700 (PDT)
Received: from Radijator.localdomain ([93.140.65.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd6absm11576842f8f.34.2025.09.13.14.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Sep 2025 14:21:27 -0700 (PDT)
From: =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Date: Sat, 13 Sep 2025 23:21:04 +0200
Subject: [PATCH RESEND 2/9] arm64: dts: marvell: samsung,coreprimevelte:
 Correct CD GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250913-pxa1908-dts-v1-2-8120cdc969b8@dujemihanovic.xyz>
References: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
In-Reply-To: <20250913-pxa1908-dts-v1-0-8120cdc969b8@dujemihanovic.xyz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Karel Balej <balejk@matfyz.cz>, David Wronek <david@mainlining.org>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=979; i=duje@dujemihanovic.xyz;
 s=20240706; h=from:subject:message-id;
 bh=ifag7Tho57hQxJ2BLXtabDmC2XZUT9SI6SYVIH9Ngjw=;
 b=owGbwMvMwCW21nBykGv/WmbG02pJDBlHH/if57uvdUP+coQwr8aSaQf3TW2t0pdcnz1Teg6f5
 U7RUJaCjlIWBjEuBlkxRZbc/47XeD+LbN2evcwAZg4rE8gQBi5OAZgI50RGht1mTixiPcEtPdxz
 nKcv3TGJyXtx6Fap1KUqM3OnFtz7WsvIcFp6lf4K71kz8hsbHrHa6Ypksfppuq2YcNHL8vzLJf/
 MWAA=
X-Developer-Key: i=duje@dujemihanovic.xyz; a=openpgp;
 fpr=6DFF41D60DF314B5B76BA630AD319352458FAD03

From: Duje Mihanović <duje@dujemihanovic.xyz>

Right now, the CD GPIO is defined as active high with a cd-inverted
property. Just define the GPIO as active low instead.

Signed-off-by: Duje Mihanović <duje@dujemihanovic.xyz>
---
 arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
index b9628b1f59f2f749804799e3d9faa48e3036e81a..aa161982ca43844287d212e8a24884d2b8440fed 100644
--- a/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
+++ b/arch/arm64/boot/dts/marvell/mmp/pxa1908-samsung-coreprimevelte.dts
@@ -330,8 +330,7 @@ &sdh2 {
 &sdh0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdh0_pins_0 &sdh0_pins_1 &sdh0_pins_2>;
-	cd-gpios = <&gpio 11 0>;
-	cd-inverted;
+	cd-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
 	bus-width = <4>;
 	wp-inverted;
 };

-- 
2.51.0


