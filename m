Return-Path: <devicetree+bounces-184547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA86AD46F5
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 01:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68E98177059
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 23:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB8121CC7D;
	Tue, 10 Jun 2025 23:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="INO9hqen"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418C26058B
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749599074; cv=none; b=PE/T3lg8hQyH2UoqLBgmb+XO2KXB6Ubko9GMfM7YiDlYBD+T1eUWRDakFM+qWVMrBV+JT5XNslIus0xspOn+m5EpvcJy8Ui1sxJE5cI+2OGt5X8kHOt8ajQqUKU7Udu1aNbd1N2zoUjeHv/9+UZkV/NE+QoVGTpoCrW/HN+fzyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749599074; c=relaxed/simple;
	bh=+NHDg/TZdGaWS46USoZyJNFawAdIOaZjICwQvYlS42Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UYylIoJk/kTUwv6PhUxsuyRHWhyUnTUVjiyNSB5jM0EYOiOvwU7tRAXcFSXdApMOg6NEj8XBaT9b7vxvT+jllWLNKCmGp5gKMYIQwMTLnbNpwmOho5/mqZnu/Awbf3vSm7WwADKLu8g47jpG1QenJBHG8vjY/X/sMIhd9FVSgZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=INO9hqen; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <a52c513c-ff93-4767-a370-3f7c562df7bd@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1749599070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AXEZaUrWxmsqaTfrveqpH4IHsdKVgloXB+dHWV0moyk=;
	b=INO9hqenzIusKFJVsLMuY/j92TNnowTPdd07otbSZxWmRg2s3Hqc2EEeXOVp1esuYkL+++
	DsL9ozt1z4B2JVFgf4dlVqgIvANYZxqbT0aEiN3W+COhuG2dPiY1oDE8WUNNMyesRFiDrS
	ss6ipPrbmbDWr6t/sjNohRUDtjE8R4U=
Date: Tue, 10 Jun 2025 19:44:27 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] driver core: Prevent deferred probe loops
To: Saravana Kannan <saravanak@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Danilo Krummrich
 <dakr@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Rob Herring <robh+dt@kernel.org>,
 Grant Likely <grant.likely@linaro.org>
References: <cb354fd2-bece-42ef-9213-de7512e80912@linux.dev>
 <20250610183459.3395328-1-sean.anderson@linux.dev>
 <CAGETcx-koKBvSXTHChYYF-qSU-r1cBUbLghJZcqtJOGQZjn3BA@mail.gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <CAGETcx-koKBvSXTHChYYF-qSU-r1cBUbLghJZcqtJOGQZjn3BA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On 6/10/25 19:32, Saravana Kannan wrote:
> On Tue, Jun 10, 2025 at 11:35 AM Sean Anderson <sean.anderson@linux.dev> wrote:
>>
>> A deferred probe loop can occur when a device returns EPROBE_DEFER after
>> registering a bus with children:
> 
> This is a broken driver. A parent device shouldn't register child
> devices unless it is fully read itself. It's not logical to say the
> child devices are available, if the parent itself isn't fully ready.
> So, adding child devices/the bus should be the last thing done in the
> parent's probe function.
>
> I know there are odd exceptions where the parent depends on the child,
> so they might add the child a bit earlier in the probe

This is exactly the case here. So the bus probing cannot happen any
later than it already does.

> but in those cases, the parent's probe should still do all the checks
> ahead of time.

Such as what? How is the parent going to know the resource is missing
without checking for it?
 
> Can you be more specific about the actual failure you are seeing?

MAC is looking for a PCS that's on its internal MDIO bus, but that PCS's
driver isn't loaded. The PCS has to be loaded at probe time because
phylink_create needs it, and phylink is necessary to register the
netdev. The latter situation is not ideal, but it would be quite a bit
of work to untangle.

--Sean

