Return-Path: <devicetree+bounces-26405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD6381661A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 06:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EE9EB218C3
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 05:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38B3163CE;
	Mon, 18 Dec 2023 05:47:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645C66FA5
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 05:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5913922ab10so1735997eaf.1
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 21:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702878466; x=1703483266;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rrx4x4gxOs9//fUQ/qtU4i8IyAsgdyeWOL5Kwx7Cc4o=;
        b=MOd6qMeNiMSffdp5Y6aPTpR+d+6zXvF08vl2LDdMkFZG2q7r1tJv/t4/323CQ70Onn
         8cGPWVnGBdPcMBMw3wXcyCYzBI6Q+YIvu+oAKIHn+Ysiq+Bwka9QicuZPYfrFjF1BJML
         60hY0nQV4SxBd8TEhIXfv28aijvkBT8FqoULcBMJRXORkqYZFa3B25ijC2/E+pGp0mfj
         VkOOP0gFOoUZluXvDJ3XdXrn9cdU4EFjlzf+58W7vvD4Qtu8rVmTON7PGSFjAlPy6dvB
         DrBmbdGfEvbfefbnKcXZHvjU8jPgljE4QiTRr3b9tOaozNYL5RxKCcTS2vYgBNoEgcdK
         FYVg==
X-Gm-Message-State: AOJu0YzEMMVBkaMgt95ug74s/ntV+9RxKtKW9f6pgtpdrYp3QEkwenXR
	WqZ498+xNgUnggtcNx3lrJk3oG1GjnS2GQ==
X-Google-Smtp-Source: AGHT+IG7utUhumwN1hGt31HpnSe2w49iEtoqSCm6A9otu1fzUUWqcp4s8yYQGvRyFA14NPlqXF1nsQ==
X-Received: by 2002:a05:6358:c613:b0:170:17eb:1eb with SMTP id fd19-20020a056358c61300b0017017eb01ebmr7452983rwb.46.1702878465971;
        Sun, 17 Dec 2023 21:47:45 -0800 (PST)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com. [209.85.216.43])
        by smtp.gmail.com with ESMTPSA id cz13-20020a17090ad44d00b0028b050e8297sm7626502pjb.18.2023.12.17.21.47.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Dec 2023 21:47:45 -0800 (PST)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-28b4e6579a9so245843a91.0
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 21:47:45 -0800 (PST)
X-Received: by 2002:a17:90a:9dc9:b0:28b:2640:c5f4 with SMTP id
 x9-20020a17090a9dc900b0028b2640c5f4mr1445658pjv.28.1702878464920; Sun, 17 Dec
 2023 21:47:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231217232405.302-1-andre.przywara@arm.com>
In-Reply-To: <20231217232405.302-1-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 18 Dec 2023 13:47:33 +0800
X-Gmail-Original-Message-ID: <CAGb2v67hmuHTQmGCWuop1xag7PJRd5+aTDJb8pHAhTh3V-Cy7w@mail.gmail.com>
Message-ID: <CAGb2v67hmuHTQmGCWuop1xag7PJRd5+aTDJb8pHAhTh3V-Cy7w@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: allwinner: Add BananaPi M4 Berry
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 18, 2023 at 7:24=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The BananaPi M4 Berry is a development board with the Allwinner H618
> SoC. It comes with 2GB DRAM and 8GB eMMC flash, with the usual suspects
> like HDMI, SD card, GPIO headers. There are four USB ports connected
> via an on-board hub chip, and a Gigabit Ethernet socket. Also there is
> a USB WiFi chip soldered on the board.
> More details: https://linux-sunxi.org/Sinovoip_Banana_Pi_M4_Berry
>
> I don't have this board, so this is a "call for testing".
> One thing to consider:
> - The USB WiFi chip has a CHIP_EN pin, which can turn the chip off.
>   It is pulled up by a resistor, so works out of the box, but is also
>   connected to a GPIO (PC2), so the chip can be disabled or reset via
>   this pin. Since this is a USB device, we don't have a DT node to
>   announce this pin. Any ideas how this should be handled? At the moment
>   I ignore it, but it could also be modelled as a USB VBUS regulator for
>   USB port 1, to which it is connected.

There was a talk on this topic at Plumbers:

https://lpc.events/event/17/contributions/1507/

So I'd say a proper solution is being worked on.

ChenYu

> When testing this, please have a look at:
> - Does the eMMC work in HS200 mode? The vendor DT described that as a
>   3.3V controlled eMMC only, but clearly the schematic uses 1.8V, which
>   allows faster transfer modes. "hdparm -t" should suffice for a quick
>   test.
> - Do USB full-speed (aka USB v1.1) peripherals like keyboard or mouse
>   work on the USB ports? I disabled the OHCI node, since the hub should
>   not need this, but it would be good to double check.
> - Similarly the USB WiFi chip probably doesn't need USB 1.1 modes, so
>   please check this still works.
>
> Apart from the missing audio and video support (which are due to missing
> bindings for the H616/H618 SoC), most of the peripherals are supported.
>
> Patch 1/2 adds the board compatible string to the bindings, patch 2/2
> adds the actual .dts file.
>
> Please have a look!
>
> Thanks,
> Andre
>
> Andre Przywara (2):
>   dt-bindings: arm: sunxi: document BananaPi M4 Berry board name
>   arm64: dts: allwinner: h618: add BananaPi M4 Berry board
>
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../sun50i-h618-bananapi-m4-berry.dts         | 229 ++++++++++++++++++
>  3 files changed, 235 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-bananapi-m4=
-berry.dts
>
> --
> 2.35.8
>

