Return-Path: <devicetree+bounces-6571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9987BBD55
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56AB5281CF5
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D8928E3A;
	Fri,  6 Oct 2023 16:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ4edeIy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F8A28E24
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:55:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2F96C433C7;
	Fri,  6 Oct 2023 16:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611344;
	bh=rDfmF7AdipwmWvQbtxanfQLHtkHemqVv1va7cCaAG1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nJ4edeIyoIa8vlx8aetIP5GsI2aOX+yqCPkGTBml4VQYdl+IcbLpEZdswaVpmn9Pk
	 FrJqyLA+f+klcFfGc2Yfbwg6JrO8y/1/L+FVZKJ49fnYIfq4mIPgQldO92DP0FX9wS
	 ZuNwzuTEwjo5mEbyEo8OlOwTxvbtyvOcxHQ+lPf/l26dnLBJbmZ61BpERjHrLdMT1B
	 flbIhqgzH2cPLZfvuoDIhRawh14r4CRSCSmbWMkw6j25dWm6NegIiFBP8XZOT0sGxf
	 qJ4NiX5GtAE1VjFiWcaf27RMEU/nXSQjBkbDp8Bi7K7n7nHwKGVVtysF2LN+2CErzd
	 bXcCiEzSzjiCA==
Received: (nullmailer pid 4065867 invoked by uid 1000);
	Fri, 06 Oct 2023 16:55:41 -0000
Date: Fri, 6 Oct 2023 11:55:41 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, rmfrfs@gmail.com, marex@denx.de, Fabio Estevam <festevam@denx.de>, martink@posteo.de, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH] media: dt-bindings: imx7-csi: Make power-domains not
 required for imx8mq
Message-ID: <169661133841.4065755.10008060737440302024.robh@kernel.org>
References: <20231004201105.2323758-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004201105.2323758-1-festevam@gmail.com>


On Wed, 04 Oct 2023 17:11:05 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On i.MX8MQ the MIPI CSI block does have an associated power-domain, but
> the CSI bridge does not.
> 
> Remove the power-domains requirement from the i.MX8MQ CSI bridge
> to fix the following schema warning:
> 
> imx8mq-librem5-r4.dtb: csi@30a90000: 'power-domains' is a required property
> from schema $id: http://devicetree.org/schemas/media/nxp,imx7-csi.yaml#
> 
> Fixes: de655386845a ("media: dt-bindings: media: imx7-csi: Document i.MX8M power-domains property")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> 
>  Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!


