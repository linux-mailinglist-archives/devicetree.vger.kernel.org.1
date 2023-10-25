Return-Path: <devicetree+bounces-11960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B247D739F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:56:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFDB1281AE4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6596D2AB2B;
	Wed, 25 Oct 2023 18:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="mSwJTRqP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B072B5FE
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:41 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34922115
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:40 -0700 (PDT)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D977E3FADE
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 18:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698260196;
	bh=mHXboaNJIGHxi+UlmtLed78yOAC0VPZ0YehEIDaxN1E=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type;
	b=mSwJTRqPUDuB9Cbsm/H81//bvmf/MJkQ7U8itZO/UsQGJHT9gID2S9tVyOfsgBHa3
	 fY7P50OjPshUVa1xcDHLcdSRWCb2dykVgzBql5N3lzmFHllnunf+1+IYqGhaDgmzz/
	 UUsTKo7UpTWblDlIvmC8UJj0lojgEdVTuIRb4Rsc8BL2DOMBw/ydE20eupR5Nk7v33
	 2rXSQVe9GQBmpLy4AVzkHmFc///qMG84hmFXEVkJAX5F9crm757cx/Cpu9FOj5NZiH
	 Sh6jByraasPa/ZNPavtWtFbqVIuGKJaCJicNUUFOtQ96M41BfKa3BKrJyM9MxzdxJB
	 rvUdAddropy7g==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41cd638a4beso1169351cf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:56:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260196; x=1698864996;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mHXboaNJIGHxi+UlmtLed78yOAC0VPZ0YehEIDaxN1E=;
        b=L8RFdVgM9j7b+1MHkiYbuwTkmGXSvxxyVbm1AnR8awZA7VECeDG09wgeNrwWoKOqNw
         27MFwltojIeCvmbkVh8T/TC7EItV5LCzbdAHWuMC+E5xv2BBnvol0iOmCciJsA1tgqoy
         rEHPzeUUJqMVPb5xBPbZlqIPIcMPvcoGf7ZptkFXEwviIOuXD9AVM9UXpYnMpAkxf4aL
         x20fFpVUFg5YG3hQPkRgUlqJ9heASPH180+3shqJVa8HRgFdcvguJry0D/AJflFayse9
         AHOyk2bjvu5gfX2Kt5ro351MM2hveVDXe6X/QFXbym4Qwbl5Ut/7ZzVckFbG9gKQn4+s
         Xwvg==
X-Gm-Message-State: AOJu0Yxir9hPWrXEgv0HNCYWVI8BLlrbfjrvOA6BWTc1fQnHZjB8RX2+
	VjNoT8Nr5iz9ksU9HsmXXGbgzFZAsFIqM4wpmxp1Napir8RrLUfI02zFrLK7RmiL8nUuMFNyEpt
	Tr/Uucp2k6lz8B3D/SOeIhLWuotDNK7RnM+haDJhj7qurv/n2QsABvS4=
X-Received: by 2002:a05:622a:58f:b0:41c:dd0f:7fd0 with SMTP id c15-20020a05622a058f00b0041cdd0f7fd0mr16782236qtb.33.1698260195958;
        Wed, 25 Oct 2023 11:56:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEE4M1NetKOJlGLn7AZ6e2f6yRI6UKMiMDq2jGuECMu4wY5zIvO7J/wSp3z+d2ubuRtJQGpZkpSUkWzhyn4AYY=
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Received: by 2002:a05:622a:58f:b0:41c:dd0f:7fd0 with SMTP id
 c15-20020a05622a058f00b0041cdd0f7fd0mr16782228qtb.33.1698260195765; Wed, 25
 Oct 2023 11:56:35 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 11:56:35 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date: Wed, 25 Oct 2023 11:56:35 -0700
Message-ID: <CAJM55Z_pdoGxRXbmBgJ5GbVWyeM1N6+LHihbNdT26Oo_qA5VYA@mail.gmail.com>
Subject: [PATCH 0/4] soc: sifive: ccache: Add StarFive JH7100 support
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

This series adds support for the StarFive JH7100 SoC to the SiFive cache
controller driver. The JH7100 was a "development version" of the JH7110
used on the BeagleV Starlight and VisionFive V1 boards.  It has
non-coherent peripheral DMAs but was designed before the standard RISC-V
Zicbom extension, so it neeeds support in this driver for non-standard
cache management.

Emil Renner Berthing (4):
  dt-bindings: cache: sifive,ccache0: Add StarFive JH7100 compatible
  soc: sifive: ccache: Add StarFive JH7100 support
  dt-bindings: cache: sifive,ccache0: Add sifive,cache-ops property
  soc: sifive: ccache: Support cache management operations

 .../bindings/cache/sifive,ccache0.yaml        | 11 +++-
 drivers/soc/sifive/sifive_ccache.c            | 56 ++++++++++++++++++-
 2 files changed, 64 insertions(+), 3 deletions(-)

-- 
2.40.1

