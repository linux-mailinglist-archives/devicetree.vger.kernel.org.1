Return-Path: <devicetree+bounces-1490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7247A6A44
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A3D91C20AFE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04E3F3715C;
	Tue, 19 Sep 2023 17:54:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80EE347B9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:54:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C420C433C7;
	Tue, 19 Sep 2023 17:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695146054;
	bh=9j+MQu7yid7iXBftD8f2XaH5sE5Latn/WTBSpDhIFDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ph9SvXFbZBXBsdwSdHDX8OKb06CSFhSriqFi33HOvAY3kNKO8SVJd+7m8u9PieMrt
	 7QQDDdusvHS8i/VKrtoahBveJYp2/TGq1pSEqLG/iitWhvLWOj9OysCUJofY22ozOD
	 3zX9givPK0fywSkPXMTgP7tIQ5BQnl3Lf0tu3OvlxwFQyL5OGQXWahYewbMghI7+96
	 ydyHnTYcN2KuVvHlNgHGsdOZ99O/CtUqqJ1+zCaCKLuX1o0aX2ek0MPQa3PUYHPYne
	 F4jm7cKi0EReMyk27dDBOdG5XdsoHM7uBnODRkIfGv+TEDJcYQsBIKfeRIbesmQYUI
	 XzC7y4zl6Yp7g==
Received: (nullmailer pid 4151281 invoked by uid 1000);
	Tue, 19 Sep 2023 17:54:12 -0000
Date: Tue, 19 Sep 2023 12:54:12 -0500
From: Rob Herring <robh@kernel.org>
To: Alicja Michalska <alka@sakamoto.pl>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch
Subject: Re: [PATCH] dt-bindings: display: anx7814: Add definition for anx7816
Message-ID: <20230919175412.GA4080978-robh@kernel.org>
References: <ZQjFabKW7QvrvsnG@tora>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZQjFabKW7QvrvsnG@tora>

On Mon, Sep 18, 2023 at 11:49:44PM +0200, Alicja Michalska wrote:
> As requested by Robert Foss <rfoss@kernel.org>, this patch adds
> definition for anx7816. It supplements the patch submitted to dri-devel.

Please apply with the driver change.

> 
> Signed-off-by: Alicja Michalska <ahplka19@gmail.com>
> ---
>  .../devicetree/bindings/display/bridge/analogix,anx7814.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
> index 4a5e5d9d6f90..4509c496731b 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
> @@ -17,6 +17,7 @@ properties:
>        - analogix,anx7808
>        - analogix,anx7812
>        - analogix,anx7814
> +      - analogix,anx7816
>        - analogix,anx7818
>  
>    reg:
> -- 
> 2.41.0
> 

