Return-Path: <devicetree+bounces-267186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLXJN0REm2ljxQMAu9opvQ
	(envelope-from <devicetree+bounces-267186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:00:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4416FFEC
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E1933015464
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EFA35B633;
	Sun, 22 Feb 2026 18:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz/K0ljR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DD9352C35;
	Sun, 22 Feb 2026 18:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771783219; cv=none; b=djx1rZPpvOs/9eZBDkShY6jZ1KKP2llyKkmB1I14KwEcyrkqbLhmZcrsBbMiai+8QRV1m0I48y+R02PjVabJk9A0qcLQHtRpBbvwFf1IH5dQmzjjLP70t1a2XnOTLnP/NI++LlPdzldgBhOdUUzBUbdLgftqzFyob205FDQcWsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771783219; c=relaxed/simple;
	bh=MF75ZTbkKIM3u79HlY8V22eBdceDQI55F7DkoNYPYRU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sTANlArvIIwJjwU8PdQx0jyG9W2kotLllbWT1u5J6quvRVYZfVhz8QJQCJlH5JeHB1gXe22HVscKRQ74p+lCk+QXkTXB+MvbIN+67xwARlP4GNc2sgEDcxxx54XoejGiiaNp5AyvHNcZzNQz1UpC+OluYsfkDGTYazSuHEbQZG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz/K0ljR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B68DC116D0;
	Sun, 22 Feb 2026 18:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771783219;
	bh=MF75ZTbkKIM3u79HlY8V22eBdceDQI55F7DkoNYPYRU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Iz/K0ljRzsGJdwwhy8HVfZw7g6yfEGjcUi7D3zPrcCU2yc+Td0mOR0h5Qm/Q4YPbp
	 ma5YOJzUI9qbxzP5Eq+juKX2vxkZPz2wGmRbodLyCLZadDNysI0Zhn0ZyOWczqGZt3
	 N83C5l7Fh3wWvd+L7HcR/u8+3ZPPW+WbztmQfGMVDtEdZIcaFMMdWB2hcxiGM7jI25
	 LQBlEE5aJrr5ewCh/QeMeYUONyX41BRA8greZ/Em/7Dim+ZcxvJmfLfAW5c5GqxGoM
	 ty2mLqwt1yiasRQK087ID81mzi072If6o7V6wuUuCGsBWtPKzyUmwSaSZr28tq8Ve0
	 iSm4KYB5EWoGA==
Date: Sun, 22 Feb 2026 18:00:09 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Michael Hennerich
 <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Conor Dooley <conor.dooley@microchip.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>, Andy Shevchenko
 <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v5 00/11] iio: amplifiers: ad8366: driver update and dt
 support
Message-ID: <20260222180009.28f9710e@jic23-huawei>
In-Reply-To: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
References: <20260216-iio-ad8366-update-v5-0-7e6091357d02@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75A4416FFEC
X-Rspamd-Action: no action

On Mon, 16 Feb 2026 17:10:44 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> This patch series updates the AD8366 amplifier/attenuator driver with
> modern device resource management, including support for additional
> device variants.
Series applied to the testing branch of iio.git. I'll be rebasing
on rc1 once available and then pushing it out for linux-next to pick up.

Thanks,

Jonathan

