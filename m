Return-Path: <devicetree+bounces-16943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C11587F0755
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 17:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84235B208CB
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D0713FFF;
	Sun, 19 Nov 2023 16:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27100115;
	Sun, 19 Nov 2023 08:10:50 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ce2ea3a944so2393844a34.1;
        Sun, 19 Nov 2023 08:10:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700410249; x=1701015049;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMPok4D9/QSUfFfjq6BiCPnsEb+f1dMGbNfAYEACL7I=;
        b=etXaWBEpGONNYt9viNh5nXE1t8rHKNGio5LCJ61asYB/NoljpiD7Ztc7kznKFG7TCm
         fxmKO3xv6gp4gUlNN0yDFrjYb0Xhx3e66wVgbJgTbFqT5W9Jf7Bk0lfjll0gxDvS1pc8
         Tzkv1JSrf4xZfI8Amc1/femSqC1vqUzaGXm6JQnjsKBKSWpT8+SpEoHCJdL4XI2jBgB9
         YJ+WnYO5+eLkLnP5C3tTIIv0+N+sjJOaoeMVy5fNdO+Oyky/d30nELShPEFVVznkYrYi
         3vbCJQdQhcpnS91Lms2Ivaubvm1BzFE08sE/+H+hpJk6d5FTK07pmcroBaJbmtBonY9h
         X/1g==
X-Gm-Message-State: AOJu0Yw7FeazQwWWYZrwUxfqh8z1b58DedWosZ86eoHtViIo4LyGgTXn
	zSdkeQcEKNoqjADY4Cgqv1dmgBFWQQ==
X-Google-Smtp-Source: AGHT+IEOThGIDSgSK9nz9zWYj/SN2RcrArceBS6o4Op4+EPrEkWYEhzzxGaP4hWr2ugRIjkhlgg6lQ==
X-Received: by 2002:a05:6830:1659:b0:6bb:1c30:6f3c with SMTP id h25-20020a056830165900b006bb1c306f3cmr5763754otr.0.1700410249458;
        Sun, 19 Nov 2023 08:10:49 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id d9-20020a9d5e09000000b006ce29a19dcesm909733oti.26.2023.11.19.08.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:10:48 -0800 (PST)
Received: (nullmailer pid 274769 invoked by uid 1000);
	Sun, 19 Nov 2023 16:10:45 -0000
Date: Sun, 19 Nov 2023 10:10:45 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH] of: fix recursion typo in kernel doc
Message-ID: <170041022905.274386.8341020207978607741.robh@kernel.org>
References: <20231117171628.20139-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117171628.20139-1-johan+linaro@kernel.org>


On Fri, 17 Nov 2023 18:16:28 +0100, Johan Hovold wrote:
> Fix a typo in the kernel doc for the of_platform_depopulate() functions,
> which remove children "recursively".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/of/platform.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!


