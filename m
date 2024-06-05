Return-Path: <devicetree+bounces-72859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B99068FD327
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF0D71C22257
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39B0B188CA8;
	Wed,  5 Jun 2024 16:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="ml+IkuTk"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782BA61FD6
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606316; cv=none; b=ofy8xW+fetGC3auROcX9nwjjSGo1wkgVqu+RKQrkmVLuucaBAhMsgUEv9gw/fOFXidfPtDeQNWptx9Zrfn0KrphgWMRU1sZe11c76aVk5Y3v5/KiY7fMB8wqO4jSVxtJMBAPp+AKovLGz14CyT6jyr/NPQzqEloMc3CHVnadJOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606316; c=relaxed/simple;
	bh=h1O2+xPTOCsB1wqNgUMmjLRlh+U3+fmef5WeJjxTARc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L8cUN/CItoSMfsIajtyM6ijO+3GUaNcp5XhbQvSnU01ryEv+C20DCmv843QqDeo7VaNQSFlkPfeKU/A7RVagmobg2T7TXaBdSRoNYV2mtTF3w2UJPpRmkfDpCSfNA1Fd0MNs7lWKYG+HjXWdKY1sFEtRRSZJElAD4UnUNXiZfwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=ml+IkuTk; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 47A5C88300;
	Wed,  5 Jun 2024 18:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717606312;
	bh=6d3FwQ+gfkfd/RiDUwCPApXYKBOzfh9S4dPrG+42lS0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ml+IkuTk3WA8z3g3yvZ0tAwoJLEer4N7TZMWC7yfyIqwTs9jYVYXPgFfTP9rdCxKm
	 HJoDvb/7FKFwpxp850vZVk6CZl9tKsiNF0cOCuHjsfkX7vwif6LNEtetcP/Y8ZG6A/
	 bh13yx7EWWcpDliNKPeNWksjggFkqjfZ45Y+HHW49WOPJlVqVZmWX/7MT+b14qj8xQ
	 HE2faEWJ4th4VlHemM5vgrcqRtcbBQKuMb72SjxTR0ITpFwEvmOb67VNzmikmeKGEo
	 yr6D09TqNhL0Yy1OoxjsMgjcRaLQOg4rHR2ZROD9yMRs1yvE+WgjxJbewr7b5uqdK0
	 I2PmFd8TKieBg==
Message-ID: <aef956d3-0cf9-4811-800d-7904ada3738d@denx.de>
Date: Wed, 5 Jun 2024 18:30:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
To: Rob Herring <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com
References: <20240531204339.277848-1-marex@denx.de>
 <20240605160331.GA3222592-robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240605160331.GA3222592-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/5/24 6:03 PM, Rob Herring wrote:

Hi,

>> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> index 2ad0cd6dd49e0..dcf56e996ee22 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
>> @@ -98,6 +98,24 @@ properties:
>>               reference to a valid eDP panel input endpoint node. This port is
>>               optional, treated as DP panel if not defined
>>   
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              toshiba,pre-emphasis:
> 
> You didn't test adding this property. You will find it isn't allowed.
> That's because 'properties/port' schema above doesn't allow extra
> properties (on the port and endpoint).

Fixed

>> +                description:
>> +                  Display port output Pre-Emphasis settings for both ports.
> 
> Both ports? This schema is for just port 2.

'lanes' is better here. The array can be used to configure each DP main 
link lane separately, the chip supports two lanes.

