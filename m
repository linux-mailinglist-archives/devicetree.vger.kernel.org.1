Return-Path: <devicetree+bounces-263156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aI9xLbP/hGl47QMAu9opvQ
	(envelope-from <devicetree+bounces-263156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:38:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F96DF7355
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 21:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2A97301BCFC
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 20:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D31532E121;
	Thu,  5 Feb 2026 20:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh3D1RJf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4402F3601;
	Thu,  5 Feb 2026 20:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770323838; cv=none; b=MAYy07hUrw5mrYIv/SUWdgPXLiwhzePlDroxCZQuf8oklzxFLptYDN6UARGCgqW1cED7J26nOgOOts/v+IKku3YwyNO4QM+Ndr0Weoc6SSGvlt5D6PQt8JK6K858iqQZ5oa0LyUZbgplX40IlojnSuF8/XCcyOQ+CKqty4/tzPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770323838; c=relaxed/simple;
	bh=rdXiqU0QxYRPMV3wHPngoO6VMLe2cHcWG4Fzs72YKas=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qX+/pyjnDC3G0miTWmLKg1wXQQsXslNqTAyYlF30SgKShShmnjnIDqwm8gpiru9xwaagXpk+g+PaJgR6rLFPnUlh60A6S6wlnKs1rxUWlD3TXVlZ7OZqp2vJeXMNwFuhkHIIG08VY806ZiTQCkPIzYaewkrnsKFiCNg5JlzAm6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh3D1RJf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E044C4CEF7;
	Thu,  5 Feb 2026 20:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770323838;
	bh=rdXiqU0QxYRPMV3wHPngoO6VMLe2cHcWG4Fzs72YKas=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jh3D1RJfDv7hIFjIE9Mev5cVPI50keoEcdydFC9mdo4hQFyb5DoaegwnJrOhirPbg
	 iJlYAu8vtYRptszxE+y5nMxDFOqt0LA72wxqNnT/35LlGTa/O7b8dHk0zCYuygamLv
	 nMW1ZzIXsfwfrw/0SzSANAR7+0Yu8qiDYOvMpBm9Bnj1kCK8/gblhN7hPBLXcOJWd5
	 +Ah0FYmofO+htOEUInXQtSHNgeh2BwzlllkCW+L82sqWftkkaFNb139lH5Fy5ZKpua
	 mz56JFkgT3Q7Ct3FFdElx/iEnp54I8STLlFVAmGDvcCdpdCfGFom7ogrs37QWUthdB
	 M7DEvO26mZ3Sg==
Date: Thu, 5 Feb 2026 20:37:06 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, Michael Hennerich
 <Michael.Hennerich@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>
Subject: Re: [PATCH v3 0/9] iio: amplifiers: ad8366: driver update and dt
 support
Message-ID: <20260205203706.7c440a20@jic23-huawei>
In-Reply-To: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
References: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263156-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2F96DF7355
X-Rspamd-Action: no action

On Tue, 03 Feb 2026 11:24:06 +0000
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> This patch series updates the AD8366 amplifier/attenuator driver with
> modern device resource management, including support for additional
> device variants.
> 
> Adds support for multiple digital step attenuators:
> - ADRF5720: 0.5 dB LSB, 6-Bit, Digital Attenuator, 9 kHz to 40 GHz
> - ADRF5730: 0.5 dB LSB, 6-Bit, Digital Attenuator, 100 MHz to 40 GHz
> - ADRF5731: 2 dB LSB, 4-Bit, Digital Attenuator, 100 MHz to 40 GHz
> - HMC271A: 1 dB LSB, 5-bit, Digital Attenuator, 0.7 - 3.7 GHz
> - HMC1018A: 1.0 dB LSB GaAs MMIC 5-BIT DIGITAL ATTENUATOR, 0.1 - 30 GHz
> - HMC1019A: 0.5 dB LSB GaAs MMIC 5-BIT DIGITAL ATTENUATOR, 0.1 - 30 GHz
> 
> Device Tree Support:
> - Adds device tree binding documentation
> - Adds device tree compatible strings for all supported devices
> - Favor chip info tables over device type.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
I took a look through and didn't have anything significant to add.

Looks like it'll be good to go for v4. We have plenty of time
to make things extra nice as I won't be merging anything else for
the coming merge window.

Thanks,

Jonathan

