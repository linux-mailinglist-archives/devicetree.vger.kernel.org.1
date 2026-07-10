Return-Path: <devicetree+bounces-324707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rl66KKR5UWqSFQMAu9opvQ
	(envelope-from <devicetree+bounces-324707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:00:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBB373FAD7
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:00:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H8uPP9MI;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324707-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324707-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 131E9300A4EA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C56F396D28;
	Fri, 10 Jul 2026 23:00:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC74E360EC9
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 23:00:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783724449; cv=none; b=SvUSTuzjV7LOrdMey5YZyoJWQ4rLWo1LRb1albVCc+/yV4SiE6BMwhcejUxLYAbHm5YXEZtJk7DRh8TrQGcmJV/PFkDpfU5DhtH0C01ipKq+4tSrAV1ThqM1xkMieATdiJn6BtLHCh5z9SRtITVt+24VyPQluYfBCXFX4tuByCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783724449; c=relaxed/simple;
	bh=Dfo6U05ujz2t3fKBinUdN6VXsL2iw/n70h6/qYo+thA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MZwA1oJzp6ds+niihvkCTVYHE1HlEu8sqwJLDvueOyVCyZo9sm0BCQu+pZGRiAqT9509arfpfGj0VZQLlqPCptD23RP2Cz8Ti1TdRErltWmCQO1d8seriK0p77/gGN2LluOzv8YqMTSUDEdEHH3UHkleje6dbaiosa8cFy2XHk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8uPP9MI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F8781F000E9;
	Fri, 10 Jul 2026 23:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783724447;
	bh=bTs4JSmUsarQu5KDPTOWTiGRgcAsGpYEC0XC8Rm3Jto=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H8uPP9MIMzQXOaL7Ap2EXySP50Z3vaVMhYkZQRzx35yV+o2BHUePq+aS5RLPVwTEr
	 /KMhhAjY8JrSxB7xqPqNl813LP6NqUeMdblHSAcnfdrItml2SDkRPg9gJqPKSq3DlE
	 ElXEBk+E1rlKBNhBmcXTpHXGIXCOV4wGQouplwpWXhFHLm3FeaexODYkuW3umKH6LQ
	 D7GKXIto8e1Gi5UlHjpiaTbEXjFrv7TzfLsN85WH15Gs9lX9QX9bUDzBNatcq4b4eA
	 /G2nvb/8GSGplBpiVEfVFo04JqEXz8WqAwa9VxvHdoB3SF4HGN6YGvTyByYkxMajrA
	 ZrBwDrgmOXhgw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/8] iio: adc: add ti-ads112c14 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?RGF2aWQgTGVjaG5lciAoVEkp?= <dlechner@baylibre.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-6-746d52cbf1d0@baylibre.com>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-6-746d52cbf1d0@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 23:00:46 +0000
Message-Id: <20260710230047.5F8781F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324707-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FBB373FAD7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] ADC is incorrectly configured in continuous conversion mode inst=
ead of single-shot mode.
- [Low] Typographical error in device ID mismatch format string.
--

--- Patch [6]: [PATCH v3 6/8] iio: adc: add ti-ads112c14 driver ---
commit 38cae330f1112ca57db5aaa7a3a80adecc45b5cb
Author: David Lechner (TI) <dlechner@baylibre.com>

iio: adc: add ti-ads112c14 driver

Add a new driver for the TI ADS112C14/ADS122C14 ADC chips, adding basic
support for power on/reset and reading the system monitor channels.

> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c1=
4.c
> new file mode 100644
> index 0000000000000..4d2e7d37be829
> --- /dev/null
> +++ b/drivers/iio/adc/ti-ads112c14.c

[ ... ]

> +	ret =3D regmap_read(data->regmap, ADS112C14_REG_DEVICE_ID, &reg_val);
> +	if (ret)
> +		return ret;
> +
> +	if (FIELD_GET(ADS112C14_DEVICE_ID_BITS, reg_val) !=3D info->device_id)

[Severity: Low]
This isn't a bug, but there is a typo in the format string (0xX%X) which wi=
ll
cause malformed log output like "0xX0E".

> +		dev_info(dev, "device ID mismatch, expected 0xX%X, got 0x%lX\n",
> +			 info->device_id,
> +			 FIELD_GET(ADS112C14_DEVICE_ID_BITS, reg_val));
> +

[Severity: Medium]
The comment here says "Place in single-shot conversion mode", but does using
regmap_set_bits() actually place the device in continuous mode instead?

Setting the ADS112C14_DEVICE_CFG_CONV_MODE bit to 1 enables continuous
conversion mode on these chips.

Could this cause race conditions in ads112c14_single_conversion() where a D=
RDY
signal is asserted for a previous conversion while we expect a result for a
newly selected channel?

> +	/* Place in single-shot conversion mode to make ready for raw read. */
> +	ret =3D regmap_set_bits(data->regmap, ADS112C14_REG_DEVICE_CFG,
> +			      ADS112C14_DEVICE_CFG_CONV_MODE);
> +	if (ret)
> +		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-iio-adc-ti=
-ads122c14-v3-0-746d52cbf1d0@baylibre.com?part=3D6

