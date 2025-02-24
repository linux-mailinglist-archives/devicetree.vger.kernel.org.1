Return-Path: <devicetree+bounces-150288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E6A41A60
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 232B3188AB1E
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC8624A048;
	Mon, 24 Feb 2025 10:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="UXveu3sV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E493288DA
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 10:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740391790; cv=none; b=s+zWhWjLn+97fTASYMi2Mk9fKr+FzV0ICokRH47Eo/nT0Gik0GPPY6U6Y2W/lts2tllX228CqmWj41lFK9E35EePYOx8EytR9yWU6DTDBbeAxcsCSpNG+qJ5a/Q/CGUtNTkD6M9j/htctoCpa7t4vXM/VavdigkE97Of1P10o9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740391790; c=relaxed/simple;
	bh=onsgqZAXMYjXcbxCGiWbRtaJ+BeYoCF9p0aj3MGF+9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gx0cEpthXWUO6/aV0WEzJaCAgBYj2LLG+WQ7D/mk6wojzN1Dl5PlFCYY6/EFpIKHgMme3qYgjFwcQDA6YvLZWpw8+cluf39wjFju8zQJnPob150iiHvIhcLlhUNaONe/FidXYJa8jsitm+evvlxFykHjmWGJY7Mud8A7+9OLjhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=UXveu3sV; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2fc0d44a876so6641556a91.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 02:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1740391787; x=1740996587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tzuuWbIPCWD9clddarDhLCMxJJqBds3nJvxITaDNJ0A=;
        b=UXveu3sVsiHpzREDS/fGZ/XL83zN6Q69l17pgLSFSM6Y7N6iFH0uQ8Q9pzPrpKwVUK
         ew6lUvPupZDkSovCW/JQJc93QHqVsYnLUtrWvAO0+PpbKppGRsxhujR8aQsa6Np/jhfF
         8V7sFYf8cNT29AWbISfmNKOrOEl+9WJCz7kXz+fZtAgrCEEl3G745YUklFpRLXaMs0Bf
         JXdxrkf+LcXwaopO2KHfp3ruzkHPROQvI3frpwp5uIna90+5XNSFFnTEcMCumLH6tiXb
         x1drF6mevY4vfCoGfS8hcorcyo45b0aN/XlSzycVCBrtfgDlS5plv76jVIftj6PSjaSm
         0zDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740391787; x=1740996587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tzuuWbIPCWD9clddarDhLCMxJJqBds3nJvxITaDNJ0A=;
        b=ViDEU4j1oTdVNGYe8VcjxSVJxBRYGt9EFmMBsvMxLMzZ+ymrU4sDBAMD2JfDAMIWGc
         OyBAemgFp/oTRUODG9eHmvwiETqsjekVsFz2HGMTAsahl7NtF2iyiJwIm1O3rxYaE5jT
         ixfQfJqbblz+i/0+Y7oQX3LiyY8JBxvmYqjXJARW2Kjh4nWQsLNSj0txwRYNKUp0QghS
         lo5wkMO8gzLjdcKH2T3wcgv5Wltj9gI6WRYm++fXRsaWjxZoNRtGB++btLDdov/nJU4F
         43fKGd8zNnA4tZn2e41WJzl8bA9F/if3KWsjGH3fhwi8ZxQSGehucyD+dviiyPwqoKUQ
         x7ng==
X-Forwarded-Encrypted: i=1; AJvYcCW4Sg2jPcI+fKpP82NnFMWyaMoBEuLKJV8iQgrMTI/Cp8qbP+S+BDexSQnDAoAUOw6ukP+ELWQdrFB0@vger.kernel.org
X-Gm-Message-State: AOJu0YybZTO9J+esN2tRoyn0wX0hFIj6Ripj6I9K8zlo1q0ZgcdVlwJ0
	/FifUMOCGs3LwSDAbsYqNwD5l759MOhnFlQqEyC2TVhpe1UNf8kNM0zgmIFKzQ==
X-Gm-Gg: ASbGncuFJJEYArydlPNjqSneHTvjAEPPw4iPoz1DeQpQMzobts9lsZCF6SN01N1JdcK
	gnnyizeNfbBmsHCYKQWzQsEhhUGBWolpLfHwZpm6mar9dnT11cGLQe1XkC3uHu+OkzlGHiERxfD
	KGN7bXpcllCjqwRFbSqThGLKN+F00EZWIiqZJpt1MjMeLjoYacBS/wZr3ulVmBcu/THWBvn0dQi
	ueFJhpMX99ecz/pGgzivZQJ8oJxQeglLze//6kmvs9YzdWX1g4vdj6hu8ac8QUd8S85Uk1e34GR
	/hTFCri0ZedcsjTsXMP/jYL1SV8eQURS8g==
X-Google-Smtp-Source: AGHT+IFE4qPU5r/sYI/18fNQBufutCp3kvlLxt4qVEHc7LdtGYhLZ8zXj+IvLCmKDtM8j1R4H64bTw==
X-Received: by 2002:a17:90b:53cc:b0:2f9:cf97:56ac with SMTP id 98e67ed59e1d1-2fce75eecf5mr25548742a91.0.1740391787513;
        Mon, 24 Feb 2025 02:09:47 -0800 (PST)
Received: from [172.16.119.211] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceb05109dsm6108055a91.15.2025.02.24.02.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 02:09:46 -0800 (PST)
Message-ID: <fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>
Date: Mon, 24 Feb 2025 15:39:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] Status of user-space dynamic overlays API
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
 <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/24/25 14:07, Geert Uytterhoeven wrote:

> Hi Ayush,
>
> On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:
>> # Challenges
>>
>> ## Security
>>
>> The concerns regarding security seemed to show up in the other
>> proposals. There was a proposal to have a devicetree property to
>> allow/deny the application of overlays in some nodes, with default being
>> deny. Was it insufficient?
> This is the most important issue: using DT overlays, you can change
> about anything.  There is no protection yet to limit this to e.g. the
> expansion connectors on your board.
> This is what the various WIP "connector" abstractions are trying
> to solve.

Thanks for clarifying. However, as I mentioned above, there are usecases 
for dynamic overlays outside of connectors. Specifically, for the 
usecase of connecting random sensors to board pins. I do agree that any 
fairly well specified connector should probably have it's own drivers 
rather than using a generic userspace API.

Would it be enough to use `aliases` to specify the nodes where an 
overlay can be applied as I have described here [0]. To further lock 
down things, it might be possible to allow introducing indirection or 
scoping nodes of sort. Here is an example:

\ {

aliases {

export_node0 = &spi0_scoped;

};

};

&spi0 {

spi0_scoped {};

// Stuff already connected internally

};

Any children of `spi0_scoped` should be treated as devices directly 
connected to `spi0` but should provided isolation for any changes that 
userspace overlays can make.

>> ## Memory Leaks
>>
>> Currently, updating/removing properties leaks memory. Was it one of the
>> reasons for the rejection of previous proposals?
> IMO this is a minor issue. I am sure this can be improved upon.  We just
> need some way to keep track of which properties are part of the initial
> FDT (and thus can't be freed), and which were allocated dynamically.
>
>> [0]:
>> https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t
> FTR, I do keep this up to date:
> https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git/log/?h=topic/overlays

Thanks, will check the patches.

Is there a list or mailing thread documenting what would be needed to 
move this effort forward. I would love to help in any way possible.

> Gr{oetje,eeting}s,
>
>                          Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                  -- Linus Torvalds


[0]: 
https://lore.kernel.org/all/d5bed265-1dbd-44d1-8287-8ca993624b79@beagleboard.org/


Best Regards,

Ayush Singh


