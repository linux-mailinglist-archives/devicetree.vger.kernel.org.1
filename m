Return-Path: <devicetree+bounces-8947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 469F07CAB83
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 16:31:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C2604B20CC2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 14:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B761D21A0A;
	Mon, 16 Oct 2023 14:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A87727EFF
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:30:57 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF1D5128;
	Mon, 16 Oct 2023 07:30:55 -0700 (PDT)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-57b635e3fd9so2280406eaf.3;
        Mon, 16 Oct 2023 07:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697466654; x=1698071454;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pogla2ixenuu9Whu/Txm0dkQOdChFbDxggoz3QMNrmQ=;
        b=qD5OiGnn1iXsRDEpr5o0DLKdJXZERh9kaw6XIgUVk3YcEh/Nh+u5+rOBP2rvYQWUgg
         pbU1Pb4yWkmj0AaRkRiZNaqYtu8L5AMQWxq2DI5TRHrWmn6T49aiwKYjpcxvgQ9fqllu
         qvgkku4RYbMJF9RejfXsxmkYL7NIBeUWlK1tUXG8cSxq/B9VunUB/x1Q/PkskLwBQ5LA
         JYt2d9qsfAeSIkrh96OCAdMHjY5excLfX6iIdM14GI845EDA4JpU4kDepNe5jj+nspVX
         974YpyaNxys4Fif7lCm4cBDWDUygnJkURm7vOmV/0mCuUQ+6iPsJblM07eFQpJHapME3
         ctUA==
X-Gm-Message-State: AOJu0YxC6naBC9VQD5P+ggNTgY1L6tJp9wYooa77nI3I5M2AQsRc/YUo
	MwhNPNXGOAFKySB5yrkxfA==
X-Google-Smtp-Source: AGHT+IHx8iGwaQriKRdE3MbfGOtdCCNfmu6tH2ejuHsm2/UZEYPWAT5EG1IdyqRY9fD+m2NiQmDXHQ==
X-Received: by 2002:a4a:9b88:0:b0:57b:575f:4f8c with SMTP id x8-20020a4a9b88000000b0057b575f4f8cmr29144162ooj.9.1697466654636;
        Mon, 16 Oct 2023 07:30:54 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id cj25-20020a056820221900b0057e54da7201sm1093968oob.35.2023.10.16.07.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 07:30:53 -0700 (PDT)
Received: (nullmailer pid 2775610 invoked by uid 1000);
	Mon, 16 Oct 2023 14:30:52 -0000
Date: Mon, 16 Oct 2023 09:30:52 -0500
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v5] dt-bindings: arm: mediatek: convert audsys and
 mt2701-afe-pcm to yaml
Message-ID: <20231016143052.GA2770481-robh@kernel.org>
References: <20231013140505.483766-1-eugen.hristev@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013140505.483766-1-eugen.hristev@collabora.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Oct 13, 2023 at 05:05:05PM +0300, Eugen Hristev wrote:
> Convert the mediatek,audsys binding to YAML, together with the associated
> binding bindings/sound/mt2701-afe-pcm.yaml .
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> ---
> Changes in v5:
> - removed example for mt2701-audio
> - renamed mt2701-afe-pcm to mt2701-audio
> - added clock cells as required, removed reg from required, in audsys binding
> - removed reference comment in mt2701-audio
> - removed assigned clocks from mt2701-audio
> 
> Changes in v4:
> - fix error reported by Rob's bot : 
> ./Documentation/devicetree/bindings/sound/mt2701-afe-pcm.yaml:11:4: [error] missing starting space in comment (comments)
> 
> Changes in v3:
> - not added Rb Conor Dooley since the patch was changed in a big essence
> - As per review by Krzysztof, also convert the mt2701-afe-pcm and reference
> the correct schema in the audsys binding.
> 
> Changes in v2:
> - remove comment reference to inexistent binding
> 
> 
>  .../bindings/arm/mediatek/mediatek,audsys.txt |  39 -----
>  .../arm/mediatek/mediatek,audsys.yaml         | 153 ++++++++++++++++++
>  .../bindings/sound/mt2701-afe-pcm.txt         | 146 -----------------
>  .../bindings/sound/mt2701-audio.yaml          | 117 ++++++++++++++

mediatek,mt2701-audio.yaml

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

