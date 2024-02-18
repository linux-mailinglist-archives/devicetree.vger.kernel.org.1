Return-Path: <devicetree+bounces-43202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEAB859789
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 16:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0FA81C20A5A
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6026BFD2;
	Sun, 18 Feb 2024 15:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pWqN+LGE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E9463126
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 15:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708269243; cv=none; b=CysiJ8J2SXN9P380kehOdTnLAhftfQeUNWXoajXeDUxBIsU7i2WPdQoRF9QIbKXzC72ESxPsIrUobkOIczqOt5eOF3bzKqNp2MTCvHmMxHyRFiyRLBhKevKCabGiJLufjkBVaRPZaZLv739E/tGATgxJkkPn6EzGM7Q3oTWTYIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708269243; c=relaxed/simple;
	bh=2RIlqLb6lOMD1KN12T+mtMdZ8n+dOn+rgY+MsUEh6ug=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e3lyp9mXILbKPp51F2r3DunA0rXMOTBBY+fsxGyGn1uVc9ZmIkiArLNNL1qWeo4FYSUcFWUJ9fbmu9+kYyadgjHehSgWXMHsYyDY3txwplZMZy7Hu/4m0icNw57mI2RAtOfmYDS5YOdpcIRa5q7N3o5asTFqxmvaENpVDrBPQEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pWqN+LGE; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d0a4e1789cso41599241fa.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 07:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708269239; x=1708874039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CO56vYs8Z41/vI1Yt38AdTk/YbbFf9TKPY/0g1B0V7s=;
        b=pWqN+LGEhmkHJmXsJdq22uep9IeoMne5ApIQZa6BcigN2KG1ScEgn9PLWDUp0cU/hs
         DnJBoh3bWo1PGiSXRuH0CUAQSGuRkeu0xPBZOItQTpTneAa5RMtRfE830RP9hjAzyQWX
         qBlfuMyQfgtKisMigFq15TPZlgs6idxhH2D++D1OF4gIPU4nwFLWZ39qBzMockFy193z
         4cJB34y9nKhlwmrqS/WVY0Se8yER6o/f61veIlzVaPAHd8zaqVy1aTeMcm8O6+ezHAmk
         R5TSq8Vjtq1Xagz5TsfaMZw3PZvhCJOgRceR+1/gbuEGMdK/LaqYr7yp4zXl2LmKGZ5V
         A8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708269239; x=1708874039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CO56vYs8Z41/vI1Yt38AdTk/YbbFf9TKPY/0g1B0V7s=;
        b=V0yxWXVzI/otNrvWFunQLLpiQSjnRrzvIX938bv1Hjj58Z79/Er1Z+MxwNFM5O8hs7
         Wg9/zLfv5Cxz8QkMCn8n03hnGKKzBn0RTGYAOD2Kfi6r69t+Iwjx8A+a3rkDeYH0YeB1
         ARSVJDTkBbPThy+EO0dHMl+rkvpE5wemJ5n7POqXccf/tScVp+iwysjofoHEMEPpsx4S
         SQoRe8Ulqd2hWXTd97mG3mNTAtuH0yul5gY3pjuMzlPGlZ4AeszMZGTtMD6FOYugs10d
         zE0lv+js6htX68uOvKRDBUS6jhcy+Jr1ptEOVSbepxadBv8N95rQMRyhl4BBwL4LcS+G
         9ZGQ==
X-Gm-Message-State: AOJu0YxDphoBV28D4HZ8IS4C9SoVrYZiJQfEZSxI2EMIqlnbZOrmHpWq
	gHTk4tXZj0UVS/+OGSFsZTfVtj+JNGGf0ofizC/ZDGLg2QLr7wyo2dP8mEfxvIo=
X-Google-Smtp-Source: AGHT+IGbTfCdD6l7YNLzxHRVZ3Lq7dABvgdcel/C4kTR/bFTGrSyBYIzMItjz8BjQvi+mjuH4un6hQ==
X-Received: by 2002:a2e:8e82:0:b0:2d0:f6cd:8abc with SMTP id z2-20020a2e8e82000000b002d0f6cd8abcmr6031430ljk.12.1708269239473;
        Sun, 18 Feb 2024 07:13:59 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id bu19-20020a056000079300b0033d3d9447e3sm2150744wrb.83.2024.02.18.07.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 07:13:59 -0800 (PST)
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
Subject: [PATCH 0/2] ARM: dts: microchip: few DT cleanups
Date: Sun, 18 Feb 2024 17:13:51 +0200
Message-Id: <20240218151353.3612621-1-claudiu.beznea@tuxon.dev>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Series adds minor cleanups for sam9x60 and sama7g5.

Thank you,
Claudiu Beznea

Claudiu Beznea (2):
  ARM: dts: microchip: sama7g5: align dmas to opening '<'
  ARM: dts: microchip: sam9x60: align dmas to opening '<'

 arch/arm/boot/dts/microchip/sam9x60.dtsi | 64 ++++++++++++------------
 arch/arm/boot/dts/microchip/sama7g5.dtsi | 16 +++---
 2 files changed, 40 insertions(+), 40 deletions(-)

-- 
2.39.2


