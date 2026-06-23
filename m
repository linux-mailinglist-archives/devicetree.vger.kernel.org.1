Return-Path: <devicetree+bounces-314962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id En7YAMDeOmoBJggAu9opvQ
	(envelope-from <devicetree+bounces-314962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:30:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB756B9B5D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:30:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H5YgyPyV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314962-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314962-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CD7B3040206
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0099E390CBE;
	Tue, 23 Jun 2026 19:29:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78F521257E;
	Tue, 23 Jun 2026 19:29:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782242970; cv=none; b=YFs2N8URG8tEEZs+LPSYuv06Pk9chr1qpVvQgeaG7YE9UdZcgxggNUx6vURp4QPVbtspVMqeXRBFLQUp2Pz/7GBywsGCMiK0THf56KzSTmr5qgL175ZBFRDFEGfOhbW56RqzWQk8pC/nudLQYzubbQiDt5Nyqi+FMvsYi41PfiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782242970; c=relaxed/simple;
	bh=3Uk7aiij/nlgnTzwr/9V5zYh/jVa35GVpxEhgJ4C5ZI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HXQwH0jwK93YD0Gn+JIxK5P3sb1TjqWcMQEys3sGhcn4HW2n47x8T/vfPe4mjB4X9LaJicTDyPGWWudMh/tkne5nupki85acrwVHG1vlR7fDJxNGy9Rvaa1BWu3p0i840igFNbnoZE051iy+wvn9ApH3rDsnHLv5asa2z3MjXvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5YgyPyV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589FD1F000E9;
	Tue, 23 Jun 2026 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782242969;
	bh=iJcqmMwEL3J0why7rP4cK5dJzn3dBF4ek5FBrvwCnW0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=H5YgyPyVD3fzchVA5ErwI7QgItj7lLVP8pV+zD7QkdPkvZjof4bsQ2k9QmCiiRuLV
	 YtA4hdXBq0jwSFIHbWvojatm8M202GKRkQIGPJCstQUg7CQuPT4+rJs1Tpm4sQN9R5
	 rGpiWict5cjHq8EHLBKmAp/eW+7Gbq+JTXU6ZUVRy7XMWuhxxCTQz49mMQ06f8Zdfg
	 mfC3PHdjweBCsTZC9Vlz3sw3m7nL4KSc9vdfao7mSyNtN4zaaFDsAPK5kvpyIRlxgZ
	 tLS1UGx3X+VHaFbsi1h+FaMcKQE6NeWTxeDs93eOjU+ZCuGl46+aJIhGHW7Vwp/5wm
	 s0GANIodugtRg==
Date: Tue, 23 Jun 2026 20:29:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Denis Ciocca <denis.ciocca@gmail.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Denis Ciocca
 <denis.ciocca@st.com>, Linus Walleij <linusw@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] iio: magnetometer: st_magn: honour
 st,fullscale-milligauss DT property
Message-ID: <20260623202916.5f5d520e@jic23-huawei>
In-Reply-To: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
	<20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314962-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[herrie.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4BB756B9B5D

On Tue, 16 Jun 2026 15:02:06 +0200
Herman van Hazendonk <github.com@herrie.org> wrote:

> The ST magnetometer core's common probe hardcodes fs_avl[0] -- the
> highest-sensitivity full-scale supported by the chip -- as the
> starting range. For the LSM303DLH that is +/-1.3 G; for the
> LSM303DLHC and LSM303DLM it is +/-2 G; for the LIS3MDL it is +/-4 G.
> 
> That is the right default for "minimal noise floor at a desk", but
> it leaves no margin for boards that pick up appreciable DC bias from
> nearby PCB structures. On the HP TouchPad (apq8060 / tenderloin) the
> LSM303DLH magnetometer is mounted close enough to the surrounding
> power planes that X reads back as the chip's 0xF000 overflow
> sentinel (== -4096 raw, the value the chip publishes when the ADC
> saturates) on every sample at the chip-default range, while Y and Z
> fall well within the +/-1.3 G window.
> 
> Parse the st,fullscale-milligauss device-tree property (documented
> separately in dt-bindings/iio/st,st-sensors.yaml) in the
> magnetometer common probe to select the initial fs_avl entry by its
> mg value. The DT binding pins the accepted value set per compatible
> via allOf/if-then enum clauses, so a malformed mg value fails
> dt_binding_check rather than reaching the driver. Sensors with a
> fixed full-scale (fs.addr == 0: LSM303AGR, LIS2MDL, IIS2MDC) have no
> register to switch and the property is rejected outright for them
> in the binding; the parse block is additionally gated on fs.addr as
> defence in depth against stale DTBs.
> 
> Per-sensor mg ranges are listed in st_magn_sensors_settings[]. For
> LSM303DLH and LSM303DLHC/DLM the valid values are 1300, 1900, 2500,
> 4000, 4700, 5600 and 8100; for LIS3MDL, LSM9DS1-magn and LSM303C-magn
> they are 4000, 8000, 12000, 16000.
> 
> Empirical scale sweep on the HP TouchPad confirmed that on this
> board any fs_avl >= 1 produces non-saturated X readings:
> 
>     scale (0.001 G/LSB)  | X raw    Y raw    Z raw
>     --------------------+-------------------------------
>             1.100        | -4096    44       46    (X saturated)
>             0.855        |  -547    37       37    (clean)
>             0.670        |  -433    94      103    (clean)
>             0.450        |  -266    44       71    (clean)
>             0.400        |  -235    34       65    (clean)
>             0.330        |  -196    27       56    (clean)
>             0.230        |  -145    15       40    (clean)
> 
> 2500 mg is the natural choice for tenderloin: comfortably outside
> the saturation regime while keeping useful precision for compass
> applications.
> 
> Assisted-by: Claude:claude-opus-4-7 sparse smatch clang-analyzer coccinelle checkpatch
> Assisted-by: Sashiko:claude-opus-4-7
Hmm. First time I remember seeing Sashiko credited like this. Seems like pretty much
every patch series of any complexity would end up crediting sashiko.
Out of curiosity were you just looking at reports, or were you running it locally to
help with development?

One thing inline.
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  drivers/iio/magnetometer/st_magn_core.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/iio/magnetometer/st_magn_core.c b/drivers/iio/magnetometer/st_magn_core.c
> index ef348d316c00..6f369e8dddea 100644
> --- a/drivers/iio/magnetometer/st_magn_core.c
> +++ b/drivers/iio/magnetometer/st_magn_core.c
> @@ -10,6 +10,7 @@
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/property.h>
>  #include <linux/sysfs.h>
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
> @@ -608,6 +609,7 @@ int st_magn_common_probe(struct iio_dev *indio_dev)
>  	struct st_sensor_data *mdata = iio_priv(indio_dev);
>  	struct device *parent = indio_dev->dev.parent;
>  	struct st_sensors_platform_data *pdata = dev_get_platdata(parent);
> +	const char *propname;
>  	int err;
>  
>  	indio_dev->modes = INDIO_DIRECT_MODE;
> @@ -628,6 +630,36 @@ int st_magn_common_probe(struct iio_dev *indio_dev)
>  	mdata->current_fullscale = &mdata->sensor_settings->fs.fs_avl[0];
>  	mdata->odr = mdata->sensor_settings->odr.odr_avl[0].hz;
>  
> +	/*
> +	 * Skip fixed-FS chips (fs.addr == 0): no register to switch.
> +	 * The binding rejects the property on these compatibles too;
> +	 * the gate guards stale DTBs.
Isn't it optional?  If so they aren't necessarily stale, people
may have relied on the default - which I now notice isn't specified
in the dt-binding (just replied to that patch).

> +	 */
> +	propname = "st,fullscale-milligauss";
> +	if (mdata->sensor_settings->fs.addr &&
> +	    device_property_present(parent, propname)) {

