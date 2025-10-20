Return-Path: <devicetree+bounces-229016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E951BF312C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7CED48174E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6D92D7D59;
	Mon, 20 Oct 2025 18:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fOYn8iv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723DE2C11C5
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760986656; cv=none; b=hVANaGHG1D3MMibQ6Jzk10dHnhhihCTh7juJGHEN5NK7mVgccLOiJenY8XwVvxWledEScpCHZAQzrIqT7UUCXDaz6NLW7HV61YniYZCa3PjeezsIq8mz+7e0biwL29NrdxN+cahPArrOnyWNL6Fo6xcHd/S3dAs3oBjqtFODZF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760986656; c=relaxed/simple;
	bh=pJrhHqs4c+A7V2oVpb0PyljGoTdkdXe3u8DtctqD/Kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k8v8PwYVyMGkzYVDBHCzY6ExW+jI8bFf8r+0xPEhNd9KeNTUYEGi4VdTnetrQgIltDC7Zq7VhVNfA/eosFcudGJtbtWcVD+EmXd1OG5tvFNrLdARqsWAUGwSymiyy8rHjVEOaMc093JiV5V1LVwYiwh597P7Wn9y+Ah8+1DRIcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fOYn8iv6; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-36a448c8aa2so41041481fa.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760986652; x=1761591452; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yomFW1qWfhP0FOOqNGrLEjYZGSO1r76v4ICK3o8nR1Q=;
        b=fOYn8iv6ZWYZmTzhDjQd+ljA1Kop07NYAUWOpAnMv6qD7iqhNOWLJLwUHJAjnc0ZKG
         6AgbJ8Bw7bxmyOsC9Utwx6zsZ7zfqDeJ9PFAH1hNLDhVFeOz3POAndYIw6jt0H9+ZSTX
         ZvWdpFHVNT1/AzqjlBiX4lMKv4iVNUQy6/KJP5Ws4a7WACSmeB9XGU0yWeXwzZWoZmU4
         beOIeisgKM69bs3oO+w6xkNGlmknOHSLrEMDQ2XEdXfH531ZSzcYDF2fxzachjNuvsTR
         mBKql5i4ywpFcEJ0LNmadow8Za0LDkXEMAPNynQz9gST3mXJ0MK8JbYO2w7yLeBogfNf
         4JXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760986652; x=1761591452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yomFW1qWfhP0FOOqNGrLEjYZGSO1r76v4ICK3o8nR1Q=;
        b=nhghkcs4zXCU3B/jY80s1x5SVFS2Rly538PRB/CDX8SVkholuJggZuI2QfkHoYbiuo
         FI/9Mb1QoCwE4rNiu1PY3gpsAflivNNwBPZiWhohw+vodeYFzoRWn6ZqjkEcwsu31Y0V
         sKywHU1pzvp7Pp5+c4eslSrs7lCYVYzwUnP18B5y1XdbkK54IxbFzgdCm71uiANQZNwi
         gGxjFWmQkaSkjkTOm4E2PJcfKpoaHqig58PFE+F4Znn5GuDEQsaUBw7t7O+87IM22aQO
         ELOsjTysMd1WOtcpoY+Zdz0IdTR+pcFBgserNgbIKcQj/2iAjUYLlMwWee4DRC3JffMi
         JGkQ==
X-Gm-Message-State: AOJu0YwKU0yVxX68gqivvNj/seAlGHQ/rNuBDp3w6F1gaUsxScc+W86F
	JSyEG0KTdZIrLb61q1igkWofyk1DDJQNM8UcTkFLxAIb3TJ6oMFQ5nwp
X-Gm-Gg: ASbGncswKYcKFfrRBj3iJaz98DIP9chmw8siHiXGLIoNSxAB7DLY3vrsgAtsY1wIxvw
	RztoWPaXNPXXT8oMr/rzxiPNdng9h/Gtuix431GdkrkbDLBYvPJcLssB02k5raWSc15zvpyh2sp
	yBqB+JyZ/l0sbk4Gfel924uJJvpzYrT4Ak9DMcqnFZs3KpY7hCEiTupc69VEVPM4htBdblB2SYD
	a1fH2P7sxNgXU5RVNXK5YHHrOOUsBJowq7hsryB2DozY3Z3n0Oa6N8jGhxXtfPdAviLlJXbV0YT
	AZPl0cewykgcR2l02Q5yjp0NLHaI4+QoHv4B5ovgajyzj82lD7aIjF6rbFdSs2VUlmFBpqFVLJq
	LVMr+jo+79M3smtcgfVjZQZ4ZraEVCuosklcJ4AtJD8TA8zNorzmXmd7QZutTyA6x3p0EzwR/CU
	B9kJxnZ0DfFgt/t7ikXk7ne3Q=
X-Google-Smtp-Source: AGHT+IFGY61egK49lI4lU4K+qW2E2OyMh3JeYnQVrX+tpayx5+dAhCPNHY+nYw078SaMlhFXUZPZJA==
X-Received: by 2002:a2e:be0a:0:b0:363:f65f:ddcb with SMTP id 38308e7fff4ca-377979395a2mr40301371fa.18.1760986652239;
        Mon, 20 Oct 2025 11:57:32 -0700 (PDT)
Received: from [192.168.0.131] ([194.183.54.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a91b702fsm24353341fa.6.2025.10.20.11.57.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:57:31 -0700 (PDT)
Message-ID: <f76b9004-46ba-4cf6-993b-004242005d07@gmail.com>
Date: Mon, 20 Oct 2025 20:57:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] leds: Add a virtual LED driver for groups of
To: Jonathan Brophy <Professor_jonny@hotmail.com>,
 Jonathan Brophy <professorjonny98@gmail.com>, lee Jones <lee@kernel.org>,
 Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>
References: <20251019092331.49531-1-professorjonny98@gmail.com>
 <3df51774-9774-40e6-ae65-7621bdce0f91@gmail.com>
 <DS0PR84MB37465DFAA8E8994B503A69829FF4A@DS0PR84MB3746.NAMPRD84.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
In-Reply-To: <DS0PR84MB37465DFAA8E8994B503A69829FF4A@DS0PR84MB3746.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/19/25 23:17, Jonathan Brophy wrote:
> on 10/20/25 3:25am Jacek Anaszewski wrote:
>> On 10/19/25 11:23, Jonathan Brophy wrote:
> 
>>> From: Jonathan Brophy <professor_jonny@hotmail.com>
>>>
>>> Introduce a new driver that implements virtual LED groups,
>>> aggregating multiple monochromatic LEDs into virtual groups and providing
>>> priority-based control for concurrent state management.
>>
>>Aren't you trying to reinvent LED trigger mechanism?
>>
>>--
>>Best regards,
>>Jacek Anaszewski
> 
> It is much simpler than that, I'm just trying to group LEDs into a new 
> virtual (fake) leds with some priority rules and define all this in the 
> DTS.
> 
> Consider below is a dts of my router as an example.
> 
> The leds node is the actual status LED I have in my router three 
> elements red, green and blue:
> 
> Then I have my virtualcolor_leds node defining my groups that consist of 
> these elements.
> 
> I have two leds defined in each color I wish to display one that blinks 
> and one that does not.
> 
>  From here I can define all my led colors and logic pattern in the 
> device tree.
> 
> These virtual LEDs just appear as regular LEDs in sysfs.
> 
> After a factory reset of my device I would expect the status led to be 
> solid yellow when it starts up then when ready to setup blink blue ready 
> for setup.
> 
> It I connected these ot standard triggers I would end up with a mess not 
> knowing the status if multiple triggers operated at the same time.
> 
> Without the logic I would likely after boot have a yellow led that 
> flashes white as the solid yellow would mix with the flashing blue by 
> mixing of the power  and setting up triggers.
> 
> I can define aliases to the virtual leds for access within user space 
> and have all the features of a normal led with out the logic headache.
> 
> My alternative is to create a driver defining logic in userspace with a 
> cronjob or as such or with a custom binary.

Userspace "driver" or rather a service would be for sure an approach
quicker to implement, that would not need lengthy discussion here to
achieve a consensus on the design.

Otherwise, I would see this solution rather as a new LED trigger, that
would allow to define the LEDs to be grouped under it. The trigger
interface would need also to allow defining patterns according to which
the LEDs would be lit.

Still, the trigger would be a task for months, and would need much
analysis to come up with a reasonable user interface.

-- 
Best regards,
Jacek Anaszewski


