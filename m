Return-Path: <devicetree+bounces-304448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJv3KRPLGWqNzAgAu9opvQ
	(envelope-from <devicetree+bounces-304448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 19:21:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFBE60656B
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 19:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 67A4E304910F
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 17:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A8238B14C;
	Fri, 29 May 2026 17:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFP3VWdW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350D037E31E;
	Fri, 29 May 2026 17:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780074953; cv=none; b=TOYQ1C3czMKObDzoLqZ1oMZgtb3G9VK5+Zh/s0yOGbI/6vi0J6mZYz2ibVs/0q2ezYREB8xKsqSNN/v2IfbrUk1VE07zayHHln3tfPyKxlMVoVuGNe9rFUmSkGRMOWP8hM+m9CkDHxY7VEwqfyUNTngSDoY4nlyalBo4q2pnCLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780074953; c=relaxed/simple;
	bh=Y0O03j0cA9gGw6WXGjPcKX0NTk+VSbTwAAPV++hANrU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MQCQUGET+A8267sGnecW43CmQJxH7m3I0IF4UV783/JHmWFSc5E85XE8zcRU8XdWULa8pVsGdhyzAH3H1hOyDCrUMgv8oz4U23ad2n+L0+W6faLyPFs81m9ZhgSfmzXvah/csktMQvtIY39TG1/C3gZFmoWzpxGa8DVkjr7IOCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFP3VWdW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F16C41F00893;
	Fri, 29 May 2026 17:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780074950;
	bh=C7QcMBTbFWnnf2RtE1xWXqG70puWNTchmG3gV+hfvHk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hFP3VWdWtrTronQRqrIDxOcLACeB3gucKNpHROuxJdUolxoX2jssSnSqU1bOBTsj0
	 1Dl5qla7P3s6mYHUI8gDAs34XA3mf0pPW/eUyMINQlx9G1LkWbkuOdsTB/zDXZWj3U
	 Cd/tQzmO+xlstYF/JETmyOr7ImdsBZmsrQOG61zvWEm6iSuwIiUkLFgZZmcIZhBtWc
	 qfwgwSZYvy+hrRtsjR4GbtBXH/D1Xg2NLpCpfy92qL67kDbDdVgW0mp+1TFvyiPJ7x
	 zQtEPnudVqxLK67uuZJ4sCChmTCptVctnKycpBX9su8pDJmeYNStnh+TNu0PbanmE+
	 OsLN9HNijFpoQ==
Date: Fri, 29 May 2026 18:15:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, <linux@analog.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/2] iio: adc: ad4080: add support for AD4884
Message-ID: <20260529181542.7df3bbc5@jic23-huawei>
In-Reply-To: <20260529141353.8492-1-antoniu.miclaus@analog.com>
References: <20260529141353.8492-1-antoniu.miclaus@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304448-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 4CFBE60656B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026 17:13:51 +0300
Antoniu Miclaus <antoniu.miclaus@analog.com> wrote:

> Add support for the AD4884, a dual-channel, 16-bit, 40 MSPS SAR ADC,
> to the ad4080 driver family.
> 
> Patch 1 adds the AD4884 compatible string to the devicetree binding.
> Patch 2 adds the chip info and device ID to the driver.
> 
> Changes in v2:
> - Add rationale for no fallback compatible in commit message.
> - Collect Acked-by tag.
> 
Applied

Thanks,

J
> Antoniu Miclaus (2):
>   dt-bindings: iio: adc: ad4080: add AD4884 support
>   iio: adc: ad4080: add support for AD4884
> 
>  .../bindings/iio/adc/adi,ad4080.yaml           |  5 ++++-
>  drivers/iio/adc/ad4080.c                       | 18 ++++++++++++++++++
>  2 files changed, 22 insertions(+), 1 deletion(-)
> 


