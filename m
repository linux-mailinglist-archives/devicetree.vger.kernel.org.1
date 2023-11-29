Return-Path: <devicetree+bounces-20071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8DB7FDA72
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:54:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC157B20D84
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67BC1DDE6;
	Wed, 29 Nov 2023 14:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4D89BE;
	Wed, 29 Nov 2023 06:54:02 -0800 (PST)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1fa235f8026so2672357fac.3;
        Wed, 29 Nov 2023 06:54:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701269642; x=1701874442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ea/iuRLQ3MiOQbUR87zXKlf7PgJMpl4mFKJ4sK0omKs=;
        b=C8wVbHlrXxXXHvph7+FT89BofYCysccbYbOGoVYL5ta1qcc3U1Qccbe9h+6zbXKsoL
         8xAZokW3gTC/SaOihZPft1+bNLMtQg8f/dHJz+egTv2TdytzSgXPcFG9R5gCg4AIYPtL
         9Gx2jRZ0KWdRovnvN+iWa31m1+JQE07s62KbapySVJrbogV99pBb0eKjAbUG+9d/JQxk
         4Y2ayddeMSIrtuhlZSC1xlAryK2TVkEELhTEV25N9RQ6S7TxPy+DDD3ZTM2f3ixzt0DJ
         AHnrejCBWxuPihCqYdRsHj4JdbtkvbCMXWHVoLzxWObRL07KAfXE1+xyZstltzhhcYba
         CXFw==
X-Gm-Message-State: AOJu0YxFvkaskRJ8qPhHZ0tuyE8/bks9Ry0PMYFXTdek9LSokr7Lvjyw
	1aiiNZrzUua2GQm8ls5mQg==
X-Google-Smtp-Source: AGHT+IEKQZCzwe94OXoL3+AZ7eYT2112nCdj6/VnLFu1cjYWi2d5/xc1SEv31Wkuo3A4ZWK/3DhFNQ==
X-Received: by 2002:a05:6871:5811:b0:1f9:4244:4c52 with SMTP id oj17-20020a056871581100b001f942444c52mr22776977oac.41.1701269641968;
        Wed, 29 Nov 2023 06:54:01 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id mn13-20020a0568700c8d00b001fa3ab0a3bdsm1982754oab.31.2023.11.29.06.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 06:54:01 -0800 (PST)
Received: (nullmailer pid 2458296 invoked by uid 1000);
	Wed, 29 Nov 2023 14:54:00 -0000
Date: Wed, 29 Nov 2023 08:54:00 -0600
From: Rob Herring <robh@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: broonie@kernel.org, kuninori.morimoto.gx@renesas.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lgirdwood@gmail.com, daniel.baluta@gmail.com, alsa-devel@alsa-project.org, iuliana.prodan@nxp.com, shengjiu.wang@nxp.com
Subject: Re: [PATCH v4 2/2] ASoC: dt-bindings: audio-graph-port: Document new
 DAI link flags playback-only/capture-only
Message-ID: <20231129145400.GA2447249-robh@kernel.org>
References: <20231128081119.106360-1-daniel.baluta@oss.nxp.com>
 <20231128081119.106360-3-daniel.baluta@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128081119.106360-3-daniel.baluta@oss.nxp.com>

On Tue, Nov 28, 2023 at 10:11:19AM +0200, Daniel Baluta wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> Document new playback-only and capture-only flags which can be used
> when dai link can only support just one direction: playback or capture
> but not both.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..b13c08de505e 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,6 +19,12 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> +      playback-only:
> +        description: port connection used only for playback
> +        $ref: /schemas/types.yaml#/definitions/flag
> +      capture-only:
> +        description: port connection used only for capture
> +        $ref: /schemas/types.yaml#/definitions/flag

It seems like we have a random mix of port and endpoint properties here 
and I can't tell what's the logic for deciding the right place. 
Everything in port is also in endpoint, so maybe using port is 
deprecated. In most cases for graph bindings, we put properties in 
endpoint nodes.

Rob

