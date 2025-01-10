Return-Path: <devicetree+bounces-137312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE502A0896E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 08:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC3F5168AC2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 07:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB7E2063F3;
	Fri, 10 Jan 2025 07:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="B4UitDM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D851ACEBE
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 07:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736495752; cv=none; b=RymQ26iAeItlglabv08WwORGYU09RiGOSGERXidMl2CsGgRl5/OYoTnqf5Mv6K8N4llRY3ollU46H1l9haThDpTQttz/Hm0+z0DWHGKsm5bV/Ft4iUB/YXvGMh8jAv2Nn6ONlEMr2P38CyTfXT5pAemFOigJqGANP813j8nrjxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736495752; c=relaxed/simple;
	bh=oXkHpfxrDbmAcwlWpW2vNSatMSdp/GKzH9CGxMY+ccY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oLlqEuDUuKg8AenAq3MpVoFaW4bdnuRYj8yEXHGtTsoXLDMomsHEj6NAt6eVSkDyIQmoGp4IIesWHDzmNc6gD21v76xnKqEY1ER8yC49KrJKpGUSf9HMekT54Jf8YGjI57sU1YhivIkBMXYW28VxeIxaqaGeiCV4N2Hxwbwztso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=B4UitDM1; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-21a7ed0155cso29689545ad.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 23:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1736495751; x=1737100551; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ViKcm7klDU29SRtUvGm1mWOj/+CiM+LAsXHQlMsYjow=;
        b=B4UitDM1PibhI9BWwcsGaS3VkIDuPXIpYZ3t2sc+/ucosKsUpZW7tjFrZ1gtZsxYE/
         4FMWZ3Q1YEzINVjExNx3lLhRnXVtZ9FVhnzfa1mBR566z2CMYaBlG+ebkyklWyETRPHj
         Uc9ef5jC9clukyf4DWpavLT13IrGdbFaTxXewbwTIV6FGBIJLDEetPYpqP4Q/StuQV1Q
         ROG7xBEW/EaSEDVIG+qO8t1rLigP0C4qy+MrdihdYtZihRSF/olvSwKPhV+wm9ENpDP1
         +J86XDI4qAcqI9HvE4mTvHDG0xhPnbpprrBP3rjyrUiJpJP0leDyU7JoTh0znsvV7lwd
         iCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736495751; x=1737100551;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViKcm7klDU29SRtUvGm1mWOj/+CiM+LAsXHQlMsYjow=;
        b=jiFGG9dyEuE37IF+OCyrzjALJpbexn8VOsE/gHCqEgbWlNnZk5knkyIRG2TdK4SjeT
         uM/iH8Rm8RFVKMi1jRxiwH38raFpphYd9XNpOSEw1stRNuBNN0G3NXuubXE3IWBDXt3J
         xxIaKfGRDtBuDHF2f3a+npuw5Po26wyYitgz4T04YvpAhW8KAX6mwdDCiRRynL+OGW+f
         jrfL9W77S4IBGll4HGupeYRfnAdx0c3IdgF9LrdFF+AD/4yuPj2fWTAeeYc6dYMI7THT
         HKBtVX7ZrXmx7al3w+wHT1K5AvkreAZxMsLdCj5uAfd+JsCJmjjLx1lxRWtG4ckI8XAc
         CKMg==
X-Forwarded-Encrypted: i=1; AJvYcCX4F399pcUm8pW0gpa81wATEbIxUmM9/f01gSyqdvwbHSPcg0O6Z4j/9XgTna798sH7Wmg2KXJrGC8N@vger.kernel.org
X-Gm-Message-State: AOJu0YwFE8BRXkD67UNsfWTf3cOnGh+/Tont12hza04LQFzs6it6nMdq
	rFCHkdK3sCD920cMo+oJrE7ri3gyoyYLR1VtkBvLDhlno/65zq0cPCg5jp8iVw==
X-Gm-Gg: ASbGncvaTk+F+CmxK59x2vnJROEkOy05HYjSrbbpefqAzxMETh834x7BG/ytqKPsCGn
	dMDNFdiTQfpr1M20ieTRhod/o6Zn3BuZXkbpfTsvYyueQD6b/5urpy3m5TNLVuWPTn9rMq7zxM4
	u3q+eZ7RDOfc08shEQUhhsC9gE0z1WsqU9MY3CVH209KL8PjCXdR3DSRWGsNNH0q5Uuswe7tuSm
	y48BU7egqoOxQyLSd7BsEtqo1xK5FBj7MSBkSGNO+2qmceEdaBofG5chogpY3I=
X-Google-Smtp-Source: AGHT+IEBb5JDvt5y/BJe/C6WBaYMBpXupD+m0SHtw4qNmHiKhGmQppua4fpdJ+52+7b6iF9LvO5dkg==
X-Received: by 2002:a05:6a21:3997:b0:1e0:ca1c:8581 with SMTP id adf61e73a8af0-1e88d108843mr15549858637.21.1736495750719;
        Thu, 09 Jan 2025 23:55:50 -0800 (PST)
Received: from [172.16.116.58] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72d406a5299sm1006482b3a.162.2025.01.09.23.55.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 23:55:49 -0800 (PST)
Message-ID: <b7f5b521-cb0e-43d8-87ce-c1e536b98e4e@beagleboard.org>
Date: Fri, 10 Jan 2025 13:25:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
To: David Gibson <david@gibson.dropbear.id.au>,
 Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
 <33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
 <20241210104141.39acffb1@bootlin.com>
 <bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
 <20241210115515.1886f73f@bootlin.com>
 <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
 <20250108090750.45685a50@bootlin.com>
 <d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
 <20250108104719.0412ad94@bootlin.com> <Z4Chb_nEDTHms_ZN@zatzit>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <Z4Chb_nEDTHms_ZN@zatzit>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/01/25 09:56, David Gibson wrote:
> On Wed, Jan 08, 2025 at 10:47:19AM +0100, Herve Codina wrote:
>> Hi Ayush,
>>
>> On Wed, 8 Jan 2025 13:58:04 +0530
>> Ayush Singh <ayush@beagleboard.org> wrote:
>>
>> ...
>>>
>>> I will experiment with adding support to dtc and see how things look.
>>> Hopefully, 2025 is the year of addon board support.
>>>
>>
>> Also one point different between fdtoverlay an runtime loading is
>> that runtime loading allows to set the target node of the overlay
>> at runtime.
> 
> I'm not really sure what you mean by "runtime loading".  Do you mean
> the kernel's implementation of loading dtbo overlays?
> 
> While that is a different implementation from the one in fdtoverlay
> (AIUI), they're both working from the same dtb format.  As we
> discovered attempting Ayush's proposal, it turns out that the dtbo
> simply doesn't have the information we need to correctly path
> substitutions; and it's not at all easy to add it.

Ahh, I think there is a misunderstanding. `export-symbols` only seems to 
support phandles, not paths. So no resizing involved.

It's closer to the phandle support in `__symbols__`, just local in scope.

> 
> So, the problem of the encoding format needs to be solved regardless
> of which implementation is actually processing the overlays.
> 

So there is no problem with the encoding format.

The questions I have are more regarding weather `export-symbols` or 
something close to it can be made part of spec instead of the custom 
linux thing.


Ayush Singh

