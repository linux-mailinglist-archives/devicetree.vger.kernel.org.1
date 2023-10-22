Return-Path: <devicetree+bounces-10667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 195F47D2677
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7E97281453
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 22:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64D913FE7;
	Sun, 22 Oct 2023 22:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1DD101FC
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 22:03:16 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 958DCE6;
	Sun, 22 Oct 2023 15:03:14 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5a90d6ab962so16531897b3.2;
        Sun, 22 Oct 2023 15:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698012194; x=1698616994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZftAID17R/O5TnG/ZVb5CfzK+0hZMm/GujeNOI0vgU=;
        b=L26wOA8FDKZhkh5304O64crQVa0f/J3ius1woY3JR4D+aInEZ/Z82awNW868MF2qAl
         qYCTTb2mPri2wSDr+H8sDr8vpUysAuqXVojNh86gOm7UrRiGe9byfcVn/pgjnVKPRew/
         mY4WO4XipS0nQMCLJLyEjgbQakrY66sGIhNS3YzAqrCO04ZTAEDTI8SI3B8qwnK7bfv2
         vwIlRhOptueJYIdLSbm9/XaDsPKOu5laU54u2IDYUorKOh240LvgWQ/oQzFZEZaZLRkU
         F6M1sgu1lcEDPKa1TsojmsLuhIowBjqkaMwQjmCpN9CAnDTpxCWb7HadzRhtFZ7/IOvW
         xM9w==
X-Gm-Message-State: AOJu0Ywm7y91wDNLj8cGCbXJ5M+MVmIZHYbP0pG6hd9i2un3XfzjfEk9
	8OAU2YwiwYXih6uOK648XQ==
X-Google-Smtp-Source: AGHT+IH4GRHWPyIQ6ZD5MzSOi2sQSkpySm5ebijuBH3eIFTLnditkED8hYytsoWJLBPv7KNhjOWCUQ==
X-Received: by 2002:a81:d442:0:b0:5a7:fcae:f3e2 with SMTP id g2-20020a81d442000000b005a7fcaef3e2mr8072387ywl.43.1698012193731;
        Sun, 22 Oct 2023 15:03:13 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c1:8e5d:a109:ceb8:bec4:d970])
        by smtp.gmail.com with ESMTPSA id m19-20020a81d253000000b0057736c436f1sm2555919ywl.141.2023.10.22.15.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 15:03:12 -0700 (PDT)
Received: (nullmailer pid 747792 invoked by uid 1000);
	Sun, 22 Oct 2023 22:03:10 -0000
Date: Sun, 22 Oct 2023 17:03:10 -0500
From: Rob Herring <robh@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: ssd132x: Remove '-' before
 compatible enum
Message-ID: <169801218855.747717.5658253186246322717.robh@kernel.org>
References: <20231020223029.1667190-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020223029.1667190-1-javierm@redhat.com>


On Sat, 21 Oct 2023 00:30:17 +0200, Javier Martinez Canillas wrote:
> This is a leftover from when the binding schema had the compatible string
> property enum as a 'oneOf' child and the '-' was not removed when 'oneOf'
> got dropped during the binding review process.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/dri-devel/CAL_Jsq+h8DcnpKqhokQOODCc8+Qi3M0PrxRFKz_Y4v37yMJvvA@mail.gmail.com/
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
>  .../devicetree/bindings/display/solomon,ssd132x.yaml      | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


