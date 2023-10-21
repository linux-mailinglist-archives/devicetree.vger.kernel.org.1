Return-Path: <devicetree+bounces-10512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CFF7D1B50
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 08:25:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 670AB1C20D6B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 06:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7564D2101;
	Sat, 21 Oct 2023 06:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KGhLBNsh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0022C1C13
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 06:25:41 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D6EB106
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 23:25:40 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32d569e73acso1112518f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 23:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697869538; x=1698474338; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZsqAnBrXIKrXNI9KXUv9rutA48kvBGnl6z6p/8v5FYU=;
        b=KGhLBNshYfXitnl3F44e449+VTM1jK/2BlawBCdabCdWRXKYrM0FWel+UuyJ2p4F6f
         u6XJXDx6mHvabhRpodj0oq+mNyNzi6Gohlnk66T9p92thpUnUf+79guGk+c2iSRe7rPr
         ezRkBiDfwqTPjTQpqP2O6jvItsUMRGM5xgj8XQvdivaI1mpCsf8fdOJoKiUuqgE1i5bK
         UadvLp/kgyFucTnpDrNewT77SbmwjS6jxRjUmVjH95VFC8kLwFDuiv0SZWSUMWiyKKl0
         +vrNVQCjcj0dKvgi12MPn6D/Qe7uVnzQmJE3Nji48s3GVkqqnv2a2nPn/r+zPeWXXuWI
         ii+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697869538; x=1698474338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZsqAnBrXIKrXNI9KXUv9rutA48kvBGnl6z6p/8v5FYU=;
        b=SZQOs+pbcdDsrEdvQ5Razy2OkjLhjaV7cfbJ6ATvrZMcb3quBrgn/p/Goxz1qLTQMH
         lgmfp2/X7nEogjg+w6LR3eZDXPEW1IAcNwRhf1A+21gShWDhOOW6H0qtDcOYyCTsTjiO
         LMTAOZjcE5aiaH8Id99nMLsFayFk/hsFSjeAeReQTr6FDBOP0ES1ExPsbOxOMXXp29kf
         f1RRfIJ0zYWU/sReagGMEQdDn6cFr/cPRpppIiGqjg41xZgWhZgguRlLu9zSkMqjN1hD
         K+acLi9FXIQwLpOTrB4kQxM1Oy179xKWgWwy/wI15rJXlgwP583CiNQAX7ixq1evOq07
         11Cg==
X-Gm-Message-State: AOJu0YyElxD8Heva6Z9ut04EY1mjr70EtEJWrejRNzLddQpRtBxUptuq
	eE61mU8I7T3CZVvtRYh79jGeo/2lO1gP/A==
X-Google-Smtp-Source: AGHT+IGBIAoIEX9VEYtSOBHJ/FKN3MKxhiItjQca01ABPMp2r9vu/fnkr+Z2ZvtrXh6N7Oi6DuE1tw==
X-Received: by 2002:a5d:514a:0:b0:32d:be44:f6fe with SMTP id u10-20020a5d514a000000b0032dbe44f6femr2221091wrt.0.1697869537833;
        Fri, 20 Oct 2023 23:25:37 -0700 (PDT)
Received: from archlinux.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id t14-20020a5d534e000000b0032710f5584fsm3085895wrv.25.2023.10.20.23.25.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 23:25:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@csie.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Marc Zyngier <maz@kernel.org>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: allwinner: Add Orange Pi Zero 2W support
Date: Sat, 21 Oct 2023 08:25:36 +0200
Message-ID: <9180085.CDJkKcVGEf@archlinux>
In-Reply-To: <20231020145706.705420-1-andre.przywara@arm.com>
References: <20231020145706.705420-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, October 20, 2023 4:57:04 PM CEST Andre Przywara wrote:
> Hi,
> 
> this adds support for the Orange Pi Zero 2W, a small board in the
> Raspberry Pi Zero form factor, but with an Allwinner H618 Soc and up to
> 4 GB of DRAM.
> 
> This is just for the base board, created by looking at the schematics.
> There is an FPC connector, which connects to a stackable expansion
> board, that provides two additional USB-A sockets and an Ethernet jack,
> among other connectors.
> What is the recommended way to model this, via a DT overlay, applied
> dynamically by the bootloader, or using a separate .dts file, that
> includes this base board file?

I would do it through DT overlay. It can be included in kernel, alongside
board DT.

Best regards,
Jernej

> 
> Cheers,
> Andre
> 
> Andre Przywara (2):
>   dt-bindings: arm: sunxi: add Orange Pi Zero 2W
>   arm64: dts: allwinner: h616: add Orange Pi Zero 2W support
> 
>  .../devicetree/bindings/arm/sunxi.yaml        |   5 +
>  .../allwinner/sun50i-h618-orangepi-zero2w.dts | 176 ++++++++++++++++++
>  2 files changed, 181 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/allwinner/sun50i-h618-orangepi-zero2w.dts





