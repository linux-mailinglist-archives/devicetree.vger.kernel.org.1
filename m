Return-Path: <devicetree+bounces-6601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2C17BBF07
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 20:52:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13E84282166
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4D426E04;
	Fri,  6 Oct 2023 18:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690C4328BC
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 18:52:27 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A1DD8;
	Fri,  6 Oct 2023 11:52:26 -0700 (PDT)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-57de9237410so1297836eaf.0;
        Fri, 06 Oct 2023 11:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696618345; x=1697223145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNOQ3ahZw3ChgJyCcGSpyxiAH42KlZx7pAe81L0nIMo=;
        b=LS3OoI/BIz6Q3GUKgs7gx2xJGyzn2VuPSsfIWckJ2KbppdG9XHXVERcHpMCPu0l3aA
         XO0eg8f++/xtIg/1DlIboI9+sONa+3ec9e5qnyHYNHz75VYP8jNyrQIz5j0mwmZraThQ
         MMEhKfKj2L1WL+EqI0y3iGbKOVwvwuLVxdUAV6fYytLSYRSMOzdjbtVt0AGe7uQynx5Q
         VI0w7LMQ/ogTfD3DlYSZqL6MJpM0I2G31vlDJ8GGBb4E68TOzufeL8yLTKHCwzS8H6FL
         doe0NYWJJ2iUkWZVUOPzglErobaf9K4pyGCj8PRjDLg6rA3SLYeAos0GH9hokc4Ejm2D
         FBEw==
X-Gm-Message-State: AOJu0YyKhc/aabs+uhuhwYGC5+yY0ABGyYfID08MiJjBZw2k71MMN3j8
	c6NYc25gLA/VTlRZHvus6A==
X-Google-Smtp-Source: AGHT+IE7hUsL5IdR+DnVE8LzG2mVH0Wt5WH1UJQSbC1YxyZJTc6mSX7wuP0uK/wghBs+dQJ3kQacAg==
X-Received: by 2002:a4a:d2dc:0:b0:571:1a1d:f230 with SMTP id j28-20020a4ad2dc000000b005711a1df230mr9020280oos.9.1696618345590;
        Fri, 06 Oct 2023 11:52:25 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b3-20020a4ae803000000b0055ab0abaf31sm466601oob.19.2023.10.06.11.52.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 11:52:24 -0700 (PDT)
Received: (nullmailer pid 135158 invoked by uid 1000);
	Fri, 06 Oct 2023 18:52:23 -0000
Date: Fri, 6 Oct 2023 13:52:23 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Liu Ying <victor.liu@nxp.com>, NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dt-bindings: bus: fsl,imx8qxp-pixel-link-msi-bus: Drop
 child 'reg' property
Message-ID: <169661833704.134998.2141713434112587457.robh@kernel.org>
References: <20230925212639.1975002-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925212639.1975002-1-robh@kernel.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Mon, 25 Sep 2023 16:26:34 -0500, Rob Herring wrote:
> A bus schema based on simple-pm-bus shouldn't define how may 'reg' entries
> a child device has. That is a property of the device. Drop the 'reg' entry.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml           | 3 ---
>  1 file changed, 3 deletions(-)
> 

Applied, thanks!


