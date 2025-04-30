Return-Path: <devicetree+bounces-172341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E540DAA4826
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4289F9C5368
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945B6235070;
	Wed, 30 Apr 2025 10:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="BD4rzE7+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6611EB1AF
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746008328; cv=none; b=SXDSvbovBskmrGqSY5lPYFgrgiJLFoalZQNGfhzY+lm0QhaGyWn7JSX/MbSUPsEBnmsumFRMTXKMpjOdHBIVyocM2D/cJyObAMwNIEv8IIaUmEpWvTHcMCCT2Ob1C1asFdNbaffoOhn7Bh7N5zaTogMUoE+gICp8/revKHYkB5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746008328; c=relaxed/simple;
	bh=0dmrpf6bion8KCHIdjyXEfohpCdKVPZ1tATgEgT+gBU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=AXfRW6bKh3DqqEoKiOxMAjW+jUwWzH1nsNAQWa8JNt802t2Wr5KYX/nssHUSy6b4JPEJk5KMCgnWXJoTnQjb6FSEb4rvOnQGmN08A9shmw/iTUaJlwyX9mCeXM6y1WUxh5u3CUgVRf2GX6+Dx09+QYalXBT3AZns1+n/Y6PEbas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=BD4rzE7+; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-223f4c06e9fso7399425ad.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1746008326; x=1746613126; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bKPaS9+UJ71NNQCHxM5vp3ONRCWuRnAFddXjcgmpAh8=;
        b=BD4rzE7+1Es9F9FISGEayl4m1ltkdYr/d7dQFAQ7nu08Fj+0ICm+aUuY3Y7j3oTSPg
         dvH+rqW4IqEaBK/1tMp6p1rR6q/aOLSPsl7OnqlS9YjsftI460CpXPkLmHrRVxtgHbgO
         ss80nEoeVRdsWU1lmIBfVQ+cg8xv7n2VaiaqpneZCd5HJ4X/C6KpxMC2cr+h2khrMVN8
         oxi9EVAb0bZmwrIPCmksI+igF0B+nGaWKxVdNZPb6nP1FK3H6XJtvMN031ILvot1YGU5
         Z+HAA8jKVf9sdqPs0HtoTwZtkVk7+0K0CtOUZj8Em8cYB3JCE0F5IWULZraWga0+WI3N
         QBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746008326; x=1746613126;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bKPaS9+UJ71NNQCHxM5vp3ONRCWuRnAFddXjcgmpAh8=;
        b=YeElhW50t62tY7n9mYiRcPLG79cN/znLmLsG0/aVGSMqXo4SXVotKBd9phm+wrcLIa
         /59UH8zytVRyG1AIBTMEr78BvMDEbzYdbCfIcwk/uRy66ppetq2o14E51QgcG2bUg/OB
         xEszhmKb6PSs8dTKu83kjHFCjuRiLiosa/oJRpRpAxF+SfSVIwz3nlxN3x419fo+S2RA
         b2K/9BIig+s2aesqXltI854GnujfOyjrgqxxrGT8faFMnVjm+q0AmQ+4gTbE4aXL6rGT
         CRf+uJnh/Jwvwuy6r2WJMN1pTKKXpxPYMs6ZGEEetwd+55mwpJDCd6ZW9/+rVYWxfO9Y
         V7EQ==
X-Gm-Message-State: AOJu0Yw/EpKDHFSo3Glu3KEo5noUhLGeFw8mO2gKX++J/Kj3cUft4iYr
	/YcQGhu/d65xNAlNG0Uei+tDgx3qgYIAkYGSlcEtDXXVzP/vGrBgQZou2SlA8w==
X-Gm-Gg: ASbGncvEArFCs6wNON/agfw6jXXcyFs/0vtx/ocAE3sVhNwh4hpR5eCR3fCsNHnLT7B
	GCcSm+k8KHIsaMTT8plnTF6WdC31QUHlEhPFxyrHs0zCbpY+WSeRbR6hEVur2BQvA3WKbdW+lQc
	4M0pIFM3YqfeYgw30tEZoCqfrb+Wb4YZkQGR+qD9VYXKfMHYNIMOaw5MN9ZRz75IfG/e8p0LucX
	+5O7rU820i4ynhGI8JfDzVH4NfNw/vuZD759Tf9FcHlHFifCZCges0tdqD+udqmOsA0Re0CfAve
	asUyMnAwb2KzL0+smqjSABgsy1wyuQV+hPDR3NFt4Ia07Yc=
X-Google-Smtp-Source: AGHT+IFlFOmLXeXAFyOzdFBJaKywCkt5ZokfPKNqPzoDRUJOkAZx4lkN/IsnJuBt+Z1fbHf6T/Gh0g==
X-Received: by 2002:a17:903:2ecb:b0:215:9eac:1857 with SMTP id d9443c01a7336-22df4747f3emr31930195ad.5.1746008326028;
        Wed, 30 Apr 2025 03:18:46 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4d771a8sm118215345ad.22.2025.04.30.03.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 03:18:45 -0700 (PDT)
Message-ID: <d42100cb-eaa0-487f-aaaa-6d8f87bc0705@beagleboard.org>
Date: Wed, 30 Apr 2025 15:48:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] Status of user-space dynamic overlays API
From: Ayush Singh <ayush@beagleboard.org>
To: xypron.glpk@gmx.de, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
Content-Language: en-US
In-Reply-To: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/25 01:43, Ayush Singh wrote:

> Hello everyone.
>
> I have been looking at ways to do runtime devicetree overlay 
> application, and was just wondering what the current status of the 
> different proposals [0], [1] were. They seem to be quite old and I 
> think they were already rejected, but due to all the broken links, I 
> am not really sure about the exact reasons. Also, maybe we now have 
> the solutions to some the blockers at the time.
>
>
> Let me fist go over some of the use cases where I think dynamic 
> devicetree overlays can be useful. I am mostly interested in their use 
> in single board computers like PocketBeagle 2 [2], Raspberry Pi [3], etc.
>
>
> # Uses
>
> ## Dynamic Pin muxing
>
> A lot of SBC's aimed for creating hardware projects expose headers, 
> where each pin can be used for multiple things like GPIO, I2C, PWM, 
> etc, depending on the pinmux. I think Raspberry Pi has it's own 
> solution to do userspace pinmux, but if userspace devicetree 
> application was a thing, it could probably be used for this. 
> Additionally, being able to use dynamic devicetree overlays for pin 
> muxing would allow much easier transition to use proper device trees 
> during production.
>
>
> ## Dynamic Sensors/Devices
>
> Using devices such as sensors, external ADCs, EEPROMs, etc are also a 
> common usecase in SBC's. A lot of current solutions seem to be 
> designed around using user-space drivers in such cases. This is a bit 
> of a shame since Linux kernel already has drivers for a lot of these 
> drivers, and they are probably going to be of higher quality than most 
> user space drivers.
>
>
> # Challenges
>
> ## Security
>
> The concerns regarding security seemed to show up in the other 
> proposals. There was a proposal to have a devicetree property to 
> allow/deny the application of overlays in some nodes, with default 
> being deny. Was it insufficient?
>
>
> ## Memory Leaks
>
> Currently, updating/removing properties leaks memory. Was it one of 
> the reasons for the rejection of previous proposals?
>
>
> Maybe kernel already has some solutions more suited to my usecase that 
> I am unware of?
>
>
> [0]: 
> https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t
>
> [1]: 
> https://lore.kernel.org/all/20161220190455.25115-1-xypron.glpk@gmx.de/
>
> [2]: https://www.beagleboard.org/boards/pocketbeagle-2
>
> [3]: https://www.raspberrypi.com/
>
>
> Best Regards,
>
> Ayush Singh
>

Just trying to consolidate the discussion. Feel free to correct anything 
wrong.


- Rather a generic global overlay solution, a driver per connector 
should be used.

- The board headers (e.g. PocketBeagle 2) should be treated as a single 
connector and any peripherals on it can be treated as an addon-board.


Best Regards,

Ayush Singh


