Return-Path: <devicetree+bounces-240196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E41C6E5E3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 13:04:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7420F4E50A4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50648354AC6;
	Wed, 19 Nov 2025 12:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="pFG+n4zB"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82A4347FE8
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 12:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763553828; cv=none; b=rTp8W92OrOAx5WtkvJ55Hwws2ybriKQy8hvYVXovNB9gkjjY6YuwdygxIsJUvDO22f1/49FSYKA6PqO5IagFqEPEDHbhr5uq7nC30LrJ27kIi8ZRSYJJ5QY2HAMeFcLU8ChyKOGtD/1gRetR+KVekT6HyaoaMP7Hg7bn0x6i4rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763553828; c=relaxed/simple;
	bh=LFe/fV53hF/U0wwrA49nbbcT+o1Lp7szCrj1+cFtCzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EkvoOLa9JUs61gHtHscbhNAubrigXMaLKLiMArds8kF4DX8DwDlXjQjdz7GwHKY5cF58n+ELNU3GnVppOlMTJQdZpznVxXCBWefWpTMUTDir7piD4zGzWN+tzCZw37lWsAld0yaSQ4l1TpFC95COawR7TdTMmlAUWFL9rDWGZuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=pFG+n4zB; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763553823;
	bh=LFe/fV53hF/U0wwrA49nbbcT+o1Lp7szCrj1+cFtCzw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pFG+n4zBhHtmUZsqQr4988oxlkbkSmakBJIhdyfLkO2x7gSSqu9Wm9pJsRb24gJtI
	 r+YyJlg0YDnETGnGy6e78L7NHJwzyGOou/t6EsM5zitkZi1+26jbq/1vfcPiakbEgp
	 YVPFemCQPgld5J4tOqGB6+HOnWuU+SzNWkzgcJ05XAGZk1xrOzvgMkwe1SFPxykJsQ
	 PwInoOUVwq2eyxATd3ykCQvKiCj1mGPiwB6dF2JuXY4eFc0Qy+xPhahxBiiHn+5COI
	 m20WIBoq5iRSDPQSqPrNzUYgnXLohBJW5Jv+Q5zRj+Re8Rhsfm5AVE/fXADhPEVQ3z
	 yNnKNnwDYmZig==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BE75017E12E5;
	Wed, 19 Nov 2025 13:03:42 +0100 (CET)
Message-ID: <03e32a92-ba1b-4a9e-b0a9-0e0cc0edc441@collabora.com>
Date: Wed, 19 Nov 2025 13:03:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt8188-geralt: drop firmware-name
 from first SCP core
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251119070230.1716418-1-wenst@chromium.org>
 <66693e69-7ad8-4067-9bd3-ef1454e3ec18@collabora.com>
 <CAGXv+5HOrP=hj8qxZmjq+ozeppXrzFKh=kq2Cb+QqWEx9n83Bw@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAGXv+5HOrP=hj8qxZmjq+ozeppXrzFKh=kq2Cb+QqWEx9n83Bw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 19/11/25 09:41, Chen-Yu Tsai ha scritto:
> On Wed, Nov 19, 2025 at 4:31 PM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> Il 19/11/25 08:02, Chen-Yu Tsai ha scritto:
>>> Arnd pointed out that having firmware-name in the device tree is wrong.
>>> Drop it.
>>>
>>> Fixes: e36be19823f0 ("arm64: dts: mediatek: mt8188-geralt: Enable first SCP core")
>>
>> Fixes here is .. well, right, but wrong - as if you "fix" that in previous kernel
>> releases, you will create regressions :-)
> 
> This is a fix because the commit in question was merged in v6.18-rc1
> and v6.18 hasn't been released yet. So you should pick it now for
> v6.18.
> 
>> For all of the currently supported boards, I was planning to temporarily leave the
>> firmware-name properties in place for one kernel version (v6.19) and remove it from
>> all of them at once, for kernel v6.20.
> 
> OK. So I guess the plan is to have MT8188 SCP working in v6.18 based
> on the current name then?
> 

Any firmware in linux-firmware that needs a rename will still need to retain
compatibility with old kernel versions: it doesn't matter if scp.img will be
renamed because we will anyway need a symlink.

This does effectively mean that, for MT8188, the current "scp.img" will be
"reachable" as both "scp.img" and as "scp_c0.img" - so timing for removal of
the firmware-name property in here doesn't matter at all.

There's no rush.

>> I'd be okay if you send a commit or a series removing firmware-name from all of
>> them, without any Fixes tag and without any "fix" word (so that we avoid autosel
>> backports at all costs!), but keep in mind that I'd pick that in the next merge
>> window, and not right now.
> 
> We can avoid autosel with:
> 
>       Cc: <stable+noautosel@kernel.org> # reason goes here, and must be present
> 
> (See stable-kernel-rules for the whole paragraph.)
> 
> After the blobs in the firmware repo have been renamed, we then explicitly
> backport the change to stable. I think that works out better? And the only
> one that needs to be timed is the MT8188 change anyway.
> 
> How does that sound?
> 

We can avoid autosel with that, sure - but I still don't really judge it as being
a fix, as not specifying firmware-name is something new, even if it was technically
wrong from the beginning.
(Someone may or may not agree with me, but that's another story.)

In the past, it wasn't a problem - it's a problem now, and a resolved one - but
this doesn't mean that having this property was a "broken" behavior in the past.

It worked. And it was fine.

Even if I don't see the actual benefit, I don't mind having this backported to
v6.18 when it'll be time to pick this commit along with the others, but again
I don't understand why you're feeling like this is urgent.

For how I see it: -> it's not urgent! <-

There has to be no regression on the supported boards - with or without - this
property being present.

The only one that can be just renamed without *caring* about symlinks is MT8189,
as it "never worked" upstream (as in, there, a rename without a symlink will not
create any regression) simply because MT8189 never got any firmware-name property
(actually, never got any devicetree at all, even).

Again, timing is not important; the sooner the better, yes, but at the same level
of importance as any other *functionality improvement* (not fixes), nothing more
and nothing less.

Does that clarify the course of action for you?

Cheers,
Angelo

> 
> ChenYu
> 
>> Thanks!
>> Angelo
>>
>>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>>> ---
>>>    arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 1 -
>>>    1 file changed, 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
>>> index 7fedbacdac44..8e423504ec05 100644
>>> --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
>>> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
>>> @@ -1166,7 +1166,6 @@ &scp_cluster {
>>>    &scp_c0 {
>>>        pinctrl-names = "default";
>>>        pinctrl-0 = <&scp_pins>;
>>> -     firmware-name = "mediatek/mt8188/scp.img";
>>>        memory-region = <&scp_mem_reserved>;
>>>        status = "okay";
>>>    };
>>
>>


