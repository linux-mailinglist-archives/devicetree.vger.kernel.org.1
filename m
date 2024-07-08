Return-Path: <devicetree+bounces-83958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B64392A740
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 18:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBC671C20C7D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2024 16:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC85F146595;
	Mon,  8 Jul 2024 16:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="jeibj9US"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFF213CFBD
	for <devicetree@vger.kernel.org>; Mon,  8 Jul 2024 16:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720455889; cv=none; b=abDFqoojNQ+RllDFJrJK693pAiHwDRaq9CbFrpP2GCDJ6BnfghLR0UlN3x5My7NXj2jKV7aHodD7T6WxQ1zuNoW0P5d/+IS7GqB0aIvpcaGce4fgI5B7f+mNpkZLVB8ZPD3VY4TCbKUh6XJvO4K3+C8ZQ3s2dNxwKhhPUJaEzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720455889; c=relaxed/simple;
	bh=aJ6pVpulxpUOcXEeJRVANPSM4uqq54p+w1enEuKb5OQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VWJ74U8uqpbhHWYOgn2OnvoH8BioW2chWjeQDrQJjFi6MVpSP3scMgJlUKbTZACem+4J6dEbrDIXC7ficqWClYpj7V5NPK+akFk5fhstkXX71/FK5DI80lXqh2a6gxzSQ/3/BBcELjbXbQU8EwCtr1+mhKnRkusIbF1+BvJ/G5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=jeibj9US; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id E7FCC887B9;
	Mon,  8 Jul 2024 18:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1720455885;
	bh=+fEyfp1GigiHxYcbx1OC+XWY6BBrzyHXvIiRSE3vRVE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jeibj9UStOPEmgyTMI+6d51OA3GIqKhlFw+jq/qRMkQj80rGlh/gOm9DJa61X00r+
	 YK+ZluUVaRXaxvMnVVbVFulVJlIcLRg0DevuIgq3AzCU7QQ1H2vsCItMN/HDvdIXZt
	 7AY9DY7BaxBb+3i4VAp60wsMfIKGFtGuNOvq1wkvtxYH5dy4iSpXXIV3Bn2vJ+igVW
	 souaJKeV21C+tbaA4HxceTXeh1MKV5DTFamS5+NXy3s1a0XvbJBg/9nQccIPI0z9/r
	 r1R0Fy6Db2edOEfx8Okn6wsW4a8k2tiN4oolYyfVUUMIl8VvVnUK6iTWO/ysTErPLd
	 JyLu9QcZkv61Q==
Message-ID: <c2ef6725-77db-4497-9c24-fcce660ee6d7@denx.de>
Date: Mon, 8 Jul 2024 17:06:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/bridge: tc358767: Add configurable default
 preemphasis
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
 dri-devel@lists.freedesktop.org
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, kernel@dh-electronics.com
References: <20240625120552.145389-1-marex@denx.de>
 <20240625120552.145389-2-marex@denx.de> <3293850.oiGErgHkdL@steina-w>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <3293850.oiGErgHkdL@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 6/26/24 9:36 AM, Alexander Stein wrote:

Hi,

sorry for the late reply.

>> @@ -2435,6 +2454,18 @@ static int tc_probe_bridge_endpoint(struct tc_data *tc)
>>   			return -EINVAL;
>>   		}
>>   		mode |= BIT(endpoint.port);
>> +		if (endpoint.port != 2)
>> +			continue;
>> +
> 
> Mh, I know currently there are not other port-specific properties. But
> maybe it's easier to read if 'if (endpoint.port == 2) {' is used.

Fixed in V4, thanks.

