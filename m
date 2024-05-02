Return-Path: <devicetree+bounces-64528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6B8B99CA
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 13:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 026341F24486
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9624660BB6;
	Thu,  2 May 2024 11:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="g2MrRezj"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B6E60263
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714648225; cv=none; b=k6+K/l5AG51R66qYsQsbkERNnzQaORUkMlaM6MoZx+Ul1acOFWsZG7GLTJBMQOqAlTmx1AJatkItCaDlx42WvcAtTucRvejRpfjs+gIAEhnDCUlvgiRb5GWf64jnxfHOZppsHvdSe8/2msIWJKaMrEpfs8aJbUC58lwo1EP8AMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714648225; c=relaxed/simple;
	bh=/EV7QTZeTfQy4aM6c9V7M+q9IBE33PIbhjLzwvZTesg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JLWlufvLS4osmZnlLFbr4lWqkPgS+2dKXDUgRtUJuFAdPu6SudyWjaQdIxw9ImGFc6CLFND6HM+TrbXkWnfezA+3fYlQg5PRaqRkzEo+PiCOfq4VeHYjLbsjBD4iivwgiUxjxuBG41/oLX2FjrpMgSxXTM1Vrm+j4ctL1tL218o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=g2MrRezj; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from pecola.lan (unknown [159.196.93.152])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 80DE020009;
	Thu,  2 May 2024 19:10:19 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1714648219;
	bh=/EV7QTZeTfQy4aM6c9V7M+q9IBE33PIbhjLzwvZTesg=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=g2MrRezjUoMYZkCJRjbMGrLeMb0Yt0Re+IzEbflrcuLQX0OIY2nliDkG+0mdavYgU
	 mpyaHAqkOUeYJIXITL4juMy52uAW5HLl1pUEKTBpwVjDxMjoCr+iTkO9MqsQUaN09F
	 bY8uQPCZyTlTSQv6nlHsdo3p5KbZWeCD22J9FKkZvW80LMR7xY6lJVJBBPs/VllhVm
	 Vm31iMfbk7f0CFL3Ri680/hSJuiQdc6dSQ3ehHb97OHuKo93gLig675d1lxtgoYLZR
	 5OgihvrxByxnvERAV5wfyW/SiFnAto5zGP2i8GbCVpB+f5chVnToUQpUhHqI6jJYDe
	 MhG5v8J6TV7DQ==
Message-ID: <f14b79f4771a4216be6eb2de4352f9f1dda0eafc.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed-g6: Add nodes for i3c controllers
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-aspeed@lists.ozlabs.org
Cc: devicetree@vger.kernel.org, Andrew Jeffery
 <andrew@codeconstruct.com.au>,  Joel Stanley <joel@jms.id.au>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>
Date: Thu, 02 May 2024 19:10:19 +0800
In-Reply-To: <c5331cf8-7295-4e6a-ba39-e0751a2c357e@kernel.org>
References: <20240501033832.1529340-1-jk@codeconstruct.com.au>
	 <65af46c3-e48f-4eae-8390-2bc01332ccbf@kernel.org>
	 <09ed10182e2282d7e408a4fef7994da010fe058e.camel@codeconstruct.com.au>
	 <c5331cf8-7295-4e6a-ba39-e0751a2c357e@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krysztof,

> Your first node is empty and that is not readable.

I'd argue that separating the i3c definitions makes the source more
readable (granted, at the cognitive expense of having to dereference a
label), but ok.

I'll send a v2 with the bus definitions inline, but first reworking the
existing i2c definitions to use the same format.

Cheers,


Jeremy

