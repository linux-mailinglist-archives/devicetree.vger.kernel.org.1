Return-Path: <devicetree+bounces-136350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFCDA04E15
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C59E3A5C9A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F59F4685;
	Wed,  8 Jan 2025 00:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="cS5aGQNn"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0FD33D8;
	Wed,  8 Jan 2025 00:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736296189; cv=none; b=Pd/gs2UnsbmF/vqAX3fF+b4k4VRbbUfeH0N/0yuZI0qgUKrkdg1yB0eunpbfqe4YDDFZWY4mYZfHw3jY8jHpFym8TGzgXWpDL3tZBWU/1aIh8DC9BDYIz7CxdQfg9cDjzXzYHSemxi4Y+iSvK9C+nVs5seFykTLXl56TAD0C2ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736296189; c=relaxed/simple;
	bh=4tB+AKwK6xdu1v/3V+Iq9VIwiOS52T8cwZzDZT5RoqA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=G0f0+bqwSOW8zKhmMbtK/DU4pl3JyQ7Ys1EhhZpvOf2F0a7WUI4atMKqJVXMFdQYZ74gvc8/VL6MVnyAG2qHnYaKsshzVIobCmThYlwKAvteTyGXToo701lCiHGgp6p8q/HlZsDLNyQui9gMD0VLZwCB7j19Hiy4fhC5rw+EJjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=cS5aGQNn; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1736296182;
	bh=ngFxpbsAhBt46D4upIiQUrqXmQXQRu9BcTtfx/SuZrQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=cS5aGQNnH8pG8T95/gV34zVLaRqjpN019oKppskkOEPws+2cBRPC2LsXVWHWQbQK9
	 2gswAEXTbEB2AweMzsHU2tfCGYYW7CZldvBxXOrunMD01odqogdtEmCo38bl9wDFju
	 zYmvmmtlXjeY7dL7M/D0aO4deRxw8cxHj8JpZYWpzOc/xJ8KY1tAHRJgb02yrTtDna
	 5p/J8Pp68UkUdV/Yv7tCBYc6le/IVT23pFr6Xt5PQy1rvbInQX3Gj5eEAhX62riQfV
	 dUGGBqeX3a/7M2SOJs5mBn9+EsYVuOrE9vpdkcDOfOKGUZI3iPWsQKzRjq6k89dO3H
	 sBHimNEPs1ChQ==
Received: from [127.0.1.1] (ppp118-210-64-24.adl-adc-lon-bras32.tpg.internode.on.net [118.210.64.24])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E49F670B92;
	Wed,  8 Jan 2025 08:29:40 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250107162726.232402-1-patrick@stwcx.xyz>
References: <20250107162726.232402-1-patrick@stwcx.xyz>
Subject: Re: [PATCH v1 REBASE] ARM: dts: aspeed: yosemite4: adjust
 secondary flash name
Message-Id: <173629618084.481094.9284702547524010515.b4-ty@codeconstruct.com.au>
Date: Wed, 08 Jan 2025 10:59:40 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Tue, 07 Jan 2025 11:27:25 -0500, Patrick Williams wrote:
> Meta (Facebook) has a preference for all of our secondary flash
> chips to be labelled "alt-bmc" for consistency of userspace tools
> deal with updates.  Bletchley, Harma, Minerva, and Catalina all
> follow this convention but for some reason Yosemite4 is different.
> 
> Adjust the label in the dts to match the other platforms.
> 
> [...]

Thanks, I've applied this to be picked up through the BMC tree.

--
Andrew Jeffery <andrew@codeconstruct.com.au>


