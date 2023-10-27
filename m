Return-Path: <devicetree+bounces-12563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1DD7DA26F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CE931C210C9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF0C3FE25;
	Fri, 27 Oct 2023 21:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5FA3FB20
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:26:23 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 917B31B5;
	Fri, 27 Oct 2023 14:26:22 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b2e44c7941so1656644b6e.2;
        Fri, 27 Oct 2023 14:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698441982; x=1699046782;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CzuXPGsliaHeUxwQ3SaLoLmpb3vcAIyz1Sn+4gWGEYo=;
        b=QIDqV2nkrH1MhIlIMNSI1+bk6DqokWhOCLQf/Dh6foKonCkcL2ABta4MSM5GVXiLFo
         Nsp5+KoDZ/mdd8kr6cSEOff4XS9ZjxJtu7fT5n7UESw4L/1HaMwLZImJKYVS3yAzx4eh
         g/NQ9CUsRA5FLWwh8HEx1mX8fScowNCUfcYeFabU74OukEl8HJLolQsBjglof/7l6ugY
         WDB51WQMPNVuoJ9Lgiav9/UIyfbG6M3T3i7fnk4WY9j3PNR8Pu7s5/zX6X1uW8iNkrg6
         esPTd+W4O6LARc5yDRezZQSPjygPtjKAcdl+nzJ9pgR8teifUp6W6B7D02/5RRjcDv/g
         j+dQ==
X-Gm-Message-State: AOJu0YzO05dtfftzR0onY0y+wCc0ppgaZoEqXJnwyKIya/W+r6gdoDoV
	Sgf1SgxhFwDUVlLKQl+o/w==
X-Google-Smtp-Source: AGHT+IEdy6E7i+dcc+c9ub0teu/+72ONekpp6MPvEuHW3urJva5inWXQ8WVOnExbZq8Sc/X8F7X++Q==
X-Received: by 2002:a05:6870:d8cf:b0:1d6:5b09:1584 with SMTP id of15-20020a056870d8cf00b001d65b091584mr5092676oac.5.1698441981797;
        Fri, 27 Oct 2023 14:26:21 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id zf27-20020a0568716a9b00b001eb814093b0sm460726oab.34.2023.10.27.14.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:26:19 -0700 (PDT)
Received: (nullmailer pid 3399694 invoked by uid 1000);
	Fri, 27 Oct 2023 21:26:18 -0000
Date: Fri, 27 Oct 2023 16:26:18 -0500
From: Rob Herring <robh@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v4 4/5] regulator: dt-bindings: Add
 'regulator-uv-less-critical-window-ms' property
Message-ID: <169844197767.3399644.2264278989526622921.robh@kernel.org>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
 <20231026144824.4065145-5-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026144824.4065145-5-o.rempel@pengutronix.de>


On Thu, 26 Oct 2023 16:48:23 +0200, Oleksij Rempel wrote:
> Introduces a new devicetree property to specifies the time window (in
> milliseconds) following a critical under-voltage (UV) event during which
> less critical actions can be safely carried out by the system.
> 
> Less Critical Actions:
> - Logging the under-voltage event for later analysis.
> - Saving less critical data that may be useful for diagnosing issues or
>   for audit purposes.
> 
> More Critical Actions (post the less critical window):
> - Initiating procedures to properly shutdown hardware to prevent damage.
> 
> The 'regulator-uv-less-critical-window-ms' property is crucial for
> conveying board-specific hardware characteristics, not for enforcing a
> certain policy. The time window represented by this property is derived
> from the physical attributes of the hardware like the capacity of
> on-board capacitors, the power consumption of the components, and the
> time needed to safely shut down hardware to prevent damage. These
> attributes can significantly vary between different boards, making it a
> board-specific property rather than a policy directive.
> 
> By providing a precise representation of the time available for less
> critical actions post an under-voltage event, this property enables the
> kernel to make informed decisions on action prioritization, ensuring
> that essential preventative measures are taken to avoid hardware damage
> while also allowing for data capture and analysis.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  .../devicetree/bindings/regulator/regulator.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


