Return-Path: <devicetree+bounces-289715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iK6OJrc16mk+xAIAu9opvQ
	(envelope-from <devicetree+bounces-289715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 17:07:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B176454171
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 17:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E18830A9AE4
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2026 15:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE61C35CB9C;
	Thu, 23 Apr 2026 15:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="NRGIDgU5"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B05A285CA4;
	Thu, 23 Apr 2026 15:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776956522; cv=none; b=ISSfhoKk+b1mz/J9Vrdg0Y0ujWIM0DnoHeEqm4O9RieH4xl9UlclmBVsCV+mFgzuVJyQgmf6tgVQgtbX+rvZMV/q8u05V85CopOfEWBSlNnh5y5L/XiQ7xwG7ZO0XBwMKQGl76SEQE00I9DDcX1q0dKoQ8Blgeer6quWzI/Blkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776956522; c=relaxed/simple;
	bh=PPqnjiPUXR1jFV5RDIv+mYtA4/prS2yGlfk/ZnkqGLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LSHkRbWb6ztNRDzcVQgkfWRkH9RW/s8+idz+Eyr9AmH1LlGV0e+5NU0k6b/olPLn10MlSCBPUF3t4IgDmtpLQQ3BgaAaKU2A4vkjCrB01q6juUJ/log5i3SzVuzlBi6go60AgbGIwfcB3UdiDxobe1DwByFuiJdlmCeSAi6YaoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=NRGIDgU5; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 64DA9BCA;
	Thu, 23 Apr 2026 17:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1776956419;
	bh=PPqnjiPUXR1jFV5RDIv+mYtA4/prS2yGlfk/ZnkqGLU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NRGIDgU5Jl3mS8c3JwCit43p8MAVJNt+N64yuU5i+IIvH7BW2L2Y0yrX4bZdvAA59
	 pRzNA3Sg4b83UxB6g21hO9vVjHvbAwRWdfEpBpqrGmBkrpVa14PuGHZxz9uG7wn5Lh
	 HW5yA5qvAT9fvhIVVZ2aJwPXd1ZJLKonuhqXPsds=
Message-ID: <103f94d0-2599-497d-ae37-d88922b9f669@ideasonboard.com>
Date: Thu, 23 Apr 2026 18:01:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/panel: simple: Add timings for Raspberry Pi 7"
 panel
To: Marek Vasut <marex@nabladev.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260420-rpi-7inch-v1-0-e68d5c9c44bc@ideasonboard.com>
 <20260420-rpi-7inch-v1-2-e68d5c9c44bc@ideasonboard.com>
 <3z3u5mbngmbzsch3mzs3twlh3aec6r7jokstzv3ghxyusrzt6b@jqvdnuiapx6e>
 <af71183d-70b8-4a41-8466-67123e7aab02@ideasonboard.com>
 <20260423-kickass-fat-boa-209f68@houat>
 <72c2cd94-0a8b-46c8-981b-4ad4a3222e59@ideasonboard.com>
 <CAO9ioeVX6OChRTgUrUdgrPF+3s2_7vme7m0yb85pjYtH1MFskw@mail.gmail.com>
 <ced05a92-06b4-4f6f-95b6-c3dc104c35f3@ideasonboard.com>
 <b24c428f-5752-4544-a8b4-77e91d7bc158@ideasonboard.com>
 <da6bdb78-7fe8-4f51-b9e6-444748ebc319@nabladev.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <da6bdb78-7fe8-4f51-b9e6-444748ebc319@nabladev.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289715-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,raspberrypi.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MAILSPIKE_FAIL(0.00)[2600:3c0a:e001:db::12fc:5321:server fail];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,digikey.com:url,ideasonboard.com:email,ideasonboard.com:dkim,ideasonboard.com:mid]
X-Rspamd-Queue-Id: 0B176454171
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 23/04/2026 16:54, Marek Vasut wrote:
> On 4/23/26 3:16 PM, Tomi Valkeinen wrote:
> 
> Hello Tomi,
> 
>>>> In the past I used this panel compat instead of the
>>>> panel-raspberrypi-touchscreen.c and it worked.
>>>> IIRC Marek splitted the multi-function module into a regulator and the
>>>> panel description.
>>> Ok... Indeed https://pip.raspberrypi.com/categories/651-pcn lists 
>>> PH800480T013 as one of the panels used. Although two variants are 
>>> listed, and also a third panel model, possibly from another vendor.
>>>
>>> My module is v1.1, and I think it has the PH800480T013-IAC21 D/5624/ 
>>> KIT- LC variant.
>> A question to Marek: Where did you get the timings for PH800480T013? 
>> Did you find a datasheet?
> Search engine first link:
> 
> https://mm.digikey.com/Volume0/opasdata/d220001/medias/docus/5337/ 
> PH800480T013-IHC09.pdf

I tested the "powertip,ph800480t013-idf02". I'm using BeagleY-AI here, 
and it didn't work at all. After some testing, I figured out these:

HSW of 2 is much too small. But this could be an issue on the display 
controller or the DSI encoder side. HWS of around 8 starts to work ok. 
Below that, I don't get anything on the screen.

The syncs are interesting. I set them to DISPLAY_FLAGS_VSYNC_HIGH | 
DISPLAY_FLAGS_HSYNC_HIGH, Marek to DRM_MODE_FLAG_NVSYNC | 
DRM_MODE_FLAG_NHSYNC. But I have sent the TC358762 series, which fixes 
the syncs that the bridge sends 
(20260327-tc358762-fixes-v2-0-3589d3c45f4a@ideasonboard.com).

Flipping the syncs might explain why I used 46 and 23 as the 
backporches, Marked used 46-hsw and 23-vsw for backporches (well, 
Marek's vbp was off by one as I mentioned).

But now I'm getting unsure if my TC358762 fixed the syncs correctly... 
I'm pretty sure I measured those with my scope, though.

The fps is different, too. I aimed for 60fps, Marek for 50fps (I think, 
it doesn't match exactly).

In any case... I think I have to dig out my scope again and validate 
that I see exactly what I have in the driver. Btw, reviews for the 
TC358762 series is appreciated!

  Tomi


