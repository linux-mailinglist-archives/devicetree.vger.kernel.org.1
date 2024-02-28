Return-Path: <devicetree+bounces-46743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 932EE86AB90
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 10:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4ED21C26DE6
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7363612E;
	Wed, 28 Feb 2024 09:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaEJH3sx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373853612C;
	Wed, 28 Feb 2024 09:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709113548; cv=none; b=JNftBn9dH3rjG+gM/DazMSYxe6M1NOgUP4gJYmbcObHCUgm8Zdt+JFK8dXY9s7wwqwDeNiJyv8aPXkFkPDyxCoGMZgCRC8nYvsHCOaguwSWAvHRzsUn4a66udHwXU0YVk5SCj6SQRXLcU0FdmGs3KFIQzB0WUNda4M3jiuDZ3wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709113548; c=relaxed/simple;
	bh=tlVR3CGXQWiW2qfri2EEIQtPli1xnIxp+HylcOvgRZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IQ9/yiWBrZrd/jaWIpL9pMuPe4pmN6T7Ql4EQ6XpsLrHnaKOnl3O8OkJIOo+I4brg6ch8d4f+iEHXpfqbxV1kDUk9y0Q6d+6T5M2CfWc8EMDtMWDIat1Uutr505L+DGjc5Q5a+X5Hp8PYhwZM9Ti/iWv1WDg/KF8IxfSMjpOnlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaEJH3sx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42E7EC433F1;
	Wed, 28 Feb 2024 09:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709113547;
	bh=tlVR3CGXQWiW2qfri2EEIQtPli1xnIxp+HylcOvgRZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iaEJH3sxpjx2ASMgkoDsO3LGz2wJ5xU5+L1SLji3aBp5FxifGg/2HW4cxOYQ5PjG3
	 fovT0/O0SvCinsZ/AnyFxFWLKUSGoDbkNHqSxDUg8EnhwmdOivgFCLjdxx2FgeWIL3
	 BBwtsztcL3/OlQGdTijDcGhNrnq2qEQsPRWuD9Yww45GMUe/ZfLrm58nZw9F9w2uAr
	 MThXcge7cHGKSk2WnbrGpsk/Gt6MRhkAczesdCGnBI4Yo8sm8hCnfMTHZN4eYfKLs2
	 GCasTuEtAP+ZvPbr+hI/1th+2NOz1P3WgGLMovWOSljGysnF/yuIVpTRZ3bCBCQacG
	 EKLPszCUVawKw==
Date: Wed, 28 Feb 2024 09:45:41 +0000
From: Simon Horman <horms@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>
Cc: netdev@vger.kernel.org, florian.fainelli@broadcom.com,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	opendmb@gmail.com, bcm-kernel-feedback-list@broadcom.com,
	andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
	rafal@milecki.pl, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v2 5/6] net: bcmasp: Keep buffers through power
 management
Message-ID: <20240228094541.GA292522@kernel.org>
References: <20240227185454.2767610-1-justin.chen@broadcom.com>
 <20240227185454.2767610-6-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240227185454.2767610-6-justin.chen@broadcom.com>

On Tue, Feb 27, 2024 at 10:54:53AM -0800, Justin Chen wrote:
> There is no advantage of freeing and re-allocating buffers through
> suspend and resume. This waste cycles and makes suspend/resume time
> longer. We also open ourselves to failed allocations in systems with
> heavy memory fragmentation.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>

...

> @@ -1118,6 +1083,10 @@ static int bcmasp_open(struct net_device *dev)
>  
>  	netif_dbg(intf, ifup, dev, "bcmasp open\n");
>  
> +	ret = bcmasp_alloc_buffers(intf);
> +	if (ret)
> +		return ret;
> +

Hi Justin,

Do the resources allocated by bcmasp_alloc_buffers() need
to be released if an error occurs in bcmasp_open() below this line?

>  	ret = clk_prepare_enable(intf->parent->clk);
>  	if (ret)
>  		return ret;
> -- 
> 2.34.1
> 



