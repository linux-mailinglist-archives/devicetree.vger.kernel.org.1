Return-Path: <devicetree+bounces-164426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F979A80F90
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 17:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6A003BE563
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 15:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 195CA22ACFA;
	Tue,  8 Apr 2025 15:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="jt1ru2Bz"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BADD22A1E9
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 15:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744125141; cv=none; b=ONDA/cfagvCk8NRrgal4gUWTbdakTItoUqupxx7PfB5x1JtX5AewRByziWS94nOzIXC8LE2/G3WD5bPrvShWt11vU+soTGugNa3jGBYUHg9XQauNJO+lPy1sEdVPrQ6MJIhjrf2Ly5nfZ3YsK33DQ5bgJBqZJMMkkHM45rz5fh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744125141; c=relaxed/simple;
	bh=AhRbPW8jizYzfxcFtP9Ab9o1R4iiG4UfQvtkcbitkOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SXMJUktC8vt/l23t1+i9mQzTidyJXJHbbz53GBAFJnui4DImF1Yg1NjOtkQWGdCya8VxRXGsLAdqhMaHuUvAWN6jN7xEqdWu3ogcmR4OeJOIV7Ae76UCnWi8LXD6pJ+728a4qNj3uyId0UXMVXM3f2j/9b0ZNc7HYmkmG8iKsDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=jt1ru2Bz; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <52d79db7-f1fa-4695-aeb6-d07d6c2f90dc@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744125127;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fQDzFs3D8+IKQHpA3NyfYp/CU4mVPF0Wh33CkTrO1is=;
	b=jt1ru2BzEjAWPoNczH0V9smgPKLwAmsttSD53DtCJ23bhyxVZg2k9LmnmKOLNmALUfoIte
	V/dZMOTDrKhdUQfXl3HCP9d8C2lQnrtx3htm9cl1Rdi43cq0kP6TQ6m43JKpTgWuZzGqcK
	of4qJ77QmE0dxpUQGTJEm9ucu72Ueuw=
Date: Tue, 8 Apr 2025 11:12:00 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] device property: Add
 fwnode_property_get_reference_optional_args
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Len Brown <lenb@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Daniel Scally <djrscally@gmail.com>, linux-kernel@vger.kernel.org,
 Danilo Krummrich <dakr@kernel.org>, linux-acpi@vger.kernel.org
References: <20250407223714.2287202-1-sean.anderson@linux.dev>
 <20250407223714.2287202-3-sean.anderson@linux.dev>
 <CAL_JsqLQvyBvOXJJhRcnVAVx81MUf9YwtyZ5VC-whwY=uoeDXw@mail.gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <CAL_JsqLQvyBvOXJJhRcnVAVx81MUf9YwtyZ5VC-whwY=uoeDXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On 4/8/25 09:00, Rob Herring wrote:
> On Mon, Apr 7, 2025 at 5:37 PM Sean Anderson <sean.anderson@linux.dev> wrote:
>>
>> Add a fwnode variant of of_parse_phandle_with_optional_args to allow
>> nargs_prop to be absent from the referenced node. This improves
>> compatibility for references where the devicetree might not always have
>> nargs_prop.
> 
> Can't we just make fwnode_property_get_reference_args() handle this
> case? Or why is it not just a 1 line wrapper function?

fwnode_property_get_reference_args ignores nargs when nargs_prop is
non-NULL. So all the existing callers just pass 0 to nargs. Rather than
convert them, I chose to add another function with different defaults.
There are only four callers that pass nargs_prop, so I could just as
easily change the callers instead.

--Sean

