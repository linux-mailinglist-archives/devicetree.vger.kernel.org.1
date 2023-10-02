Return-Path: <devicetree+bounces-5135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DBD7B5625
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E9E1328183B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4A81A73E;
	Mon,  2 Oct 2023 15:16:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C881A721
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:16:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33FBEC433C8;
	Mon,  2 Oct 2023 15:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696259788;
	bh=Fb0ymaVOpCVGd7cx59N9jbdB3iYdc12n4vQA6NoFyqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPFImDyhexsU1wHFumQd4HI2AtZnCoyHnaWvoK9Lp/BJk7TiwY6RuY1djs1iZp5C1
	 DDQbWOfBGxG3JyIwNbn2hqu94FZZDGaoCbCGLB2Ddi9AADQ8mN1JmDBS2TwS+aIplR
	 dOqwhLTpssI3x3dlD4312/eJEfNlqd+92JZhLeMVjRfGSL7m4KwUOhWbfqjsSoh4ps
	 2W6wUwCjoyk5oxEknACrIopYS1WGygWNqWCFXtHarC+hxceEn3fjxGxUcgpcEhr6Wv
	 SHKJWjiPIC/EB2EhvAQR5HKFSGF85QMIjI7BBLZI/mPF5xYXJkVR8yXjFylrPc0BnA
	 A7Q3z61p6aseQ==
Received: (nullmailer pid 1744043 invoked by uid 1000);
	Mon, 02 Oct 2023 15:16:26 -0000
Date: Mon, 2 Oct 2023 10:16:26 -0500
From: Rob Herring <robh@kernel.org>
To: Joerg Schambacher <joerg.hifiberry@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, a-krasser@ti.com, joerg@hifiberry.com, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: pcm512x: Adds bindings for TAS575x devices
Message-ID: <169625977391.1743730.497698992999115873.robh@kernel.org>
References: <20230929150555.405388-1-joerg.hifiberry@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929150555.405388-1-joerg.hifiberry@gmail.com>


On Fri, 29 Sep 2023 17:05:55 +0200, Joerg Schambacher wrote:
> The TAS5754/6 power amplifiers use the same pcm512x driver with
> only minor restictions described in the bindings document.
> 
> Signed-off-by: Joerg Schambacher <joerg.hifiberry@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/pcm512x.txt | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Reviewed-by: Rob Herring <robh@kernel.org>




