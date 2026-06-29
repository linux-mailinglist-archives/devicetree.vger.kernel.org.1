Return-Path: <devicetree+bounces-316725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lEqJJXwcQmqg0QkAu9opvQ
	(envelope-from <devicetree+bounces-316725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:19:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3A26D6E76
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:19:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gmSS8X6m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316725-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316725-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7852130A554A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 574BB3A8745;
	Mon, 29 Jun 2026 07:06:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1D93016F1;
	Mon, 29 Jun 2026 07:06:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716814; cv=none; b=Cq4xAkqcgI5C4eFAw2IxcZbrt+yicFnmJES1hxiAQ0OyNZYXbr3M6V9jjt9MFhPwuJk9ClxAtFa5j+TKKGHEk5uIY9qV3lLiqcb5I1enWSqAN855mpblwPweU5zRfCAk/nDXT0tL4KwQoe//FGIWT3zcllKMdWOwpU+Y69fASQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716814; c=relaxed/simple;
	bh=MIXcyY1CCOONfuBlyW6YIqghRNgN0+vYhL/lXgW18zQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j5pEZUlIpIrZiUUHYSeDNLzQLNNOOErCHRmT9CkYOyhuL9HSDpgzil6Al4l3h8aKmKKSRg+tL3VvSqYvTR1XEhwwfkkxtEPmX2HLXRphymsSQ3QnNpO2dF8IPhQBOOZBBu1b7BxGKGX6AYZ1Ptl5ya0QTdbdHOTDS5fZJUUKZRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmSS8X6m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37C9A1F000E9;
	Mon, 29 Jun 2026 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782716813;
	bh=HKJKsj1rOXrs1oZ4EtVD1DezAJ5STX3YirLLKQfvR98=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gmSS8X6mLl4E7DIH3z99xkKieDyPPHRxeHCFPdF08FAb/NrUuE9HuInH6/ZG4j6eW
	 Vy+k9mqO4JEg2KQK3P7TFImb7I+Agu+AhezX0q6qTFxEtG3yrrV9jzzKvoIvLVOVwM
	 jb9v9hEYNbcpwWdelaVC9bC+n0a3RqabM9tUDz8rVT8SaxhZH8HRKwBk7s2tIxMOsH
	 L5pw4HfKphzasxM3ae5jd0mIKByYFR9BhYMZKgebydLu6+pQopnQDBRQMMiI8VhXZ+
	 jjy/ZZISqF9crjbm0nvbTIwcbVcHqM9tD7PSwCpJqql47OzgiQdcfkIrwNTwKQRPay
	 2eWPfCpcukDNw==
Date: Mon, 29 Jun 2026 09:06:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
Cc: linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/9] dt-bindings: arm: intel: add Agilex5 SOCDK eMMC
 board variant
Message-ID: <20260629-venerable-zealous-dinosaur-c7efe0@quoll>
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
 <20260627201457.12318-5-tanmay.kathpalia@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260627201457.12318-5-tanmay.kathpalia@altera.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316725-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tanmay.kathpalia@altera.com,m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dinguyen@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,vger.kernel.org:from_smtp,quoll:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D3A26D6E76

On Sat, Jun 27, 2026 at 01:14:49PM -0700, Tanmay Kathpalia wrote:
> Add "intel,socfpga-agilex5-socdk-emmc" compatible string for the
> Agilex5 SOCDK board variant configured with eMMC storage.
> 
> Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 206686f3eebc..f5efcbc381b8 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -113,6 +113,7 @@ properties:
>                - intel,socfpga-agilex5-socdk-013b
>                - intel,socfpga-agilex5-socdk-modular
>                - intel,socfpga-agilex5-socdk-nand
> +              - intel,socfpga-agilex5-socdk-emmc

Do not break the order of entries.

Best regards,
Krzysztof


