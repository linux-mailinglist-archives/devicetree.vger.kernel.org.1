Return-Path: <devicetree+bounces-278062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HmFBzvGvGkY2wIAu9opvQ
	(envelope-from <devicetree+bounces-278062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 04:59:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E12D5AB5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 04:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B623A30C624F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 03:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1777B2C11CB;
	Fri, 20 Mar 2026 03:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="LUam4bT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4E029DB9A;
	Fri, 20 Mar 2026 03:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773979151; cv=none; b=tWdOH/Le36VyijlP3H/Y1LigbpmkARB8qLhxaa7JNToV+I2OsgaJQn1kNH6Jrm2aVG1ewavIFNjAsfnjYchk3cgdsox29Ep+5Btaz/ktUUYFdiWLfnPV0FsdlxVV63GGMSPfXiNV6jJ7Z4XK95y1W8uVWk+c33W+4Jl39Jk/r+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773979151; c=relaxed/simple;
	bh=YbULbe6xEG80wWHH4RWlziMg66NsPPNMV1BvJwUB/Ck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LEFAMoALxOaemYGXgX4nH83bv/9F6PC2kQxKiufCUodb4lZmXovZE2Jczvy0/eAtkQKIH9G+nmpaigXGy83yS/Q8nCCdA0BZ8I1UcZjcegDvDh0p2c1THS7An92oiUmtXM0LIXWgOiYG824njgZkcg8RoIzkxgHpY3N6iFQBryA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=LUam4bT9; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2BC70110E34;
	Fri, 20 Mar 2026 04:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1773979140;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=AWHHdDNqh9ZvQHUva5HwCaoi+Z9+EM+dvDGmkXuDbcA=;
	b=LUam4bT9N39dUOjkSfM0tn5oFZ5aiQ2mhPAM2uOUWYPu/xIVUGDe91ds7BEtiZLZbk6gso
	8+AY7JYZ3W/8efj1E9nKSEA6Mgj0d8JNAO9wQWczaVWscGHVpzEwktVGP0oKNLPbUBI4GZ
	q40E0XvRSYCl+wyPg7qnwx84GfGBtbMZAdElMSk26120WNBMLsT3ZLDZwF95j4Kau2V4+L
	pa7hEBDamt+m2mxLKQQ/djwMcyI6/Vpfj2L8qJythU0gavHe2i74gp6xrTsxuMUg65pkj4
	o38n69GjSMQNbOMzNw5qxXRRmKMhVgnEIR4hwyPF56oArqBk4O0UpLlnuh8j0g==
Message-ID: <40b3d1c8-0cf2-470d-8223-751240061735@nabladev.com>
Date: Thu, 19 Mar 2026 15:38:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/9] dt-bindings: display: fsl,ldb: Add i.MX94 LDB
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Liu Ying <victor.liu@nxp.com>, imx@lists.linux.dev,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 dri-devel@lists.freedesktop.org, Frank Li <Frank.Li@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
 <20260304-dcif-upstreaming-v8-1-bec5c047edd4@oss.nxp.com>
 <b7968f1a-c4bc-4bad-bcf8-407ff2d8db27@nxp.com>
 <dmqbmmpyi3ssvq67iqwbt6ww7tsaik7ifi5dnupmuhep7u5saz@ads5g7ette3y>
 <mx6b5svmvlonil4efuiaxcmtygn7lld3nj7gcxnnauaryt2yed@gohjshakc2g6>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <mx6b5svmvlonil4efuiaxcmtygn7lld3nj7gcxnnauaryt2yed@gohjshakc2g6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278062-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,lists.linux.dev,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,denx.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:dkim,nabladev.com:mid,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 758E12D5AB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 9:57 AM, Laurentiu Palcu wrote:
> On Fri, Mar 06, 2026 at 09:46:57AM +0100, Marco Felsch wrote:
>> On 26-03-06, Liu Ying wrote:
>>> On Wed, Mar 04, 2026 at 11:34:10AM +0000, Laurentiu Palcu wrote:
>>>> i.MX94 has a single LVDS port and share similar LDB and LVDS control
>>>> registers as i.MX8MP and i.MX93.
>>>>
>>>> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
>>>> Reviewed-by: Frank Li <Frank.Li@nxp.com>
>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> ---
>>>>   Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml | 2 ++
>>>>   1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
>>>> index 7f380879fffdf..fb70409161fc0 100644
>>>> --- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
>>>> @@ -20,6 +20,7 @@ properties:
>>>>         - fsl,imx6sx-ldb
>>>>         - fsl,imx8mp-ldb
>>>>         - fsl,imx93-ldb
>>>> +      - fsl,imx94-ldb
>>>
>>> Cc'ing Marco.
>>>
>>> Recently, Marco said that LDB node should not have a reg property...
>>>
>>> https://lore.kernel.org/all/4sofljffovrorpxe2os3jl745qfjoglvl54oqf3v7r5bk5f6aq@6y3jwn4abiqy/
>>
>> Yes, this has to be dropped. All variants of this specific "IP" use the
>> same approach. This "IP" is part of a general purpose register layout
>> with very loose reg-field definitions: e.g. resets and clk-gatting share
>> the same register. Or a mux reg-field shares the same register as a
>> MIPI-{C,D}SI configuration reg-field. Therefore this "IP" is part of a
>> syscon and should be abstracted as such within the DT.
> 
> Even though I understand the logic behind why 'reg' should be dropped,
> I'm not exactly sure how to proceed with this. It appears Marek made the
> 'reg' required in this commit (merely 2 months ago):
> 
> 8aa2f0ac08d3b - dt-bindings: display: bridge: ldb: Add check for reg and reg-names
> 
> Should the above patch simply be reverted and have 'reg' as optional again?
> Or should the 'reg' and 'reg-names' be removed completely from the
> binding.
> 
> @Marek, any comments?
The LDB driver was always written with parsing 'reg' out of the DT, so 
encoding the register offsets into the driver was a mistake. The LDB 
controls two registers, which can be comfortably described in DT.

