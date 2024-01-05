Return-Path: <devicetree+bounces-29843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA868250EC
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 10:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B69E283CAD
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 09:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D58723770;
	Fri,  5 Jan 2024 09:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="vwgAU0gb"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D42D22F17;
	Fri,  5 Jan 2024 09:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704447417;
	bh=1tBN9UqIhitTdmgmyOsSe9DuM7wdfXwbdhkq+c5v2Cw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vwgAU0gbAF3eOJaCTnc9vZrZPSpBuTuiIno1Du2gAoOr+8BwvfCrCYgJR/f9Klv7R
	 6Ky8hzC9BPxx++sSSs1yO5LwrfxieYGmPR+/Avi3DsfPKcqmf6hiou0u7KTfQvcQnH
	 9NA2teaCc3JivZBjBzGmoPt9vGev1Ejh1zal/DPrJBQTzswasV39R+O7vZ49XprKAX
	 rxzhCgLn1EqSDN37uogMBlNRQUreFzplswmyBgYbxxpgzvJzZ6Rtm6QuzR/TN2HPgX
	 kWaIbw4MFAbju5robcGGlU1R32IAchH8YXIQEQVA+PzXfb129FAf5UR+anSV0mD7yy
	 khLjXnvvBINjw==
Received: from [100.74.67.65] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: jmassot)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 89A38378003D;
	Fri,  5 Jan 2024 09:36:56 +0000 (UTC)
Message-ID: <aa478429-57f6-40f8-8481-269311fdc937@collabora.com>
Date: Fri, 5 Jan 2024 10:36:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: dt-bindings: st-vgxy61: relax data-lanes
 restriction
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: benjamin.mugnier@foss.st.com, sylvain.petinot@foss.st.com,
 mchehab@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, kernel@collabora.com, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20231213071737.1070162-1-julien.massot@collabora.com>
 <20231213-chest-turf-8e9c4fb0a3db@spud>
From: Julien Massot <julien.massot@collabora.com>
In-Reply-To: <20231213-chest-turf-8e9c4fb0a3db@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 12/13/23 17:30, Conor Dooley wrote:
> On Wed, Dec 13, 2023 at 08:17:37AM +0100, Julien Massot wrote:
>> The ST VGXY61 sensors support multiple lane number, as
>> well as lane mapping.
>>
>> Signed-off-by: Julien Massot <julien.massot@collabora.com>
>> ---
>>   .../devicetree/bindings/media/i2c/st,st-vgxy61.yaml        | 7 ++-----
>>   1 file changed, 2 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/i2c/st,st-vgxy61.yaml b/Documentation/devicetree/bindings/media/i2c/st,st-vgxy61.yaml
>> index 8c28848b226a..733fac85a20f 100644
>> --- a/Documentation/devicetree/bindings/media/i2c/st,st-vgxy61.yaml
>> +++ b/Documentation/devicetree/bindings/media/i2c/st,st-vgxy61.yaml
>> @@ -67,11 +67,8 @@ properties:
>>             data-lanes:
>>               description:
>>                 CSI lanes to use
>> -            items:
>> -              - const: 1
>> -              - const: 2
>> -              - const: 3
>> -              - const: 4
>> +            minItems: 1
>> +            maxItems: 4
> 
> So, it is now valid to have "data-lanes = <6 7 8>;" now?

Indeed it's not valid, I will send a v2 with a 'minimum: 1', 'maximum: 
4' items properties.

Thanks,
-- 
Julien

