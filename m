Return-Path: <devicetree+bounces-23268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAA880A984
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEFBF1C20A64
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304AA1A73B;
	Fri,  8 Dec 2023 16:44:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6FE10C0;
	Fri,  8 Dec 2023 08:44:44 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6d9e179b217so1048021a34.0;
        Fri, 08 Dec 2023 08:44:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702053884; x=1702658684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQNz+xvqRdVvhqlnaesIupD2ZldVHm05D8bBXCEt6fE=;
        b=bnEUnLu9z/HvvSg9LYf76G0Opbg12q4r8gQBAzhEPpmFod4HOLl1pbFuUT6EqwtEu6
         kXAo9HJBWVfMuv6YHqtGLx7WCpzORdrsxNXtMA2HW9W2F9zdD2c0iCNgVxeht+5+4uw/
         re77XRv8pHt4aJzlyd+GTqJEPOb0gT/lLuN3R2NqNGhQUSrArKzCsnqXSdC63wZ/kGze
         G72jOieR7ZPzqBp3krrf8KObf2J83eRuaSP9W2Nbcj04QY8Xif0HXX+oDShF3W5FIP7g
         fCKDvTInIF42CvihB3RxuBgwyCoUt3+MpmtU1a2JnoT47KhSFmtXAbsmRysj6Pjugqdp
         OUcg==
X-Gm-Message-State: AOJu0Yy75NfjRN7KbgOOB7iHfxdIlq882h4LDizJrYOk5PBE77vnLz5p
	brmfkMBkORWqTdyzfcLwuVg1+NJNiQ==
X-Google-Smtp-Source: AGHT+IEElGzMDgsf5XKgsEJBooUGCELsszhJ/I7kKbKCN+yZO/mIQ5M8oB94icul6SeFg7QJKz8wzw==
X-Received: by 2002:a9d:6a4a:0:b0:6d9:a5ef:a2c7 with SMTP id h10-20020a9d6a4a000000b006d9a5efa2c7mr372426otn.9.1702053883797;
        Fri, 08 Dec 2023 08:44:43 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w26-20020a056830061a00b006ce28044207sm349258oti.58.2023.12.08.08.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 08:44:43 -0800 (PST)
Received: (nullmailer pid 1748007 invoked by uid 1000);
	Fri, 08 Dec 2023 16:44:41 -0000
Date: Fri, 8 Dec 2023 10:44:41 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, tzimmermann@suse.de, conor+dt@kernel.org, airlied@gmail.com, hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: drm: rockchip: convert
 inno_hdmi-rockchip.txt to yaml
Message-ID: <170205385847.1747356.13765108616438619401.robh@kernel.org>
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>


On Mon, 04 Dec 2023 18:39:03 +0100, Johan Jonker wrote:
> Convert inno_hdmi-rockchip.txt to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Note for rob+dt:
>   Used enum to "soon" be able to add "rockchip,rk3128-inno-hdmi"
> 
> Changed V1:
>   Rename file to more common layout
>   Add/fix hdmi_out port example
> ---
>  .../display/rockchip/inno_hdmi-rockchip.txt   |  49 ---------
>  .../display/rockchip/rockchip,inno-hdmi.yaml  | 103 ++++++++++++++++++
>  2 files changed, 103 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
> 

Applied, thanks!


