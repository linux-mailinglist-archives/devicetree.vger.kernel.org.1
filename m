Return-Path: <devicetree+bounces-12558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 851DD7DA1D9
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 22:37:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B49CC1C210CB
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB681358AE;
	Fri, 27 Oct 2023 20:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC19257B
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 20:37:51 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDD5E5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:37:50 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-57e40f0189aso1439834eaf.1
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:37:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698439069; x=1699043869;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w5BKBDZDXAl+jasMnP+r+lpz668VDyXsVmvVapoI488=;
        b=crbAvp4qu7N+2sauO5Q2yjCMFF4JEp5btrPou8ZJN0OyEcnXEnm4TQeUZg5WMna5sH
         3zFZFr/17SwMVTLKNG+zjiabgfY+JKxPyYmOpK9Mz75XHnk5gOBnR8lF7pG4IWiNoPYg
         yy+xDQWlb18aauVl7yawvdZHP0lwbvxjDktllM69jQE4D8qXdIYf0kZY20ZEnTP1aBn4
         WEQYBfCb6N2osYPupFpEJWzB+QkuxoEOG+7+QMS4kM6Ff8wlZ1LBs8iXZUnUPQ325x5h
         /cWN93QlwZHKJoHn7NoOAP7y5QCbzhUE6kwGPXuxyia3SfkzWMIEgV3rKKS22gftNMOu
         fkiQ==
X-Gm-Message-State: AOJu0Yx4dkYCPwbExFFjqH7MBwfTI6RH5aGOquLUDIS4zllIb6PlAfPL
	NwHwZB5aUSpvJMmGHMEeKdXYdK+SDg==
X-Google-Smtp-Source: AGHT+IFQD0JqVlbEDMymI1NEavmq5J5MGckJzfvmxzy6EGk8eBCb2NWqFcaPDF6yWED/nZx+ORKjCQ==
X-Received: by 2002:a4a:d347:0:b0:583:fc94:c3f3 with SMTP id d7-20020a4ad347000000b00583fc94c3f3mr3814583oos.9.1698439069670;
        Fri, 27 Oct 2023 13:37:49 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 123-20020a4a1481000000b00541fbbbcd31sm526356ood.5.2023.10.27.13.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 13:37:48 -0700 (PDT)
Received: (nullmailer pid 3330382 invoked by uid 1000);
	Fri, 27 Oct 2023 20:37:47 -0000
Date: Fri, 27 Oct 2023 15:37:47 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] of: overlay: unittest: overlay_bad_unresolved: Spelling
 s/ok/okay/
Message-ID: <169843906478.3330277.15492157287704350498.robh@kernel.org>
References: <923f4f605b86f23d001c6efc9c2237ab449d447d.1698228277.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <923f4f605b86f23d001c6efc9c2237ab449d447d.1698228277.git.geert+renesas@glider.be>


On Wed, 25 Oct 2023 12:05:21 +0200, Geert Uytterhoeven wrote:
> While "ok" is recognized, the proper status value for an operational
> device is "okay".
> 
> Fixes: eb38b9529aefa344 ("of: overlay: unittest: Add test for unresolved symbol")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/of/unittest-data/overlay_bad_unresolved.dtso | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


