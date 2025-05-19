Return-Path: <devicetree+bounces-178597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D01ABC4FB
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 18:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59A1C7A5565
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 16:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F00288518;
	Mon, 19 May 2025 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PXaKqh0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A3288511
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 16:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747673663; cv=none; b=JzH8O6REh8Lo+jSs8RSnJpt6CJip3gW9ojisCrhe0GUDHNnQhnXo9pWprMRBMQbh7nXqxmyVkP/FIsn6lKIDzbSiloE7LOMUvJvagMYy1Pj5XhqoM+l6reWGBUY3xM8yN75v2nnJgKCJkKGYPu+AIA0Mr0OTfpem5DKcT0uVdzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747673663; c=relaxed/simple;
	bh=8rxyYRXyJLvJv3tbqdGfc4W8AcmMT3fes/mO9GtJ/Uo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dk2o8d89YIImnIPbljEQAOFE9arPq4gfUSfWk9pOgGMEUNw0QqKTvVA2Jk+AyNT9ku3C34NCZC6qmJIuaa+Cj8PPM4U1SaCFKvqhhzhh3WkSHwQRAx5RyeRs8ggyOT8ccgOTcInGiWTAkaST74WejtWYGFtHkGC5EjCD2STyXrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PXaKqh0w; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-4c34dcdaf88so1761335137.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747673661; x=1748278461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PvrmvTBRC7+gKdP2WldTaX5PIzdSfeV89pU408M+ad8=;
        b=PXaKqh0wIkUPJgV1CqFPtgbm0bTDZ7fWzpBi9GopQXoenYSpgJxCH2llj3NlLeC+NI
         OXknVmOZ0MUDkz0G/wL5g4cC3r8Y/pMnV5SevWL343awabgjFbK6kRwrMwghQQSx7dXf
         E5wSLJSERumWWpwsp2T85UNO3UqyFso4fq9WmhYhWveSKkOdY5jfo1vb7YxnZQJ/P00n
         M0KFtsdtiqS/fOfH/qlrqbNTrM2svAtDrbYO3fOaYLhhVeMMNRxsy/TT9k70IqA/p+SB
         QLxyBgqIaOWVSbnN+0Q0f2NNhV6UJGdVODKEuT7E1DHYt6ne68na27Q2Ud9UG7wFgNw1
         WkAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747673661; x=1748278461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvrmvTBRC7+gKdP2WldTaX5PIzdSfeV89pU408M+ad8=;
        b=Gv8SoeahTYEaf8knC35vpRhRRNoJATtWXNvEJAhCq0X3p/j1vmAScD/M4n89NSueEv
         N7Wr77grZc+YNgWKFPlYRmNwPFPhDtfOCg8bE8ZKnMdjq3KzKmAIoyUcGsTjZoVQ+EnH
         QuQSOHR8ir88fduuRxfgcnpZwWai4OduWAKDI9cCGdVjnzLRUQOB5d8pf036eFCG+wAO
         3uUiGGxKAMiBQPVVVITpUTHYGeUy1EWFweEFcQeNB9Nq8EC6IdtFYeQgIMfidaeIZp4s
         CrLA5oZOhPplnVqeUs7Y9P/8TdqU09b19kCU5/IG9Rqezpt3m6wy/HhKpNTPsLw4cT0H
         QebQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBhyyXoWeb6t4clC/y8tQh/c+3kXL+G003w1EwEFMPFv5cb+8/3u4izVN5/u5rslwkCAtnLPVE5yKo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0fIrmfhOYIr1P1pmhzmsL+FKBMwwGS6+qP0um0CHLcWiedmVY
	wbbQTS7NOu0POHcbNLcXMkDW2+oUBf/APREx9q2mRUbcjOkROuGHrwek
X-Gm-Gg: ASbGnctC5vAHxuCTVltSSw45AnZ6HRAEO2oReoiWKu2AyNbf+yMC8dJQQl71Tl8bVAR
	zLsBrhf3LQVwikHI7ozJfLqufbVj67mrxEuDHZOXRKUwThMliW/BJ9lxLNe9jdQtLq3ohfd3mEk
	bqI/dVyPO5R3+lF3hjgXeSpfG/sNHcqImndEYEFj4DHp+CXyZmbRCknE5jzfS2+CE7dYqBFk9Ip
	o/f6JjgdmqrIFb2N82XN+yRBXJ+cqWJGGSaSIIxALIcOTh9oBR+rDaxiamXPcTCaWjZ3try2mpg
	Q45wyzXEFmk+kQXHB5/aFkeNmx5HyFOolKdludzrEBSNtXPtpmNSiJv/9Usyjy35JA==
X-Google-Smtp-Source: AGHT+IGsGGCwR14ysp3X7Q4/R75dAsctNzgUJHfstdrWpquusQuxBnEWddVcnV/eJhwMQi66e3mGbg==
X-Received: by 2002:a05:6102:1517:b0:4c2:d9d3:2aae with SMTP id ada2fe7eead31-4e053c6091bmr11919316137.21.1747673661134;
        Mon, 19 May 2025 09:54:21 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:276e:c8c9:6d13:9b45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4dfa687ed41sm6671528137.25.2025.05.19.09.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 09:54:20 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: nicolas.ferre@microchip.com
Cc: alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: at91-sama5d27_wlsom1: Improve the Wifi compatible
Date: Mon, 19 May 2025 13:53:51 -0300
Message-Id: <20250519165352.1314199-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The at91-sama5d27_wlsom1 SoM has a WIL3000 Wifi SDIO device populated.

Improve the description of the Wifi compatible string by passing the
more specific "microchip,wilc3000" string. 

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
index ef11606a82b3..e35dd79beb16 100644
--- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
+++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
@@ -385,7 +385,7 @@ &sdmmc1 {
 
 	wilc: wifi@0 {
 		reg = <0>;
-		compatible = "microchip,wilc1000";
+		compatible = "microchip,wilc3000", "microchip,wilc1000";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_wilc_default>;
 		clocks = <&pmc PMC_TYPE_SYSTEM 9>;
-- 
2.34.1


