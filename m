Return-Path: <devicetree+bounces-19253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3137FA2BF
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 15:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F3A31C20B1A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89333111B4;
	Mon, 27 Nov 2023 14:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mC4cbMO7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB1331735
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 14:31:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 568C2C433C8;
	Mon, 27 Nov 2023 14:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701095512;
	bh=iugwmqYRf+o6ZULdzB0347RuwISU5ZoccVSgJEsSJP8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=mC4cbMO7w4hP6MVmh14mk4ITlEIEbhZvG3xlfUbvW2ULFpje+/oHkteFICiqYrN5N
	 IJpeZggFhb1HTXvrX3HTM7wVhB7VpTZR9lulWHFAweA7eeNkQaTUwjnMnY1tMO8WDd
	 4qlnz/skerxsuf6+XH1v4PBkRLkSnyce3x6y+FXbfpa+OgUc7KoGJ7oFY/04NUsxHI
	 i9UXGzUd1QKuxwHB5phkWYuwMQ/m6YeBZNlu/sJtDdRtikJwp/KLIUByDuUV5Rq2px
	 Pvpl7VYWGM4BL/tvG/sQz/jD262xkEEj3++o/vDHyEdHZw6vbuv/Mm10gxt3stSLxm
	 NjEYQHT8UtHIg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 27 Nov 2023 15:31:44 +0100
From: Michael Walle <mwalle@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 andrzej.hajda@intel.com, daniel@ffwll.ch, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, ivo.g.dimitrov.75@gmail.com,
 jernej.skrabec@gmail.com, jonas@kwiboo.se,
 maarten.lankhorst@linux.intel.com, merlijn@wizzup.org, mripard@kernel.org,
 neil.armstrong@linaro.org, pavel@ucw.cz, philipp@uvos.xyz, rfoss@kernel.org,
 sam@ravnborg.org, simhavcs@gmail.com, sre@kernel.org, tzimmermann@suse.de,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/6] drm/bridge: tc358775: Fix getting dsi host data lanes
In-Reply-To: <20231127131947.GE5166@atomide.com>
References: <20231126163247.10131-2-tony@atomide.com>
 <20231127130941.2154871-1-mwalle@kernel.org>
 <20231127131947.GE5166@atomide.com>
Message-ID: <48e9584ca904397ac0b0771d7e8b81ba@kernel.org>
X-Sender: mwalle@kernel.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

+ dt maintainers

>> I actually have the same fix, but with one additional detail, which 
>> I'm
>> unsure about though: This looks at the data-lanes property of the 
>> *remote*
>> endpoint whereas other bridge drivers (see tc358767, ti-sn65dsi83, 
>> lt8912b,
>> anx7625) look at the local endpoint and I'm not sure what is correct.
> 
> Yes I've been wondering about that too. Let's just move it over to the
> bridge node? We could produce a warning if the dsi host node has the
> data-lanes property.. No current in kernel users AFAIK.

I haven't found any in-tree users either. In my patch, I first try the 
remote
end and then the local end. But thinking more about it I don't think
this is correct. Maybe we can do it the other way around, first try
data-lanes of the local endpoint and if not found, then try the remote
one. That way, we would at least be backwards compatible in the driver.
And for the dt-bindings, make it mandatory to have a local data-lanes.

-michael

> FYI, for omapdrm, we already have a legacy dt property "lanes" for the
> wiring that tells number of lanes used and the order of the lanes.
> 
> Regards,
> 
> Tony

