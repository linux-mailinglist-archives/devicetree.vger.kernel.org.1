Return-Path: <devicetree+bounces-74323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FDA902B63
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:09:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99E0C28183B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:09:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD85C14EC41;
	Mon, 10 Jun 2024 22:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Szv982VC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8883847A40
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718057380; cv=none; b=aF3jpTvk4YFDTm37tnhYB0UEv5vk9FMxCD7ylPTcEZbGo/U1dw2kiVTvisD2MyhM39MZrN2jrlqoaNofFTRiRZ3dx1iJrZloMCUdzJ4zydmbvdWyBhfYdS0Rbr5xktP6EaD22swG8Kp7hH/GSvUUnXGAs0HNCH3IhiqThrBjWuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718057380; c=relaxed/simple;
	bh=8o6kg64HbkvdrfcrEkyY7Cx6hEEdz/yWEWoZqQ6I68E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mdDdLj9Q72lAp77Ko1S6SJLh/trxNGu+v2/e8oXu45QBSmsEtU/rvL3A91C7qMHfhR0KY4GVkP74lwNi68c/zwbA/tbzQepisWaTFWuUTa2eqBjXG7s0rZhvmiYh8reeYtzSxFiQ93QjtD2idZB9T9QahCSq4M0bnnMlQ3rWBeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Szv982VC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E72C2BBFC;
	Mon, 10 Jun 2024 22:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718057380;
	bh=8o6kg64HbkvdrfcrEkyY7Cx6hEEdz/yWEWoZqQ6I68E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Szv982VCkx/BvNLWkx6h/EugAR3pIv0w6yCTLX92OJDYYRFdL7NpkB7m6RY6h9/QQ
	 PJmMAQYpPLB5fDCYNxTx1cUQGOtNYcagG1SZqLoL0B2kUOJ3GQJt1dE7z7YbB446DR
	 PytvOSzNjh4KO+B0U0vmRUfI3WsrPunMSEd/2bKwJDKzIOLr6MqwUU+lYfLA4IRLDU
	 IPt31ESzZo1l6+7n6p2sWsKaAsMrZkpBvNbqDGIMjB6ztbZPSPE8fnoJ7cUD4nVdGa
	 T0Ol+beuG10TrgNtpFYFr/Yuzg1UrrA4gA9DIy//w1yxp8v0qwXNR5nvkzHozhYIhT
	 2cSWDlvtR7RAg==
Date: Mon, 10 Jun 2024 16:09:39 -0600
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org, Maxim Kochetkov <fido_max@inbox.ru>
Subject: Re: [PATCH 2/5] ASoC: simple-card-utils: add link-trigger-order
 support
Message-ID: <20240610220939.GB3150939-robh@kernel.org>
References: <87v82ls82e.wl-kuninori.morimoto.gx@renesas.com>
 <87sexps81d.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sexps81d.wl-kuninori.morimoto.gx@renesas.com>

On Fri, Jun 07, 2024 at 04:15:10AM +0000, Kuninori Morimoto wrote:
> Some Sound Card might need special trigger ordering which is based on
> CPU/Codec connection. It is already supported on ASoC, but Simple Audio
> Card / Audio Graph Card still not support it. Let's support it.
> 
> Cc: Maxim Kochetkov <fido_max@inbox.ru>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  include/dt-bindings/sound/audio-graph.h | 21 ++++++++

Belongs in the binding.

>  include/sound/simple_card_utils.h       |  4 ++
>  sound/soc/generic/simple-card-utils.c   | 71 +++++++++++++++++++++++++
>  3 files changed, 96 insertions(+)
>  create mode 100644 include/dt-bindings/sound/audio-graph.h

