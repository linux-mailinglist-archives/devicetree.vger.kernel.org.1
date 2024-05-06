Return-Path: <devicetree+bounces-65195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FD18BD098
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 16:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86A3C28828A
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 14:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2A3153582;
	Mon,  6 May 2024 14:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="dyziNFu8"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C31534FD
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 14:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715006744; cv=none; b=nnOKExPxZv9Crn5TqNyqW8xnNjlS4zLdWM3UhYwXntbKWQLVa+dQGEhkoLBSUBK9C6NkTpy5q8cjcuwdfmNIxtceohi18gCHCyoxTwrgUZsef4gyfrFG0JAHhNPqGwYbo1BxwoA0m+711wHTE2QbjpuPJQYfHdOflmyZc2cSg18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715006744; c=relaxed/simple;
	bh=dJL/4nHHVyMfHE+r7aDaey7YICu0AfSLuHlHOggg1NE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lK8GZ+pVXool7CbLWPLBXZJ0FTlQW+ldb05h3W9fG7BMDrVqSkAHtRJGcudv4dfms70n/IPBfEYIiYpM8Fd0G456tMPRF4Y13crBwr0R8oIt7dcVoWgznmnyqa5fhw+ZqO4uyOTINI8oXKpMa1drHTDDzMNwLRKZbBItez1OTGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=dyziNFu8; arc=none smtp.client-ip=95.215.58.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <06a4e5fd-3d26-4923-bcbf-0bdd66d756c4@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1715006740;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q1l323OlqVNgQvRZA1TNt3bEY9wTCe6PZHzYFIfTBD0=;
	b=dyziNFu8TkwgQEy4S0xRtrXuNqEYqSFRrjS+7rGhRf/v9t6FWbK6M7pIb7Rw9nhyKWSrJG
	c8xWbXHnPIp5R9H3ITKJya/V8Hn2tWRFTfZWVke3UdG1jOrACTHcMw0X9B2Qbk4PtYeMcG
	tugkIs1s5xSX+VApT7+HaUWY327fj4Q=
Date: Mon, 6 May 2024 10:45:30 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] pinctrl: zynqmp: Support muxing individual pins
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Michal Simek <michal.simek@amd.com>, linux-gpio@vger.kernel.org,
 Krishna Potthuri <sai.krishna.potthuri@amd.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
References: <20240503162217.1999467-1-sean.anderson@linux.dev>
 <CACRpkdbOAoSDNFhXfz3djUZh1_MQ_T75CC+-LmojRXvyCbUusA@mail.gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <CACRpkdbOAoSDNFhXfz3djUZh1_MQ_T75CC+-LmojRXvyCbUusA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On 5/6/24 02:43, Linus Walleij wrote:
> On Fri, May 3, 2024 at 6:22 PM Sean Anderson <sean.anderson@linux.dev> wrote:
> 
>> This series adds support for muxing individual pins, instead of
>> requiring groups to be muxed together. See [1] for additional
>> discussion.
>>
>> [1] https://lore.kernel.org/linux-arm-kernel/5bb0dc7e-4c89-4f3d-abc6-41ae9ded5ae9@linux.dev/
> 
> The way I usually would recommend to solve this would be to
> define new subgroups, so e.g. for a UARTS:
> 
> uart0_grp = pin_rx, pin_tx, pin_cts, pin_dts, pin_dcd;
> 
> And today this would be used like that:
> 
> mux0:
>     function = "uart0";
>     groups = "uart0_grp";
> 
> Then we realize that not everyone need all the modem
> control signals provided. What to do. Well this:
> 
> uart0_rxtx_grp = pin_rx, pin_tx:
> uart0_modem_grp = pin_cts, pin_dts, pin_dcd;
> 
> mux0:
>     function = "uart0";
>     groups = "uart0_rxtx_grp";
> 
> Now the CTS, DTS, DCD pins can be reused for something
> else such as GPIO.
> 
> I *know* that this breaks ABI: the driver group definitions change
> and the device tree needs to be changed too.
> 
> This only matters if the users have a habit of distributing the
> kernel and DTB separately so a new kernel needs to support
> and old DTB. This varies in how much control we have but I
> think for Xilinx systems the kernel and DTB are always updated
> in lockstep, so it really does not matter?

Well, the pin groups are actually defined in the PMU firmware. And
frankly, I don't see the point of pin "groups" when there are not actual
pin groups at the hardware level. The pins can all be muxed
individually, so there's no point in adding artificial groups on top.
Just mux the pins like the hardware allows and everything is easy. Cuts
down on the absurd number of strings too.

--Sean

