Return-Path: <devicetree+bounces-98524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 439AE9666B8
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 18:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1ECD1F21FAD
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 16:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4AD1B8EBA;
	Fri, 30 Aug 2024 16:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzuhB4ha"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DFB136353;
	Fri, 30 Aug 2024 16:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725034712; cv=none; b=gJAhtJyMGk6WrqHxvH068Gx7awxX32C2XbFirTSNEAcrmSnEceuZJSc3pNw5sPNecwS7tOxyCYgN8nA8fj5r0gSoaNrLpt1iKTvHvP3jXdIFC3MH52oTYfqp34wEb88yWggQEdQgYNe2sIfZxpyQ5cwoGvZk9YCPPNZkNxhZK4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725034712; c=relaxed/simple;
	bh=iNGug4NunTAgDNiIXYrakWKF5d7OBXMss1pHkGUcJjk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPh0xbM+Ss2lsxOT02OoxzPvkLKLLrGmm2ronRVCqrlD583rQhuTxPmtwNWNwlFU4NuTaatyw4tz1zjD30zpn9owByX+ixzDqMOWc/7bqL42AdHZ3NKiBpvUz/U2Jq9prAGnYRXt09fmaKMvsd4IdDpblKq6wyWLxPSNqaGAelk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzuhB4ha; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A77A5C4CEC2;
	Fri, 30 Aug 2024 16:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725034709;
	bh=iNGug4NunTAgDNiIXYrakWKF5d7OBXMss1pHkGUcJjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qzuhB4haGJtd3yj5IWwixDsgSePVXuTRKxsCQn+xs9kGKLLlaKqdQMdz9gD6QsbNS
	 iFUrUY47Etz04MH7Ov0OuDnjVMNX26lDHQjDyUxhVL6ZWSs44Fuwdazv3a/Eo73DRy
	 Y3BITBSBvJrl2SKDIEFvO5Iv8ar1MBqxruieaQgdGXzBWf0aHW1381QKn2UqABHQRB
	 dzpjY1bi3Ert8RFmR/1O1pUy20MV/7AtkMdAYOilq+P+ezAkWrj4Zz5yqvjUQVRfOq
	 YNs+t2gcRkSEwH42Ai+HMDKTraiUb1IcNlkJK4lIShY68mOC9rBIQhunSxASZzwEn+
	 lMqYuiTmCCu2Q==
Date: Fri, 30 Aug 2024 11:18:27 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, linux-input@vger.kernel.org,
	dmitry.torokhov@gmail.com, Fabio Estevam <festevam@denx.de>,
	devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: Use generic
 node name
Message-ID: <172503468576.270982.2547379095122324893.robh@kernel.org>
References: <20240829134428.3347075-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829134428.3347075-1-festevam@gmail.com>


On Thu, 29 Aug 2024 10:44:28 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Node names should be generic.
> 
> Improve the binding example by using 'touchscreen' as the node name.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/input/touchscreen/edt-ft5x06.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Could be squashed with the others...

Acked-by: Rob Herring (Arm) <robh@kernel.org>


