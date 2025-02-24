Return-Path: <devicetree+bounces-150126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34889A414F5
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 06:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E5BF188C51F
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 05:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBAE1B0F2C;
	Mon, 24 Feb 2025 05:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="1iZq4aeM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED301ACEA7
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740376698; cv=none; b=mwMgnwRgEoBDC0IAl90iI+sKlGepP/ywTdc0M4hL/NtT/Gfqtdj/xYxIlTWAV7JVsm604LNZkOIn0bfMuEqxJNan5zxNdUzZ5vVMB9xsf+lq2sgw3j4qAvAqGsW1gfH+wdnZmyDM6qgP4fRXsF5WpigEo+jBAJxhOlLpKcmUfY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740376698; c=relaxed/simple;
	bh=97ksH0fUVH2wv4Gj2acS/TXU6Ml2sTixkcc5ZeWTONs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sMySN6d81F7AjUpnENNX4vmo5uwfYP2edYTXXJbkw8ouVth4haE8+H6LMC7zjlpz0kZEDjNFyA4MDTvEWTa28bEhn8hm81DJQkJzvgqQl8tUt+R+vQAnERzoPuP49BJAejlOAVWwNk+QiACINCkJ5S/At/P3g1IiSMr9xNIkSeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=1iZq4aeM; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-220d28c215eso59292845ad.1
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 21:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1740376695; x=1740981495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lisuN7IM8Xj4mzWfcv7nbSaDXgyJECrIkFkafy2PwLE=;
        b=1iZq4aeM32K/JWw2bh+pnEhbuZb+t7n7Fyg788oR1qfhpU3HvVQRlzpmcjH49Jth+h
         OzldAz2i262Ty6tC2fUAsibpe6fh2tpgsT8iVrgXiGy9WkF6EY3sE+wW+8mEwmM+BZ7U
         HqIdCFRVfmxnHGyAGVf6/ifosFZyg5i2aUlwyoxDB70qpzhNnLiakZnxV4B9Xb/i2Qn6
         8Z5oWO7BGIergM8J1Wro5DdwbhaF65CZ36ZQYicbfRvBaRj53zXu3VoNP/pvwCsj7YOs
         Ky0CZByhrexq3wyZmyhYhPmBFLSPRPgC4Qm0V4RIYa4r65rAGIuqH/M7suWYtA5a8RzK
         tHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740376695; x=1740981495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lisuN7IM8Xj4mzWfcv7nbSaDXgyJECrIkFkafy2PwLE=;
        b=N7m1IFMbI/pz7cO/F3Z/fucACngjLPn5Mo3JiBGXGEiR2vzLHQbzU46or6zeVxsBcG
         9a4NVCgZuNU0Z2ZnX9/SrvYeE84Sw2AcL3Adj6EiPwM7+ZKaazXUHH+wJPI1lQazPEho
         2ITwbp3MymDSAiqKq31SmDxw6Toxskpy05NrKhS5cQ7k3dN28kJ4VVUm6NXXTuNqF/Sx
         RX1ETcEJ0w/adApPhGF1guOkYN5btSwfCK/M6unkRYgGsN69pR2vo9MOx2eI1E7xXH09
         2nvfki4sn6PPDKnVtyzPTvhyNxVShWWQll8zlgx2UvJMYEewsyUlLAr+K08na4k3JwtJ
         07fg==
X-Gm-Message-State: AOJu0YwbIkyX/IN1YY72scardF1tDEDiiUakDHVcF6VAT1L6SWDz63uT
	uHgWhY80TYS/7lrdysi2TvrBXFQxMY4efvGoqP3ZjJ5AM+cghDsFGjSp2K39VnTH+WeDYO6xR+Y
	=
X-Gm-Gg: ASbGncvBSARlJHcTpcLNZuQk2rrA4gD9+VC25Y87oLoo3p2qtc5xQsw23vMXU4wAE6A
	Lu2LcuosX/g2TClVRUQSsLGTrEpMuWRqXnvEbsJngA6i5Ig3ncxKmricXqceLl0s0b7XajqU3GR
	QTv3YFALtZj8n64soN7uQ8gblSuDb+zLscdcJVE+n4k/SpWwds3OrB4t7CuXc4RyEPQhVK08DZV
	l3fjPXvsY92QRySbVevvuidU1beOaXUAJleIx1zRqXxnHQsWE7OIxyapZf+mu1tMpNtCIZi/3jU
	zCMYcGqwxFxjuVW2bYepkHNGzCU3AG7wSA==
X-Google-Smtp-Source: AGHT+IE9by00nL0QZfW9htj5Ee/NnjieAF+19RJzh/LgzzZL8HnrvFaZeaEHHbO8oUI/cEILk81Q4A==
X-Received: by 2002:a05:6a00:1392:b0:732:5a8f:f51a with SMTP id d2e1a72fcca58-73426cb1e67mr25687471b3a.8.1740376694525;
        Sun, 23 Feb 2025 21:58:14 -0800 (PST)
Received: from [172.16.119.211] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73468a98319sm762918b3a.44.2025.02.23.21.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2025 21:58:13 -0800 (PST)
Message-ID: <d5bed265-1dbd-44d1-8287-8ca993624b79@beagleboard.org>
Date: Mon, 24 Feb 2025 11:28:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] Status of user-space dynamic overlays API
To: Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Jason Kridner <jkridner@beagleboard.org>,
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
 <2FB1BF12-E30C-4D99-8F71-2B28CEB16478@gmx.de>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <2FB1BF12-E30C-4D99-8F71-2B28CEB16478@gmx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/23/25 02:01, Heinrich Schuchardt wrote:

> Am 22. Februar 2025 21:13:56 MEZ schrieb Ayush Singh <ayush@beagleboard.org>:
>> Hello everyone.
>>
>> I have been looking at ways to do runtime devicetree overlay application, and was just wondering what the current status of the different proposals [0], [1] were. They seem to be quite old and I think they were already rejected, but due to all the broken links, I am not really sure about the exact reasons. Also, maybe we now have the solutions to some the blockers at the time.
>>
>>
>> Let me fist go over some of the use cases where I think dynamic devicetree overlays can be useful. I am mostly interested in their use in single board computers like PocketBeagle 2 [2], Raspberry Pi [3], etc.
>>
>>
>> # Uses
>>
>> ## Dynamic Pin muxing
>>
>> A lot of SBC's aimed for creating hardware projects expose headers, where each pin can be used for multiple things like GPIO, I2C, PWM, etc, depending on the pinmux. I think Raspberry Pi has it's own solution to do userspace pinmux, but if userspace devicetree application was a thing, it could probably be used for this. Additionally, being able to use dynamic devicetree overlays for pin muxing would allow much easier transition to use proper device trees during production.
>>
>>
>> ## Dynamic Sensors/Devices
>>
>> Using devices such as sensors, external ADCs, EEPROMs, etc are also a common usecase in SBC's. A lot of current solutions seem to be designed around using user-space drivers in such cases. This is a bit of a shame since Linux kernel already has drivers for a lot of these drivers, and they are probably going to be of higher quality than most user space drivers.
>>
>>
>> # Challenges
>>
>> ## Security
>>
>> The concerns regarding security seemed to show up in the other proposals. There was a proposal to have a devicetree property to allow/deny the application of overlays in some nodes, with default being deny. Was it insufficient?
>>
>>
>> ## Memory Leaks
>>
>> Currently, updating/removing properties leaks memory. Was it one of the reasons for the rejection of previous proposals?
>>
>>
>> Maybe kernel already has some solutions more suited to my usecase that I am unware of?
>>
>>
>> [0]: https://lore.kernel.org/all/1417605808-23327-1-git-send-email-pantelis.antoniou@konsulko.com/#t
>>
>> [1]: https://lore.kernel.org/all/20161220190455.25115-1-xypron.glpk@gmx.de/
>>
>> [2]: https://www.beagleboard.org/boards/pocketbeagle-2
>>
>> [3]: https://www.raspberrypi.com/
>>
>>
>> Best Regards,
>>
>> Ayush Singh
>>
> Hello Ayush,
>
> On [1] I gave up when I got the impression that the maintainers only wanted to further their own companies interest and did not show openness for a globally usable functionality.
>
> Best regards
>
> Heinrich
>

I am thinking about an implementation more in line with your sysfs 
proposal [0]. Maybe I should send an RFC to get more replies but here is 
what I was thinking of:


Having a property in `aliases` such as `export_node{num}` to explicitly 
export nodes which support overlay application. The `of_sysfs` module 
will create sysfs entries for each of exported nodes.


The same files as [0] will be provided for each node:

load:   This is a write only file. Data written to it is interpreted as 
devicetree blob, and applied using `of_overlay_fdt_apply()` to the 
target node.

loaded: This is a read only file.
         It provides the count of loaded overlays as a decimal
         number.

unload: This is a write only file.
         If a positive number n is wrtten to this file the n
         most recent overlays are destroyed.
         If a negative number is written to this file all
         overlays are destroyed.


Since any nodes that can have dynamic overlays applied need to be 
explicitly enabled in base devicetree, I think this should help with 
some security concerns.

I am a bit unsure if I would need to create a new device for each of the 
exported node or just create kobject for each node directly (since the 
sysfs entries should probably be under 
`/sys/firmware/overlays/export_node{num}` rather than `/sys/devices`).


[0]: https://lore.kernel.org/all/20161220190455.25115-1-xypron.glpk@gmx.de/


Best Regards,

Ayush Singh


