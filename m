Return-Path: <devicetree+bounces-11874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E415E7D6E5E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:05:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F8391C20D25
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64A7828E04;
	Wed, 25 Oct 2023 14:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A69286AA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:05:26 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1562195;
	Wed, 25 Oct 2023 07:05:22 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6ce2ea3a944so3785319a34.1;
        Wed, 25 Oct 2023 07:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698242722; x=1698847522;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2t9oxYN3rsKk69GT+sMAlcc8j8BCgsk4o9AAcXE61O8=;
        b=pPG0cf1V7Pbtb4vNpqVyWshn4xmIQe8cc9KTUeOQhAWr06HHTaS6E70KZbwQG3aFKq
         nTdGXuNx1kEBpW/ZKavrsxsWgbwxrldYzebv7reulMPznyXTwLcPbchGmU7pAK6nDts2
         roLmfaBkEsve5ArrMAW6zIAkj00K/gX6gOHYDV9zxWM+C91+2IQFAoAUJBgNXLfIhMRZ
         69Nuo2r6uId47P/VIFvSI98zhqIdRN8GQgM7patMkC9NqmO9Mx6OZMQX9wB/lnIe4Ihv
         WenShQkCZWxsxfP3iucKym+7K4zvkKdcr1yzsC4XQmrtP3mD834nDwtY/shrgN7javcM
         RK8Q==
X-Gm-Message-State: AOJu0YzcOrbKkMj+jy7oqoZPaarH0t1fZo5zAADFigN2/PiyYzxUP0mI
	Eu9XfJwip/I32+e6y3kOR9desP8Cew==
X-Google-Smtp-Source: AGHT+IHZwbA7/T2Cie9xzSfVJjTlYJrns7ET5Ntkdpdj0CP3GCyvFAiFVZ/zk9i/aLQ4mMVrs1++Eg==
X-Received: by 2002:a05:6830:11:b0:6c4:897a:31c4 with SMTP id c17-20020a056830001100b006c4897a31c4mr15222170otp.29.1698242721907;
        Wed, 25 Oct 2023 07:05:21 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y22-20020a4ade16000000b0057b38a94f38sm2366961oot.12.2023.10.25.07.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:05:21 -0700 (PDT)
Received: (nullmailer pid 4149460 invoked by uid 1000);
	Wed, 25 Oct 2023 14:05:20 -0000
Date: Wed, 25 Oct 2023 09:05:20 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 6.7 fix 1/2] dt-bindings: nvmem: SID: allow NVMEM cells
 based on old syntax
Message-ID: <20231025140520.GA4143384-robh@kernel.org>
References: <20231024171253.19976-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231024171253.19976-1-zajec5@gmail.com>

On Tue, Oct 24, 2023 at 07:12:52PM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This binding supported NVMEM cells as subnodes and that syntax is used
> by few in-kenel DTS files. Modify binding to allow it.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Fixes: c5330723d5a0 ("dt-bindings: nvmem: move deprecated cells binding to its own file")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> This fixes issue introduced by v6.7 queued char-misc commit:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?h=char-misc-next&id=c5330723d5a0c77299a38a46e5611a584e887b87
> ---
>  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml       | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Rob Herring <robh@kernel.org>


