Return-Path: <devicetree+bounces-250705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A91DCEB2AB
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 230573010A95
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 03:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E39248886;
	Wed, 31 Dec 2025 03:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OuD2F18q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435542BAF4
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767150116; cv=none; b=GaqnwY8c62U4knmFLKS6zQ8NhX2VTXPl2fpWtEvNlbo650nlPb9IWzdrbJ2azCtookTHV812ls8Qk7ngSjLJ7FQbkCP1h8JPfuXcb4pDk2KfJqJd36Dm0QW+X7uv/UFL/AiXLDowlj7Ntl/m47N93TFQa1thlK5a2F1DLQ1Q3Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767150116; c=relaxed/simple;
	bh=VfUAn7fuzAJ1b65MvaymWQC022eu06jMkmEUoeIuEzI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sRBszDfOS1QBFGmIH0gwWZIQec/SWkJ3HkyzoYTcuQmZe3Kci3O2cnjfD8eosQXUe0IzEjF+Q6OtwgGaAidp0G3j6MeVuaTbpm7eiRrtVP7Ww2seGHsrolTt1nekFUFUIjXkgcsVKyYEDrOuAko4clzuIhKd3APhjrYP/REP5aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OuD2F18q; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8b29ff9d18cso1245212485a.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 19:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767150114; x=1767754914; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zusqzk/Z0ArToECS6/v9lmrCcwZi8OdNi5W/vdy0GjU=;
        b=OuD2F18qhDghQ5PprngP0OPDTym7da1Jj9tkFIhCNJIXVnT7B6dRacIv7qYen1O02k
         Dcv49vbjBF9MY4gB912rC0xC9RVjjQ8C24Ik4rK3xkHmnQfnYrFxcEeINSATqkeWXBrC
         SyqpLlRhZksvBLxCzsxS06oHRuISNNW2O9Cur9ukvIwoZ67R5Qc2IdarTz5fyihMrCwa
         qp+TCvv4qvSwpID4U2EByYVd60aGxWLjgUPmb3Z9zntfO3Zm4MyPi6vtOpLKLyzu4XdJ
         lCcG5mxk752tWNWy7DGwiCbL4AefCHZkr0NpFWcroQ6z47qUWMEIxAGJgZPEkT1xbe7W
         YT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767150114; x=1767754914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zusqzk/Z0ArToECS6/v9lmrCcwZi8OdNi5W/vdy0GjU=;
        b=LU9r+zgnMO4SxzoRUC3WOxmtOeDkCIy7sILotRpWWF9kt8ukS1hhuZVOX9KsOaUu8S
         FoRgVJtN2SEd8yJObUJCKhn2CMqfOoz0jg1ljqwCfsq72X0XneRuj5qOYaTF+oQdP4ox
         ilw9DDVqm6pcuA3ot7mEQ1GmCICvsFxGt/IkW4fpfolaRns0hkCrlesf23rRSYUoaJoB
         RKaE09oiXiVhrk9eAy6KjHD1tEAo9B/BRSI0N/L1yAc9mCO3vJr+VXLUNBpGUo/ssWyX
         zvqRedGCrfkPqM0sK3kAERIoytgKCyUUCtBMtTq6eifuXfBFY56m9q/N0gSWjTheD/O+
         q2sQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0q2DMp2B5dgt+htIvD7yuNgamjkg9xIvpX0QnFOPvDh3dkP9DPpxbz4l48crVSOG1Iir1Jnw9F0BN@vger.kernel.org
X-Gm-Message-State: AOJu0YzpBfUX1Vg7eKSrd2VgRDb6estpe2UYqcPs5UpRUsTYT9iByVJt
	GuGYJSn565eJg9pDdCYj3REbsW4DIoDL3VV4ZD75wGWtCU39VkfvY8oD
X-Gm-Gg: AY/fxX55fB+YZFPa7sapW3nWJ9Hji13KQP3hs5L/KKVYeWvn6pz24UBc8NgILozVP0I
	g/Kd80SPfwWP/f+XNqDjaUlCdtUbTBi/pWCKq7eQkc0D9ACV0AOAhQvK+mY7PeiMbIfYBrayDJT
	5+iwHnfnIsEQmybs5Z9pNH0OLBT/7YtpnvI7bAfOrtXFlB8Mr6IxWjGzUhavzPjE+nroOdbpezD
	z9aL6zUhaFvuZzZHsQlCyOB0ybEsjUkiEWp6Yj9QjW+RjmRm8ipG599x+9q1c2dz+Zq2hOiftmQ
	9haeaaJQgrGo2bU5RG19rlZOwB/nRmHQzch7yHx48lN+1peRaaN5g6f40knFmpNxsovHYS7VOTY
	C5fkieZypKGubr6pmvf9zIF+vGNosYnGtsU/ENM1D+WmHYrl2HutDD/TEHcdbEbja4DNLE8cc5K
	ZNg1+XC+/h3lsP5A==
X-Google-Smtp-Source: AGHT+IEzxBN4kluErCkFUOvPOVgIkBgVvoyMRSDm/yqIVEJ0Qm/7aQQEO7z0S0+HYnyDvukVT0yxIg==
X-Received: by 2002:a05:620a:c4b:b0:8b2:5d6e:48c1 with SMTP id af79cd13be357-8c08fd037bfmr5364545585a.27.1767150114089;
        Tue, 30 Dec 2025 19:01:54 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d9a44e26bsm255936816d6.47.2025.12.30.19.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 19:01:53 -0800 (PST)
Date: Tue, 30 Dec 2025 22:02:12 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 0/3] media: qcom: camss: support for empty endpoint
 nodes
Message-ID: <aVSSNGCtvcYCTylu@rdacayan>
References: <20251230022759.9449-1-mailingradian@gmail.com>
 <1fa74da9-bd3e-43c6-afbc-8cfcbb93af93@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1fa74da9-bd3e-43c6-afbc-8cfcbb93af93@linaro.org>

On Tue, Dec 30, 2025 at 10:18:39AM +0200, Vladimir Zapolskiy wrote:
> On 12/30/25 04:27, Richard Acayan wrote:
> > This series adds support for empty endpoint nodes. It is currently RFC
> > because it continues an ongoing discussion on how to selectively connect
> > some CAMSS ports to cameras and leave others disconnected.
> > 
> > The SDM670 patches are for a full example. If agreed on, this should
> > expand to SoCs that have CAMSS.
> > 
> > Example SoC dtsi:
> > 
> > 	camss: isp@00000000 {
> > 		...
> > 
> > 		status = "disabled";
> > 
> > 		ports {
> > 			#address-cells = <1>;
> > 			#size-cells = <0>;
> > 
> > 			port@0 {
> > 				reg = <0>;
> > 
> > 				camss_endpoint0: endpoint {
> > 				};
> > 			};
> 
> I do not see this device tree node layout as a valid one. A 'port' provides
> an interface description (an option), and an 'endpoint' declares a connection
> over a port (the accepted option).
> 
> From dtschema/schemas/graph.yaml:
> 
>     Each port node contains an 'endpoint' subnode for each remote device port
>     connected to this port.
> 
> This is violated in the example given by you above, when a remote device along
> with its ports is just missing, thus there is no connection. A forced alternative
> reading may (or will) break the legacy, so in this particular case you shall
> start from making a change to the shared graph.yaml documentation, since it's
> all not about CAMSS or even linux-media specifics.

So, if endpoints MUST/SHALL (in IETF RFC 2119 terms) have a remote, then
would it be acceptable to label the ports instead, so a board DTS can
specify its own fully connected endpoint(s) under the port labels?

The labels to ports aren't looking as "excessive"[1] as they used to be.
Is the original review comment on port labels still relevant?

[1] https://lore.kernel.org/r/565d14e1-1478-4a60-8f70-a76a732cde97@linaro.org

