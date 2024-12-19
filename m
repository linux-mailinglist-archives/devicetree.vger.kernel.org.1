Return-Path: <devicetree+bounces-132668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7149F7BB6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EDD067A1E7F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE81224AF9;
	Thu, 19 Dec 2024 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="SY3POsIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947922253E3
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734612293; cv=none; b=UYGmVphspv5DkfBEfknQUTgiG7xygFR6JPBAM+Qedg340Q2RVqKNRo7Cd8CN9h6rqMkKNjwuKohzX9gyJG+hk3+klXoZGAO/RU50atb+To3RsMKytQhnV64mn9XMdrEtFwd6uJy3W822E/0ThniI95epPE68rFUB9IA+yoinf7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734612293; c=relaxed/simple;
	bh=P89gRBrLr5JfkGMeHfX1YOoBe6Tlj69JV3TBj5G/KX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nnuv30BmQiB9eYd2cYMhtcZwa1FZnehFPTBUpjLHnxO6wYcvUQShOnnIfPk1oz6l9+oqRNVZKDRxdbldFa5ACjuF0U/ZkCmbjpHajdTIfykbYbV1TEdw8GQ0i27RIJKvtFbzcQ127cAW98ucV9N1LLiJ763bR4qE5sn07e2tQkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=SY3POsIj; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id DCE56240103
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1734612283; bh=P89gRBrLr5JfkGMeHfX1YOoBe6Tlj69JV3TBj5G/KX4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=SY3POsIjv+APZ0EsQnP6CHEaMB9YGz5qHgmWq+4bAgETTuEl465QJBwE0B4NOSCsT
	 bPlSRf23vRANFUhFStnAYKA+hnSyoHGnR6bwZiM8F+Y6oE2H6GgGg4oKJBpRKsvoqK
	 HNWJjMaNnlDk6PRu+cC53gjBB8+CNV6bge2iYCSTWsUEHe8TbRUIC9j4I9CyUviRzZ
	 0jq4AoEBRw5JyfsYjVNRDjgMO/OSICWYEc2janMG8Xsm9ZZX8ZTySIGCdH43YPao2K
	 syfxF6w/ty4wfwKm33EHi1/MsEgLV842RUJ/eZcTDWJ30f2pk/m1hIdQFWOufK5Ib8
	 WRL0DDkXvQbOA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YDVcV5XV5z6v0G;
	Thu, 19 Dec 2024 13:44:42 +0100 (CET)
Date: Thu, 19 Dec 2024 12:44:42 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Rob Herring <robh@kernel.org>
Cc: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: gpio: fairchild,74hc595: Add
 latch-gpios property
Message-ID: <Z2QVOk2YiIJPMhIl@probook>
References: <20241213-gpio74-v1-0-fa2c089caf41@posteo.net>
 <20241213-gpio74-v1-2-fa2c089caf41@posteo.net>
 <20241217152522.GA1813602-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241217152522.GA1813602-robh@kernel.org>

On Tue, Dec 17, 2024 at 09:25:22AM -0600, Rob Herring wrote:
> On Fri, Dec 13, 2024 at 06:32:48PM +0100, J. Neuschäfer wrote:
> > The Fairchild MM74HC595 and other compatible parts have a latch clock
> > input (also known as storage register clock input), which must be
> > clocked once in order to apply any value that was serially shifted in.
> 
> That sounds like all the existing parts have the signal and it is 
> required to operate? Or just needed to write settings, but not read GPIO 
> input state for example?

These parts are output-only (so, "GPO"s, arguably).

The situation with the latch signal is weirder, as I found out in the
meantime: These parts don't have a chip-select built in, but the
rising-edge triggered latch clock can be reinterpreted as an active-low
chip-select, because that would also rise after the appropriate number
of bits has been shifted through the SPI bus.

                     _   _       _   _
 shift clock    ____| |_| |_..._| |_| |_________

 latch clock                           * trigger
                ___                     ________
 chip select#      |___________________|



So, I now think that no additional signal and no binding change is
actually needed, just perhaps an explanatory comment.


> 
> If the new parts are usable without latch, then they should have a 
> fallback compatible. If they aren't usable, then it should be 1 binding 
> patch.

AFAICT, the new part (onnn,74hc595a) behaves the same at the existing
(fairchild,74hc595 and nxp,74lvc594), with regards to the latch signal,
so my two binding patches are independent of other.
In other words, this one can be dropped, but the other still stands.



Best regards
 -- jn

