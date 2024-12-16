Return-Path: <devicetree+bounces-131506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D30F69F38D4
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 19:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F29EE188203F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 18:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7C620629B;
	Mon, 16 Dec 2024 18:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="qDk+NHtl"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5147213CFBD
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 18:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734373254; cv=none; b=DRSHfbXgfOIQbjUKrSEIPIehErKrZYg4z2cHojSpizCe8lphC0+B6wJXYwyHFnmioz+vDo/D4Bx6xVKlmFQrPlz1k39WqbDz9oaKTutqno6+rpM54H2FDZd0FY+VBfETXQHC9r8y8WXHJ9s44rcQzu7Bi2ZRBbuxCC58NaDZIXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734373254; c=relaxed/simple;
	bh=Zi6Ycqb0EbzuWuO2jQDrQSbot25zuIRYbx7FLP01Dx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DqotcUZgjwwX6acENsDMG0wBpAIUadNtDnL+igWQVYMtadn9fqrT9Hv4qZ9lE4EVxSZBz9fCU7S3K2s8aTIHyQ0gxQV5yED3FLR5JchW2rpAwRPizc5+qYJCCP5GGT2AMmkXEBJyIlT4Fr7WDFbhch4tbfaCc3t3xPjFUnO/yqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=qDk+NHtl; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 371AF240105
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 19:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1734373246; bh=Zi6Ycqb0EbzuWuO2jQDrQSbot25zuIRYbx7FLP01Dx0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=qDk+NHtlqFdcc2ewwnCGNoXBp0PPh05XY6NGywEo1fHHxvbIbEOV6/HmxEpDr4KA2
	 fKbaYt3DFoAyAsg3KSjITQIx2UHXmOlNjQuwSGWsNVs6JlQO4nN15Dx3HOQVaJTF+o
	 1LPsEhgMggJl8MeyJgM/MVnwohmdo9UKgweZ+RrEaA9R/em9Wr0ecdgFtV03uo4NeA
	 KaC2ClymtHEIeE24OtGd8LWrjhjhtB6mjhWjscyLcX7l0EAPavo8klMJMx9KOvl1FK
	 fkBSRezzmdhZpYHy9/zXWdz7zxud6IG/iAD70H11BtaS/wOLs4VQrZgqgwkb0qxf1L
	 6y/mY+OvC8pYQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4YBpCc5Wm9z6tyG;
	Mon, 16 Dec 2024 19:20:44 +0100 (CET)
Date: Mon, 16 Dec 2024 18:20:44 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: j.ne@posteo.net
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] gpio: 74x164: Add latch GPIO support
Message-ID: <Z2BvfKwdSyu5kzPh@probook>
References: <20241213-gpio74-v1-0-fa2c089caf41@posteo.net>
 <20241213-gpio74-v1-4-fa2c089caf41@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241213-gpio74-v1-4-fa2c089caf41@posteo.net>

On Fri, Dec 13, 2024 at 06:32:50PM +0100, J. Neuschäfer via B4 Relay wrote:
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> The Fairchild MM74HC595 and other compatible parts have a latch clock
> input (also known as storage register clock input), which must be
> clocked once in order to apply any value that was serially shifted in.
> 
> This patch adds driver support for using a GPIO that connects to the
> latch clock.
> 
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>

I just noticed that this feature is unnecessary for my use-case:
The 74HC595 doesn't have a chip-select input, but if the rising-edge
triggered latch clock input is reinterpreted as an active-low chip
select, it does the right thing.

                     _   _       _   _
 shift clock    ____| |_| |_..._| |_| |_________

 latch clock                           * trigger
                ___                     ________
 chip select#      |___________________|



 -- jn

