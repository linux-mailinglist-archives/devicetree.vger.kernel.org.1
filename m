Return-Path: <devicetree+bounces-103577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 940A197B670
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 02:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C50401C233B1
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 00:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8AD73D8E;
	Wed, 18 Sep 2024 00:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="i3awoUv2"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91C583D76
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 00:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726619287; cv=none; b=C5rBJNFR3axMggkoshW/XY4oxgf9DHAQpykCkz61x+a/X8wV/x9NhcUh0mfCdMJF+lOTzxPCOfdlfINb9Il0c+CrctSQVmxyjumVFhthD0UBF1hB0YEh8WGX+bTQMbzl/nNnQKqdN6V2vMKU9GzzFMtMeVu1YL6fUi0Dn0hfmeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726619287; c=relaxed/simple;
	bh=GF2ynYuoy6p6f6fjHEuaGKamfajoG/12iRyTPMtw8Go=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=o4aEK4UJlZE3BqjJXZ5fgxo2zXc36glSVykijI+qedRC186UANwyXHLYg5sha0nWyOMJmuO0p7JTJnTHaezfkTiL3ZFvnIEtkhwH/bHgur5vXtvH02Atq0Sk0sSnXizs7JQPr4sJZMFvgoxTmZKTOYHUgbO7GlN9JhXZogUwiBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=i3awoUv2; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1726619277;
	bh=PSQZulomhTTLDjFgGjKQiLSCRHAwcfGzNEoRqNraszM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=i3awoUv2X95+pLFwbNifY1iPdqIqhD3GsOYEdqqSkKKgbnaCtgWzlYOC1TyIAbVkK
	 4RQLkpBFS5lHy2hgm+A4OoQ2ZXdTLRErVlTLkI2oT1etnwYchQSshdiq6jdvm8XSyP
	 IDN3UzIqAwW+gYpsfuYbM/QKF0odg87WJXOmbHzxyu71Guljs0VqYzpjpLT5ydAeWS
	 Q2F7K6jMCnsLDqYhC3UEiNZsHwp861rLoU0KV7Tvi+paZev+S2+Pd3TGAwVcD4gcx7
	 VBTm6w/b/REhwwzSpv+VHXBEWdVC4mCDT+XHXcSCup0GoUzfSZPrIfMm/ZYb43FV0q
	 OTfqQ5Q5Q0/xA==
Received: from [127.0.1.1] (ppp118-210-161-36.adl-adc-lon-bras34.tpg.internode.on.net [118.210.161.36])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E5FB065027;
	Wed, 18 Sep 2024 08:27:55 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: linux-aspeed@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>
Cc: devicetree@vger.kernel.org, joel@jms.id.au, conor+dt@kernel.org, 
 krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20240917162100.1386130-1-eajames@linux.ibm.com>
References: <20240917162100.1386130-1-eajames@linux.ibm.com>
Subject: Re: [PATCH] ARM: dts: aspeed: Fix Rainier and Blueridge GPIO LED
 names
Message-Id: <172661927571.3432555.2039083339536065640.b4-ty@codeconstruct.com.au>
Date: Wed, 18 Sep 2024 09:57:55 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.1

On Tue, 17 Sep 2024 11:21:00 -0500, Eddie James wrote:
> Blueridge LED names to include the "led-" prefix as is proper.
> Rainier should match for ease of application design. In addition,
> the gpio line name ought to match.
> 
> 

Thanks, I've applied this to be picked up through the BMC tree.

[1/1] ARM: dts: aspeed: Fix Rainier and Blueridge GPIO LED names
      commit: bb5d0b3ea047506a8a55dec5f39977bd05a4ac98

--
Andrew Jeffery <andrew@codeconstruct.com.au>


