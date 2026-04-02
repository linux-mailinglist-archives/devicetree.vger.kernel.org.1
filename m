Return-Path: <devicetree+bounces-283769-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCk2LJUVzmmnkgYAu9opvQ
	(envelope-from <devicetree+bounces-283769-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:07:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13091384E95
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:07:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A58FF30AB60E
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 07:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDA137EFF3;
	Thu,  2 Apr 2026 07:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ0xGEbz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228323793AC;
	Thu,  2 Apr 2026 07:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775113216; cv=none; b=kpcbKNrjr7irhSMOP6qqjpuQaHkCqst4qCKue8HEoaE3EYfRJ5iiuTpDuiDXvPCr4x2f5JAnVNApUN/xbrkGryMj8ukNK5XrMONXVZsj3TVmbB/4lNtXByvCkIpOSA6zScx49PPzeUYxvqOdHzD0UO60Wi6vZl3t2TJrX8kpXtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775113216; c=relaxed/simple;
	bh=Zp6JBstHg9TYPkcYDcVvu40/didVJC2h0/MEj+vX6LI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K4vloFgQR7MjVq8jQbQZPd/3KAZgBJP4Ml8T5Sn9jt5AaTOUk5hpkQYhrtdZ6sqx/T0ykdvE8lGB5Ojjroe4IhwOVXNXg1X2esT9aHTjLiQJCRznl7cIf7/9AGjo1gPcuhgzoHEuBSguetBNU33dP9qPAiC6hCVeE+JUOyBdAjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ0xGEbz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E93EC2BCB0;
	Thu,  2 Apr 2026 07:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775113215;
	bh=Zp6JBstHg9TYPkcYDcVvu40/didVJC2h0/MEj+vX6LI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WJ0xGEbz33utGMlZXhOxiVfFbl3cql21kSHH7yxPrL7vvfmZtd4uXizh8ISEazjcH
	 qh103mco5qyFEtR37FJP8MuranZbbVQV2Z8tV91eWJ6ebotT7dPXHsJePkxvGq1F3s
	 8hqIo/OsfmmYXWMsLJLIXlCwcbAqqVyfBFuSRukQGAVcc5C6L2zEUYt9mmkIqc+qkr
	 xxfKFAn9szKvOy1BQyM7G+2HHv8Y84j5rL4c3Nfhzqe5Av2prx0UwKqy4MDhvAympw
	 a6QZ43hcyzOVAzls4WCpZ5c7mperrxCj0WalbZCsPtEg4rZmgOBN5B5NckegrxBOh8
	 cE+t3s40coz9A==
Date: Thu, 2 Apr 2026 09:00:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: dac: Add ADI AD5706R
Message-ID: <20260402-new-venomous-groundhog-e646ee@quoll>
References: <20260401-dev_ad5706r-v4-0-a785184a8d53@analog.com>
 <20260401-dev_ad5706r-v4-1-a785184a8d53@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260401-dev_ad5706r-v4-1-a785184a8d53@analog.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283769-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 13091384E95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 06:20:03PM +0800, Alexis Czezar Torreno wrote:
> +  vref-supply:
> +    description:
> +      Optional external 2.5V voltage reference. If not provided, the
> +      internal 2.5V reference is used.
> +
> +  pwms:
> +    maxItems: 1
> +    description:
> +      Optional PWM connected to the LDAC/TGP/DCK pin for hardware
> +      triggered DAC updates, toggle, or dither clock generation.
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO connected to the active low RESET pin. If not provided,
> +      software reset is used.
> +
> +  out-en-gpios:

Isn't this just enable-gpios from gpio-consumer-common? Does the device
have more enable-like GPIOs?

Best regards,
Krzysztof


