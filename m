Return-Path: <devicetree+bounces-270282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MFoKAZhpmnSOwAAu9opvQ
	(envelope-from <devicetree+bounces-270282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:18:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D37E1E8C17
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 05:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5608A306DF24
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 04:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6F1F345752;
	Tue,  3 Mar 2026 04:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EbdCVLHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B1273463
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 04:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772511424; cv=none; b=ZPK12v0FvGBpSBQ5FcR69hoc884BDhir48ZHsEn22ALBXhJ/xEysrRfqcCsmZel07cMU3Y35KO5pyixqLmSuyEmFcqD9b5pgjts5k/hpeLbr+0Iwv2vBu0FhXH1z/3C7WWF9JkWov2f42Zyb0PEBp9zF9APHJDkpo+sqRPEBLUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772511424; c=relaxed/simple;
	bh=ZmweLOnXG4Le8DUQht02KQJMGF2iglt2HkQ62tdQNN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSW3cDHUX0fr1RLbXHv862lHHnq9G+mu0P0gVE89ZNJ91qz02PLD3MrtJj2XWY5e0R01rWZhBrC1qFBbn632Xw3VhOHiX3HzVhZQ5HXuU7XfXn1qaNq5fCYzK/Tc9ExBJr2AhusM0vC7VvIWTq1EM6hEztG0XbuLBTlIULIpCJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EbdCVLHe; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c70bb8ffb24so1887764a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 20:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772511423; x=1773116223; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s0KJ6MPLwz4hfSbB2J0YXeVoJBEVj7NgQK32ArZzCAY=;
        b=EbdCVLHeVDXC4C8QlPDla1rNO/jSTNF06KuTusk/Rq9qHioFuTWccxJJmqzNjCu/Au
         qerY1wnYdiijPeKtim8VKSiruTT6IelHCJtHcbUXYq0lR7tdRlCorgyxOiRxk8F6+Plv
         L7qt2WgRA90u2akNsEcEgQkAfneAG2hB6HzolCTeUDcrFgyLsMzp9V/39ihERvU2PCY/
         Q4tErl25PKTXO1X8a2IXn3heHlIxHaUjBkNcqHax+BQtAh8gNN1gqUavn4W7qoF1TB8o
         rwSd8AyI9CQujcQ3P99E7ZSeo81EMW06OisTonCmTtlCWq/zAEOF7WKMfX8AgeTuDxKI
         Dq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772511423; x=1773116223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0KJ6MPLwz4hfSbB2J0YXeVoJBEVj7NgQK32ArZzCAY=;
        b=sZt2aThDnSaUcbOJdLCeG2jbtQHl2EhivQlCXEr3XBce/Zf+wMrr00e899DxwTFm2N
         7vXiCkYlGdUBE4qMECJ3jEZDur9evgKsfeF7Z5hFxCNeFPd2Q9LvjIhL8Ph6tzG5fGuO
         l9WXxbn7PNw9w5E8m6cedfqFR64YhEwPb+7DGRMmC6rML7+EPfNoc4VecbOmVfscC/pv
         DMcAyeOWtQw8EWlaMMeCSQ4wp+d6+z+64Sl0Wn6BJxzwc9mXcJ+pwoBS52krq9UB2HkU
         jVoCmzhgtNisVtJ2jfjdcdXRyBUGJGDSPG5N1c8hA02A+NPt+/eMEsw4piA8rcwT7qCb
         67xg==
X-Forwarded-Encrypted: i=1; AJvYcCVaTknoH0w6oqjT6GsJfLf65IW4ZacQQAe0bdOJe2a0u69BCJP2XHr5ggI55JFRTjuThhyULx8RxLg9@vger.kernel.org
X-Gm-Message-State: AOJu0YzelRy0mUP/7SK5uufQjdRkoIFH+vVxhZ0G2Yqdh3GG0Xq6JwC/
	ArVZADwBh5eUM1aw+ZCX6lWI1fOcFcUXb4uhUYx5TzZQz2ji3IsMoTIyd/yyffs5k15g/JzUzdO
	OXolH
X-Gm-Gg: ATEYQzziXh4hDK/YiPR0lXrtDFOQEa7pQfNYNzIUYAWRLDtnONEZru87NsLjo63JS5O
	KXhVXLwu+xroPmrLldjRSLzLEEtBc5ceQY3BruecbiZiPV5S8QLBaMtJ665gutAF4yjI/ouJ5Eg
	aMAC6MTojAkeUL2YtJt2FTOXolve/XXo+aqcSABkEys7jTT+Zq1oZd4wkRjPXOqyVLLoJC6TIvZ
	53FgPUIfXUxHSryWwdA61JbIdZDZPrhsLjEIXxTQLowrQ2gfaweAF/P9RKGZIXauSyNSWBbVut7
	mzluYikZu3Up4eVkt1UdW0uX57elona8cyUYfiOa4NIqFAl8hAPvaSn9hhCJuIy3D2t6WKSY8x5
	QK7/sAWMwgiuWZebPcz7fNW/1O9py9apma87dr5KSxo4bwJIyQyg5504CCVu8yC2oTEzday970x
	KHrqoPFiP2cL9FyeVpTz8itf33
X-Received: by 2002:a17:902:e845:b0:2ae:5102:3026 with SMTP id d9443c01a7336-2ae510250bfmr51175175ad.14.1772511422634;
        Mon, 02 Mar 2026 20:17:02 -0800 (PST)
Received: from localhost ([122.172.81.200])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae46500068sm70579525ad.52.2026.03.02.20.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 20:17:01 -0800 (PST)
Date: Tue, 3 Mar 2026 09:46:59 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jon Hunter <jonathanh@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	linux-pm@vger.kernel.org, linux-tegra@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: nvidia: Document the Tegra238
 CCPLEX cluster
Message-ID: <hsxkn3emukz2wafaaizqp7upjaa7vo74tjnjd6lxuypgowe6jr@cffvh7h2de2f>
References: <20260226151212.4067944-1-thierry.reding@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226151212.4067944-1-thierry.reding@kernel.org>
X-Rspamd-Queue-Id: 4D37E1E8C17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270282-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim]
X-Rspamd-Action: no action

On 26-02-26, 16:12, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Tegra238 is derived from Tegra234 and uses a similar CCPLEX cluster,
> with slight variations but the same programming model. Add a compatible
> string to specify this particular implementation.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  .../bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> index 36dbd0838f2d..fe9c8791f227 100644
> --- a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra-ccplex-cluster.yaml
> @@ -24,6 +24,7 @@ properties:
>      enum:
>        - nvidia,tegra186-ccplex-cluster
>        - nvidia,tegra234-ccplex-cluster
> +      - nvidia,tegra238-ccplex-cluster
>  
>    reg:
>      maxItems: 1

Applied both. Thanks.

-- 
viresh

