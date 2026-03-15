Return-Path: <devicetree+bounces-275818-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDciBw37tmmmLAEAu9opvQ
	(envelope-from <devicetree+bounces-275818-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:31:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88765291EEF
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82081300ECBC
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 18:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050E4371CF7;
	Sun, 15 Mar 2026 18:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvyinKhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64991DFFB;
	Sun, 15 Mar 2026 18:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773599496; cv=none; b=iALqYcPq83GuU+W/t9xDYpfiq0YX552Po1k4z9ZvTSBhd4+C1ps5ldkC0xpedJcy1hNIGViR1vK0F06s1MqV1WPeTpeaXH3743mTycLJLN00IeFNQwZpZ7Qd7qNg8N99somXGGusz7GIw1jtUi6FL7Z30aK3uPzyn8A0vUUtB0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773599496; c=relaxed/simple;
	bh=uwzObPHHXB2TTdXzUzMcv8zVrOM6sGXZM+iUTthg85s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bfcE378UqR4hxqohduGBZSunZ/oXdJmqYen09aGGcdtAjroIcMU9yTzq0UalbvfZPtci9cR1R+Om73kdpWMzfM5y7upmuWtMziVH+6rUm28Qoi+b0FJOyvsKBorgKqNsOqOdzPHMkvoKXVxLSQ5s3O8MFzRaDnfy9U9zfCTfJyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvyinKhQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18E47C4CEF7;
	Sun, 15 Mar 2026 18:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773599496;
	bh=uwzObPHHXB2TTdXzUzMcv8zVrOM6sGXZM+iUTthg85s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CvyinKhQMClk8SrF0XRns+FQXGDN602SGbweY8C7OYE6fyz4qNpfiWSvByI5A3QKw
	 PytnLp3V/X4owM8QTd++epvXVTIdEnJ3TESFqzzALnjFd9FuHQGe2NqZVNn9I9zgNL
	 1+B1D+98ldmSupqd8Onvxk9+QcXZBUuzxPkqKwpcEnSoWsWcCqRHimQBzau2/tr8aC
	 +bXLUX8lh7DjFeJ3/Oq07+zB2H/gWx1QLruyp9dC53+Ru4ozlSu2Fyp6ExTdtModkE
	 i+pm60KY/bPKDJ30gjBmuRAlIxQF7v3hd8MZdd3cqafi7iwxHUarG57dVyVW4YLpKr
	 brqngvaHNRFRA==
Date: Sun, 15 Mar 2026 18:31:27 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
Subject: Re: [PATCH v3 5/6] iio: light: vcnl4000: remove error messages for
 trigger and irq
Message-ID: <20260315183127.59036e25@jic23-huawei>
In-Reply-To: <20260314-vcnl4000-regulators-v3-5-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
	<20260314-vcnl4000-regulators-v3-5-3c4a48d30676@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275818-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 88765291EEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 14 Mar 2026 18:06:34 +0200
Erikas Bitovtas <xerikasxx@gmail.com> wrote:

> The error code is available in the log after return. Remove duplicate
> error messages to reduce noise in dmesg.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  drivers/iio/light/vcnl4000.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
> index e501db7249d7..c8bb1826b916 100644
> --- a/drivers/iio/light/vcnl4000.c
> +++ b/drivers/iio/light/vcnl4000.c
> @@ -2041,11 +2041,8 @@ static int vcnl4000_probe(struct i2c_client *client)
>  						      NULL,
>  						      data->chip_spec->trig_buffer_func,
>  						      data->chip_spec->buffer_setup_ops);
> -		if (ret < 0) {
> -			dev_err(&client->dev,
> -				"unable to setup iio triggered buffer\n");

Is this one a duplicate? I don't recall us being particular verbose
in terms of error messages in iio_triggered_buffer_setup_ext() which is
where that ends up coming from.  I think there is only one path
where it can return anything other than -ENOMEM and that one is a duplicate
registration check (so fair to not print).  So perhaps all this patch
needs is a comment on what errors can surface from this call and why
it is therefore not worth printing anything.



> +		if (ret < 0)
>  			return ret;
> -		}
>  	}
>  
>  	if (client->irq && data->chip_spec->irq_thread) {
> @@ -2055,10 +2052,8 @@ static int vcnl4000_probe(struct i2c_client *client)
>  						IRQF_ONESHOT,
>  						"vcnl4000_irq",
>  						indio_dev);
> -		if (ret < 0) {
> -			dev_err(&client->dev, "irq request failed\n");
> +		if (ret < 0)
>  			return ret;
> -		}
>  
>  		ret = vcnl4010_probe_trigger(indio_dev);
>  		if (ret < 0)
> 


