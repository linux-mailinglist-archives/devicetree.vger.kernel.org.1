Return-Path: <devicetree+bounces-11969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 819447D7459
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BCD7280F33
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B993131A67;
	Wed, 25 Oct 2023 19:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7AE26E32
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:31:16 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F49B137;
	Wed, 25 Oct 2023 12:31:15 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-586753b0ab0so92742eaf.0;
        Wed, 25 Oct 2023 12:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698262274; x=1698867074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BULHmGVlpE9lA4m1uLl0w75mKoeV83pmpBJtjeqEY5Y=;
        b=xM5H8kvGk6D+3QGCSUShBEiNGa8RonqjmBzoMRgAsgWxd4KKE3SLi/FuZVhhO0eiIB
         J7VETrNs8TK7gtNfGoODcWLuYqRJVelB3md6UkfRup8Hug/371V55e4wCmUB9Q12uzQN
         5W/nXvZ8kwPjBgi+5hC8wOHWzNyrG1kptmFbVPY50P/5dITgjaf9WQQANUN7bORzH8oE
         msKQ/0WMJ3XOygH49ZsfXepIEF7bfA2D+uGgtLUVUeDYbyHyrLavtz18Mhi58VZp/pA4
         ygk3JrbAoAHU1aIv52pdlzhc8jEVbdza5TPrTotURZ39O8viGf1MwUHoUE71gr5aNGAI
         fXkw==
X-Gm-Message-State: AOJu0YzkQammM9zWPJrHBuJILYBasMK3FAdBOBpPIYkfpX6Ijbu8YQik
	YgYkbLL6Spo6/lKYdUaEmA==
X-Google-Smtp-Source: AGHT+IFHo+BtKG7vjbDrq1BHQjnxxSLUCQXu79LbewJtihFoXoDEcI7VB4bO88HE6WlmOy94m9dRTg==
X-Received: by 2002:a05:6871:522b:b0:1ea:7bd1:c495 with SMTP id ht43-20020a056871522b00b001ea7bd1c495mr19869975oac.27.1698262274627;
        Wed, 25 Oct 2023 12:31:14 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a21-20020a056870b21500b001e9dabc3224sm2717937oam.50.2023.10.25.12.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 12:31:14 -0700 (PDT)
Received: (nullmailer pid 1027831 invoked by uid 1000);
	Wed, 25 Oct 2023 19:31:13 -0000
Date: Wed, 25 Oct 2023 14:31:13 -0500
From: Rob Herring <robh@kernel.org>
To: Aradhya Bhatia <a-bhatia1@ti.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Devicetree List <devicetree@vger.kernel.org>, Linux Kernel List <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Devarsh Thakkar <devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>, Jayesh Choudhary <j-choudhary@ti.com>
Subject: Re: [PATCH] scripts/dtc: Allow ports to have a single port@0 child
Message-ID: <20231025193113.GA994152-robh@kernel.org>
References: <20231013085424.7137-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013085424.7137-1-a-bhatia1@ti.com>

On Fri, Oct 13, 2023 at 02:24:24PM +0530, Aradhya Bhatia wrote:
> Exempt 'ports' from the rule which asserts that nodes with single child
> node having reg = 0, should not have the '#size-cells' and
> '#address-cells' properties.
> 
> Ports of certain hardware do need to be described as only having a
> single child node 'port@0', especially when hardware has multiple ports,
> and the other ports 'port@x' are planned to be added subsequently. In
> such cases, just using 'port', would be an inaccurate hardware
> description.
> 
> For example, Texas Instruments' DSS (display-subsystem), which has 2 or
> 4 video ports depending on the SoC. Describing the first video port with
> just 'port' under ports would be inaccurate and even slightly
> misleading. Simply using port@0 (when other ports are not added)
> produces the following warning, while making dtbs with W=1 flag set[0].

There's a reason this is behind W=1.

In general, if you only have a single 'port' it should be just 'port' 
which is equivalent to port 0. There's exceptions to that, so the 
warning is off by default.

> code-block ::
> 
> 	Warning (graph_child_address): /bus@100000/dss@4a00000/ports:
> 	graph node has single child node 'port@0',
> 	#address-cells/#size-cells are not necessary
> 
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>
> 
> [0]: https://lore.kernel.org/all/570903b6-8239-d44a-5fac-71700804cb5d@ti.com/
> ---
>  scripts/dtc/checks.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

This is a copy of upstream dtc. We don't take patches for it (except in 
emergency). Look at the commit history.

Rob

