Return-Path: <devicetree+bounces-197390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F412B08FCC
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 16:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5036456114F
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09EE92F7D10;
	Thu, 17 Jul 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZdRsHXdn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A312ED16D
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 14:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752763728; cv=none; b=GiIdMOcgyn44u+aJClo/gRxXIY6tnps8AC8X6+lFlMAbGMvaJgz2M3AlcZ3QctHUTUTuHCZSsFFnRDjN2Fbox6xb1aN4Zo5qK6dAJ6ac4wZzV0zvy7N8D43Y+6tX9GO12G4GFGQORxRRoBanq5RTsi9jvpx4J4fpQiUplwAGmmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752763728; c=relaxed/simple;
	bh=ldkUDsWevUUrBgtiC0hxtuONfzCw4mF+Y3RShzs3xlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fM1mx9oBhS5iRTizNHgUMPTlTyfe88W1cagZdq2nnFv5WO5gcKuxqmdpa6dSDg+q4gdPkJ7q4tJr2JmqOCA4lKLRTWZ7QX+Y0m/yFRV1vmO+gRp3GFcEJ1saYg4LvCfbuumJuYeJqO0kwFvZMbgFPn5BR6yptT71nW0MjUQuals=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZdRsHXdn; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-b3be5c0eb99so842943a12.1
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 07:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752763727; x=1753368527; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AJ7IJB52s/jxggmQRLZiB7BTzZN6vUYP9vPaGdcZBU4=;
        b=ZdRsHXdnpC/N7S4TKrVMl239qD0Eqe184eATML5npWxTW9YUaL67gxdQFzV61/AKzZ
         40wIDMADfD+BUFEA2TKuo0UpaEYEPjGOBRm6HR7kCCtH0XVa8VaC77vFJu70VkUEsSZ6
         eFee2mEpoKXcxGOsrtBbg2pGu9b/uPjkoNv9zhH8oeyn3Gzge+mSC0d6Q5pEeALZTKgh
         ORkaZi+XE7rHtVbNaBq33bt8k/bEJa3Ek86+r+Xt9cWbUZm7VvZC6eTiDJIdEP2iLfk9
         GNjaVo5aTpR4B7nlod8+HsY0AOe8OLmPz2IHuksHk/R1CBE+pk4Y+lIf1pbc+H/jIOrD
         BE+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752763727; x=1753368527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJ7IJB52s/jxggmQRLZiB7BTzZN6vUYP9vPaGdcZBU4=;
        b=osVq6Z1bJlgU1I1AO3ENLHebyOvKRFCog2pKLV7RMDM7+gsruMVCsV0bIJkfVk07pZ
         ib+k59FhdeRMsfzR4f+2oNX8/aF80LYOS7IIgicHKcAFF1sIpXzClPkWeqmYqx0dWLSr
         QAZhqUxp5TfNDj6uAbs+jhe+OWt8/nqxQoi5dFP/ttlpaIVzEcgJLh52KVjQTPEId8DF
         BvdwbcVniXaS3mfgHDsUpbkcfDslfjZJ1fl5r9u2F7a7E2LAUyH61LB72p/6To2cK8jj
         kwJOInw2GGRFbqhleFoWhKYNKAzcmYf0uMYY0I+7LO6RUdhOPPzGJ6uKFQ9aUu6Wd9FX
         We+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWtmJQRAtG1SXO3vgZj1ch/J4aZ1HAgYx3h3tj5TRHCgRJyiJnN+o+lnb8Yfg1iO80amZqRcQ3+kTPK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1v9TKTGdNA757CgYPJvv8WA0GJY+nkmltQxlL+FSdTJx9peek
	aZxmtin8hmaGNj1AuJZkc7D5zrDr8kpjxpetQ5gDlEmzXD9qq/LxugJCOWHHukbHFlo=
X-Gm-Gg: ASbGnctZsMlqbWq6mq5tNFaQH/XtDRiV0+X2WuW7yTcP2Pp1BQH4Qk9fnjXw/aOBPRQ
	d6S/lEXVZCy68fJYTB/uND1jVz0b9BbTqE4t6pSvDMBqZ2e3ieRkDOtGQGo01pYmoCJ2LPhmW1U
	T7vwY6ZwDsmhpLW43p6DTUuh8odu65IwAO9BFQbE7lDeWVBSZpeGpevt88B7Reos0zSCf3tAq9K
	SnTnw2InF8LrW9hIfSINWAlxVNxiqHVJwxlzyhGqjLS3uQAEr93jRlzGbrFhqChU3PJHkXAI0CD
	5hdR0OTNCFXJPKj2xiMqVqsEvvIEPbl28woH9+RFxr220QQJJux2AxV2ooam/nOf1JNOjpI8sXw
	qIRfkdd6L4NDSk+7DsYaSXfrA
X-Google-Smtp-Source: AGHT+IHN4pdN+q1y537irHaqdVIJwMrH6auGVoGM+UN248YAGpQVjPDa0P891RmdfAyjRaEDEvnJPg==
X-Received: by 2002:a17:90b:3d05:b0:311:c1ec:7cfd with SMTP id 98e67ed59e1d1-31c9e76bb39mr9637297a91.26.1752763726789;
        Thu, 17 Jul 2025 07:48:46 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:e0c8:a1e8:3882:b37])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f1e684csm3578940a91.12.2025.07.17.07.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 07:48:46 -0700 (PDT)
Date: Thu, 17 Jul 2025 08:48:43 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Frank Li <frank.li@nxp.com>, Bjorn Andersson <andersson@kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Iuliana Prodan <iuliana.prodan@nxp.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
Message-ID: <aHkNS51jgV5ulsNB@p14s>
References: <20250710-imx95-rproc-1-v4-0-a7123e857dfb@nxp.com>
 <175224423523.783161.17907302929832941912.robh@kernel.org>
 <PAXPR04MB845959EF2767C96794EAE6DD8854A@PAXPR04MB8459.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB845959EF2767C96794EAE6DD8854A@PAXPR04MB8459.eurprd04.prod.outlook.com>

On Mon, Jul 14, 2025 at 11:52:05AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
> > 
> [...] 
> > New warnings running 'make CHECK_DTBS=y for
> > arch/arm64/boot/dts/freescale/' for 20250710-imx95-rproc-1-v4-0-
> > a7123e857dfb@nxp.com:
> > 
> > arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb:
> > scmi (arm,scmi): Unevaluated properties are not allowed
> > ('protocol@80', 'protocol@81', 'protocol@82', 'protocol@84' were
> > unexpected)
> 
> Same as replied in v3.
> This is because [1] is still not picked, not because of my patchset.

I won't move on this patchset until this is resolved.

> 
> [1]https://lore.kernel.org/imx/20250513-whimsical-almond-quoll-e3ad5b@sudeepholla/
> 
> Thanks,
> Peng.

