Return-Path: <devicetree+bounces-6575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEF17BBD6F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 19:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7F78281E58
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C71B2AB3C;
	Fri,  6 Oct 2023 17:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVazLVcY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED29EBE4F
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 17:02:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAF00C433C9;
	Fri,  6 Oct 2023 17:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611774;
	bh=gqKCiivSvc4M2FUEN1bwdMxW4QNOPB1TkbkNtl4IfQI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OVazLVcYM1y2XPTQ6AXvfcD5x7FIhrGufpgZ9FD8s+i6qul3WSMl+PCa2WCfiIK+u
	 kKSKo5kkMyGGgjNB37i9s2yuAAHknC7x6mz99qeCP2eGCp9tnZyGzM4PQ1SgAMB9g2
	 Ajxxf5Lxhk3pum4aqYW1MM8cDK0QZ/S/hllSp/C+QBwN8KEH8c8rdUL6MLGMvX65KG
	 3aZOJoLhBTBmhQARUWPXrg8AuMLDf2jdjpAoEXDcEx1QM0TSO9MZjvGkEAEZxP2AxK
	 b2211JvUQuUCeQOrSOcn61IubFwatuRcdn6lI35fp2EZs9gp/grHmeUA0mTwIVM44p
	 ag42coMNSsq4Q==
Received: (nullmailer pid 4076734 invoked by uid 1000);
	Fri, 06 Oct 2023 17:02:51 -0000
Date: Fri, 6 Oct 2023 12:02:51 -0500
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Daniel Golle <daniel@makrotopia.org>, Luka Perkov <luka.perkov@sartura.hr>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Randy Dunlap <rdunlap@infradead.org>, Chen-Yu Tsai <wenst@chromium.org>, Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>, Robert Marko <robert.marko@sartura.hr>
Subject: Re: [PATCH v12 1/7] of: device: Export of_device_make_bus_id()
Message-ID: <169661177118.4076678.10919719119108663799.robh@kernel.org>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-2-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005155907.2701706-2-miquel.raynal@bootlin.com>


On Thu, 05 Oct 2023 17:59:01 +0200, Miquel Raynal wrote:
> This helper is really handy to create unique device names based on their
> device tree path, we may need it outside of the OF core (in the NVMEM
> subsystem) so let's export it. As this helper has nothing patform
> specific, let's move it to of/device.c instead of of/platform.c so we
> can add its prototype to of_device.h.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/of/device.c       | 41 +++++++++++++++++++++++++++++++++++++++
>  drivers/of/platform.c     | 40 --------------------------------------
>  include/linux/of_device.h |  6 ++++++
>  3 files changed, 47 insertions(+), 40 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


