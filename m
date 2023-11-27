Return-Path: <devicetree+bounces-19387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B750D7FABE9
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 21:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72F01281829
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 20:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DC13309C;
	Mon, 27 Nov 2023 20:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87433187;
	Mon, 27 Nov 2023 12:47:46 -0800 (PST)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1f9decb7446so2334514fac.2;
        Mon, 27 Nov 2023 12:47:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701118066; x=1701722866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YGib6hSwKCKG3jHGa02XuX5JkKWsunTFVGKACe6En7A=;
        b=XqJZWhFCVyBvScM4PeBj2kkHnBlt//dsfmzpZVXEN/OTopCFYd1l+QbLlEYgquKXPa
         F5Wer/FL6yYvG/YaVBQ/sjip3SwQX0jjyjk7c0JofDpsgLhKzDui2wrcB6qPuMbsbslg
         gc05HjS7pP8XXy0FTQMaV3FRkRjEsBrgidLJHt9SeYAQsBk4/R3EJTqfazeQQLI5y0n7
         MuLqIQE3Ie7No9Ychcj+1eupXcB6eM50QdywO6gHZhXDLrYR7k06XTu+XqeL4P3Bg9xd
         Mi/OVHsEPHeF0c93QmRDoeik/11m/xsWZS0x6gOOjAVRT1QehFSRj3jycVryb8rrRSb4
         zqGw==
X-Gm-Message-State: AOJu0YwUob1J/xgENYUItS4J//QGJrYmWK5PK2fWGL/ZNs8nnh3cRON9
	BNGt/hD2jq8b3RVgSsk0vJ0IdxTf5Q==
X-Google-Smtp-Source: AGHT+IG1oSXjXQ1h05JJMsxuhFGzjQqvqWcosZ0gGyb/ttY4Y/RXH4eipII1r38nwkSljUb6hS6PaQ==
X-Received: by 2002:a05:6870:7021:b0:1f0:811a:324d with SMTP id u33-20020a056870702100b001f0811a324dmr14874333oae.51.1701118065827;
        Mon, 27 Nov 2023 12:47:45 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g12-20020a056830084c00b006c4d822bea7sm1446972ott.31.2023.11.27.12.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 12:47:45 -0800 (PST)
Received: (nullmailer pid 3324542 invoked by uid 1000);
	Mon, 27 Nov 2023 20:47:43 -0000
Date: Mon, 27 Nov 2023 14:47:43 -0600
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-kernel@vger.kernel.org, Pantelis Antoniou <pantelis.antoniou@konsulko.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Grant Likely <grant.likely@linaro.org>
Subject: Re: [PATCH] of: dynamic: Fix of_reconfig_get_state_change() return
 value documentation
Message-ID: <170111806144.3324209.14543973945707822890.robh@kernel.org>
References: <20231123-fix-of_reconfig_get_state_change-docs-v1-1-f51892050ff9@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123-fix-of_reconfig_get_state_change-docs-v1-1-f51892050ff9@bootlin.com>


On Thu, 23 Nov 2023 15:47:18 +0100, Luca Ceresoli wrote:
> The documented numeric return values do not match the actual returned
> values. Fix them by using the enum names instead of raw numbers.
> 
> Fixes: b53a2340d0d3 ("of/reconfig: Add of_reconfig_get_state_change() of notifier helper.")
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  drivers/of/dynamic.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Applied, thanks!


