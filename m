Return-Path: <devicetree+bounces-212514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B12B43030
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 05:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79BD87C793D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 03:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0851F419B;
	Thu,  4 Sep 2025 03:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Noc91Gn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7249C8FE
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 03:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954925; cv=none; b=CykTtIiQatbzWWSDpwJdBIYblbDw/DlVmazfBaBLtmzfyjTlqsR6VElqh+/D0/eI2LwCBsTB0Fdfp6ZbuSpQzfksJaVKKR3HKld2nzpAOY62w85V/uCCg7Pdj9PQy/m0FawlYgGlx3KXEexXrm/1eYRRcrF6Y8OFM3WmaDcPxtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954925; c=relaxed/simple;
	bh=LwwSp2VGYvrv/hSMJWpdzyIChlL8ttFwCPxmHeAwKNE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t6SdAQu5+5cvfRH0DCirNG4wuawksy1aJchf9OU890EdUNNZRIS+KXWyaLAINL6V6A4oGWYbK7CHmLZaRI08NrzOmRi1v4oJSZGzgCv96SuoBXu66bbcgLAN6dtA+Zu9kFDGeqRqmhup074tmJl8ZYCdGfra8Duo2GjK/nHiYqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Noc91Gn5; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7454a992f7dso479051a34.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 20:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756954922; x=1757559722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QT7by1gfa9pKhUAtv+8oGByeE/LYqWFquUc9CO+EUmo=;
        b=Noc91Gn51BJEu19HF5fvhbKA3P94t1/DPqeE+oSuazvVXC+ghD65UxUBU7O1pcCTE4
         lNAY/J0wQuBAzk54vrprzpkH8FqBPbMFiGb8Sa+5PbGBBBphvcWsKaA+UTPcJfhbxLKr
         PWhxTkAA9htvs2hYzK+Stn9z2NZRkojNsw7GUL9yIy7ssnOs14NEABYNa4Y7O3cD8YjD
         sJaVawrSv+PaxfHQNT9bVN7E5ym/6ETVW5E9HoEjc40nnwrsxrlsogPRJ0qNLG21MJPi
         zTD5rjcKiYGSmlVe76UegwLqqjoTrSnf041W9026QceVXgc1QbidE/WnpLIh0b5ERLWd
         WObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756954922; x=1757559722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QT7by1gfa9pKhUAtv+8oGByeE/LYqWFquUc9CO+EUmo=;
        b=DQYilFhYn+NEnGJ6vo5ks9BJSoXb5jBPAqUo9/bhV+iJ1HaezoFmaftFluIrmC2xa3
         LjWSogq3XOUU7DywY5wN+F2OuXGEOJKxkzbu0OivWICqlpgQ2JzrjKNWZCo+IwaGXjus
         pxG6WJlICJObWfc/HGu/MkgFfRGf7E40rWeQBagAORY257oK3YMLsyr+uHNKy6kAWML3
         8QiqI2NmP3I452sM1yE9ctsldes57KmQZ5GHKVQyY9ldu0IoxTbk2zrhKYqDtl2GGvmx
         C2LaEZDTPv1LfBFg5NZ1YR0lf/31VGBT/O7gSPFimKtzqJM3h17WS+ueQWtU4iprXayP
         FcCg==
X-Forwarded-Encrypted: i=1; AJvYcCUoFwv0Fu2s+fS8GONgTKPPRFk/ALwz4ChYXBPDCOSt7BsCIuyFqHLcjQXY0Qd9c6+ghYq29TNk5urR@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz3Qhia6QHcBIN3LU6SrliHgCd1MrbqiHz8ArlJPhHvTsWZBRe
	cbi0WgqrAkg5Pp8mLdrhZc3ZCbDu7O1MWHPGGzWxeifrf+bwRlo90WT/
X-Gm-Gg: ASbGncuUHwzN7VpJNEfRzfBV2Dwc+aXLBFWZKem/kJoR89O4cOR2YWHxSxdjKWw3NE4
	LF2/hkWBcSVcAF34EV/UfSBtB+350lbM0XTJJF7+iy9i0Y6dO2cy5qCgKR+dFl5215svW1c487R
	pmuEWM7zwzxf29l6VBLc1qdDjjf0adjq348c9liaZsZMgleG8ztwM5vOnJOqaK4C8gijFsObFtF
	7TVnzijkqh2oLKRS+b/QTNWzUL6tjV9e2uV7k4W/ClgpGLeyBuml6MJflPyf+UF54X+ehCLW1SE
	imEHqdcjxL3WfhvaGl/OUKmateC3a22Vvns1mJr/w2Gvo2mKugcm+MB6uZA2GJpBBxWFYJ1laN3
	GCeVfY848zyAyv4iVwK/E4YGapyD+X8FhUuZqZ9GBR2yWv9oH9QU=
X-Google-Smtp-Source: AGHT+IFikeTWfA0Ri8vuJ5/yqUfpE5MwjQOIwn7/c1zwNw8O5lCPtcAHELSxXUuR8uEwh3MYjWv1DA==
X-Received: by 2002:a05:6830:398a:b0:745:a1d8:9deb with SMTP id 46e09a7af769-745a1d8a3bemr829168a34.1.1756954921729;
        Wed, 03 Sep 2025 20:02:01 -0700 (PDT)
Received: from localhost.localdomain ([2603:8081:ad00:4a:c274:2bff:fefd:7058])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7457428b1b8sm2555110a34.6.2025.09.03.20.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 20:02:01 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix the headphone detection on the orangepi 5
Date: Thu,  4 Sep 2025 03:01:50 +0000
Message-ID: <20250904030150.986042-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The logic of the headphone detect pin seems to be inverted, with this
change headphones actually output sound when plugged in.

Does not need workaround of using pin-switches to enable output.

Verified by checking /sys/kernel/debug/gpio.

Fixes: ae46756faff8 ("arm64: dts: rockchip: analog audio on Orange Pi 5")
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
similar to the fix for the Orange Pi 5 Plus [1]

[1] https://lore.kernel.org/linux-rockchip/20250823-orangepi5-v1-1-ae77dd0e06d7@hotmail.com/
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index 34d195872a99..9bc7662ce9c8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -42,9 +42,8 @@ analog-sound {
 		simple-audio-card,bitclock-master = <&masterdai>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,frame-master = <&masterdai>;
-		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,mclk-fs = <256>;
-		simple-audio-card,pin-switches = "Headphones";
 		simple-audio-card,routing =
 			"Headphones", "LOUT1",
 			"Headphones", "ROUT1",
-- 
2.51.0


