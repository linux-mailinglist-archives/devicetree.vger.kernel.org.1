Return-Path: <devicetree+bounces-56976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 305ED89B402
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 22:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F1B81F214B8
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 20:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC283D576;
	Sun,  7 Apr 2024 20:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="swrue9iD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBD01E498
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 20:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712521921; cv=none; b=RJU/MhwpBDfMtFgRCfh9o2Md6UlHwWrScOHx1t5mydezXj0UK+V8486cjExUdtkZnlGVgYGh7rOiMs6pu+bURhOblg2UY/bcViD1IkFECCgC3U6lGqMzTc/FyXkiTK0gO1utYMjN+pw8y50Wuiz3anqv9jaeKzVGIvFeYjxeekg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712521921; c=relaxed/simple;
	bh=BuhRDogVus1zI9H0XqB1SzKqz+CmrY8+s3e5ZCTcX1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DhXbhQVhnxT7sttoa68LR9itdJyOPeWip05qzx8UNg7wglijVJo3VrRvgkyTG1V+ELUUo1t8eKOa9x2x0rk+SXwV8hyYAjwA97E9/JrqRtOV/OitUAKTylNxqHi2+HbriSzh/MvFoOoD2mJJArKKsIbmY4pBXSYyqEQdgHjjskg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=swrue9iD; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-516ef30b16eso854657e87.3
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712521917; x=1713126717; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BC/Vp9aTo7ncwzcGpzKoHrU+RFhFC5D/RE+BHxHMCVQ=;
        b=swrue9iDWmOREHB+bMw8mQ/3SElk9YzKXNf3GPTCJ++ZtJKZ36LwIOJHkjLwrkMdYj
         /ii/syRvRKigaGX0obQaB1EVj7DP1zJsMGo27V/XrWgvSTi7b4mDx28Hfa/uQqJYC/G+
         DOO6BBwK5SS4J/wkY/eZnhIzbdoy8KKYmNxFelX55fq51WMBLKPiEpkaONWumSU1K6ix
         FuNGHJDJUlAw4OVs8u0vAepNxJhYasPNQ7JKmr5YUcfnWcfFL2yRi4eYwIfbp4P7OI7C
         XU1HxuqqTmPxvQAFupw9zX/6Lh18EZ59HCZINgZvSvg/darWYjxyAZXN3g4RKzR/1uzE
         Uyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712521917; x=1713126717;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BC/Vp9aTo7ncwzcGpzKoHrU+RFhFC5D/RE+BHxHMCVQ=;
        b=US4uwF3hfUsXG2aKwIxPCeEhMZLkz7qtsLHTWToYmD6eJj9ww2gd3E05c2hLynpZlo
         RjNH1A3qyByjIUKrRpmtl8Rg/22N65K800GNl3Kb7ftv2dLapCc7RX23y0w2OvtC8VsC
         LfKDyBioX7RhI0UQL54eyPsN/Sx1yRtTEGq3CkldOB9cpcaGAup8NI49UpqEZbpyR8fE
         gs0MRe3JGl51a7EEEuZjzAWY346OKufeJF/VbvB4HuvxqnEsyw12bCK6bUqTo6S+weT+
         rYlvvu6ne3WYjDq7CeyK1JI/g5MqAWOwU9i4+hWkWIhZds0SevBTEWCcFYkWl8+00zwt
         5kvw==
X-Forwarded-Encrypted: i=1; AJvYcCWjKqtja//hEqqoCkL23knnj0k/oXC+X5j4rusMpQAuqNWMwAdecgOgULxhpWvhq5wFaYC3nMRXTtXXQwfk1dBKwegUkdrBqrWZGA==
X-Gm-Message-State: AOJu0Yx5kD2Td656CQIFWo9Fjiup5OQQAsgCVoDunp4Tc9KnSxOm0ttm
	TwDsjvR37Q4Xlhr7DNy18KuYBBRQ7vgs1NMkxBK5t6R1DHwuRTDFTaT8Vfpxl9w=
X-Google-Smtp-Source: AGHT+IF4DMVCMB62tkqkfik57o48lX1JfihPhY8NVWkCpw1jpdJU/hGDdnCKUtnIerJssNTIq9AzTA==
X-Received: by 2002:ac2:53bb:0:b0:513:39a0:1fec with SMTP id j27-20020ac253bb000000b0051339a01fecmr3969120lfh.66.1712521916570;
        Sun, 07 Apr 2024 13:31:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzyjmhyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a00e:a300::227])
        by smtp.gmail.com with ESMTPSA id j29-20020ac2551d000000b00513a1fe7767sm919668lfk.209.2024.04.07.13.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 13:31:56 -0700 (PDT)
Date: Sun, 7 Apr 2024 23:31:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexandru Ardelean <alex@shruggie.ro>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, adrien.grassein@gmail.com, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, rfoss@kernel.org, Laurent.pinchart@ideasonboard.com, 
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, stefan.eichenberger@toradex.com, 
	francesco.dolcini@toradex.com, marius.muresan@mxt.ro, irina.muresan@mxt.ro
Subject: Re: [PATCH 2/2] dt-bindings: display: bridge: lt8912b: document
 'lontium, pn-swap' property
Message-ID: <dxm3js6qpcw3n4duid4vmhnkxacmzgq4rnvpbdx62pcn34ybzc@q57pst7lyumf>
References: <20240402105925.905144-1-alex@shruggie.ro>
 <20240402105925.905144-2-alex@shruggie.ro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240402105925.905144-2-alex@shruggie.ro>

On Tue, Apr 02, 2024 at 01:59:25PM +0300, Alexandru Ardelean wrote:
> On some HW designs, it's easier for the layout if the P/N pins are swapped.
> The driver currently has a DT property to do that.
> 
> This change documents the 'lontium,pn-swap' property.
> 
> Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
> ---
>  .../devicetree/bindings/display/bridge/lontium,lt8912b.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> index 2cef252157985..3a804926b288a 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8912b.yaml
> @@ -24,6 +24,12 @@ properties:
>      maxItems: 1
>      description: GPIO connected to active high RESET pin.
>  
> +  lontium,pn-swap:
> +    description: Swap the polarities of the P/N pins in software.
> +      On some HW designs, the layout is simplified if the P/N pins
> +      are inverted.
> +    type: boolean
> +

I'd like to point out the standard `lane-polarities` property defined at
Documentation/devicetree/bindings/media/video-interfaces.yaml. You can
define and use it for the corresponding endpoint in the lt8912b schema.

>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>  
> -- 
> 2.44.0
> 

-- 
With best wishes
Dmitry

