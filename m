Return-Path: <devicetree+bounces-10644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8C17D252C
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 20:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 486442813E9
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 18:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22F011C9A;
	Sun, 22 Oct 2023 18:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="fiEPZvce"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC4E3C30
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 18:19:30 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 547ABEE
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:28 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53de0d1dc46so3965004a12.3
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1697998767; x=1698603567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/lSMMwLtEfp+7Hg4EK1tgM1r1sMLEzlM+5lX3wV/bIY=;
        b=fiEPZvceZ8I8DxwsMv+1M9X4Yz6umEvy/tUzhF7HS5iVTBSWYRZomyPW1Nxh51byIk
         TImy6U6BPqJ+mhtKDt9bpe421ojENDByDXikqqj4jaovsAc6VGKIXdYxPelfb+l20IF1
         FRUMg62ou0syXcByEReJkMFGheDCG8KlT1Vs4rDiZQtk9T5rAqBYECQQbEwKYhGjgcay
         AB3MwhNJL3f3jvsxgCZobIysLN9K3MI6jsXaGJq8YG+iwyzcFR1WLikGoBqMP7QEeKek
         3n6W9p0ODPfOuLRGXweA9AdtXq/gL+VxesEpRE4slR1QV8QLvSRSEFVh0FYN+1Bs5FJ2
         pYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697998767; x=1698603567;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lSMMwLtEfp+7Hg4EK1tgM1r1sMLEzlM+5lX3wV/bIY=;
        b=THT/dCZ6fuJQBUA1BPhmOSLfmqAkuo8Mp8hVjTW2IVWaHXDqoz4qUPq7VrE9xXX7g0
         akOyKM/yBgycX1MNO7RCNkZ4ox9G9u1ELMteyvEFe/6aZhs39Ld/5JeiaCg3CZkfKKtd
         1MKcHDHfKJslNmtvvL7qb/tB12EFRkiAPSunbaro+IMPxgt2CoYnc4WLqW5Kq6r3nLBy
         mqkItCpvVyydTKaygBITnjprMDoypXWOswRCs5EgercBxexkh/rHpgtdc9fHDJuM0eMs
         W5GcS2RcCjnSkqk5f6kgV4CuknZh7NRoN41Buk6T+aABVE1HZlqrEtoXeAwUv/F4lhkM
         B/ew==
X-Gm-Message-State: AOJu0YxGnRMFWfT94yPwvHEDyWIJrV4cRnYCVe3wJgn0ydo1t37bofwX
	sgqFo3YZ/dikPlMXxrEXYfZmlw==
X-Google-Smtp-Source: AGHT+IHRCSjI9FqAIrR6xJa6CDE9kz44/K7Y/0m1Yz2IFEsazTJ9q9YN7GTpF4a69gy3aWzr/AG79Q==
X-Received: by 2002:a50:cd9e:0:b0:53d:a90e:be90 with SMTP id p30-20020a50cd9e000000b0053da90ebe90mr5207585edi.15.1697998766645;
        Sun, 22 Oct 2023 11:19:26 -0700 (PDT)
Received: from sleipner.berto.se (p4fca2773.dip0.t-ipconnect.de. [79.202.39.115])
        by smtp.googlemail.com with ESMTPSA id h12-20020aa7de0c000000b0053e43492ef1sm5035159edv.65.2023.10.22.11.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 11:19:26 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH v2 0/2] arm64: dts: renesas: draak: Make HDMI default video source
Date: Sun, 22 Oct 2023 20:19:08 +0200
Message-ID: <20231022181910.898040-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

This series makes aligns the Draak board with other Gen3 boards by
making the HDMI video source the default video input.

Patch 1/2 changes the default, while patch 2/2 moves the bus properties 
to the correct node so they can be consumed by the capture driver.

Niklas Söderlund (2):
  arm64: dts: renesas: draak: Make HDMI the default video input
  arm64: dts: renesas: draak: Move HDMI bus properties to correct node

 arch/arm64/boot/dts/renesas/draak.dtsi | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

-- 
2.42.0


