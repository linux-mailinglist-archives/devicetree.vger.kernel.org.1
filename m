Return-Path: <devicetree+bounces-12561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA637DA269
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEB65282588
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BF263FE21;
	Fri, 27 Oct 2023 21:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76093FB20
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:24:43 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9963A1AA;
	Fri, 27 Oct 2023 14:24:42 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-57ad95c555eso1591012eaf.3;
        Fri, 27 Oct 2023 14:24:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698441882; x=1699046682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vDjxeIztMYV+RXt8l5Ypmao9jXTVq+yUzzQl5hZC+s=;
        b=w8Sy377gb7+UhTnS97xxEHaBiHKASB2eEIlpToq5ot+vkKlkdVHKj8k7biEZVrkksU
         BZcrngyEBKkxKKghXSnAv1lFF0bXRDWmJSJLvKRg5z9Nk/8ELTVCYh9O7DEyrhdoCcIJ
         txeeB1zoZYzqRiV5JOG7kak9YQwGRRAARLl4R0mo9LzL2togdmCZLNEAHVddG/P5bmRr
         mXvYgBG7trieMsZNDIcZthLPPWl6M+ot6eo4JemfG5xCSuuvDcLGRMq3gFopfp07d4TU
         XVhYZPO5OXUjkiGY/Vbo1DJUjlEU/P1lQGyyJ6Qj8A70s91ydQNx8ky895LVH6yeEW5L
         brPA==
X-Gm-Message-State: AOJu0YzzjrnF5j476e6i9wwC+jVEJfoE4V2ufdLbxGjEd5+nxpgokCRf
	/38eIE2GfuflJ5ptAzSeD877MHIe7g==
X-Google-Smtp-Source: AGHT+IGGC9TsMVGuIaNtb+Rfr48y+2I0v+/38N6hSjofz8ifBeICH1sxB6MZPwbjZV4IZj+H/tJQuA==
X-Received: by 2002:a4a:da4f:0:b0:582:3c4a:923a with SMTP id f15-20020a4ada4f000000b005823c4a923amr3919973oou.9.1698441881891;
        Fri, 27 Oct 2023 14:24:41 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j9-20020a9d7f09000000b006b8b55297b5sm431607otq.42.2023.10.27.14.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:24:40 -0700 (PDT)
Received: (nullmailer pid 3397284 invoked by uid 1000);
	Fri, 27 Oct 2023 21:24:40 -0000
Date: Fri, 27 Oct 2023 16:24:40 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 3/5] regulator: dt-bindings: Allow system-critical
 marking for fixed-regulator
Message-ID: <20231027212440.GA3392484-robh@kernel.org>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
 <20231026144824.4065145-4-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026144824.4065145-4-o.rempel@pengutronix.de>

On Thu, Oct 26, 2023 at 04:48:22PM +0200, Oleksij Rempel wrote:
> In certain projects, the main system regulator, composed of simple
> components including an under-voltage detector and capacitors, can be
> aptly described as a fixed regulator in the device tree. To cater to
> such use cases, this patch extends the fixed regulator binding to
> support the 'system-critical-regulator' property. This property
> signifies that the fixed-regulator is vital for system stability.

There is no programming interface for fixed-regulators, so how do you 
know an under/over voltage condition?

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/regulator/fixed-regulator.yaml          | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> index ce7751b9129c..9ff9abf2691a 100644
> --- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
> @@ -105,6 +105,8 @@ properties:
>      description:
>        Interrupt signaling a critical under-voltage event.
>  
> +  system-critical-regulator: true
> +
>  required:
>    - compatible
>    - regulator-name
> -- 
> 2.39.2
> 

