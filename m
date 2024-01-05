Return-Path: <devicetree+bounces-29918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E411825908
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 18:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63D831C23403
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 17:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFFB63219F;
	Fri,  5 Jan 2024 17:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DKU9Mesv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F9B3219A
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 17:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6dad22e13dcso518596b3a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 09:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704475729; x=1705080529; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=7MvMmIGG1OTvVGECDwkCBOvxHZpT09eejRG7w2yah/U=;
        b=DKU9MesvWUkllpmmd9HKqy+pBHXz2rmu50KCSN6VFS/KHFXS/z6LFRzKwI9aSNiSfU
         /T9dzElDk2owcXjMnlRFEuM5+ywubGSlSn0h+wsyVUHlPC3FnL2JwJIsJqScojx/TYck
         qoTEHMkHc1FbHqU80V+vcnMfDNb5VSEi0KCOVpXsR1NXvVLZHBWswAg1yDVgDMPN68F7
         5WubSXiLmeZs5xGx9RbXhEE0FdgSSnY5UvHUfs/nPGe5jok86qcXHLsLgquOxg2LG2Hy
         4PY9sYtfFJAzXUSVrV6vve7HvG7A0QBjnEOyxANftGKGtyJWDTkWBtr/bi8E9/Jyws58
         1dfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704475729; x=1705080529;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7MvMmIGG1OTvVGECDwkCBOvxHZpT09eejRG7w2yah/U=;
        b=K4iUgjJLcZoDla43kB5/ipL+/oumq80j030Eigp+BVkIW9Y6kWSulGpwu8U6P1MoOf
         oVja5U4IIfDTd/wJuGqPCfjIKYzH7BQ3C3t5vPkxZbbIl+k7yBvkcRKBO7tSnxpwV6f4
         NkRPFL+6HclfFlv6EhGYPHmCjqHPLFz/tKvBcyadMz2Rte4tDDicGKaZ7z25d0wYHLvJ
         clkFrHj4Sht0oJNepH+yrdL40ahPtyY+HqRYGC8OAfauuKCVWWji9yqf2DhFhVqvkxVi
         PtIObM7QMDN8IVfhuTbWgO3kv3E39bFCIF+sCgcKa4ZRk6AVXyjMpcZacLZn0v3Urwqk
         fIaw==
X-Gm-Message-State: AOJu0YwZ1TRWUwybnqMc+niQ4WcC/c0oaj7Zt5OVWM3eSQ1VndVBV0EF
	ROSxfglyYACX4lMjJ6UL5ZokylSWuNgx4w==
X-Google-Smtp-Source: AGHT+IHuOnm7hs+MIF/YDJktAeTmGWj9vojY0HSziqVUOflzq8jI2uyPNPQQRJu+YUAC/BW/uA1VRg==
X-Received: by 2002:a05:6a21:6da6:b0:199:4e21:f71d with SMTP id wl38-20020a056a216da600b001994e21f71dmr690529pzb.87.1704475729519;
        Fri, 05 Jan 2024 09:28:49 -0800 (PST)
Received: from localhost (75-172-121-199.tukw.qwest.net. [75.172.121.199])
        by smtp.gmail.com with ESMTPSA id fi39-20020a056a0039a700b006dab0d09ef0sm1622087pfb.45.2024.01.05.09.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 09:28:48 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Kevin Xie <kevin.xie@starfivetech.com>, Minda Chen
 <minda.chen@starfivetech.com>, Conor Dooley <conor@kernel.org>, Krzysztof
 =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring
 <robh+dt@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Daire
 McNamara <daire.mcnamara@microchip.com>, Emil
 Renner Berthing <emil.renner.berthing@canonical.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo
 <mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
 Minda Chen <minda.chen@starfivetech.com>
Subject: Re: =?utf-8?B?5Zue5aSNOg==?= [PATCH v13 0/21] Refactoring Microchip
 PCIe driver and add
 StarFive PCIe
In-Reply-To: <ZQ0PR01MB098128579D86207B4B9BA7D28266A@ZQ0PR01MB0981.CHNPR01.prod.partner.outlook.cn>
References: <20231214072839.2367-1-minda.chen@starfivetech.com>
 <7hfrzeavmj.fsf@baylibre.com>
 <ZQ0PR01MB098128579D86207B4B9BA7D28266A@ZQ0PR01MB0981.CHNPR01.prod.partner.outlook.cn>
Date: Fri, 05 Jan 2024 09:28:48 -0800
Message-ID: <7h34vbbsfj.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Kevin Xie <kevin.xie@starfivetech.com> writes:

>> Minda Chen <minda.chen@starfivetech.com> writes:
>> 
>> > This patchset final purpose is add PCIe driver for StarFive JH7110 SoC.
>> > JH7110 using PLDA XpressRICH PCIe IP. Microchip PolarFire Using the
>> > same IP and have commit their codes, which are mixed with PLDA
>> > controller codes and Microchip platform codes.
>> 
>> Thank you for this series.
>> 
>> I tested this on a VisionFive v2 board, and it seems to probe and find my
>> M.2 NVMe SSD, but then gets timeouts when trying to use the NVMe (e.g.
>> 'blkid' command)
>> 
>
> Hi, Kevin:
> Could you please provide the manufacturer and model of the M.2 NVMe SSD
> you tested?

I have a 256 Gb Silicon Power P34A60 M.2 NVMe SSD (part number: sp256gbp34a60m28)

Also for reference, I tested the same SSD on another arm platform
(Khadas VIM3) and it works fine.

Kevin

