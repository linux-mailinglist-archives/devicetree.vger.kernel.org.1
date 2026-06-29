Return-Path: <devicetree+bounces-316629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RdiHFYr7QWpNxwkAu9opvQ
	(envelope-from <devicetree+bounces-316629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:58:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E81B26D5F41
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:58:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linaro.org header.s=google header.b=ST3YUnkS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316629-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316629-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linaro.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CFCC3011C59
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 04:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8172C11F1;
	Mon, 29 Jun 2026 04:58:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com [74.125.82.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A0C2BEFF6
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 04:58:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782709121; cv=none; b=VMlwCFtIO2uZwoufga/QOa69tMZ4oIOEdHBnzdsL+AcgeG96cxYaQFwvxO+i3eFOQVsoJCZ4PfXR+Ugkz1/k1vMJaYfRMsfdhk6BYpelHIh6zXHGfy8hDaCrwc8gRG5FsOQTcAKBKSz9y2sjVC1e1lEUYfWs3MMKMc47Psgy+1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782709121; c=relaxed/simple;
	bh=CIWzjM+Jxse1BycqhtYy2huv0CauD709CmJ9y4Fmpl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/J0AJIrMAuatNQMSVOqB2BlU4b42qmP/K1CSl3Mu40zuE6P5rKxIQtGOY7HvOJibPjNwHndJfarawtPsG6zZIPKRDJZUB0Qg+al4vqBTOH/mPVquysTmdRu/xs9LOIH403c7FdaOTBM64KGsV24WPNwmxVUw/CG1O8POtW+HXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ST3YUnkS; arc=none smtp.client-ip=74.125.82.178
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-30bf132969bso4139117eec.0
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 21:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782709120; x=1783313920; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QsB27okN3oIFcQCd02Iqvl+jQspzLnJ1Dz6viWpLCEI=;
        b=ST3YUnkS+Wj/SV0uuFZYGcDbyIWgG8t3yJFbf0rIhwsro8bVGUk95hZ2+tfu8fSEAj
         YniYLdh+UcHGaXzzJMoykgxhz28zp4JHZz3XCy3UdvP7I3Kb3k80ZdiuZ8zAVzp3Xaic
         C5pJ2wxhChqBUb165/z+EFP6CO0d185h5xd4C2oaMLazv2MQRW+UUXKEIQdWO0EDudoF
         AZZcuxpw1o9mI99vyiB452/rBWu9DV/gXu/d7OPSaiyz80+wLSlxOSJtPnwvC9WlgIlQ
         oJSVAysyVE6y/6Kwe2rpZ+84Hcok+PuNURRononeqjmKssexetIUQyaLg73OrhoV0o1O
         /rEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782709120; x=1783313920;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QsB27okN3oIFcQCd02Iqvl+jQspzLnJ1Dz6viWpLCEI=;
        b=lbc9G9lijZuBONd3zK6hdxhFhUolTeciBXs7lBkb+HlLLhn6OWlkrrY5aZbGSC1ytB
         utdu4Sf/sP2RV4k2Rf5byxMNBlD2QXcszaj373F71QKM5Xuhq21SSSUjX5vn+SzwcpQc
         sPIkzb1UHr7z0a4JYsp1iRJqlgldvNr2dW9pxBD9tJOcDjc+njkSfxJkUDfaG0oKsqR+
         ihBDgGrI2VhisJVI/6eLdKhMZhsaOXwnDB4h2Zx9kvWfL+PmUzv5KCkIxmlhR4OwC6sl
         RvsN8l0trmUe0t/gG3CAtBVhjNEaXagW/oMFCduCCu79qnpun6tpNLILfMg9+nzIOqn8
         06cQ==
X-Forwarded-Encrypted: i=1; AHgh+Roxd7pq6hbLv967eO0V7IohRr7EcfHIcR5A6ddAZ5ElU1t9JTv/BH60LUrMO9qlMFqI17CXETHnLJXC@vger.kernel.org
X-Gm-Message-State: AOJu0YyP79WGAHPBZOxfghHNJLtQ99YPxgRv7a52BZ1ICU8TSRPKbnKQ
	E1lxUAYuan8Ar4xXUkXi4Lro3xhNoULFN1LZi8MLqPTynp9OLgoIL9teYzW/IuIOGJg=
X-Gm-Gg: AfdE7cl3x0nKwQ+BZwEYO+VJb31WKEMR++2d8rHCcU4CWeTH/z2/GTDeb57Av6I+cXy
	zFFsbmWihS3IQ1ijYUMbRjc0axDLBHqu/8m9UsHZa4gmL8PxBRkS5EamAJbSDzgNvbTlbIjUU9s
	Sd/JI2TRrJ929dT4lanaX3PJTxnIAQrXfj4ThIcAGLw06rc6Frzaa1nllHkjUlYfw0s6/MHU28a
	ixnhBYOMdiSbEc3w9/T+tIIz+65fa+quPCYhjwCWIrC0gSfceWu99Bn0Q1WSvn6qCo+19hZ1cey
	frOMDVUf30E0RP5GXx0oF9ioy6AR/7CDRxWYBeByr8M68p3JDLfBNKx6gAMnDNdoVWyQk1YzFKB
	A2uziMXDZPT6T8CaV2JAAWOU/nhluhEe/Gpiv6+y6dIvKKhuRyLOS5e//rvsKLCWeDNfc13uap/
	cWwZPlSQBNNqbc
X-Received: by 2002:a05:7301:2a08:b0:30c:ab4f:46a3 with SMTP id 5a478bee46e88-30cab4f48e1mr7122599eec.39.1782709119287;
        Sun, 28 Jun 2026 21:58:39 -0700 (PDT)
Received: from localhost ([122.172.82.94])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ca5f14f8asm27880242eec.6.2026.06.28.21.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 21:58:38 -0700 (PDT)
Date: Mon, 29 Jun 2026 10:28:35 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] cpufreq: dt-platdev: Add SpacemiT K1 SoC to the
 allowlist
Message-ID: <7x5mgpk3z3aiebifhxto2v7m5yrikj52lwf5pzegzhk5aiehhj@jqm6opm6nrub>
References: <20260626-shadow-deps-v4-0-bba9831f2f1d@mailbox.org>
 <20260626-shadow-deps-v4-1-bba9831f2f1d@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260626-shadow-deps-v4-1-bba9831f2f1d@mailbox.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316629-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shuwei.wu@mailbox.org,m:rafael@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:dlan@kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viresh.kumar@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E81B26D5F41

On 26-06-26, 16:10, Shuwei Wu wrote:
> Add the compatible string for supporting the generic
> cpufreq driver on the SpacemiT K1 SoC.
> 
> Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>
> ---
> Changes in v4:
> - Drop the K1-specific cpufreq driver and use cpufreq-dt again
> - Add spacemit,k1 back to the cpufreq-dt allowlist
> 
> Changes in v3:
> - Add a K1-specific cpufreq driver for the shared-rail, dual-clock topology
> - Add spacemit,k1 to the cpufreq-dt blocklist
> ---
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 25fd3b191b7e..e262394b56f9 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -81,6 +81,8 @@ static const struct of_device_id allowlist[] __initconst = {
>  		{ .have_governor_per_policy = true, },
>  	},
>  
> +	{ .compatible = "spacemit,k1", },
> +
>  	{ .compatible = "st-ericsson,u8500", },
>  	{ .compatible = "st-ericsson,u8540", },
>  	{ .compatible = "st-ericsson,u9500", },

Please take this via arch tree.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

