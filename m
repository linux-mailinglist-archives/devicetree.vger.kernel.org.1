Return-Path: <devicetree+bounces-290243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPobNfEJ7WkEegAAu9opvQ
	(envelope-from <devicetree+bounces-290243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:37:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A6F467610
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 20:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 425A630078AA
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 18:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5A7370D7D;
	Sat, 25 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pldG1Nck"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790B29898F;
	Sat, 25 Apr 2026 18:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777142253; cv=none; b=Bq2MekgxwjsLGX8jGOIOoNYT6BlA+13XFPqZSEJu1fMUQosb+fLgDvIyw78WyLhLbODyVackfx5rCZYqfN8Y0kAxUmIi+AsrCZPkvrD4X9dBfwsSlzNDzrQoYWlgT/70hwVcWbARlMvAM6FtHGduCbbS0KYfTntktqBpC1NUShA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777142253; c=relaxed/simple;
	bh=WYY13v1UIJhaUs1PTkSYR/9VDr6pTEM8/H8iIWwrO70=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FFJVVgtbWw1jVQRWXAd0vflmGHfrGGqKUxDspFXwddvFTDI5U+0+DpXBXpdxUfpNZuKQpInN5+BVWtSqrWzA5C4ltt7AnQJdZugH4ncUNaclRlSHwDZ8jUtpXElJ2j7tFxAb+B6S6+HbLKxp4OKxkK1EFquyBlTXXniisMDyP8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pldG1Nck; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00376C2BCB0;
	Sat, 25 Apr 2026 18:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777142252;
	bh=WYY13v1UIJhaUs1PTkSYR/9VDr6pTEM8/H8iIWwrO70=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pldG1NckJl1E8W6jMYj0n3wYu1To63ziZFgLOFr6AlUfk3ZU2ObK6/Wl1q07ExstS
	 u7yjYlO/DHZwuNKBEZHKaJCsHcrUh9os1eWu8ymknItPwplN2rZvQgMBkvaGZ0+IcX
	 VUtw8GxFa8h435/7fvieAkQx8l5T5zghxZrmq+pp6NOupuXbcSXDC+OGnEl3pjdpkh
	 H5w83FN4YGW7t1g0EmAEK+MTRhXt0QwLr4un6DzkPDIBslw2Y4A2LNyV+PiG+HDqq3
	 AV+HPLSLtQqMZ1mhHX4KGC+ue6/TOTzLdxFCw6+pcEZIVDPhUoSscikqG/ne7F4WxP
	 E+kHKYsVtiGZQ==
Date: Sat, 25 Apr 2026 19:37:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 0/3] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
Message-ID: <20260425193722.7537693b@jic23-huawei>
In-Reply-To: <20260420101225.4173-1-antoniu.miclaus@analog.com>
References: <20260420101225.4173-1-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 53A6F467610
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290243-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,analog.com:email]

On Mon, 20 Apr 2026 13:12:22 +0300
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC with
> integrated fully differential amplifiers (FDA).
> 
> Architecture notes:
> 
> The AD4880 is modeled as a single IIO device rather than two independent
> devices because the channels share power supplies, a voltage reference,
> the CNV conversion clock, and a single interleaved data output stream.
> Splitting them into separate IIO devices would make synchronized
> dual-channel capture impossible from userspace.
> 
> An MFD approach does not apply here either - the channels are not
> functionally distinct sub-devices but identical ADC paths sharing a
> common data interface.
> 
> Each channel has fully independent configuration registers accessible
> through separate SPI chip selects, so per-channel regmaps are used with
> no locking between them. The data path has no software involvement at
> runtime: the CNV clock triggers simultaneous conversions and the device
> outputs an interleaved bitstream captured directly by the IIO backend
> (FPGA). spi_new_ancillary_device() handles the configuration path;
> the IIO backend handles the data path.
> 
> The debugfs_reg_access callback is not exposed for the dual-channel
> variant since the IIO framework provides a single (reg, val) interface
> with no channel parameter, and exposing only one channel would be
> misleading.
> 
> The AD4880 is a fairly unique part - having separate SPI config
> interfaces per channel with a shared interleaved data output is not
> a common pattern.
> 
> NOTE: The AD4880 driver has a cross-tree dependency on two SPI patches
> that are queued in spi/for-7.1:
> 
> - ffef4123043c ("spi: allow ancillary devices to share parent's chip selects")
> - 463279e58811 ("spi: add devm_spi_new_ancillary_device()")
> 
Applied to the testing branch of iio.git - char-misc pull requests were picked
up so I've rebased on top of that and the SPI patches are therefore available.

I'll rebase again on rc1 once available then push out as togreg for linux-next
to pick up.

thanks,

Jonathan

> Changes in v9:
>   - Rebase on jic23/togreg
>   - Add Conor's ack on dt-bindings patch
> 
> Antoniu Miclaus (3):
>   iio: backend: add devm_iio_backend_get_by_index()
>   dt-bindings: iio: adc: ad4080: add AD4880 support
>   iio: adc: ad4080: add support for AD4880 dual-channel ADC
> 
>  .../bindings/iio/adc/adi,ad4080.yaml          |  53 +++-
>  drivers/iio/adc/ad4080.c                      | 257 +++++++++++++-----
>  drivers/iio/industrialio-backend.c            |  53 +++-
>  include/linux/iio/backend.h                   |   1 +
>  4 files changed, 285 insertions(+), 79 deletions(-)
> 
> 
> base-commit: d2a4ec19d2a2e54c23b5180e939994d3da4a6b91


