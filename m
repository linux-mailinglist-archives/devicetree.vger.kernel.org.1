Return-Path: <devicetree+bounces-102272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B9976270
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 09:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C21CF285433
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E05418C337;
	Thu, 12 Sep 2024 07:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="TCXeVHHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E2218BB86
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726125392; cv=none; b=kHrCleCCTJHMhpt96wflfbSyBzxE+Lsm3R6UdyCxwfBNiKfzEmuH6+Vsn1iA6wbrP2E+RF+mQbGBjmzffVxEA45zUGcPH6lxQ6Dl4Knx/yUO/B09h/l+iqdGqjaItzYizBWOQ+B/Ds1DTuQZOtjh36chvUK5tq4LMgTgRMaiSv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726125392; c=relaxed/simple;
	bh=AHrcQx8LR1mijO3wHALGSJs+5RqDe43pynZ1DgmTUCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CS2BejQdeniLV9iChwmJkN2H6qL4hQHhdox3SBgBlhPByJC+lOjU7hImkT0il7/QmZpPA9sh4MJJ1/djOEm0273WCf2IqG8+ZL4LNj50jxEL4A902xm29PMvMPbNKQ19Oql13f02j430msJX+9acsurJxjHzSPcgSDJrGI0Z6vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=TCXeVHHh; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-20551eeba95so5935585ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 00:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726125390; x=1726730190; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lh7l9YoHy4qkgvE49qc+r/MAsmVlGzV7/aids6D1De4=;
        b=TCXeVHHhXqMrqL4/1GuwNnEgxG30DjlYBJgBWnSuM8lE92x8U0Fw6U0i4M/MwluSwM
         RuoYsCOaVrBhXzUAjJKwEcFtvfQpq5HC/n1pASaqwl/c+s/BUQE7zXJiPAhvBSPyQ+Rg
         NQbeMBx217h4kuvrEJfA28ekfHRtFi6Z+XIjkLaG9IbYkobryXyq5SCj3wr81xDMoya/
         9M9XDMjSNH87OZJd5KE6uEJ5vbLJRlJpNWiQXrsOyYsDZtTZzTMld0tNfFg7L/tNit4P
         mCkJ7TFP7nGOA4Q0HrUITGJlsvgIPwM2XAp4SiTeyzuC5Sg1LBBLzI5Z/cN0cQ+kMYSq
         Nycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726125390; x=1726730190;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lh7l9YoHy4qkgvE49qc+r/MAsmVlGzV7/aids6D1De4=;
        b=Zx0qaIQ4lyYrUjrADNYZhHBcJQsHuXflpOvhTnVc0O1gTeNStEPC+sXuAXN0T7+Obp
         a+E6vSqXH2p7Q1vYCH/xXVZy8dVxLis0G0x8A9uFxLe3VvFh9TtUb2/i9YAp+i7iSNx6
         gzLvOxrjBgi+eyDkz6gJKqVsoZlIOLXsZRkE0EABega264oeBNMBT3hEsa9CauYzvxiL
         8XwqZacVfUhkoGyCDws2Hy65WYwdbvMYGnfml8Slr+Tchfx8U3f89oRBPMqL+lEFGtHO
         lWO0rkWiXJoq4DFNynto1nQr1uxQp9qo2o6Ui/1TrkfbV1jYWdeJ0upKpUCLw2dUAjez
         dxyg==
X-Forwarded-Encrypted: i=1; AJvYcCVabw8axrZmzao6qMCAHKHnfmirFJgCN9t/tW8HiGkhpSoo9SBQ+XLiTsS227pa8rCsADxyLXsaFcjb@vger.kernel.org
X-Gm-Message-State: AOJu0Yyke7KTNonwU9AWIczZx3KNbWvAVNL3ZaoiGKg4I8avK5YiNdgG
	9r0g/BDoo9Y9LxtQi9GV5orNpZoAyNC9hrXnynRqYp7rih+BHV4YLTIzyJ9TyA==
X-Google-Smtp-Source: AGHT+IEgQUUi+YQfcBvAAIBX3uJLnFXqg+luxeETvddbtjlQ/UH/tax/cuWaglJLbLCWUuuqRX2lvQ==
X-Received: by 2002:a17:902:da88:b0:206:b250:1e1 with SMTP id d9443c01a7336-2076e4239fdmr32667795ad.45.1726125389908;
        Thu, 12 Sep 2024 00:16:29 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadb42e6fasm11951226a91.0.2024.09.12.00.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2024 00:16:29 -0700 (PDT)
Message-ID: <097159c7-1602-4e32-8e6f-9cd023d62238@beagleboard.org>
Date: Thu, 12 Sep 2024 12:46:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] addon_boards: mikrobus: Add GPS3 Click
Content-Language: en-US
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ayush Singh <ayushdevel1325@gmail.com>
Cc: fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org,
 jkridner@beagleboard.org, robertcnelson@beagleboard.org,
 Andrew Davis <afd@ti.com>, Miguel Ojeda <ojeda@kernel.org>,
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, linux-kernel@vger.kernel.org,
 rust-for-linux@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
 <20240911-mikrobus-dt-v1-8-3ded4dc879e7@beagleboard.org>
 <2024091149-vocalize-composite-6e48@gregkh>
 <44039255-159a-4284-abd8-a0f558ad006d@gmail.com>
 <2024091151-unworldly-dance-9a80@gregkh>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <2024091151-unworldly-dance-9a80@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/12/24 01:34, Greg Kroah-Hartman wrote:

> On Wed, Sep 11, 2024 at 09:26:06PM +0530, Ayush Singh wrote:
>> On 9/11/24 20:28, Greg Kroah-Hartman wrote:
>>
>>> On Wed, Sep 11, 2024 at 07:57:25PM +0530, Ayush Singh wrote:
>>>> - GPS3 Click is a UART MikroBUS addon Board
>>>>
>>>> Link: https://www.mikroe.com/gps-3-click
>>>>
>>>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>>>> ---
>>>>    addon_boards/mikrobus/Makefile         |  1 +
>>>>    addon_boards/mikrobus/mikroe-1714.dtso | 28 ++++++++++++++++++++++++++++
>>> Odd top-level directory for the kernel, are you sure this is correct?
>>>
>>> thanks,
>>>
>>> greg k-h
>>>
>> Well, it is kinda a temporary location, since well, I could not find a good
>> place for board overlays but a top-level location seems better than putting
>> them in any arch specific location. I am open to moving them to a more
>> suitable location if we have one.
> top-level location is not ok for something so tiny and "special".  Just
> put it where all other dtso files go.
>
> thanks,
>
> greg k-h


So here are the directories where dtso files currently go:

❯ find . -type f -name "*.dtso" -printf "%h\n" | sort -u
./arch/arm64/boot/dts/amlogic
./arch/arm64/boot/dts/freescale
./arch/arm64/boot/dts/mediatek
./arch/arm64/boot/dts/qcom
./arch/arm64/boot/dts/renesas
./arch/arm64/boot/dts/rockchip
./arch/arm64/boot/dts/ti
./arch/arm64/boot/dts/xilinx
./arch/arm/boot/dts/nxp/imx
./arch/arm/boot/dts/ti/omap
./drivers/clk
./drivers/of
./drivers/of/unittest-data


Out of these, `drivers/of` and `drivers/of/unittest-data` contain 
unittest dtso, so probably not the place.

And the `arch/arm` and `arch/arm64` are for arch specific stuff. 
MikroBUS is supported in RISC-V boards as well (BeagleV-Ahead). So 
probably not the correct location either.

Maybe something like `arch/common/addon_boards` would be better?


Ayush Singh


