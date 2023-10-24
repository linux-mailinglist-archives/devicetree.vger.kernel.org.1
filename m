Return-Path: <devicetree+bounces-11435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB957D5C5B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91D7F2819D6
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33CCC3CD0C;
	Tue, 24 Oct 2023 20:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D3B33D0
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:24:22 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B496DE8
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:24:21 -0700 (PDT)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-581f78a0206so2774982eaf.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:24:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698179061; x=1698783861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=clx/hiarGH6c0k6qEGq/cyL0jlTBHcjgQ76y2SZ3IeA=;
        b=vNkRVrN5ZJkoF+Rz1QpfKiGKQ9Hvr+qATF+7MMT9DKcXRd9mrulRQnVU+xVbJWWWqG
         qUG+80/uuJJxoCWrhZ7dD8vaWy/Dvw5205+cYezayZh92kKHm1gSkqyMR66r8uqID1RL
         C45Yv34F13f+RDwn47IGx6y8EQEl91VMBtE6RoysJu7BuYy3hk58xF5FXGakmZaz1e9C
         NTXWuB8fnhNHmT5PlbK3rKtjEhoo3Jb5XOYbLkbvYB5AXjnWM2zj05ZNBYmDuv6T9nFt
         cL7jS5POoW/I2Fwys3iCDWoeG7PHK730dTPTIgj64ImZiVFYB7yGOy8g8URxHtor2/Zq
         C0TA==
X-Gm-Message-State: AOJu0YyMVEKcrZGg1A6tTvvmliJexk36fnZjt+HsOBo/D6f934ZcD8Ks
	NvuymaylmmM1/MEuKAsIRA==
X-Google-Smtp-Source: AGHT+IHWQ29agmrDDWcPjFZ9HColPUX943ceIEm1E0NRBa6Vtktp+eoOBkQz8AuDLIIJjLiqkRyhzg==
X-Received: by 2002:a4a:e042:0:b0:571:aceb:26c8 with SMTP id v2-20020a4ae042000000b00571aceb26c8mr13539229oos.3.1698179061005;
        Tue, 24 Oct 2023 13:24:21 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v12-20020a05683018cc00b006ce2cb3b959sm1995045ote.52.2023.10.24.13.24.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 13:24:20 -0700 (PDT)
Received: (nullmailer pid 511841 invoked by uid 1000);
	Tue, 24 Oct 2023 20:24:18 -0000
Date: Tue, 24 Oct 2023 15:24:18 -0500
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, Mark Brown <broonie@kernel.org>, Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx
 property
Message-ID: <20231024202418.GA507328-robh@kernel.org>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>

On Mon, Oct 23, 2023 at 05:36:09AM +0000, Kuninori Morimoto wrote:
> This patch adds ch-maps property to enable handling CPU:Codec = N:M
> connection.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 60b5e3fd1115..47f04cdd6670 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -19,7 +19,12 @@ definitions:
>      properties:
>        mclk-fs:
>          $ref: simple-card.yaml#/definitions/mclk-fs
> -
> +      ch-map-idx:
> +        description: It indicates index of ch_maps array for CPU / Codec if number of
> +          CPU(N) / Codec(M) DAIs were not same in one dai-link. ch-map-idx is not needed if the
> +          numbers were 1:M or N:1 or N=M. see soc.h::[dai_link->ch_maps Image sample] and
> +          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dtsi. It is good sample.

Why do we have a dtsi file hidden away here?

We have examples and actual users. Do we really need a 3rd way?

Rob

