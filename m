Return-Path: <devicetree+bounces-228143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 80688BE8852
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:08:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 52CA64E0F4D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 12:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C15472E0938;
	Fri, 17 Oct 2025 12:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aHDf+r6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471EA332EA2
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760702890; cv=none; b=C7/qdy4KGo4r/bT7U/+Gptouwp0USCNJNFTVGXQaapyVT+ZIPDv3uYCrQx1l6dSH0Q46fve+VOq3Mm0kx3ZY6bjfe9YojafhoCbLTcCcTWnZjFSFHX3uadMNzbD+3cWS7YQTwc4Uyvat1a4xbtjYMq3w/GiOQiPzhpl7rC/GXH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760702890; c=relaxed/simple;
	bh=pacw/ENbcv+KCNhsoYxWKd5E57eceNXFXgqAbXeIWAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tjnEqJGvQWXJBHYzGAF4FHl2FGCJuRWkveKwRah8R3ansfmq3Lua07nfPa4qw7DT0ScffJsYzhv+eE1RCzImLbL6iJujNg/4g5KhDhotWPguAXnpqYTARnXH4fmXOBzmM6M1MkO2+B7Zilj40Ypf14gcbZ+qysZBLz9y2N30LeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aHDf+r6b; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b6093f8f71dso1250434a12.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760702888; x=1761307688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D1OQBcJjNvMdiwaszp4KDFRPLfNnLBhAgYvcBECQKgE=;
        b=aHDf+r6bLAe2akeLxNcvR40L0o0J3ca95uI8CRwCJQ0G+EQw+IKeoKc0o3YOCU83Wt
         SOqcx9BSx+rWzR4i3c0uPIL+JSwNE+sq1NhjlSPV/Tb/nswX6Qzxz2fy7hBjnbDIs9Q5
         aI6Wzl8OI5C7K9qIH2qke0QvI4M00QnzncCtjyxcUdbO95Ke96Bxx8/wO1cAxmOi5vTU
         HCW+XexCM4TzEo/0OD3DwvF6RYREDbcG05ROtCv/j3QbWc8D4FhEh3Thes2eTEGYc+jQ
         37YTsSfMdC/HfVgKVw9nzZJd40m9OADp94fcm6YLMm3rygqoD193CCeH1kEyoNNj+nej
         kAgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760702888; x=1761307688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D1OQBcJjNvMdiwaszp4KDFRPLfNnLBhAgYvcBECQKgE=;
        b=X7zK63bKiGwOUqSy4TrgmRctt77S70EGhavTGHzIK2iQ6YGYtjI1NgYCLSqnBv95/D
         81BN1BDPASnvYMtf3ndXTbU99+/AdHzDWXMq5x13AeeKsX+ERzcTZ6ZYzGk3EL5M/uN+
         656cvMflXlR6YhZmdKIBNHYF4zhxnlkULZMgYURCnAC5MsJVa9kEvK/djLJDNyQKBd24
         vOZcArpHuR2KISXS9unQBPgkma0BnsofALESDY5hs7hMwhdprBqnJWlDBuruaScc4u0m
         wNc0mPhkoOsYabX6X3mgf4+CRkcUu9k0F3WM4Am7SbUA5/3YPDDWULxVdxb8F8VMSlGV
         6pOw==
X-Forwarded-Encrypted: i=1; AJvYcCVZe7NIDXbG7DnaGzBc1Pf2ch+aNjG7QezYU4bx8MVsSu4NlhFw+o4xg92F3gQuIQEEe7jfeRaF9h0H@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+LrmWhrVqow2jUqXX3eK5P99DnDxTtVoPZ+HwBvF4urKrWUX2
	TKI6KGDLXrOil81Z0R//NA4i/pYyJJ9Q9MvGgPZk1XugYenKps99/rma
X-Gm-Gg: ASbGncsCsmAOzI7RhdrZsPxqrtGrIBoexYhi0crYDz3vyI0ODs+QWMowbhoXV9FzmtE
	3iV5oT5HMe1uqw0y9P8sg7yZS8jdjiTh7nGDdUVowYx2Gu9w1PHTfrqFN0zQwym0vXXId+IgKNy
	gupXuLGNskAjTNo7hlAyE2JHwU0HwpETX57Hwt8R12N+PzS92iUNiam76YA85piEYCoLuwAa5TW
	pGq7vIK+w2gQx584siAWWCMEJYI49uuCsSO/c1LNZf+aijhqiijcsy+c3B2qdCEVZjGqkIBRmRT
	h+rFazdYph7/AmACnZu88o3jt1w6JbLYV3rSd7lQqpFAeoAJ/6ytE65NcTRwRuxh26l/Nh5Vidy
	Sv6/iKcKo6UZKySTww2yOrApvwiXB2Y7OcS3C84Jd/E5jmp4XPWBm1BLLHwixlg==
X-Google-Smtp-Source: AGHT+IFnsq6kZGk/fHm/e4FGVx4CFf8u3uhudH43GQxU6NT4qAtaZrIavqrUcVzL980LCDRQymv9AQ==
X-Received: by 2002:a17:902:d50a:b0:27d:339c:4b0 with SMTP id d9443c01a7336-290cba4efb1mr43185145ad.35.1760702887862;
        Fri, 17 Oct 2025 05:08:07 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a228a5b5csm5822966a12.13.2025.10.17.05.08.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 05:08:07 -0700 (PDT)
Message-ID: <d9d14ce2-2e65-422e-95fb-eb30b128ad90@gmail.com>
Date: Fri, 17 Oct 2025 20:08:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Dragan,

On 2025/10/17 18:25, Dragan Simic wrote:
> Hello Tianling,
> 
> On Friday, October 17, 2025 09:39 CEST, Tianling Shen <cnsztl@gmail.com> wrote:
>> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>
>> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
>> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
>> stable operation.
> 
> Could you, please, provide more details about the troublesome eMMC
> chip that gets identified as A3A444, i.e. what's the actual brand
> and model?  Maybe you could send a picture of it?  It might also
> help if you'd send the contents of "/sys/class/block/mmcblkX/device
> /manfid" from your board (where "X" should equal two).

Unfortunately I don't have this board nor this eMMC chip.
I got the chip model from my friend, it's FORESEE FEMDNN256G-A3A44, 
manfid is 0x0000d6.

> 
> I'm asking for that because I'd like to research it a bit further,
> if possible, because some other eMMC chips that are also found on
> the NanoPc-T6 seem to work fine in HS400 mode. [1]  It may be that
> the A3A444 chip has some issues with the HS400 mode on its own,
> i.e. the observed issues may not be caused by the board.

Yes, it should be caused by this eMMC chip.

Thanks,
Tianling.

> 
> [1] https://github.com/openwrt/openwrt/issues/18844
> 
>> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> index fafeabe9adf9..5f63f38f7326 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>> @@ -717,8 +717,7 @@ &sdhci {
>>   	no-sd;
>>   	non-removable;
>>   	max-frequency = <200000000>;
>> -	mmc-hs400-1_8v;
>> -	mmc-hs400-enhanced-strobe;
>> +	mmc-hs200-1_8v;
>>   	status = "okay";
>>   };
> 


