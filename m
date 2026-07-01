Return-Path: <devicetree+bounces-318881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VNX1HRdzRWrlAQsAu9opvQ
	(envelope-from <devicetree+bounces-318881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:05:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F56F1430
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 22:05:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BUtw+LYn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318881-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318881-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5441A3028E83
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 20:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E143B52E3;
	Wed,  1 Jul 2026 20:02:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5537F3B0AD8;
	Wed,  1 Jul 2026 20:02:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782936128; cv=none; b=DHVR2JQrk4+5KHHoUJu2tLXWWZt8Hwc3EKP3Ht8gzKBvcko2NaxQDYDTYjAqqTiCPenjvmk/JFdWq1FXGJnP8tMps+e5vCZ/V+56ya4VN+iwrArjMliFt5UeFx62pud8NOmv1BdDwVBI9+bR0fAAusyTiCR3s5AaqcPDTaWizxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782936128; c=relaxed/simple;
	bh=LIerCX0bajA2iEM3D+agDjSHwyT7pLC1SYdZY+cTJMI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mEwf8vuQH5T+iiOldhdasnQv63db9GVLGjfkPUqeTThoLFMKL09AsNh30YOAxoOB83mbz89fRGConURAtB5dotzs1yqqhlLvQDwxomFA8alHLaMpsU5TpuJ95WlW37mdNodiUvW92g5zMEJ0cS0SjXTroNbipxXls6DpB+7DmxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUtw+LYn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0C651F000E9;
	Wed,  1 Jul 2026 20:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782936127;
	bh=7PZeOdQ+NnWU/S/WQpyhOFjrOBT+d0WRzYVNVG2DGqE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BUtw+LYn126o4FjwmAcFkrq2tL4BzJCQypLpAD8wk6NNfgXQFxtUgtkqvc+sKpuiN
	 ZVyxsb8V8AY6AVV0IJ+YL4qgz2F9xff1YszFKHYBCoYLJvPNJxaDRF5yBvQrRYIQZc
	 KLmTpz7j/eqYyAthqr64eXpnuxARJSiSzLohXCL0LR2wa2A4o8/IThnhP+Pf8Xq/H/
	 7l8DbMoyuK+7DHcjs04NQOTFbSsEvHlmtj2B8wmDzzaEPPpg6+X8TzcZxe8tkhr0nj
	 urfebJ1v2tpLelfZAO/YSY+qj8Stexoe/n6Dw4ScsriRSUkGF868wNKMBJPWdOyeW4
	 4KExDZwC8dqmQ==
Date: Wed, 1 Jul 2026 21:02:04 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "David Lechner (TI)" <dlechner@baylibre.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chris Hall
 <c-hall@ti.com>, Patrick Edwards <pedwards@ti.com>, Kurt Borja
 <kuurtb@gmail.com>, Nguyen Minh Tien <zizuzacker@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] iio: adc: ti-ads112c14: implement gain on
 internal short SYS_MON channel
Message-ID: <20260701210204.068f4aea@jic23-huawei>
In-Reply-To: <20260625-iio-adc-ti-ads122c14-v2-7-ceb9b0b561cb@baylibre.com>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
	<20260625-iio-adc-ti-ads122c14-v2-7-ceb9b0b561cb@baylibre.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318881-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jic23-huawei:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F38F56F1430

On Thu, 25 Jun 2026 16:55:09 -0500
"David Lechner (TI)" <dlechner@baylibre.com> wrote:

> Implement support for the programmable gain amplifier on the internal
> short SYS_MON channel. This channel is used for calibration, so it is
> useful to be able to set the PGA to the same gain as the external
> channels. The gain setting is implemented via the `_scale` attribute.
> 
> In the future, we may want to support different reference voltages for
> this channel, so the scale_available table is populated during probe
> rather than being a static table.
> 
> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
Trivial stuff again.

> ---
> v2 changes:
> * Make some changes to reduce diff in next patch.
> * Add some local variables to reduce line wrap.
> ---
>  drivers/iio/adc/ti-ads112c14.c | 144 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 141 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/ti-ads112c14.c b/drivers/iio/adc/ti-ads112c14.c
> index c61d47244732..0e775dbc8d50 100644
> --- a/drivers/iio/adc/ti-ads112c14.c
> +++ b/drivers/iio/adc/ti-ads112c14.c
> @@ -124,6 +124,26 @@
>  #define ADS112C14_INT_REF0_mV				1250
>  #define ADS112C14_INT_REF1_mV				2500
>  
> +/* Available gains as tenths (x10) */
> +static const u32 ads112c14_pga_gains_x10[] = {
> +	5, /* 0.5 */
Not sure it is worth commenting all of them!

> +	10, /* 1 */
> +	20, /* 2 */
> +	40, /* 4 */
> +	50, /* 5 */
> +	80, /* 8 */
> +	100, /* 10 */
> +	160, /* 16 */
> +	200, /* 20 */
> +	320, /* 32 */
> +	500, /* 50 */
> +	640, /* 64 */
> +	1000, /* 100 */
> +	1280, /* 128 */
> +	2000, /* 200 */
> +	2560, /* 256 */
> +};

