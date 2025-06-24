Return-Path: <devicetree+bounces-188989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AA4AE640E
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81A7C17BF6A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D717271466;
	Tue, 24 Jun 2025 11:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="rXdutZGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFFF224B1F
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 11:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750766301; cv=none; b=CHH5SBCcD2ukrQlwvi4vtPmLhY/vzJ0z4D9Cw1TX/hD6NGc75Mo2i7wnAPGQRIBZFiTdleYpKvRtAC9E90belx5wx0aKWYvESoJXxhjWebhA2iw+nvWOiQgLgXKAA0qvhFN8mHD/DO5J6XRAUC+OFOz7WPCkPI0IOeN95hQwerA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750766301; c=relaxed/simple;
	bh=TrO2SFjGKBK1TwkijXcscyMw/RsP3DJJ4iYMXoLZjYc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fjbm42dUXlVbNGu7ZTn7CPwqXHMjUZAgzWNEX1WSVkk3pjaSMkq+pVidjE8L2F3rKWbCJkCP6vSkLlY/WfQd5c8D5Ed2kWWnF6YXeo614/bj2tO55Bom1gsYL8+vaDVG/+DX6D75JvEnKPbMaOFiPd+m4XFzoMGCRbY3YFGfot8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=rXdutZGp; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-453608ed113so46092435e9.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 04:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1750766298; x=1751371098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+EIhw+Rvhc6cZiuD+svHBrLE+9XGVyIueYFgEdxmfoI=;
        b=rXdutZGpER4wOAV1UvbmaJxYSfKAqX+lFu473u7nzS4zOKyhXZogCCxcvTZDByPq2v
         plHzXouIywY3iqYBz13Vew2LchH6p1hfhoPlYeSF1aV8aLu1DOckTNsF9/V4vx5vY3a7
         JNqXmpSYrrgTb88FqgImPZqZm5xEn11P784c1Cd6NjIDmwWWbjRlJnrup18R1d9YF7Vk
         y/PeHktuvBVuNicFdZ5GiQe9xBH+q20muW+jG5nQZPcFMOUI3Mbx0VFufZrSLi5/7e+0
         HZZScAr3SskmcRGvs7ocfDTX8HjgggkaIVqDnJNs8BoJhJ7aj8kuB+qCyiHdRDnwBcUq
         6Owg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750766298; x=1751371098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+EIhw+Rvhc6cZiuD+svHBrLE+9XGVyIueYFgEdxmfoI=;
        b=vax6tidzLGiWdzYn3cZyNvL8gIEjQ2nm3tonKQFp/OIEvkaEpzKiMAps4YYcnB1HUn
         snCh54cls6vQrmN0J1NZYIP4azqUN4yYDe1gNnXRFlWtsGRWMmISMTVVW4pjgDPqRC5g
         QI2LsNOgIJPuj6w0jJlBXjWFYbXGhqbZytalblpLgtrwXxeIPUDzW+cf/kodCkFrM9iJ
         BK/t3yvJbyY9fTqSCk54n2xs6mLC7bwwD6HPd1TwSqbmYcxt+aZCM6z56c+484jy0FIK
         oHbG5+m/n3ZaT3R48n5kau2sIPqN7O0hbDPO81X19ZK6sdMuQxLeVxukTJhkKtZOiaW3
         bzsg==
X-Forwarded-Encrypted: i=1; AJvYcCV6GALtjUvQkWOAVqLqG3FFNuu2VioxSxZEsJr4iJ13YHuY6Wqoy0+XfWUVSp063o2cYG9nYQwezEoR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5NztTlsGHGVrE+lQ6fGbfJHEFJUKwyBQXvlWIPmIeeBSxnxDb
	iWVmzsF+NZ8ua0Uf4jYC2rPuU0SX3Fldnx/P1OYT6cQ8hl/HPivU/RY+dJ3KrJKlJ9g=
X-Gm-Gg: ASbGncswNTw5LyVXjzZQzjXO2kFXxqVrJIFHbIIDMMDbm65Mzw4qDAQXpJ32waRR+Dc
	VDny/C+ZZCXBj20fI10mX4O/c6OXcEfvTJ/pYUy2SpKEeVFz2PfAjwcgcCZi2r7zryHCg0ullWt
	X1tQQJnGMt6HbSbPnRnq2gFzoPwrD2RaLWg8+RXXhFE+BtUO8OgpynURh/E1ruNBK4kOGASExqb
	3n9y/SVy1CwGpuAKEpdZPI1IGNPg1x9u/rvbxWbSCv/IJXYVSu/FCGnGx8TTOQ7XtYlOvovabMH
	b6ApwfPTORgMq4YTR0Jjl5+gpqr0XCHfWlRI2lzRjRTr02aZMbwTai/M+B75/1/9kmI3smE=
X-Google-Smtp-Source: AGHT+IGStsBZuJubPW8W7dU9RQ438DWNGWOc3jz/0MQcL2u05gjUkC6JTB4QeRYPapRd3bVa6wNSuQ==
X-Received: by 2002:a05:600c:a41:b0:450:d4a6:799d with SMTP id 5b1f17b1804b1-453659c480fmr133230975e9.7.1750766297899;
        Tue, 24 Jun 2025 04:58:17 -0700 (PDT)
Received: from fraxinus.easyland ([2a02:16a:7402:0:d834:684f:62eb:5df0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ead2a5fsm173860985e9.34.2025.06.24.04.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 04:58:17 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Harvey Hunt <harveyhuntnexus@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Stefan Roese <sr@denx.de>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH v4 4/4] MIPS: dts: ralink: gardena_smart_gateway_mt7688: Fix power LED
Date: Tue, 24 Jun 2025 13:58:10 +0200
Message-ID: <20250624115810.37851-5-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250624115810.37851-1-ezra@easyb.ch>
References: <20250624115810.37851-1-ezra@easyb.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

When starting up, the GARDENA smart Gateway's power LED should be
flashing green. It is unclear why it was initially set to "off".

The LED frequency cannot be configured in the devicetree. Luckily, the
default is 1 Hz, which is what we want.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Reviewed-by: Stefan Roese <sr@denx.de>
Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
index 7743d014631a..0bfb1dde9764 100644
--- a/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
+++ b/arch/mips/boot/dts/ralink/gardena_smart_gateway_mt7688.dts
@@ -56,7 +56,7 @@ led-power-blue {
 		led-power-green {
 			label = "smartgw:power:green";
 			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
+			linux,default-trigger = "timer";
 		};
 
 		led-power-red {
-- 
2.43.0


