Return-Path: <devicetree+bounces-10668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EBA7D26BD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88781B20CAD
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 22:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8AA1850;
	Sun, 22 Oct 2023 22:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656CC10F3
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 22:36:37 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDDEFB;
	Sun, 22 Oct 2023 15:36:35 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b2f28caab9so1847762b6e.1;
        Sun, 22 Oct 2023 15:36:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698014195; x=1698618995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUG0zzvE3BdCHGMLnrO+X8u9xWDPrHAeIu9Zvpq4LWU=;
        b=PFdA106reqtfHaL6ja6psNFN3SL58dv4uGVZ+/A+ZqIHnwqIf6StwRurFG5xYUM48H
         bg8T6M7jliHqHHfFCg3ZN2+0LCcRdMAn1+Fqu8IUfXpVsh8qllzixanQekJTKU7QZ7Qr
         sDVGDTHHtnzXvAqzNv+tjeTyactzakFY5uEr8zAIFFNIsfJsfx73i4KilqPND7zH1HGA
         dTiOYGHhl41S3jf//7lELB2q/egp5bvbKYZezAeRZFZmUDTPYhE5JXu9NjT3v4urbSbv
         X/qVdIa1Pms7KQwPW38ABQ6BbGFaYfY8O9uf4D8wR+toRtVRJZA+JYcZFbSMFJxMBX8x
         eKCg==
X-Gm-Message-State: AOJu0YxF0ubWM8Afb/2Hwbt9QALLwLTPXA/y066IA9mPe1F/Z8SPzrPr
	f23gpKGmSm7Dugbgb4m9oCUwUaZkCQ==
X-Google-Smtp-Source: AGHT+IFY+qiVBiPRn9j2kB2XYAMPb0uPYWpULgYWZKqMS2K/szkPxcRRBvszYhPq2IQyYpfU7VVxHA==
X-Received: by 2002:a54:4113:0:b0:3ab:8431:8037 with SMTP id l19-20020a544113000000b003ab84318037mr8967886oic.32.1698014194757;
        Sun, 22 Oct 2023 15:36:34 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c1:8e5d:a109:ceb8:bec4:d970])
        by smtp.gmail.com with ESMTPSA id e15-20020a056808148f00b003ae36d664a9sm1231552oiw.39.2023.10.22.15.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 15:36:34 -0700 (PDT)
Received: (nullmailer pid 751471 invoked by uid 1000);
	Sun, 22 Oct 2023 22:36:32 -0000
Date: Sun, 22 Oct 2023 17:36:32 -0500
From: Rob Herring <robh@kernel.org>
To: David Wronek <davidwronek@gmail.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Joe Mason <buddyjojo06@outlook.com>
Subject: Re: [PATCH] dt-bindings: arm: cpus: Add Qualcomm Kryo 465
Message-ID: <169801418656.751336.13787960008617871479.robh@kernel.org>
References: <20231021071619.187374-1-davidwronek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231021071619.187374-1-davidwronek@gmail.com>


On Sat, 21 Oct 2023 09:16:19 +0200, David Wronek wrote:
> Add a compatible for the Qualcomm Kryo 465 found in SM7125.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


