Return-Path: <devicetree+bounces-280230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AmqMICVw2ncrgQAu9opvQ
	(envelope-from <devicetree+bounces-280230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:57:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A5320FAF
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 386A130DAF0E
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 07:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 574493932ED;
	Wed, 25 Mar 2026 07:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5pWatf8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1643914EF;
	Wed, 25 Mar 2026 07:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774425306; cv=none; b=hFMP0cbFx1pPjNFBpjWsD6EKzVBNwTRVgKgQ9KFZaPngRe7ZcPNEjMQPbZlHTn1qdgXAkqXGpuOBRoYNSM0sqMB3U5sWGSThQv2nvpEi60z6GyNBPGHgcKSEu5RM7Lso8gyCafs0hHxLv6rbm4R0zx6/XpAq0OFiF2N5nQe1HwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774425306; c=relaxed/simple;
	bh=l2DQVYyY4szPwj0xCKM1593pQzgiFuVnY+64oqSHVBU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RWFA6v94cahHkKxB82nlG6+mLj9a6zEaXhb2UThGXt3R8YhYEkG2B1FFqW+JQzSj/LbWxUUZmS6/tUvLvhw2WhX+nj5u4OqFsn7ZiPfYZ33i4bze6/oSy8yRyh9nRrGOtGvEXezOt9p3HMYZ7RlQUmji0JkhLUE0KjJBPPv+Kh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5pWatf8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B45C4CEF7;
	Wed, 25 Mar 2026 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774425306;
	bh=l2DQVYyY4szPwj0xCKM1593pQzgiFuVnY+64oqSHVBU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W5pWatf82dWusuQ4Kf/4KoQhxpZOnGDYsuWUrj+/wU5BP0Qcgu8MK7YGjSYX9W8X7
	 ZDyCm5tTWCQWOrnxqYe7pdTlBnxfA84My6k2KEEv5uUQCD+AQHK+xv3NQrCpO1Qtu+
	 NQdNF2oI1WHO8m9VuwV6JQAx/MyHgWoLXKaPfdAWH7CbkkBZUG5hmaz7gVbSybGY54
	 zR5YbYh0Kh8uR+NwG7aOBzShsGSJhRo9iy3FVIcIBZn6vIBwt92FVaNd65t9fJ8qa+
	 PVd7Hj4YIF9KfTItzUBdYxJhdbMEnVEvBgNWMIUOVhslaRYYILQz66vm5NgSlPUTGl
	 dioDlSd4yGHjA==
Date: Wed, 25 Mar 2026 08:55:03 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Siratul Islam <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <20260325-perfect-locust-of-serendipity-b0cdfc@quoll>
References: <20260325063254.18062-1-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325063254.18062-1-email@sirat.me>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280230-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 415A5320FAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 12:32:21PM +0600, Siratul Islam wrote:
> This series adds support for the STMicroelectronics VL53L1X
> Time-of-Flight ranging sensor.
> 
> The VL53L1X is a ToF laser-ranging sensor with I2C interface,
> capable of measuring distances up to 4 meters. The driver
> supports both interrupt-driven and polled operation.
> 
> Why a separate driver is needed (instead of extending vl53l0x-i2c.c):
> The VL53L1X is fundamentally different from the VL53L0X despite the
> similar naming. Extending the existing driver would require rewriting
> the majority of it.
> 
> Key differences include:
> - A different register map (16-bit addresses vs. 8-bit addresses).
> - Requires a 91-byte firmware configuration blob to be loaded at boot.
> - Requires a VHV calibration cycle.
> - Has distance mode and timing budget configurations.
> - Uses the regmap API rather than raw i2c_smbus calls.
> 
> I also reviewed other drivers in drivers/iio/proximity/ and can
> confirm this IP block does not appear to be shared by any other
> existing driver.
> 
> Tested on Raspberry Pi 5 with a VL53L1X breakout board.
> 
> Note on vdd-supply:
> vdd-supply is now required. The VL53L0X required a physical
> regulator, but it did not specify the requirement in the binding.
> It should have always been there. The VL53L1X also requires it.
> Hence I added the requirement.
> 
> ---
> Changes in v7:
> - Add VL53L1X_REG_ prefix for register defines.
> - Use iio_push_to_buffers_with_ts().
> - Use continuous ranging and drop postenable/predisable.
> - Add comments for XSHUT reset, default config values.
> - Drop vdd-supply description in binding and comment in driver.
> - Add ABI rationale for vdd-supply to commit message (per Krzysztof, Jonathan).
> 
> 
> Changes in v6:
> - Make vdd-supply required. Add descriptions to vdd-supply and reset-gpios (per Jonathan).
> - Check reset_control_deassert() return value (per Andy).
> - Use volatile table for result registers and caching for the rest. Also mark write-only registers.

So where did you explain dropping tag as I requested? Did you read the
exact paragraph I asked you to read?

Best regards,
Krzysztof


