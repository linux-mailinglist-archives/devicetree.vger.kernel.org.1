Return-Path: <devicetree+bounces-12557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2F57DA1D8
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 22:37:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAE221C210B9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E602D78A;
	Fri, 27 Oct 2023 20:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81C0257B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 20:37:13 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3C0EE5;
	Fri, 27 Oct 2023 13:37:12 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-586b512ba0aso1043618eaf.3;
        Fri, 27 Oct 2023 13:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698439032; x=1699043832;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l5WFN1SSmS/r3ICuBTDtqGiXKLGto00C5bgN46KK4Uw=;
        b=GTFsYc7nHwJ5uS4GmFzIiY3GDVuP+gJsA81h1Nt4lgLaVd5ACmfwIe7QcpkMpvTnqi
         7l34Iz7YlFT72aq7b+EaSPwFhv4VpKdcbeNVOuhqj8PcDLVZEEwARNQYfMxIlyghQqUG
         zHDq5FNHzmTcXCrZ13MXs6vpCN2fyFTP4zrn0y41d6X8HMcmSNweoGeq2xs4RWYTrTea
         uNo4xg1aemRKnkgzVRzlyaPfn48W66TmsMcLVsjZFLg8AqA6Km8Dr672Fw+gYzb16g1L
         5YQqoLoxCBp2gEpzxnQNp03uOhcjvI1jW6FWmFMdMB39n11/ntJf4xw0F9FwYbFBztTG
         +50Q==
X-Gm-Message-State: AOJu0Yzn5W4ROvEoNdDxhFP5FCCUNkksJUjZ/k/ekTVjtocZm+2P6V4V
	q2Mr5lNwc0jnZflOpRj7bNKYaWurZQ==
X-Google-Smtp-Source: AGHT+IG6h4oHBmG2T3I4LJb5oLOQfp7Pdatfr90hATEu3Fw8YMSQOgVhy5hwcA3zkYiUtORF3Rfhdg==
X-Received: by 2002:a4a:db8d:0:b0:581:9066:49 with SMTP id s13-20020a4adb8d000000b0058190660049mr4041174oou.0.1698439031844;
        Fri, 27 Oct 2023 13:37:11 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y30-20020a4a9821000000b0054f85f67f31sm516061ooi.46.2023.10.27.13.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 13:37:10 -0700 (PDT)
Received: (nullmailer pid 3329327 invoked by uid 1000);
	Fri, 27 Oct 2023 20:37:09 -0000
Date: Fri, 27 Oct 2023 15:37:09 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Guennadi Liakhovetski <guennadi.liakhovetski@linux.intel.com>, Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: mfd: ams,as3711: Convert to json-schema
Message-ID: <169843902845.3329267.3867770965839541973.robh@kernel.org>
References: <56a5ebee588696f9022fa29fa8e266c8bdee6fd7.1698228043.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56a5ebee588696f9022fa29fa8e266c8bdee6fd7.1698228043.git.geert+renesas@glider.be>


On Wed, 25 Oct 2023 12:02:34 +0200, Geert Uytterhoeven wrote:
> Convert the Austria MicroSystems AS3711 Quad Buck High Current PMIC with
> Charger Device Tree binding documentation to json-schema.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Consistently use "DC/DC" and "step-up",
>   - Move {additional,unevaluated}Properties in subnodes up to improve
>     readability,
>   - Split dependencies in dependent{Required,Schemas} to fix multiple
>     dependencies,
>   - s/oneof/oneOf/ (flagged by dt-schema as of commit 411c305105dd1273
>     ("meta-schemas: Check sub-schemas of "dependencies" and
>     "dependentSchemas"")),
>   - Use pmic recommended node name.
> ---
>  .../devicetree/bindings/mfd/ams,as3711.yaml   | 223 ++++++++++++++++++
>  .../devicetree/bindings/mfd/as3711.txt        |  73 ------
>  2 files changed, 223 insertions(+), 73 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/ams,as3711.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/as3711.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>


