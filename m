Return-Path: <devicetree+bounces-12273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E38527D8A2A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A64372820E2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646583D3A5;
	Thu, 26 Oct 2023 21:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C784426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:22:52 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19D59C0
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:22:51 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ce2bcb131fso904398a34.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:22:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355370; x=1698960170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4152jFLYLD/MBewGGEPSHG844zUZQa9UTyIgToDxCiM=;
        b=iwEHfN/CaJMuvj5Ff2eNZlW0Ohqe23esTHsNJLL0+sOR7Tj+2QMD4WJdMak9IAmD7U
         jZX2F1Q/j0/EmVJTS5ZKNC4ptyDpZhV630/G8gUloo23eutprQGHNVmQR30fSgS9iL5b
         HncB/JQWnre5cpKJkcv4Uds0g+f1nTX3ijTGdolEEiTsZahcAVyNvuAWakgRRqLOyBVh
         qYtOsYL0fo5x0EETb3662EcxA9YlPkp8kOdVMPfdV06sY/0GhbKq5qoeFb2qo5t75PfZ
         97h+hQ5UfioVYFHOwPwR7bV2gTqdzRXwqhSSV96lt09SyQvRWluxQOM1cBFFgCEOCyEh
         9TJA==
X-Gm-Message-State: AOJu0YxKfWRGQx1yq1m6JC3b7KiXyTFC0uv0BNFUViLnkdbbhZ7FhMtl
	T3hvwfmdZsvk6VgJseF07A==
X-Google-Smtp-Source: AGHT+IHabh59A6Iy4VEaSpR8/PFa9Dq+e6X0DG9ObnlWccTugNJclAbi3zd3YfIeAaa0IB54AvVS2A==
X-Received: by 2002:a05:6830:14:b0:6cc:fff0:8ebd with SMTP id c20-20020a056830001400b006ccfff08ebdmr612994otp.24.1698355370314;
        Thu, 26 Oct 2023 14:22:50 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b8-20020a4a98c8000000b0057377b1c1c8sm36892ooj.24.2023.10.26.14.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:22:49 -0700 (PDT)
Received: (nullmailer pid 420013 invoked by uid 1000);
	Thu, 26 Oct 2023 21:22:48 -0000
Date: Thu, 26 Oct 2023 16:22:48 -0500
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, Mark Brown <broonie@kernel.org>, Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 5/5] dt-bindings: audio-graph-port: add
 channel-map-index property
Message-ID: <20231026212248.GA383937-robh@kernel.org>
References: <87fs1zbg2g.wl-kuninori.morimoto.gx@renesas.com>
 <878r7rbg0v.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878r7rbg0v.wl-kuninori.morimoto.gx@renesas.com>

On Wed, Oct 25, 2023 at 02:19:13AM +0000, Kuninori Morimoto wrote:
> This patch adds channel-map-index property to enable handling

Don't write commit messages with 'This patch' or 'This commit'. See the 
documentation on writing patches.

> CPU:Codec = N:M connection.

This is not answering Why?

> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..2a7e0784d591 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -93,6 +93,19 @@ definitions:
>                minimum: 1
>                maximum: 64
>  
> +      channel-map-index:
> +        description: It indicates CPU/Codec DAIs channel mapping index if number of
> +          CPU(N) / Codec(M) were not same in one dai-link. channel-map-index is not
> +          needed if the numbers were 1:M or N:1 or N==M. Same indexed CPU <-> Codec
> +          will be paired. This is CPUx2 <-> Codecx3 sample.
> +                                   CPUA   { ... .channel-map-index = <0>;   }
> +          [0] CPUA <---> CodecA    CPUB   { ... .channel-map-index = <1 2>; }
> +          [1] CPUB <-+-> CodecB
> +          [2]        \-> CodecC    CodecA { ... .channel-map-index = <0>; }
> +                                   CodecB { ... .channel-map-index = <1>; }
> +                                   CodecC { ... .channel-map-index = <2>; }

We have 2 different meanings for channel-map-index here. We have the 
codecs defining "I am index N" and then the CPUs defining "I'm connected 
to codec N". That's confusing to start with. Made-up indices are 
something we try to avoid in DT. Are the numbers here (0, 1, 2) 
significant? The normal way we link from one node to another is 
phandles. Why not use phandles here:

CPUA   { ... .channel-map-index = <&CodecA>;   }
CPUB   { ... .channel-map-index = <&CodecB &CodecC>; }


However, we also have OF graph to define complex topologies/connections 
AND we're already using it for this binding. So why not here? You can 
always have more than 1 port and/or endpoint. Generally, multiple ports 
are independent/simultaneous data connections and multiple endpoints are 
either 1:N fanout or N:1 muxed connections.

Rob

