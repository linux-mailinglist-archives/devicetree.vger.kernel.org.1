Return-Path: <devicetree+bounces-81187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F182991B922
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E8B31C22969
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 07:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8D8143757;
	Fri, 28 Jun 2024 07:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MTuZ4RS8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0E6C148
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719561433; cv=none; b=dC+eh8ZmAq3Qvntzfx8HhZ2INHZi/YLMlSP5Ba5KoO7vBwJJqxiFIQ7qgCjIgXBsL7UA/Vf14m7XFl5glXrmd4yx0cjO2JhIvj5mj0IcsKH9f2e5k22C5KzzxvNCbKxGW1nmRdeo8vOBRRqcjp50VOJd2osL+kvM0NZlVZgR/Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719561433; c=relaxed/simple;
	bh=9vLB0+AsC+1i65sVlOQFh7hy8bxsQazCdTsevkmwwbc=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=aJ4i8g1FPi5fV//BvPHpQ93TK/VwnE3ddgryMa0eZZxAEfgATH1l0W4lBA+17WFi52bxE9euh3+8AWYTPpVIJr7/Blq14wSXTa6ZkA0tIZzJjrn7gyPZCDPKRVsa8R+1Q2+D4Su5plkhjGjOruYteUI35iAoko1GN0T/6UcKsuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MTuZ4RS8; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-57d1782679fso395867a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719561430; x=1720166230; darn=vger.kernel.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXxCcB0Z+0dCULL6U9IF0HAu/rj2QG5+rPAdSAb6U/M=;
        b=MTuZ4RS8ww+Jflpa8u+43NTRi2Lw5Ejy004xXbadJSk+9i8kWVRc9zDMl3l6AOYwUz
         L08aZ8QAziJtzulUhLIl8t0kwlIAeFttHIYQlKCP/X1bb5TKAJBUpKToGI+1dbf52mDl
         pb2EB7NbDJeXeUOIIE8Sa8nh02n5JOAnz3BbDD5zYtRkR3LzhP3LCxWDU3UI6Uq0ztt0
         ruU/d5phIR+r8ZtUXHCQrUyNbKVgOoL3WhJam2XmZ5ILPtxoOLn2IeBoJeKDcxXafguK
         /4un4Q57yYXqC7saGWCNnqokbY4hAWpJg6tqcD24z8bErIcMT0FJ2ZPA7eAQHSwRa1hr
         JNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719561430; x=1720166230;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oXxCcB0Z+0dCULL6U9IF0HAu/rj2QG5+rPAdSAb6U/M=;
        b=VURUpEFy2Zw2vUennEy2zA+u4UkuUy0a4KowXJAQvtelIJ+MZTxBR4wZDnVv0psrzW
         V7vWMGQE1qMxsYHf1RoYjuz5LuUgbbWqKSwtrQ4CpeofIYDYAX9DaisumCLNq5P/2qT4
         tKUr8wA/VqQF9HNyNEbdbAZh4TILOLkteWFX58laxU9+Ii2DcPrkZ1Idc40+XLsWpgeE
         qNt/L33Im/miilrheto7BquwPmP7fOllmeJxbTJoreFe4zoPh93kmZ8thr+/MT+S0iU3
         jPe+89mKWYBz1aqDlXPbapozvNbCcRMw7u688q28x5n8/GUqPhHjCV7u2cyMTYQfrUIS
         2yJw==
X-Forwarded-Encrypted: i=1; AJvYcCWi9I6N9waMeU2hGA0KHHLCvvUKfaBUEbIn5j59jzzOJ0kXYf4jbkerUMmOqqP4esYF9A/L7VUNpkkHb0JvhdWu++1uyMNo/qus9w==
X-Gm-Message-State: AOJu0YwUiVO1EjJY1Vz1Lpo16IBs93ovC7fFMfeZ4j8lEBmzj5rqn07Z
	/3D6OBrbbKgQRl7uvLGc9pC3GLKl7ATVSRcTWXT7PQ4dthseEvpz
X-Google-Smtp-Source: AGHT+IFmEbCjQZFy/ogPSt3g7CBFVjWgRQv31s+cBKY0y24QaOs8ykRRIzd68n9VpXAey+wrYSuVyw==
X-Received: by 2002:a50:d789:0:b0:57c:5aff:112a with SMTP id 4fb4d7f45d1cf-57d4bdceddfmr10452368a12.32.1719561429728;
        Fri, 28 Jun 2024 00:57:09 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5861324dcb3sm627145a12.26.2024.06.28.00.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 00:57:09 -0700 (PDT)
Message-ID: <7614ed44-7613-4912-9b4b-62c92abbc9bd@gmail.com>
Date: Fri, 28 Jun 2024 09:57:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tinghan Shen <tinghan.shen@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sean Wang <sean.wang@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-mediatek <linux-mediatek@lists.infradead.org>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Duplicated bindings for mediatek,mt8173-scpsys
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I noticed that "mediatek,mt8173-scpsys" compatible is specified in two
places:
Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
Documentation/devicetree/bindings/mfd/mediatek,mt8195-scpsys.yaml

The first one seems to be "real" hardware block. It also has a Linux
driver at drivers/pmdomain/mediatek/mtk-scpsys.c . It also seems that
scpsys.txt was first added explicitly for MT8173.

The later one seems to be "just" an MFD with no real driver but it
seems to be actually used in arch/arm64/boot/dts/mediatek/mt8173.dtsi .

Can I ask for some assistance sorting this out?

Relevant kernel commits:

commit 26331d261f49949bff6477fc9c844b17076fa245
Author: Tinghan Shen <tinghan.shen@mediatek.com>
Date:   Thu Aug 11 10:57:59 2022 +0800

     dt-bindings: mfd: mt8195: Add bindings for MediaTek SCPSYS

commit c84e358718a66f76ac0de1681d15d8d0c68fcdab
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Jun 24 08:17:04 2015 +0200

     soc: Mediatek: Add SCPSYS power domain driver

commit 859e42800bcfc4db9cefaa2c24d6e3a203fe961d
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed Jun 24 08:17:03 2015 +0200

     dt-bindings: soc: Add documentation for the MediaTek SCPSYS unit

