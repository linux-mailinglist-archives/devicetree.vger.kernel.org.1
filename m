Return-Path: <devicetree+bounces-11426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE4A7D5BEC
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2672FB20FE3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15EB23D97C;
	Tue, 24 Oct 2023 19:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33865CBE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:54:42 +0000 (UTC)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A36219F;
	Tue, 24 Oct 2023 12:54:41 -0700 (PDT)
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5849fc56c62so1527424eaf.3;
        Tue, 24 Oct 2023 12:54:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698177281; x=1698782081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4P06uBzRipjLzoJkzz9LoHUG6EOJqfFmfgLk3ncgqU=;
        b=DooPxiaizi7/RpogsBzZEL7ncXKnoLymqyUnfylA8zUPePA5VEo19jiGEds1IFlFVJ
         ZUEP0leFhxviN3gvydJXn5FYSrZgzTjrSo1Sd6F/0ZMAXjb1LPxVkNUlvr2Mg9/sc6a0
         6P5+lRp6Z3jxPTwtWCW3/f6FBh6iy6AAzTrlwkGkZCiqmi4VYLuNbcOGYkAngq3dosRh
         +CcPJASSEaIARC3TD/HCm9bLpMk918gbQFXr9Vv8lkwikKt09dvD3WbZOZ0xKA8yGB5n
         hMtg7Us0L4hJ1G1yniWL2NSU4Gd7KLJFFNoce0+sLAh0s3BUUZyxPbAxXtMP/FtZ6gfX
         ydxg==
X-Gm-Message-State: AOJu0YyW5hN3bi4blBuQboe8nJedR4YBSVbfMM3xRNvoFjKKj+drwaSp
	pLxEKROK5Za8dkjUV4Pkhg==
X-Google-Smtp-Source: AGHT+IGJlL1IDM7XNuSkK/cZeKu2ijhkQt/tcYgIoTGAD6lhjIkGNrjtnZ7Di/EIt0MnbI4/V2YbFA==
X-Received: by 2002:a05:6870:9728:b0:1e9:e02e:f4c8 with SMTP id n40-20020a056870972800b001e9e02ef4c8mr16749561oaq.54.1698177280866;
        Tue, 24 Oct 2023 12:54:40 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i1-20020a056870344100b001ea7e2adbc2sm2298295oah.1.2023.10.24.12.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 12:54:40 -0700 (PDT)
Received: (nullmailer pid 458983 invoked by uid 1000);
	Tue, 24 Oct 2023 19:54:39 -0000
Date: Tue, 24 Oct 2023 14:54:39 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor@kernel.org>
Cc: Nik Bune <n2h9z4@gmail.com>, wim@linux-watchdog.org, linux@roeck-us.net, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, skhan@linuxfoundation.org, t-kristo@ti.com, linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Message-ID: <20231024195439.GA455431-robh@kernel.org>
References: <20231021171323.113208-1-n2h9z4@gmail.com>
 <20231023-sanitizer-blank-44916ffa043b@spud>
 <229b7c61-f1fb-4a38-9479-d65349c72956@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <229b7c61-f1fb-4a38-9479-d65349c72956@linaro.org>

On Mon, Oct 23, 2023 at 07:12:16PM +0200, Krzysztof Kozlowski wrote:
> On 23/10/2023 19:02, Conor Dooley wrote:
> > I'd swear I replied here already, but I checked on lore and saw
> > nothing...
> 
> You're almost right:
> https://lore.kernel.org/all/20231022120328.137788-1-n2h9z4@gmail.com/
> Different binding, but same things to fix. :)

Welcome to the blur of DT maintainership. :)

Rob

