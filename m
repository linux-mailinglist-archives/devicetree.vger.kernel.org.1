Return-Path: <devicetree+bounces-86182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8266A9331BA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 21:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B40F01C20AFB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 19:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4DEE6A8CF;
	Tue, 16 Jul 2024 19:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="dCxNSu3y"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE24218059
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 19:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721157260; cv=none; b=UhIZvr235uyBO8+g1oREM77UkzTeXQRtg6NYgZHwc7e7gcIkvQkwVUdxkl6SrDvnCzO/i2vBxKghbVB6/UGMnWPYrxWl1+AomorRqeN3B7pqi+cYhNFqqqHZ2Oo8pTQ5aOSnIc64ILv84D3zzIroi0LJA8/pprpmxfygoS83FkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721157260; c=relaxed/simple;
	bh=icfERQOgJ5N63Pg1/u73mzpkirXuB08mc0fbLo+H6ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zm73rku6MQpdzz+xci7mnLwReu2dJtPYftsYG3b8PkHRQ9gupmCOL8ZpAq89Hw3dk/7UMZkJJsPOBJKoL5GuLMzV7TJ2qKa6BBPmjqgifv7IDDIhIVPJc7EsZeGLjBmwwCKJBXU9FAmo8XsGdGtvnPhTdXu8iFIwJ5JQaQ5OhiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=dCxNSu3y; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D869588722;
	Tue, 16 Jul 2024 21:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1721157257;
	bh=frZaD+kkGJcY4pJY44ZcBHh3Cq2V5642TXFVCdO0nvs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dCxNSu3yLkhmZ8AB8wwOSXdwhzwelPs+wGfKiY3FVICgAfTsOk1YavHGnfSoRYguI
	 TYCUDxYQRmCxIUhVFhPlxPbZGyllCD3jw5q0+ZIHxwTuL65YXSx5m/D1QVZQKLjS4o
	 YhhMy2ZkXS+V0nylyapntWNsHyTVyi46XvqWZSoYgUCvhq+NFyCxsnh8rZRoUOpxR3
	 lh9H+e8Zk0m7UpS+pKGAUCPNHDAgqtZSoMDlj3cBVpYNWonzVl12Aydr3vcCIvK9kP
	 ZEJKDbvnzHuRV6gl7IhNKMHk3bzOw/dCV/oMZhHEN0M2OuhmdEf6jn0oPSSLg7pBpO
	 qwTDllOTp7oWQ==
Message-ID: <4e015a11-d8ca-4cc0-9366-2d836122296d@denx.de>
Date: Tue, 16 Jul 2024 20:29:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, dri-devel@lists.freedesktop.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 Lucas Stach <l.stach@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 kernel@dh-electronics.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Jonas Karlman <jonas@kwiboo.se>,
 Robert Foss <rfoss@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20240708150130.54484-1-marex@denx.de>
 <172062558439.3107707.14187355988690749078.robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <172062558439.3107707.14187355988690749078.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 7/10/24 5:33 PM, Rob Herring (Arm) wrote:
> 
> On Mon, 08 Jul 2024 17:01:13 +0200, Marek Vasut wrote:
>> Document default DP port preemphasis configurable via new DT property
>> "toshiba,pre-emphasis". This is useful in case the DP link properties
>> are known and starting link training from preemphasis setting of 0 dB
>> is not useful. The preemphasis can be set separately for both DP lanes
>> in range 0=0dB, 1=3.5dB, 2=6dB .
>>
>> This is an endpoint property, not a port property, because the TC9595
>> datasheet does mention that the DP might operate in some sort of split
>> mode, where each DP lane is used to feed one display, so in that case
>> there might be two endpoints.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> Cc: David Airlie <airlied@gmail.com>
>> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
>> Cc: Jonas Karlman <jonas@kwiboo.se>
>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Maxime Ripard <mripard@kernel.org>
>> Cc: Neil Armstrong <neil.armstrong@linaro.org>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Robert Foss <rfoss@kernel.org>
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: devicetree@vger.kernel.org
>> Cc: dri-devel@lists.freedesktop.org
>> Cc: kernel@dh-electronics.com
>> ---
>> V2: - Fix the type to u8 array
>>      - Fix the enum items to match what they represent
>> V3: - Update commit message, expand on this being an endpoint property
>> V4: - Fix ref: /schemas/graph.yaml#/$defs/port-base and add unevaluatedProperties
>> ---
>>   .../display/bridge/toshiba,tc358767.yaml      | 21 ++++++++++++++++++-
>>   1 file changed, 20 insertions(+), 1 deletion(-)
>>
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

If there are no objections, I will apply these two patches to drm-misc 
soon ?

