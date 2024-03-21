Return-Path: <devicetree+bounces-52230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D45885D51
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 17:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53C551C21945
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 16:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 566A312CD8C;
	Thu, 21 Mar 2024 16:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="bG/dSIXF"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7672312CD93
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 16:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711038094; cv=none; b=sUYZQ2VXDbjIKDdqtqhik6qtxTJ1jtHnwETFW/jiTOjXlM/elsmxVVGPt/UOexRNY5QfWv2I7od3d1aiEhC1JmDs9I/cig8eBPFoWv2CxCyVnEgymeUeqXav4xf1uSuoEEasLRjxyf9DETSFfQxNvTJca47fEiePYqneAZd2HqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711038094; c=relaxed/simple;
	bh=vl4aNEvlWuyu599jEe9MzAKTAEMe6P8IA55VDrn32vk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UMOko6pYN4AkDwI3A1fLjx8RMXd4LCoBh0fMgThg4RE94NsDlppJLUtprAHQQ8q6NQliZIHpkrG9n3xf3AINhuR5uxFfXly//dRiQKaJXiwPyMc2j2ZfIs8d1cBRgzj7t0/9HXINwNAnz/QdX+5TjgxKxUNxqyhkA4eqN/KItVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=bG/dSIXF; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <d947cb15-aafc-487e-8bbd-54d786683470@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1711038089;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FQil3W2KQkB/aoa0J/1WAVBzi/uloXdl4lywi9s0CFA=;
	b=bG/dSIXFjDiAzLH18CJVeVC4EOBVmZjZoitp0gw7FOrhBFow5YBNvdf8ZH9/OQamar62l6
	E+JmLmdxw2VP4EBJi1i5xbFyJYqwVaeT2J8+a0lme613nooki1/9OQgtZLrb+JeTnPTx1w
	/zPARpFkdbRTYhwiFh4JzN6wPEX+3ns=
Date: Thu, 21 Mar 2024 12:21:27 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Remove fsl,t1023-sfp in favor of
 fsl,layerscape-sfp
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Richard Alpe <richard@bit42.se>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Michael Walle <michael@walle.cc>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20240316002026.1808336-1-sean.anderson@linux.dev>
 <20240317-starved-pager-7a81c5045cfc@spud>
 <9daf9c8f-6606-4ff6-8065-6a32fa0d152c@linux.dev>
 <20240318-scarf-startup-64088b1d8d35@spud>
 <fa047914-da03-4234-b48f-eebdf350795e@linux.dev>
 <20240319-fondling-implode-322a9cb570b8@spud>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <20240319-fondling-implode-322a9cb570b8@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 3/19/24 13:55, Conor Dooley wrote:
> On Mon, Mar 18, 2024 at 11:48:06AM -0400, Sean Anderson wrote:
>> On 3/18/24 11:40, Conor Dooley wrote:
>> > On Mon, Mar 18, 2024 at 11:08:00AM -0400, Sean Anderson wrote:
>> >> On 3/17/24 11:10, Conor Dooley wrote:
>> > 
>> >> > Additionally, should
>> >> > they fall back to t1023-sfp? I see that there's already some dts files
>> >> > with these compatibles in them but seemingly no driver support as there
>> >> > is for the t1023-sfp.
>> >> 
>> >> I checked the reference manuals for these processors, and all of them use TA 2.0.
>> > 
>> > Sounds like a fallback is suitable then, although that will require
>> > updating the various dts files.
>> 
>> Yes, a fallback (like what is done for the T-series) would be suitable,
>> but given that these devicetrees have been in-tree for eight years I
>> think it would be preferable to support the existing bindings for
>> compatibility purposes.
> 
> Just cos stuff snuck into the tree in dts files doesn't make it right
> though, I'd rather the bindings were done correctly. I don't care if you
> want to support all of the compatibles in the driver so that it works
> with the existing devicetrees though, as long as you mention the
> rationale in the commit message.

It doesn't really matter what the schema has as long as the driver supports
existing device trees.

--Sean

