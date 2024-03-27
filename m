Return-Path: <devicetree+bounces-53974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E511588F197
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 23:05:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E66029E64E
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 22:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB65814F13F;
	Wed, 27 Mar 2024 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVOXbGup"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872831514E3
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711577074; cv=none; b=ghlEasP/kB1k0yeY+J74ENtW33V5JP2OdUIx5XLIRQiTDIhyOZaaI3lBA2HjeLv5VYyQXaHtJM7n4hrMZg9k+6arNwzEP6gfDLJH8A/OuCU7rIuoZZsHvG8Hm8d7SECzoXoy0amS9qLhi23D6dqpD8bQBn41yY/aanzQi5H+J8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711577074; c=relaxed/simple;
	bh=Db26D0yPcL3zl2lIG86xpnP84G8qZ8ppSaEmWGyu2cQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aeTWP1J4GsyFH+ji6npU0LO3aBnMxkdQ+ccwkxrSyqbK4HOG9Iv1rJwCYKNg6cobxyk4iekr8weXjV6xYrjEpJqWiZ/U4BjGpN9gyLOnPcVNPRlEAxmv0ZU6A0bktmTB1np5gnYRo+WgZogkVKU1SVg/isXDI+2LpVJAq6PWo4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVOXbGup; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6F11C433F1;
	Wed, 27 Mar 2024 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711577074;
	bh=Db26D0yPcL3zl2lIG86xpnP84G8qZ8ppSaEmWGyu2cQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lVOXbGup2M2r8PBR2VK9cOGA5tUH/cmAfRXYhGUG695Jw+zljTYM15k5rTyXPmabA
	 AuVK5Xi4HZX82bzWH+f1Gv7Gcp0Ic2LlUYaRDArKGBHZYKxEiwZWVAlQ+a70JoS+AX
	 +v6lDpy/f6X/AJfpy/30cMlsIF3y1DzbINIOofeCj+mijwkz+k3Mn2yEEa3Z2IXSSP
	 VJJCdbwt1kT1K9euz7LhMZFVhlQ0UqHaLKKgAb0J8RWtyToRCIzlBTID8aLgKQa8BL
	 QyfehwLxO2d31vpI5GCIxTVay2qFzaDnAF5ipRtCFkRMKKi6H7TQsdzEBOMfeV2XL1
	 NkffEI3BXB3xA==
Date: Wed, 27 Mar 2024 17:04:31 -0500
From: Rob Herring <robh@kernel.org>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: lvc-project@linuxtesting.org, Rob Herring <robh+dt@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] of: module: prevent NULL pointer dereference in
 vsnprintf()
Message-ID: <171157706952.177016.3566396296616071267.robh@kernel.org>
References: <1d211023-3923-685b-20f0-f3f90ea56e1f@omp.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d211023-3923-685b-20f0-f3f90ea56e1f@omp.ru>


On Wed, 27 Mar 2024 19:52:49 +0300, Sergey Shtylyov wrote:
> In of_modalias(), we can get passed the str and len parameters which would
> cause a kernel oops in vsnprintf() since it only allows passing a NULL ptr
> when the length is also 0. Also, we need to filter out the negative values
> of the len parameter as these will result in a really huge buffer since
> snprintf() takes size_t parameter while ours is ssize_t...
> 
> Found by Linux Verification Center (linuxtesting.org) with the Svace static
> analysis tool.
> 
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---
> The patch is against the for-next branch of Rob Herring's linux-git repo...
> 
>  drivers/of/module.c |    8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Applied, thanks!


