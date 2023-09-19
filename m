Return-Path: <devicetree+bounces-1491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 748527A6A45
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 19:54:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 584B61C20A72
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 17:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7A6347C8;
	Tue, 19 Sep 2023 17:54:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F380347B9
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:54:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15678C433C8;
	Tue, 19 Sep 2023 17:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695146061;
	bh=m4QJ0BEqXBcCMqumpvL8l5Izb8BPtm/4/9KcdbA0EfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NhnGC71YjdIe4G8IbxqHxJeePYOZdypo3Am3KAlW5f6VlznflAFwn+aIOI6GpVcj0
	 UYO1g9QS6JB61M63XrK2+1oVkcaFKufHjUmmXWLV5RqCWF9Blboc9GhLTLOlKggPdf
	 SDepgoTGbDmFeSLwgQDZZvDGClX4QY/fzgvTmxLMgukQhT6JN5GeZG0ys0ovRxxdc4
	 WAidbUjXW8jADcyYNa7FfwniAoDz/Ih5DVo70WRONOQn9EqZOStKpKh047vbGoyRaC
	 qvoMCirg0PYAjpWQLvKuOgD8ifj7XBKz8h1Nk1ZSjFkuWXJ19yPjPad6ejy28im/Nk
	 LlaFfT4j7P8aQ==
Received: (nullmailer pid 4151433 invoked by uid 1000);
	Tue, 19 Sep 2023 17:54:19 -0000
Date: Tue, 19 Sep 2023 12:54:19 -0500
From: Rob Herring <robh@kernel.org>
To: Alicja Michalska <alka@sakamoto.pl>
Cc: jonas@kwiboo.se, dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch, neil.armstrong@linaro.org, devicetree@vger.kernel.org, andrzej.hajda@intel.com, airlied@gmail.com, jernej.skrabec@gmail.com
Subject: Re: [PATCH] dt-bindings: display: anx7814: Add definition for anx7816
Message-ID: <169514605849.4151400.3982298179222197691.robh@kernel.org>
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


On Mon, 18 Sep 2023 23:49:44 +0200, Alicja Michalska wrote:
> As requested by Robert Foss <rfoss@kernel.org>, this patch adds
> definition for anx7816. It supplements the patch submitted to dri-devel.
> 
> Signed-off-by: Alicja Michalska <ahplka19@gmail.com>
> ---
>  .../devicetree/bindings/display/bridge/analogix,anx7814.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


