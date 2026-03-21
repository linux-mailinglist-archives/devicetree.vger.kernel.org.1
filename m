Return-Path: <devicetree+bounces-278611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CHFLSC8vmlIZAMAu9opvQ
	(envelope-from <devicetree+bounces-278611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 16:41:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 753D72E6294
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 16:41:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C5619300CA38
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 15:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4B2391847;
	Sat, 21 Mar 2026 15:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOM1+CcS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A293318BA8;
	Sat, 21 Mar 2026 15:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774107678; cv=none; b=jGe1C0M78rAWhlTHknENaYWGQMcF4sBlV3FDD8qd1IrwIR/3XNxW6NoWVwlofiMN0OAwRv/RPnd3vDqzE6bk7cov6IIbrgAjSe1g6WB2kl1I4ytoUkZAsKHFyGAzI+h8wCsIn0JoMImtn2ieEkMhbP2n5Yxc6L2yIvaN/w/1p7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774107678; c=relaxed/simple;
	bh=ZW7lnFfrC21mPclbeUUTcSK17EwEfNIv6CxVgFstctQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RZ/PFtER/opsv0QsKLYQUL4Zd/p3qAdodIBC/CKqVbmqBEE3xDmpYq9c74sEKWT2iyc0/zOOXH/9vC3QsUYas1RGrDNVumu1FU6y+2stM0SpqU9VVuTBD4UIVpt8IxwT9AosLv/l2b/iNDTVC6lt8AE1BVOWES6cA3eCYejiqk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOM1+CcS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D686C19421;
	Sat, 21 Mar 2026 15:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774107678;
	bh=ZW7lnFfrC21mPclbeUUTcSK17EwEfNIv6CxVgFstctQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UOM1+CcS7Nvw/ekzHHhYX5CVpN7ij/r8WAYEC2y+O+9f4ao8GNO43xfZdjwfGWzYM
	 Ox2321i9SZsG+9/dnDzhOlbMHJ0C2BavlqXiHFS7iFwNGQMx0KhQmPgnSEbU6OFhKP
	 0thTlWRoIgqZGzIl+ztel2pC/4N46YgbnWy21bLGcMM8qzBcaYDDPAbWuxcnX1Z0PB
	 mcnDJI2KBH7t+Fo81GAeGdJta7lYIxBgOxToDso0K+ZTbtTNIpoRP5HT50UlrWbsho
	 JInztTmHWzb07ZfITyAmY1bpfP1JOjedujIr4eG2OR8F3h1+CDsOXB4kWIs2Nkljko
	 lSuNW8UOGX5sA==
Date: Sat, 21 Mar 2026 15:41:09 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: David =?UTF-8?B?TWFyaW5vdmnEhw==?= <david.marinovic@pupin.rs>
Cc: andriy.shevchenko@intel.com, dlechner@baylibre.com, nuno.sa@analog.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 michael.hennerich@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] iio: dac: ltc2632: add support for LTC2654 DAC
 family
Message-ID: <20260321154109.79266899@jic23-huawei>
In-Reply-To: <20260320150957.105571-1-david.marinovic@pupin.rs>
References: <20260318135736.91564-1-david.marinovic@pupin.rs>
	<20260320150957.105571-1-david.marinovic@pupin.rs>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278611-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 753D72E6294
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 20 Mar 2026 16:09:45 +0100
David Marinovi=C4=87 <david.marinovic@pupin.rs> wrote:

> From: David Marinovic <david.marinovic@pupin.rs>
>=20
> Greetings!
>=20
> This is v3 of the LTC2654 DAC support patch series.
>=20
> The LTC2654 is a quad-channel, 16-/12-bit DAC with internal
> reference voltage and SPI interface, sharing the same 24-bit
> SPI protocol as the LTC2632/2634/2636 family.
>=20
> The LTC2654L-16 variant was tested on a Phytec phyCORE-STM32MP1
> board with the DAC connected via SPI1. The driver probes successfully
> and all 4 channels are accessible via IIO sysfs.
>=20
> Changes in v3:
> - Patch 1 unchanged
> - DT bindings use fallback compatibles for LTC2654-L12 and
>   LTC2654-H12, which are register-compatible with LTC2634-L12
>   and LTC2634-H12
> - LTC2654-L16 and LTC2654-H16 keep separate compatible strings
>   as no existing compatible supports 16-bit resolution
> - 12-bit variants reuse existing LTC2634 chip_info structures,
>   so only two new chip_info structures are added for 16-bit variants
>=20
Applied to the testing branch of iio.git (which will become togreg once
the bots let me know if they found any problems).

I made a few minor tweaks as called out in specific patches.

Thanks,

Jonathan

>=20
> David Marinovic (3):
>   iio: dac: ltc2632: drop enum and use individual chip_info objects
>   dt-bindings: iio: dac: ltc2632: add LTC2654 compatible strings
>   iio: dac: ltc2632: add support for LTC2654 DAC family
>=20
>  .../bindings/iio/dac/lltc,ltc2632.yaml        |  12 +-
>  drivers/iio/dac/ltc2632.c                     | 367 +++++++++---------
>  2 files changed, 188 insertions(+), 191 deletions(-)
>=20


