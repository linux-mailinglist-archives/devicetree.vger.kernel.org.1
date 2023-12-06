Return-Path: <devicetree+bounces-22489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0BB807B24
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 23:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7800E282303
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 22:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1535B5639F;
	Wed,  6 Dec 2023 22:10:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84D9C3
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 14:09:58 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d9a6f756c3so171746a34.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 14:09:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701900598; x=1702505398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5voz9BTYRdOtmgbdqyjcVx1JeyFg2wnR/i9iwhCVW8=;
        b=ubGOUHl1Uway5Xlj9sovpoXRBSSoZv/kDKGGkojLMbK6QenbQ61vo2aSDJ+3uDvlU2
         y2dfR2kQkAivP9kdpVF74xR8UOdBX6cjuuk4tBCecOsgBRHASNwBxrRIuwZTJvt3SCrS
         xAU/Ni5t4/PCr1LQSqNQHqwEp6AXHdL2xzCmj+FYcwk100bJZI1SItswdNi+vwxVPguj
         JNyFaaS1yvotz5PUQt2+PCF2/2DhgCVozyxhSLFDexM/2ndKTjtUv0HYkQPC3ugPgWnA
         ppiMMsdMNUxuiitBiQ0dD45XV6GkI1D8YKgR0q/qmB6p3BRPvUU4akIsglTi1WGoaXD9
         chQQ==
X-Gm-Message-State: AOJu0YyUeD2PGSpwQPju30mnGws0ryIuEA2PDGBT4g6kS63CpUpgJM/h
	hrXO0caMlH2p+pFgEerWig==
X-Google-Smtp-Source: AGHT+IF6i0d4TFeQUP3gi7+cJMf7xA6Un72NKclc95eMXFGufDalvvDJ1hcAkhLMqTQX6btyaum9fg==
X-Received: by 2002:a05:6830:61c:b0:6d9:d6f9:35cf with SMTP id w28-20020a056830061c00b006d9d6f935cfmr370786oti.4.1701900598064;
        Wed, 06 Dec 2023 14:09:58 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a14-20020a9d74ce000000b006d9c94d9b84sm130257otl.41.2023.12.06.14.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 14:09:57 -0800 (PST)
Received: (nullmailer pid 3430257 invoked by uid 1000);
	Wed, 06 Dec 2023 22:09:56 -0000
Date: Wed, 6 Dec 2023 16:09:56 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>, Laurent.pinchart@ideasonboard.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, aford173@gmail.com
Subject: Re: [PATCH v2] dt-bindings: display: adi,adv75xx: Document
 #sound-dai-cells
Message-ID: <170190059530.3430170.348137386728263154.robh@kernel.org>
References: <20231206093643.2198562-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206093643.2198562-1-festevam@gmail.com>


On Wed, 06 Dec 2023 06:36:43 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> When using audio from ADV7533 or ADV7535 and describing the audio
> card via simple-audio-card, the '#sound-dai-cells' needs to be passed.
> 
> Document the '#sound-dai-cells' property to fix the following
> dt-schema warning:
> 
> imx8mn-beacon-kit.dtb: hdmi@3d: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7533.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Adam Ford <aford173@gmail.com>
> ---
> Changes since v1:
> - Also pass '$ref: /schemas/sound/dai-common.yaml#' (Krzysztof).
> 
>  .../devicetree/bindings/display/bridge/adi,adv7533.yaml     | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!


