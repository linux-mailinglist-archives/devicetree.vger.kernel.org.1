Return-Path: <devicetree+bounces-22890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 728ED809220
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED931B20B3C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 20:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E115025A;
	Thu,  7 Dec 2023 20:16:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C38711713;
	Thu,  7 Dec 2023 12:16:08 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3b8952b8066so1156963b6e.1;
        Thu, 07 Dec 2023 12:16:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701980168; x=1702584968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bk4U8w544A5cs9ptpOKuXEkNLJWX9biIDjwL9bsBG8k=;
        b=SlxGMEYqpUWBWj43IUg5h/tbdph6oL+8ovY3GeLgAFwrHLczFaiweeH6QN7JPwXhwb
         giXsJgLfXaFwysdwXKIDkubCzlEVNHi64bOq4hAAVQhgGUdkNLbkUQj1oFvn1L5Bqvxe
         lOpklJbsJvYTeBNq8AtwbOrZwHAb1OBFCp11VPmnEKhBKQS3RVOzAXx2/eeQ/acAqIJW
         zrpaIJk9Q3Px8I98QHg437y5IVXHtvHR3f2nm05Y75RYpCknXDNqop33v+L3AfWVb/HQ
         80hNJ4GuNQNoboN/UzkKu+m8k8SYtUcuD10e6YzcW4xfEyibK0ZZGwUaLGEVMk/BPD+Q
         Trpw==
X-Gm-Message-State: AOJu0YzYSm5hnoLLZmKTlEqxgRoBEJNrL/gwIvknCbp4ViGLSfMESHdn
	87/IKO6MHZzeoC4cqLKQbw==
X-Google-Smtp-Source: AGHT+IHHknHFsQe5zButja2bS0xh3H3H8KOzYKZLuMDkpBYA6fZz2jfZcEfUts5Z0OMZElHi1A2dBQ==
X-Received: by 2002:a05:6808:1391:b0:3af:63ac:2f96 with SMTP id c17-20020a056808139100b003af63ac2f96mr1625806oiw.6.1701980168014;
        Thu, 07 Dec 2023 12:16:08 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y16-20020a056808061000b003ae11a7ab80sm76101oih.47.2023.12.07.12.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 12:16:07 -0800 (PST)
Received: (nullmailer pid 3351122 invoked by uid 1000);
	Thu, 07 Dec 2023 20:16:06 -0000
Date: Thu, 7 Dec 2023 14:16:06 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, Michael Ellerman <mpe@ellerman.id.au>, Frank Rowand <frowand.list@gmail.com>, Nicholas Piggin <npiggin@gmail.com>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1 1/4] of: Add of_machine_compatible_match()
Message-ID: <170198016525.3351044.1591427782941011681.robh@kernel.org>
References: <e6cf01d41502b15e688b6f5aa5c3b68c62b8ac64.1701878821.git.christophe.leroy@csgroup.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6cf01d41502b15e688b6f5aa5c3b68c62b8ac64.1701878821.git.christophe.leroy@csgroup.eu>


On Wed, 06 Dec 2023 17:13:32 +0100, Christophe Leroy wrote:
> From: Michael Ellerman <mpe@ellerman.id.au>
> 
> We have of_machine_is_compatible() to check if a machine is compatible
> with a single compatible string. However some code is able to support
> multiple compatible boards, and so wants to check for one of many
> compatible strings.
> 
> So add of_machine_compatible_match() which takes a NULL terminated
> array of compatible strings to check against the root node's
> compatible property.
> 
> Compared to an open coded match this is slightly more self
> documenting, and also avoids the caller needing to juggle the root
> node either directly or via of_find_node_by_path().
> 
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  drivers/of/base.c  | 21 +++++++++++++++++++++
>  include/linux/of.h |  6 ++++++
>  2 files changed, 27 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


