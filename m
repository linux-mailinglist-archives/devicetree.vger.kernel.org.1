Return-Path: <devicetree+bounces-223647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8585DBB940C
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 06:55:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 293293AFF7A
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 04:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A979A1A4F12;
	Sun,  5 Oct 2025 04:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FUoKGH6d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA1ACA4B
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 04:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759640124; cv=none; b=QSEwUlAwBw2xLvri8hjZPlUnY/t6dmcdIEiCjHT8w4RDxkxF8cQH3kSBIqIJ/aA1gejdy3P+Z6+LzIP4N6JhF9ZnPB29DHT7Zejf4N+pQPbpy3Y3oQiq/tE0idp0zvz5iO6+7VKWwcNytqmA2qbaWqKJmmeuqAfgGr47eJ0W7nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759640124; c=relaxed/simple;
	bh=uUxZnW5KUkMiHEzGNRHBsp+KaVM7fDpIrP+h9PlG5Rw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J1ImRuF2vH6MpcXMFyZXAOy+jacGLcMC9QSptbaZI+V+lZS9JDMnvYQO7Rp1GHwKfEgH36rqKhEuCv10smOTPPf33HdAxa1WwB/yp5jlyDvdKMMXp1J6r+t+kYlSEnn3fZJ+tOtbn0uh1bm6PyCKUQop2KksaY5kbXBzou3rcdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FUoKGH6d; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-78af743c232so3062774b3a.1
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 21:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759640121; x=1760244921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l9ES7sgSCHDlhobwO0ZrFKVNTVshI11voBNNIhtfWjA=;
        b=FUoKGH6dnOK6ESX9CySoBBsh8dD9OYlQ9zEhdkedYJpLQATW4x17vUQ+BXDA3UDS9F
         wAnAAePn1EFbUKdyDkZXVPa4UaJSHm76B6pJmY7MT46h+7rH0x4bSEZ0xzGlSdRtVWbF
         98NP18UNddcO6fMnABNOXRrToDiu5I7KwLuk0XrnfBD4dN68JGyVm1oHrwx+ia47Ntyi
         ixM1/UrgvvbVmt9GCEtAG/myNDMVwBctTMpGwZq515dLaAPSl5OINEqWWzlWDdgDd3kZ
         6+/6uFHI2bL2d2cR0pHFSjmOjZBsU4W8+xeGo4sgo01l8V5TY23lTWPqlYqIQrZp2DKy
         EEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759640121; x=1760244921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9ES7sgSCHDlhobwO0ZrFKVNTVshI11voBNNIhtfWjA=;
        b=amqdlPnPzZ6iYrUahLomiAwWtQ3CdPJ0VR8CszUg2+Kk7GpBWmDUNZNCNbaS3PctFk
         QyZZRRLDQLXA/TnpEQoGfqkqLV/YIpdutnv7qWN5dxUP4SVxStv8ElRfUOuFx+/+5aft
         P0xRs/fg2iRilEFYMzT51s62e6heLmWR4p6Z/J5x6ZeFIvHvR1HptLCRRoP2a6DRUO3P
         xO6rQ2DZrdGCXbBI/LfROZafs8X1a6gcwEshqv3GwdoiFW17YIvivHZkDNkhUC6sFm9h
         wuv4/8fNv8lCG/bZoA+CgnuTlfjuAOyyy8LnMwWvIZCvJEYX3fQa3vc5FRoWcLAgj28w
         wkjQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4K0RGh3gbKc+hJO+30kXXly0660XBUr/zz4NFHn6hDU2pkFKQkUJUDsr5sLCuNQMDOAuM3rtDhpjp@vger.kernel.org
X-Gm-Message-State: AOJu0YwErz1U/DRlLOu4widYdVpJjT6dksP3PrApWesuOJ3TCehvv6Gm
	AcAlGz4UI+3av4/hPdgcZmxwspC8TovNI0uVysHy/9VkEgDBPUrI54Aa
X-Gm-Gg: ASbGncuoY+uK0dk0ihSAAjCJ/EFDL11LzZ5YREiW2oxb7RBeInpNxEoPC8BETwiZekh
	UXSE1UUsBBOQpozlekiAe6wxyo61yssujIwj19olZc0ZL3Qz/Db/FX+qC1XTZEWN2KS9LLULgVa
	NkzH0/f+zRbk60TP1c9yDs1O4eNpCVWIMbM0tUVwfvu31S8O8JDS0Nlnq+fnpwDPGE3jXpjIY8s
	eiSK6j7by9P4WAggUMar2mpGWQ0uoflgBKy/pePM4Ti+3Nw9KysosMMprCENz9gLOxDfUtFJ1i4
	+JwRe2jAiU+SWzVlr4EFNoFz5/L4nu0cpSsqzQR55NM2VkccSWNHnbo7T5M55GZ+31pIWTSjChS
	SlrCUiuDQub0ZssjbBXT+doXxchLxzmc5P6MpXMs768RAbDiow4lB06i0Xsj8fBwLaejK3z6exk
	KVU4BTHuwPqDuhnxfc4ahz4fO3ldp8gkRq44A=
X-Google-Smtp-Source: AGHT+IHrXDCzsLNximokCsFX8BTq6/xEQSVOcieVuoemZgV4yRTvna8trHt71DcqUkLSfovmVG7MFg==
X-Received: by 2002:a05:6a21:999d:b0:2f6:cabe:a7a8 with SMTP id adf61e73a8af0-32b6209626amr10163253637.32.1759640121168;
        Sat, 04 Oct 2025 21:55:21 -0700 (PDT)
Received: from [192.168.68.61] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099d4cfbesm8686558a12.28.2025.10.04.21.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Oct 2025 21:55:20 -0700 (PDT)
Message-ID: <37f2603e-8c51-4f92-a7af-0e60cd577004@gmail.com>
Date: Sat, 4 Oct 2025 21:55:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
 <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
 <115da845d9161e6ecfa67cf189b84aa8@manjaro.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <115da845d9161e6ecfa67cf189b84aa8@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Dragan,


> Thanks for improving the patch descriptions in the v4 of this series.
> I just went quickly through the v4 and it looks much better.
>
> It could be said that the new patch descriptions are now a bit too
> verbose, in the sense that the test procedures and their results could
> be summed up a bit better in prose, instead of providing the "raw"
> inputs and outputs.  However, it's still better to have those, than
> not to have anything.  Writing good prose is a skill that usually
> requires learning and practice.

Awesome! I was hoping that others would comment on the testing I've done 
(especially for the accelerometer and magnetometer patches) as I can't 
tell if userspace is wrong or if my testing/conclusion is wrong. Mobile 
Linux is very early stages at the moment, and I suspect the Pinephone 
and Pinephone Pro were used as reference devices with Megi's downstream 
kernel. Wrong mount matrices in the downstream kernel might be affecting 
userspace. This means that with the corrected mount matrices in this 
patch series, userspace is slightly broken (eg. since I fixed the 
accelerometer, the screen in Phosh and KDE Plasma are upside down. I 
suspect KDE's Kompass and Leonardo's compass app might be the same if 
I'm changing the mount matrix for the magnetometer). This is why I 
decided to showcase the raw values in my testing. If my testing is 
incorrect, please feel free to let me know.

I think I will leave my testing in the commits itself this time. If the 
mount matrices are correct based on my testing, it will probably be 
helpful in the future in identifying why downstream is slightly broken.


> You haven't done anything technically wrong, but the way you submitted
> the v2 and v3 made them feel a bit like you picked those patches from
> some random place and submitted them to the mailing list without really
> understanding the subject matter.  In other words, it's the contributor's
> job to convince everyone else that the submitted patches are fine to
> become accepted, and the v2 and v3 simply lacked that.

That's fair. I was under the assumption I had to keep the patches mostly 
in its original form.


> I wonder how would some forge prevent "spamming"?  It isn't about the
> possible "spamming", but about the act of submitting different versions,
> which would be present regardless of the way they'd be submitted, and
> the reviewers would need to be aware (i.e. "spammed") of them anyway.

At least with Gitlab & Codeberg, a lot of the notifications can be muted 
(I believe updates to pull requests is one of them) and pipelines can be 
created to ensure that formatting is correct and that the proper sub 
maintainers are notified automagically. In my opinion, b4 just brings 
some of the forge's functionalities into an email based workflow, but 
will have to fight it's own problems such as: 
https://social.kernel.org/notice/AypvdTWyAs5km0Gc3k. I don't mean to 
detract from it; it is very commendable what Konstantin Ryabitsev is doing.

If there are concerns about centralization, there are alternatives like 
Radical. I heard that Codeberg is looking to also decentralize in the 
future as well (Maybe using Radical's protocol? Not sure). If there is a 
call to action from the Linux maintainers about looking into 
decentralized forges, I bet there would be many projects excited to be 
used by the Linux kernel. It will also help get new people excited to be 
involved in the Linux kernel and potentially become kernel maintainers 
in the future

I think I will leave it at that, as I don't want to further derail the 
conversation from the ppp series.


Rudraksha


