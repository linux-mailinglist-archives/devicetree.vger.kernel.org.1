Return-Path: <devicetree+bounces-265633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOVZFbERkmm/qAEAu9opvQ
	(envelope-from <devicetree+bounces-265633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:34:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C1213F68F
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 19:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46A6B30073F0
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 18:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD042BDC04;
	Sun, 15 Feb 2026 18:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElEMuAg2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062421E1A17;
	Sun, 15 Feb 2026 18:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771180462; cv=none; b=aFnRWBPmktufXcVJ0pix5+O/r51gTTkRlv/m25GLllJ6oiQ+ba9Kx7T40TatZOM8AZWy3OY0kKaCMRfrW2Eq1mddT/ZWFXRayCQWFSC4mf9ez5qfTuY1sl1ugOmv5mqJo0MEppVduBIlCgBCJdY1SZmd97w3n2a/MFZqBbNL140=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771180462; c=relaxed/simple;
	bh=1KmErR3UxeUsw8DhstYeBYIRIVdu/nH6nbZPcHmH8Rg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gjeLY+ZibXeGBexXzrI/cavlOHsZWVAZiMvaqw1w1PlwwM5qeyJymWBiR1NubQzu0V1e0zJ5GkodjebOYYNyxClJufA9SA03SRafDuXvwmCY2mCKduwxp2jHK8XTqjs6diw8i9vzkQCuYu9AcgAs2tDAyZGpd83+TnSDe9kl5Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElEMuAg2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55088C4CEF7;
	Sun, 15 Feb 2026 18:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771180461;
	bh=1KmErR3UxeUsw8DhstYeBYIRIVdu/nH6nbZPcHmH8Rg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ElEMuAg299K8CnRWf5yboTvTBO0KbduE6se2mndSvFWX1YdiowYg5OjyyCdVSRztN
	 PNpFCQ9TOkGxuw6hEv+N6+GBe87gt9WrZJ0I/bXSGbVBgoef2CuLvSgBG2bNKjApR2
	 5sXojwliOCZToireGJJIbaPluE8dTZNG+8sPM1IwhcgB7jqXzFrpCAS9VLmFOZZN9z
	 U7Jy7u+hkTo2rgkGqZzd70jLNjSR6pVYm1sdfQii6QnzuCsw66zFK1OuwCLdWqctf5
	 Q3CUJsjWI+rxTsNlzpXiHBhdtFD9afONrTIulGAfDccQ/ClEm4LX1IA1eY0waa68Yv
	 ggFGYNq88cMeA==
Date: Sun, 15 Feb 2026 18:34:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Olivier Moysan
 <olivier.moysan@foss.st.com>, Mark Brown <broonie@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>
Subject: Re: [PATCH v3 0/5] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
Message-ID: <20260215183410.2bbf136e@jic23-huawei>
In-Reply-To: <20260213144742.16394-1-antoniu.miclaus@analog.com>
References: <20260213144742.16394-1-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265633-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B3C1213F68F
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 16:47:32 +0200
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC from
> the same family as AD4080.
> 
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface and LVDS data output. The driver uses
> spi_new_ancillary_device() for the second channel's SPI and requires
> two io-backend instances for the data interfaces.
> 
> This series includes:
>   - SPI core fix to allow ancillary devices to share parent's chip selects
>   - New devm_spi_new_ancillary_device() managed helper
>   - Refactored devm_iio_backend_get_by_index() for multi-channel backend lookup
>   - DT bindings update for AD4880
>   - Driver support for AD4880
> 
> Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/ad4880.pdf

Just to be clear on status, this set is held on resolving Andy's
observation (that probably raced with posting this update) that
the SPI core has support for multiple chip select devices and how
this code differs from what that provides.

I haven't looked into this in detail so it may well just be a case
of providing more details on what is going on here vs what the SPI
subsystem supports (which might just be switching all the chip selects
together?)

Jonathan

