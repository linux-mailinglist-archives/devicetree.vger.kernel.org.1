Return-Path: <devicetree+bounces-313522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Mvf9DF32M2pxJwYAu9opvQ
	(envelope-from <devicetree+bounces-313522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:45:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 854836A0ACD
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:45:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WTUt0FFo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313522-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313522-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30F3C30302BC
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF7043B42CB;
	Thu, 18 Jun 2026 13:43:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F0E3D6CAA
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 13:43:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781790204; cv=none; b=dncfprTK3CK6OcnmwpzIoohcJYFZsiAsYfF0jj/+E2X4K7P5EVpRQ5zo8Luw6Ev0Fs6D/TmTZuIS+X6K4CiM2fQ+1sNPAG4+nKT4jV6yAzhOR8v6MG1njogxixWBPw8gzFVIkF8JzLWjqdw/ie8niOhR8wjwqK9n5KbimASKBsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781790204; c=relaxed/simple;
	bh=ijs2XmA0GdUX3QzhsFd9ZHsbQi+NMKaiUisgz7cEI90=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kkifA0DJ99guNL1F1sCAAahuRKN6nUCrFpIZCRrwU+GqSgltyUruDGGu/daFfr5j7q2bb7SU/TXPiL5FZgkHgBHJ44O4S9P6FCHEkqIVN8AX+j3ZSMD3uC7bzGWrZRqhTZTWOHVjrQptoZ5Nvqxn8am4UFMO4ufgkqg6aL6FIMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTUt0FFo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E4DE1F000E9;
	Thu, 18 Jun 2026 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781790202;
	bh=7UTuvkLxbmUzwauOprXTYxUEK6gg8jyi7UCo840qsnI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WTUt0FFoUBdkdxzvnnSF1+xRL/gUCBW9usdJpHwvv3qaqHbdzw+y7cyfljtsApM5W
	 mHK4ycWpLBcPdq7um+NFp/xXPiOgLQ/2nRUDdZ2Id6znu1xQKyk2TgaTORrst8VdtS
	 IX6axXHdCOxvxYRLgDwJhrkWxVslewHiHc7vDxEbwl573yTV1rjkqLHpJBJkHvyror
	 le5kllx7NimDmiIdYErp3QtRZYa1WlA4cRlqqhvKVzqR9y30cAzoevQCNRVS2S6IW2
	 XaYNBdkzhgvDWFfecHcV7Lv6dBJux7W0Y5LxaFRSXHBq7oexhc0tnYFqvOyhnik3Ps
	 pW+oiwqEpmAEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 12/16] iio: frequency: ad9910: add RAM mode support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618-ad9910-iio-driver-v6-12-79125ffbe430@analog.com>
References: <20260618-ad9910-iio-driver-v6-0-79125ffbe430@analog.com>
 <20260618-ad9910-iio-driver-v6-12-79125ffbe430@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 13:43:22 +0000
Message-Id: <20260618134322.6E4DE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313522-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,analog.com:email,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 854836A0ACD

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Hardware and software profile states become permanently desynchron=
ized if an error occurs while enabling or disabling the RAM channel.
- [High] Firmware upload cancellation requests can be silently ignored due =
to unconditionally resetting the cancel flag.
- [Low] Selecting the `FW_UPLOAD` boolean config symbol from a tristate dri=
ver causes an unmet dependency warning when built as a module.
--

commit 75d72698ebee0a7f4f951b2be1d393940055952b
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: frequency: ad9910: add RAM mode support

Add RAM control channel, which includes RAM data loading via firmware upload
interface and per-profile configuration.

> diff --git a/drivers/iio/frequency/Kconfig b/drivers/iio/frequency/Kconfig
> index 6033f9155b4f7..994d199080ebf 100644
> --- a/drivers/iio/frequency/Kconfig
> +++ b/drivers/iio/frequency/Kconfig
> @@ -29,6 +29,9 @@ config AD9910
>  	tristate "Analog Devices AD9910 Direct Digital Synthesizer"
>  	depends on SPI
>  	depends on GPIOLIB
> +	select CRC32
> +	select FW_LOADER
> +	select FW_UPLOAD

[Severity: Low]
Does selecting FW_UPLOAD from a tristate driver trigger an unmet dependency
warning when built as a module?

Because FW_UPLOAD is a boolean symbol that depends on FW_LOADER, and
FW_LOADER can resolve to 'm', selecting FW_UPLOAD forces it to 'y'. Could
this be avoided by using "depends on FW_UPLOAD" instead?

> diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad991=
0.c
> index 3fe97aa887c3a..c4e179dda715e 100644
> --- a/drivers/iio/frequency/ad9910.c
> +++ b/drivers/iio/frequency/ad9910.c
[ ... ]
> @@ -1066,6 +1167,41 @@ static int ad9910_write_raw(struct iio_dev *indio_=
dev,
>  						   AD9910_CFR2_DRG_DEST_MSK |
>  						   AD9910_CFR2_DRG_ENABLE_MSK,
>  						   tmp32, true);
> +		case AD9910_CHANNEL_RAM:
> +			if (AD9910_RAM_ENABLED(st) =3D=3D !!val)
> +				return 0;
> +
> +			/* swap profile configs */
> +			for (i =3D 0; i < AD9910_NUM_PROFILES; i++) {
> +				tmp64 =3D st->reg[AD9910_REG_PROFILE(i)].val64;
> +				ret =3D ad9910_reg64_write(st,
> +							 AD9910_REG_PROFILE(i),
> +							 st->reg_profile[i],
> +							 false);
> +				if (ret)
> +					break;
> +				st->reg_profile[i] =3D tmp64;
> +			}
> +
> +			if (ret) {
> +				/*
> +				 * After the write failure, profiles 0..i-1 were
> +				 * already swapped in SW, but Hw registers are
> +				 * still pending an IO update, so swap them back
> +				 * in SW to keep the state consistent.
> +				 */
> +				while (i--) {
> +					tmp64 =3D st->reg[AD9910_REG_PROFILE(i)].val64;
> +					st->reg[AD9910_REG_PROFILE(i)].val64 =3D st->reg_profile[i];
> +					st->reg_profile[i] =3D tmp64;
> +				}
> +				return ret;
> +			}
> +
> +			tmp32 =3D FIELD_PREP(AD9910_CFR1_RAM_ENABLE_MSK, !!val);
> +			return ad9910_reg32_update(st, AD9910_REG_CFR1,
> +						   AD9910_CFR1_RAM_ENABLE_MSK,
> +						   tmp32, true);

[Severity: High]
Can the hardware and software states become permanently desynchronized if an
error occurs during this transition?

If a write fails midway through the profile loop, the rollback loop restores
the software cache but doesn't seem to rewrite the original values to the
hardware SPI buffers. This leaves the successfully written swapped profiles
still pending in the hardware.=20

Additionally, if the entire profile swap completes but the subsequent
ad9910_reg32_update() for CFR1 fails, the function returns immediately
without any rollback.

Would the next unrelated operation that triggers an IO update unintentional=
ly
commit these partially or completely swapped profiles to the active registe=
rs?

[ ... ]
> @@ -1335,6 +1506,126 @@ static int ad9910_read_label(struct iio_dev *indi=
o_dev,
>  	return sysfs_emit(label, "%s\n", ad9910_channel_str[chan->address]);
>  }
> =20
> +static enum fw_upload_err ad9910_ram_fwu_prepare(struct fw_upload *fw_up=
load,
> +						 const u8 *data, u32 size)
> +{
> +	struct ad9910_state *st =3D fw_upload->dd_handle;
> +	const struct ad9910_ram_fw *fw_data =3D (const struct ad9910_ram_fw *)d=
ata;
> +	size_t wcount, bcount;
> +
> +	if (size < sizeof(struct ad9910_ram_fw))
> +		return FW_UPLOAD_ERR_INVALID_SIZE;
> +
> +	if (get_unaligned_be32(&fw_data->magic) !=3D AD9910_RAM_FW_MAGIC)
> +		return FW_UPLOAD_ERR_FW_INVALID;
> +
> +	if (get_unaligned_be16(&fw_data->version) !=3D AD9910_RAM_FW_V1)
> +		return FW_UPLOAD_ERR_FW_INVALID;
> +
> +	wcount =3D get_unaligned_be16(&fw_data->wcount);
> +	bcount =3D size - sizeof(struct ad9910_ram_fw);
> +	if (wcount > AD9910_RAM_SIZE_MAX_WORDS ||
> +	    bcount !=3D (wcount * AD9910_RAM_WORD_SIZE))
> +		return FW_UPLOAD_ERR_INVALID_SIZE;
> +
> +	bcount +=3D sizeof(fw_data->cfr1) + sizeof(fw_data->profiles);
> +	if (crc32(0, &fw_data->cfr1, bcount) !=3D get_unaligned_be32(&fw_data->=
crc))
> +		return FW_UPLOAD_ERR_FW_INVALID;
> +
> +	guard(mutex)(&st->lock);
> +	st->ram_fwu_cancel =3D false;

[Severity: High]
Does unconditionally clearing the cancellation flag here introduce a race
condition where cancellations requested prior to the worker thread starting
are lost?

If a user cancels the upload via sysfs immediately after triggering it, the
framework calls ad9910_ram_fwu_cancel(), which correctly sets
st->ram_fwu_cancel =3D true.

However, when the background worker thread begins and calls
ad9910_ram_fwu_prepare(), it will overwrite the cancellation state with
false. Could this allow the firmware upload to proceed and flash the device
instead of aborting?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-ad9910-iio=
-driver-v6-0-79125ffbe430@analog.com?part=3D12

