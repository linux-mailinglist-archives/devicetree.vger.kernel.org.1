Return-Path: <devicetree+bounces-101430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD943971C60
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 16:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 723F81F2496D
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 14:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25ADA1BA285;
	Mon,  9 Sep 2024 14:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubjIc8Wq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0055F1BA27C
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 14:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725891748; cv=none; b=cjyHN0VlfxAP3rLSfyGrLK7nxUHAygrZEuaIU9IeCv4pRCOuH0b8tUkpU/9Ocenymjbw5W55HFR815PRjXmQOoMlJWNeCVIq4/HEZY3qIplw9IMzdXXl4pV1fFsBwXOqu3CGswxqIy1FF0Ju9Z/uxgcZYO0trXUwN6SjiC3rolM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725891748; c=relaxed/simple;
	bh=Hezfj/kPm64KvITcfkt3URf9tx9rvGYy7rBd9swWi4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xzjqt4IuDVr5D3+j2Z38hMIhnurvrxDcMuk+HlajvjqsjA+iBCrEZCGoeikjX2G62sOe1xaF50RchHt5LUokv5Rg0W1GyluzM5tb8et6+ogB9iVOOiCziP7jeazG87yMxu+1/JvcFBexa70sMA7AoizoPBLpu0FJG9u8ykpidpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubjIc8Wq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6288EC4CEC5;
	Mon,  9 Sep 2024 14:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725891747;
	bh=Hezfj/kPm64KvITcfkt3URf9tx9rvGYy7rBd9swWi4w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ubjIc8WqYl0D6MnVk/IUOhrN6X2QqzKYlc5FTH8pdSO/YfWN0yFX4gJ3hbU1G4GSi
	 NZjpPwxu8KgusT4tWKdzHnJROjLVbYUmXVYq7ceCrbUArbYu7Mmbt0MCoLIoKRdePm
	 do/IRo1oLJcmreyNtzW5zmeGe+2iGwYIOFAO1+08E9g1fXK4EGbY1c8Ks9+lewR6Gu
	 TmWqdvo5jbDEr3gxKp8/7/IzPZrURXMisLPjYo/YgnsMfxaoTD0e1nVYf6o0tFM8oJ
	 ARDkhOYe/O8zoxShS2TVNVKG5CxTMS+FAPyIyaiJRUTLEmM/9x7U/pZL5HiWdo0Y8+
	 7T5Jyue9ltEYg==
Date: Mon, 9 Sep 2024 09:22:26 -0500
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Linux-ALSA <alsa-devel@alsa-project.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: renesas,rsnd: add
 post-init-providers property
Message-ID: <20240909142226.GA4185128-robh@kernel.org>
References: <871q1zkmrc.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871q1zkmrc.wl-kuninori.morimoto.gx@renesas.com>

On Wed, Sep 04, 2024 at 11:44:08PM +0000, Kuninori Morimoto wrote:
> At least if rsnd is using DPCM connection with Audio-Graph-Card2,
> fw_devlink might doesn't have enough information to break the cycle
> (Same problem might occur with Multi-CPU/Codec or Codec2Codec).
> In such case, rsnd driver will not be probed.
> Add post-init-providers support to break the link cycle.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
> v1 -> v2
> 	- remove basic description/type
> 	- add detail description
> 	- update git-log
> 
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 07ec6247d9def..458877ce4aa42 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -112,6 +112,13 @@ properties:
>      description: List of necessary clock names.
>      # details are defined below
>  
> +  post-init-providers:
> +    description: |

Don't need '|' if there's no formatting.

> +      At least if rsnd is using DPCM connection with Audio-Graph-Card2, fw_devlink might doesn't
> +      have enough information to break the cycle. rsnd driver will not be probed in such case.

Wrap lines at 80, not 100 unless there's good reason to extend them.

> +      Add post-init-providers property to indicate which link in the cycle to break.

That describes every use of post-init-providers. Drop.

> +      Same problem might occur with Multi-CPU/Codec or Codec2Codec.
> +
>    # ports is below
>    port:
>      $ref: audio-graph-port.yaml#/definitions/port-base
> -- 
> 2.43.0
> 

