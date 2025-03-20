Return-Path: <devicetree+bounces-159365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9226DA6A746
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 14:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12D16188B109
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 13:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3C521D3CC;
	Thu, 20 Mar 2025 13:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="cDGH4RWN"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B89B22154A
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 13:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742477342; cv=none; b=WmYNY3Gq4AKMMw7s+0HU17P0K8hme+AIp2AWP8nVwsOb2sPnC4fgyV+oy+OsqXVLwCTGSTS3jY3jF4zo4AMcDC/b39CR5S1ghr3XfwBcyDY0BwP0P7rbaEqGVkd5Vl2uR2tjvGaOo+wzItO/Vw4OVghQCy2WomKpFeb9vcmvXpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742477342; c=relaxed/simple;
	bh=h9AZOQS8pRvMAZnOSvwy/yZgh/0nzwC4JH9V8norXgo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hapTuw6njTDrFT7tULh4XS2iMMmdko9Bo9ZypOuDB5lhjpDHgxT2kqsYBzg0xX+9ZILU+EOi4N+ojuqIANSuj/I00BM9SnRDu6KGvN3Q4CvBBcaTxua98bXRbzPYoJ/Og9K0d7Y56yMQ3b0GrX4me3e1VpSTxc11LxHqwAnc9/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=cDGH4RWN; arc=none smtp.client-ip=95.215.58.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <b4f19dc0-6eee-4085-998f-b2739e15ba01@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1742477328;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5bb2XlEIK7JJf1DCVVVr1W6LODizNqsLWPbdHJ5V49Y=;
	b=cDGH4RWNIQBZLYpHXzO0Go/+rwObMOpRs1SXfN5vQOukYPLzuIPvvHg5W7RRnkY9I7sCxz
	WXRN90oh16u4MeZP18CkOrifuqrJu/ML5zdcuS/w4rPKiDwAjJdO5ASMznZ34AahwugWSF
	HIGR1rs/dP+c5Af7VRzARNccqRs8rk4=
Date: Thu, 20 Mar 2025 18:57:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 3/3] drm/tidss: Add OLDI bridge support
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "simona@ffwll.ch" <simona@ffwll.ch>, "jyri.sarha@iki.fi"
 <jyri.sarha@iki.fi>,
 "tomi.valkeinen@ideasonboard.com" <tomi.valkeinen@ideasonboard.com>,
 "robh@kernel.org" <robh@kernel.org>, "airlied@gmail.com"
 <airlied@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>
Cc: "j-choudhary@ti.com" <j-choudhary@ti.com>,
 "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
 "u-kumar1@ti.com" <u-kumar1@ti.com>,
 "max.oss.09@gmail.com" <max.oss.09@gmail.com>,
 "francesco@dolcini.it" <francesco@dolcini.it>,
 "devarsht@ti.com" <devarsht@ti.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "nm@ti.com" <nm@ti.com>, "vigneshr@ti.com" <vigneshr@ti.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "praneeth@ti.com" <praneeth@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20241124143649.686995-1-aradhya.bhatia@linux.dev>
 <20241124143649.686995-4-aradhya.bhatia@linux.dev>
 <4155a886b3b3027d4ca8bb7a13801852ef8754e7.camel@siemens.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
In-Reply-To: <4155a886b3b3027d4ca8bb7a13801852ef8754e7.camel@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

Hi,

On 18/03/25 19:05, Sverdlin, Alexander wrote:
> Hi Aradhya!
> 
> On Sun, 2024-11-24 at 20:06 +0530, Aradhya Bhatia wrote:
>> From: Aradhya Bhatia <a-bhatia1@ti.com>
>>
>> The AM62x and AM62Px SoCs feature 2 OLDI TXes each, which makes it
>> possible to connect them in dual-link or cloned single-link OLDI display
>> modes. The current OLDI support in tidss_dispc.c can only support for
>> a single OLDI TX, connected to a VP and doesn't really support
>> configuration of OLDIs in the other modes. The current OLDI support in
>> tidss_dispc.c also works on the principle that the OLDI output can only
>> be served by one, and only one, DSS video-port. This isn't the case in
>> the AM62Px SoC, where there are 2 DSS controllers present that share the
>> OLDI TXes.
>>
>> Having their own devicetree and their own bridge entity will help
>> support the various display modes and sharing possiblilities of the OLDI
>> hardware.
>>
>> For all these reasons, add support for the OLDI TXes as DRM bridges.
> 
> ...
> 
>> +int tidss_oldi_init(struct tidss_device *tidss)
>> +{
>> +	struct tidss_oldi *oldi;
>> +	struct device_node *child;
>> +	struct drm_bridge *bridge;
>> +	u32 parent_vp, oldi_instance, companion_instance;
>> +	enum tidss_oldi_link_type link_type = OLDI_MODE_UNSUPPORTED;
>> +	struct device_node *oldi_parent;
>> +	int ret = 0;
>> +
>> +	tidss->num_oldis = 0;
>> +
>> +	oldi_parent = of_get_child_by_name(tidss->dev->of_node, "oldi-transmitters");
>> +	if (!oldi_parent)
>> +		/* Return gracefully */
>> +		return 0;
>> +
>> +	for_each_child_of_node(oldi_parent, child) {
> 
> Would for_each_available_child_of_node() make sense here so that
> k3-am62-main.dtsi would have both ports with status = "disabled" and
> the users will enable one or another?
> 

Thank you for the suggestion!

for_each_available_child_of_node() does seem to be the better option.
I will send another revision.


-- 
Regards
Aradhya


