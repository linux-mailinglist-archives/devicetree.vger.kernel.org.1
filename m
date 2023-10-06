Return-Path: <devicetree+bounces-6560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E30E7BBCBD
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E9321C209EF
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E006A1A70A;
	Fri,  6 Oct 2023 16:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXJCdlAl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BC828E13
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:32:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 753EFC433CA;
	Fri,  6 Oct 2023 16:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696609947;
	bh=NDEwZEYLQ59+Tkgi6iv1hJHJNcEJX3Z7ZfJpnF3P5zc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UXJCdlAlBzbyfAkmXfhJXArXmwSjjV6y66rUWUvfTlkM1BkC8gam/0gKJ42kcCVHk
	 HdKJftOxttOBweofKlbzZUg1WW6TF2tgLJbog5q7lFNZ1AMD7qJaEHfIDCfDvZgj8V
	 Jt28nW3v/yBXM38cwYOv3pcCTC9noG9fbVI95nWtr/c8uahO2Ks/5OYgoYDHKrl1ZJ
	 OAE0TVYXXPW5aYVaZjPanH/24oyYA24YPZUcXsIdhNzoDW6ilXskkwuXtLWCN9MckD
	 8EGDK9A1TtIIqi3mljdXgIPjVMiuuY0OG/0UwZqg5neIkZXPUvy/o/2xs8g/+4nDXr
	 0bv32emaRSBWQ==
Received: (nullmailer pid 4040234 invoked by uid 1000);
	Fri, 06 Oct 2023 16:32:24 -0000
Date: Fri, 6 Oct 2023 11:32:24 -0500
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Paul Burton <paulburton@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mips@vger.kernel.org, =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>
Subject: Re: [PATCH 04/11] dt-bindings: Add vendor prefix for Mobileye Vision
 Technologies Ltd.
Message-ID: <169660994413.4040194.1023410875399068071.robh@kernel.org>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-5-gregory.clement@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004161038.2818327-5-gregory.clement@bootlin.com>


On Wed, 04 Oct 2023 18:10:31 +0200, Gregory CLEMENT wrote:
> Mobileye Vision Technologies Ltd. is a company developing autonomous
> driving technologies and advanced driver-assistance systems (ADAS)
> including cameras, computer chips and software.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


