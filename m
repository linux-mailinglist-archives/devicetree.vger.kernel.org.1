Return-Path: <devicetree+bounces-292909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEWjIJOh+Wn3+QIAu9opvQ
	(envelope-from <devicetree+bounces-292909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 09:51:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC34C8476
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 09:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9459A301693B
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 07:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389A43CF026;
	Tue,  5 May 2026 07:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK5qZxTq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153C534EF1C;
	Tue,  5 May 2026 07:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777967472; cv=none; b=OHfAp82iRZC8HC1NUKuzwtXNd79q13md1uCOR1aC0vrB0dKLi1qP6fXyajnmIOm3ulU0YlbTg/CMVWDwu01nyXGZLwp1Io89m5FHEr6mHO9uWiInL4TmtgxYqNm2J9G25e3GqQPkXPPQ7F4yJOaKuzkQIeJ4fstDNbBgyNApZto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777967472; c=relaxed/simple;
	bh=nWoATzz4l+p62092c609Nc9bUcvu/fNqU/1SPuL6GJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WBdKaW8LGLZSM4fGXERH7EXar03owCMXPozgt7NsmpjiFfNwvOoNcL2n6D06IuqAP0sXAcDWqJj1RAwfpxYBO8FF36XlyatuZiIuRta7isyVi8ahrYTD9uYc0ZHny5Ttoj2qGIx5rs1C4XH+UOvnf87/1QGQRAzD9hlF+SnamrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK5qZxTq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11003C2BCF4;
	Tue,  5 May 2026 07:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777967471;
	bh=nWoATzz4l+p62092c609Nc9bUcvu/fNqU/1SPuL6GJU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oK5qZxTqAOq6XqjNpS5wSDOxchuPUCtuoKYOVW6fGRVEOCy5BBUzbBo4mvXVfh69p
	 kqV3rA5dElobof1NzblA95K4UrQ66U0aQX4ZTSHeesrT1gjE78qoY247W6tgyXtMiI
	 ShAmfE3XrvyhJJ3z+XLZG2lCq7MvbE8se9J9kb8xPfh/SnRUBecvbqwVK0F/F1awpm
	 Md99lj6qO8r4x4AhBe4JZvd8+MdeT9aez/KOz99ZonGSqsqz7BvDYvJio4dlJ7TWyY
	 b8XruHMXXVMqXgbfvQjjJYuojRSaKNDdTZ+Zs4mYsicsfmCuriqqzDVjj7iIPn8xpn
	 21TQ2UOAwGzrA==
Date: Tue, 5 May 2026 09:51:09 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH v3 1/2] regulator: dt-bindings: document the SGM3804 Dual
 Output regulator
Message-ID: <20260505-sceptical-loon-from-saturn-3e0f6b@quoll>
References: <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-0-c4783443890b@linaro.org>
 <20260504-topic-sm8650-ayaneo-pocket-s2-sgm3804-v3-1-c4783443890b@linaro.org>
 <7683723f-df3b-418e-958d-9815d79b6a10@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7683723f-df3b-418e-958d-9815d79b6a10@linaro.org>
X-Rspamd-Queue-Id: C9EC34C8476
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-292909-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,3e:email]

On Mon, May 04, 2026 at 03:22:49PM +0200, Neil Armstrong wrote:
> On 5/4/26 14:44, Neil Armstrong wrote:
> > +        regulator@3e {
> > +            compatible = "sgmicro,sgm3804";
> > +            reg = <0x3e>;
> > +
> > +            vin-supply = <&vin_reg>;
> > +
> > +            enable-gpios = <&gpio 17 GPIO_ACTIVE_HIGH>,
> > +                           <&gpio 18 GPIO_ACTIVE_HIGH>;
> 
> So this fails with Rob's bot and with DTBS_CHECK with board DT but I can't make
> it fail with dt_binding_check on my side.

Drop DT_SCHEMA_FILES and test against all bindings to reproduce this.

> 
> enable-gpios: [[88, 59, 0], [88, 58, 0]] is too long
> 
> But I found out in Documentation/devicetree/bindings/gpio/gpio-consumer-common.yaml :
>   enable-gpios:
>     maxItems: 1
>     description:
>       GPIO connected to the enable control pin.
> 
> This was rather unexpected...
> 
> So I'll probably need update the bindings to mode the enable gpios in the subnodes instead.
> 

Yes, if these GPIOs control specific regulators, convention is to put
them inside the regulator subnodes. Many other devices do it. This is a
bit different approach than with input supplies, which are supposed to
be put in top-level, even if they are dedicated to specific regulators.


Best regards,
Krzysztof


