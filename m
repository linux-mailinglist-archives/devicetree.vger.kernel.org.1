Return-Path: <devicetree+bounces-102075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67D975607
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CAC61C26768
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E831AB518;
	Wed, 11 Sep 2024 14:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLvrkC4C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EAA1AB500
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726066225; cv=none; b=C2c+en67vGbKRiuCe71M61WQetJB2dLTZhL2FR/gmwFOlm7/fVC6cxqMGhvb0gyOQFQO+dtjGiHPmfWDGOXbuRMOn2AuLDAqIEYmh0Duc5Jo9HTMz2LMIGaiJo1ThpAAFio41kUdpZxHe7hgrFzeUpuYg0IEtC74NCdBtWmf7n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726066225; c=relaxed/simple;
	bh=UHhdL2TqAw1Ff5TNz/XDWwxl30Ma5iIQax0yjUj0lmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RyzDlilBj0kAD1eJV+aCAumacEtdiPi2pmjoSqnmitKFuwA+A6dxBVHS/ZhbNuc9tsI911XM2LWOcACnZ1/iu8oWSB6QzMZ2mn/6OCQWfYlOFsxxzAop1Q+IgSa+zNL/Qvm3KvgXD/o29eGd9fiEpF8Hh5oFvv7TpViiuJCVAy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLvrkC4C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57624C4CEC0;
	Wed, 11 Sep 2024 14:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726066225;
	bh=UHhdL2TqAw1Ff5TNz/XDWwxl30Ma5iIQax0yjUj0lmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YLvrkC4C7QpdtolHzwFm9EZoDLVVgxoJNIlEb/hle9eboBRosxqqnEn8XgoT0xAPL
	 6CFgEoRLlY0ydYiqCKAWocpgHaytLhvt4YyMw9cjMAEc51RL8wEE/4eXL0C5GrbINn
	 v/HwMtTErl+pHoT3l49O/tHAr2KTRdgjaRD3WIJjff47b28RjxMYGoGidb8JsDbhk4
	 bylKt3DFUTQ2rgQGIt22xrTe96pMl8ZBBhoutcSnQn2+uTHL25eEHjLSRBHm+OWa7V
	 8JOmX2hjRAp/XH6LRrOiEj6ZErpxZtuJ2xObTZkRIlbMB8wcsbDkS3jSoYLBdGm1UG
	 8IFDk7E+6xhMw==
Date: Wed, 11 Sep 2024 09:50:24 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: renesas,rsnd: add
 post-init-providers property
Message-ID: <172606622361.165356.4972843674773802358.robh@kernel.org>
References: <87wmjkifob.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wmjkifob.wl-kuninori.morimoto.gx@renesas.com>


On Mon, 09 Sep 2024 23:13:47 +0000, Kuninori Morimoto wrote:
> At least if rsnd is using DPCM connection on Audio-Graph-Card2,
> fw_devlink might doesn't have enough information to break the cycle
> (Same problem might occur with Multi-CPU/Codec or Codec2Codec).
> In such case, rsnd driver will not be probed.
> Add post-init-providers support to break the link cycle.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
> v2 -> v3
> 	- remove "|" from description
> 	- removed common post-init-providers description
> 	- 100 char to 80 char for 1 line
> 
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


