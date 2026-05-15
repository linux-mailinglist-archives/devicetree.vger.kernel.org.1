Return-Path: <devicetree+bounces-297979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFYJKlzUBmomoQIAu9opvQ
	(envelope-from <devicetree+bounces-297979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:07:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 135F754B0DA
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:07:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A759D30656B2
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487F83EFD27;
	Fri, 15 May 2026 08:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJp3H6N9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AF73DFC74;
	Fri, 15 May 2026 08:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832053; cv=none; b=C+DKW+W5NIAzXIpsqjzC0in+l9i9Jrl/mN4lKlL7RalE25QR5lQa/hR6izMllyxHj26VfDDX6SRCevSRY4i9+O9w4jy2KOdlNof2lppNFERSUfB7sXBvKgGadEXiXBUueQ+1d9cF1p68iOyF/a8K0KwEJv4NaM7jiyyUVRyh5Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832053; c=relaxed/simple;
	bh=OzZj9ylPNNHPLzhxqC6dkIKTlpbmg5YsdZhk+gmhbu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aq9P9uR7QyPRuK9O+y2/cZBTKpoN7FFRF4lLxKNdOXjyqLpoB0f01WeRoWVU4wqZt8HPCVwSKPLdUyqtgcDq6bLAKLLdbkPdGfqgS6hNLiHyip00LBoXwQeGVIGbF8ZAgJ4TzfNK6fV88iL7kscI0/mqV2Ipfr1yAlxC8xrt6EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJp3H6N9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AE02C2BCB0;
	Fri, 15 May 2026 08:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832052;
	bh=OzZj9ylPNNHPLzhxqC6dkIKTlpbmg5YsdZhk+gmhbu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oJp3H6N9SjX7yJw/cxlZ31uenc0CjVsA3glhdm1rg3fJQ47kQhtKzgztPliQN2HHl
	 HfGq2ABZ27meKMZdmAM1/M0L3Cpgc+1b78w/0gzNPsB5z651q70CGO2W5kpcGDywP5
	 4xFz9jN1A5TxJZXrmaylzW5m/Jblmc2Qc7SgzjSRr1AGpT44/AXhnnT82JLuuzzSQt
	 30fnVIDXEYvE13ma/OnyHA8aILZ7eUEOR0ytRZb+uZLyUDPUEMWCXW2tLIOJoMH1ft
	 j1lsuvlJJRcrzJTdcHOpCbGYKIZUugyArRXPaiZNqzparPjA0PYR3wKxu5zx+BdtNQ
	 9pg+lJAikdARg==
Date: Fri, 15 May 2026 10:00:50 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] spi: dt-bindings: cdns,xspi: add sdma-io-width
Message-ID: <20260515-expert-devious-cricket-faff56@quoll>
References: <20260511031732.3199-1-jszhang@kernel.org>
 <20260511031732.3199-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260511031732.3199-2-jszhang@kernel.org>
X-Rspamd-Queue-Id: 135F754B0DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297979-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 11:17:31AM +0800, Jisheng Zhang wrote:
> The cdns xspi controller SDMA data port may support wider I/O width.
> Wider I/O width can benefit performance. A simple test with QSPI nor
> flash on one arm64 platform:
> 
> 1 byte io width (default):
>  # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
>  1000+0 records in
>  1000+0 records out
>  8192000 bytes (7.8MB) copied, 1.368735 seconds, 5.7MB/s
> 
> 4 bytes io width:
>  # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
>  1000+0 records in
>  1000+0 records out
>  8192000 bytes (7.8MB) copied, 1.088787 seconds, 7.2MB/s
> 
> Improved by 26.3%!
> 
> Add dt binding for sdma-io-width.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  Documentation/devicetree/bindings/spi/cdns,xspi.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/cdns,xspi.yaml b/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
> index 38a5795589de..1fd4b6dfd417 100644
> --- a/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
> +++ b/Documentation/devicetree/bindings/spi/cdns,xspi.yaml
> @@ -40,6 +40,12 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  sdma-io-width:
> +    description: Slave DMA data port I/O width (in bytes)

Waht is SDMA? What is Slave DMA? The same?

Why this cannot be deduced from the compatible? DMA is fixed per
platform and SDMA do not sound like SPI device (so slave in older
terminology) property.

Anyway, there is generic property reg-io-width if this is for MMIO,
bus-width and spi-tx/rx-bus-width.

Best regards,
Krzysztof


