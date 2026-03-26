Return-Path: <devicetree+bounces-281006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDniKm/txGnN5AQAu9opvQ
	(envelope-from <devicetree+bounces-281006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8D33146C
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9811C301D259
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC393AA4F1;
	Thu, 26 Mar 2026 08:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OebK0E92"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9948B391839;
	Thu, 26 Mar 2026 08:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774513496; cv=none; b=WD7V59V7IEVH08HQDCT2+cz8owMHPcgPh++y/Am4PMzBVngXSN7rI4MvsL8H26JJ7hObrNx4CTyh3u+xfMLVu4A3ptRG+2KxoXkLpSMyU0KLmBfUZLZKkMXNgVb0a07h9KQp2eKTskYoHo5osg9A61yP7mm2PzxBCAzy9eaiaWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774513496; c=relaxed/simple;
	bh=Xxuqb83qx+6zRb7dnGp3FsD7y7QzQo5i74dVAFpUcKc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tgdP/X0Jl7Oto6y4eMnqeYsYOIyFF9p1YITHcUHLnDzod6qtc2PTD5gBeG9ZpLISK4T80UlL4Qqpq7QxuLCBkl2pJVJHrM1NxLa63G6VVfsMFOJgNnaeZENlYcTXHCvJhbQfrEx2F3gGzgdUTRb+YOf6i6/sOfU0xCPD96WDTLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OebK0E92; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71621C116C6;
	Thu, 26 Mar 2026 08:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774513496;
	bh=Xxuqb83qx+6zRb7dnGp3FsD7y7QzQo5i74dVAFpUcKc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=OebK0E92BM0FnNT0vLiTvxFjeBb+2BYGZZnthSZjqmQZn4+sOllqb2Pc9MvemXo0r
	 IiDupyxD3eY0cJph/LJuqDUS5WDgCdfGK5W+paEG2uhk3XyZkpWwV+gbIHNVKSQgm0
	 RTyTUmwbPh0mvrHQXSM+FUDeCmLPSpw+ysJwfHcn/VXY1205I6G/AeaBwNbvfuYHI/
	 04riaeOit9K+bMO1XRXVO/raaJZFPov3HZ5JitFtxnTOhrPuxXmtESn6a/qpDmFDsm
	 tUDXUIFXXQz3bT9Bezok4ktB1HR+wYPjGQK1/wSi+FVfitJ1SnhrBN7nL0l7OTBr9v
	 ay8Da3u9WFRug==
Date: Thu, 26 Mar 2026 08:24:47 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Siratul Islam <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 0/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <20260326082447.5e447606@jic23-huawei>
In-Reply-To: <20260325202005.29822-1-email@sirat.me>
References: <20260325202005.29822-1-email@sirat.me>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281006-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 49A8D33146C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 02:19:40 +0600
Siratul Islam <email@sirat.me> wrote:

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
> vdd-supply is required for st,vl53l1x. It is not globally required
> for backwards compatibility with existing st,vl53l0x devicetrees
> that omit it.
Applied to the testing branch of iio.git.

Thanks,

J
> 
> ---
> Changes in v8:
> - Use devm_regulator_get_enable() and devm_reset_control_get_optional_exclusive_deasserted().
> - Drop i2c_check_functionality().
> - Remove power_on/power_off helpers.
> - Require vdd-supply only for st,vl53l1x.
> 
> 
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
> - Drop tag from Krzysztof Kozlowski for vdd-supply requirement change.
> 
> Changes in v5:
> - Patch 1: No changes. Collected Reviewed-by tag from Krzysztof Kozlowski.
> - Switch XSHUT pin handling from the GPIO consumer API to the Reset controller API.
> - Drop <linux/gpio/consumer.h> and include <linux/reset.h>.
> 
> 
> Changes in v4:
> - Move i2c_check_functionality() to the top of probe before allocations.
> - Use struct u32_fract for oscillator correction math.
> - Explicitly set .cache_type = REGCACHE_NONE.
> - Document intentional predisable drain
> - Use dev_err_probe() for firmware boot timeout and remove duplicate IRQ request error message.
> - Use sizeof() in regmap bulk read/writes instead of hardcoded lengths.
> - Add missing headers (<linux/math.h>, <linux/time.h>, <asm/byteorder.h>).
> - Various formatting cleanups per Andy's review.
> 
> 
> Changes in v3:
> - Merge DT binding into existing st,vl53l0x.yaml (per Krzysztof).
> - Use "reset-gpios" in the binding but xshut_gpio in the driver since that's the actual pin name.
> - Replace manual polling loops in chip_init and read_proximity with regmap_read_poll_timeout().
> - Remove irq_get_trigger_type() and pass IRQF_NO_THREAD directly (per Andy).
> - Drop struct i2c_client from private data and store irq as int instead. Derive struct device from regmap where needed.
> - Add dev_err_probe() to first devm_request_irq() error path.
> - Replace linux/device.h with linux/dev_printk.h, add linux/array_size.h, linux/err.h, linux/types.h (per Andy).
> - Use USEC_PER_MSEC for poll timeouts.
> - Remove unnecessary casts.
> - Divide long config blob to 8 values per line.
> - Rename goto label to notify_and_clear_irq and drop unused dev_dbg.
> - Add datasheet section reference for boot delay comment.
> - vdd-supply no longer required in shared binding to avoid breaking existing st,vl53l0x devicetrees.
> 
> 
> Changes in v2:
> - Skip software reset in chip_init when xshut GPIO is available, since the device was already hardware-reset during power-on.
> - Rename "reset" GPIO to "xshut" to match the datasheet pin name and updated DT binding accordingly.
> - Make vdd-supply required in DT binding.
> - Use reg_sequence arrays and regmap_multi_reg_write() for distance mode configuration.
> - Switch to a hardirq handler with iio_trigger_poll() and IRQF_NO_THREAD instead of a threaded handler.
> - Drop IRQF_TRIGGER_FALLING fallback. Leave trigger type to firmware/DT.
> - Use iio_validate_own_trigger() instead of a custom validate_trigger, drop trig pointer from driver data.
> - Switch usleep_range() to fsleep() throughout and add comments for sleep values.
> - Don't fail probe on unknown model ID, just log with dev_info().
> - Split stop_ranging cleanup into its own devm action, separate from power_off.
> - Add missing includes: device.h, bitfield.h, completion.h, mod_devicetable.h.
> - Use FIELD_GET() for range status checks.
> - Move configure_irq() closer to probe(), use dev_err_probe() for its error paths.
> - Fix buffer ops symmetry: postdisable -> predisable.
> - Drop reg_format_endian from regmap config.
> - Various alignment and formatting fixes.
> 
> Link to v7: https://lore.kernel.org/linux-iio/20260325063254.18062-1-email@sirat.me
> Link to v6: https://lore.kernel.org/linux-iio/20260319190738.151614-1-email@sirat.me
> Link to v5: https://lore.kernel.org/linux-iio/20260313113737.151881-1-email@sirat.me
> Link to v4: https://lore.kernel.org/linux-iio/20260312183721.40482-1-email@sirat.me
> Link to v3: https://lore.kernel.org/linux-iio/20260311224044.21480-1-email@sirat.me
> Link to v2: https://lore.kernel.org/linux-iio/20260308113728.40860-1-email@sirat.me
> Link to v1: https://lore.kernel.org/linux-iio/20260303090253.42076-1-email@sirat.me
> 
> Siratul Islam (2):
>   dt-bindings: iio: proximity: add ST VL53L1X ToF sensor
>   iio: proximity: add driver for ST VL53L1X ToF sensor
> 
>  .../bindings/iio/proximity/st,vl53l0x.yaml    |  24 +-
>  MAINTAINERS                                   |   7 +
>  drivers/iio/proximity/Kconfig                 |  15 +
>  drivers/iio/proximity/Makefile                |   1 +
>  drivers/iio/proximity/vl53l1x-i2c.c           | 756 ++++++++++++++++++
>  5 files changed, 800 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/iio/proximity/vl53l1x-i2c.c
> 
> --
> 2.53.0
> 
> 


