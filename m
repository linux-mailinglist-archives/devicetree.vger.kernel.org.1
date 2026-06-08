Return-Path: <devicetree+bounces-308477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ryq/JrgIJ2o5qgIAu9opvQ
	(envelope-from <devicetree+bounces-308477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:23:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9695659AE3
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:23:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="l/nVKrr7";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308477-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308477-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3234311931F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF233793BA;
	Mon,  8 Jun 2026 18:03:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E6936D506;
	Mon,  8 Jun 2026 18:03:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780941826; cv=none; b=GxdZz87AfHcanc0IYo87ThqfdhU9CfL4exCLJ/cKhFbDggI0+XC2V+8ZB44KsgGuxL9DNBj676hccKna/eRumXQ5aWjbilr1hhwzT2iqk4OS7CMJR4MKVA9VJBa+ViVt989AzbmipHAsD5VvonUXPc4QUGqinaVLiUeTosHc3HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780941826; c=relaxed/simple;
	bh=gnAsMFZZZxF2z+MD62lW/giOC+SNL7hsDRo0CSMhGkw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eK2kh5BHGfExjwZs76iIN3AUvAHGDtf6/+3QdYM7KtMIMx23By1fy6318um9ntM5Lw22yAjIV6kgXeG7UNf1T1p5MVv6yVrkugn+ulx+WlIgHSfAW1YvwLIv8WCAD+7Rj54soHCtsHvHBHvq3hIEzkmbYAO+vglzhbX0EZvlA+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/nVKrr7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF3A11F00893;
	Mon,  8 Jun 2026 18:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780941825;
	bh=sPIJN+8ipb8PNQpmrY9EexFbGy6ifSCbKaRGooyW0Ew=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=l/nVKrr7oajWR7+KDteJ8s8WjtUx7I3jwlAlQmX5mcGMGAJubqaJHuDb/C7CsFuXS
	 V1FcwSSuPUDbmXqKkhQlbgEgSicnGttBxZzp4UzCvVNxiWaCI6Xor4Of505e3qjB2Y
	 e1HA+H43mp7VczvydZ3SGOEtXqT7JF2ZQOewJdsNlSdpEkmINBszMNWcEmLaUEryfy
	 JSDc4XfOEcG9Q31DcphjAqdlvw7WnxZT1Ic7l5QY5/c3l5+2yHSEqX7nmyGNUmpNCW
	 wDfaTvU+BiFEsqm9M3KBD0Q6/YNfhHSbdhVudw7I/Ju7xf5wBWYh0+NrBC9jprLPDZ
	 n9gc1C6D/RI5Q==
Date: Mon, 8 Jun 2026 19:03:36 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 marcelo.schmitt@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mike.looijmans@topic.nl, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jorge.marques@analog.com,
 antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
 jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz, wens@kernel.org,
 sakari.ailus@linux.intel.com, linusw@kernel.org
Subject: Re: [PATCH 3/3] iio: adc: Add ti-ads1110 support to ti-ads1100
 driver
Message-ID: <20260608190336.2e90b297@jic23-huawei>
In-Reply-To: <CALoEA-xWB226gf01OdB5LBMRqrds=b2UN+DmXJdH1j6rq1c5-A@mail.gmail.com>
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
	<20260607183542.368184-4-jakubszczudlo40@gmail.com>
	<CALoEA-xWB226gf01OdB5LBMRqrds=b2UN+DmXJdH1j6rq1c5-A@mail.gmail.com>
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
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-308477-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,baylibre.com,analog.com,kernel.org,topic.nl,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9695659AE3

On Mon, 8 Jun 2026 09:39:07 +0200
Joshua Crofts <joshua.crofts1@gmail.com> wrote:

> Hi Jakub,
> 
> various comments inline, some nitpicks and some more serious.
> 
> Josh
> 
> On Sun, 7 Jun 2026 at 20:38, Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:
> >
> > From: jszczudlo <jakubszczudlo40@gmail.com>
> >
> > add ADS1100 support  
> 
> Wrap the commit message to 72 characters per line, this is too
> short.
> 
> > make changing gain and datarate wait for new reading
> > fix unbalanced regulator disable when removing in singleshot mode  
> 
> Additionally, write the commit messages as regular sentences, not
> a list of changes.
> 
> >
> > Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>  
> 
> Ensure that your full name is in the Signed-off-by tag (this goes for all
> patches in this series).

A few follow ups to the good review you already have from Joshua.

> > @@ -85,6 +98,50 @@ static int ads1100_set_config_bits(struct ads1100_data *data, u8 mask, u8 value)
> >         return 0;
> >  };
> >
> > +static int ads11x0_get_voltage_microvolts(struct ads1100_data *data)
> > +{
> > +       if (data->has_reference_voltage)
> > +               return ADS1110_REFERENCE_VOLTAGE_MICROVOLT;
> > +       else
> > +               return regulator_get_voltage(data->reg_vdd);
> > +}
> > +
> > +static int ads11x0_get_voltage_milivolts(struct ads1100_data *data)
> > +{
> > +       return ads11x0_get_voltage_microvolts(data) / (MICRO / MILLI);
> > +}
> > +
> > +static bool ads11x0_new_data_ready(struct ads1100_data *data)
> > +{
> > +       int ret;
> > +       u8 buffer[3];
> > +
> > +       ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
> > +       if (ret < sizeof(buffer)) {  
> 
> Sashiko raises an issue here. sizeof returns a size_t, therefore the compiler
> will promote ret to a size_t, wrapping any potential negative error value to
> a large positive value, throwing away the error.
> 
> > +               dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> > +               return 0;
It gets thrown away here anyway which is also very wrong!  If an error occurs
it should be propagated. If it makes sense to ignore it, do that at the
caller and add a comment on why.
> > +       }
> > +
> > +       int return_val = FIELD_GET(ADS1100_CFG_ST_BSY, buffer[2]);

When there isn't a good reason to do otherwise we still flow oldstyle c
where local variable declarations come at the top of scope.
However

	return FIELD_GET();
should be fine.

> > +
> > +       return return_val;
> > +}


> >  static void ads1100_disable_continuous(void *data)
> > @@ -307,6 +383,7 @@ static int ads1100_probe(struct i2c_client *client)
> >         struct iio_dev *indio_dev;
> >         struct ads1100_data *data;
> >         struct device *dev = &client->dev;
> > +       const struct ads11x0_config *model;
> >         int ret;
> >
> >         indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
> > @@ -334,10 +411,18 @@ static int ads1100_probe(struct i2c_client *client)
> >                 return dev_err_probe(dev, ret,
> >                                      "Failed to enable vdd regulator\n");
> >
> > -       ret = devm_add_action_or_reset(dev, ads1100_reg_disable, data->reg_vdd);
> > +       ret = devm_add_action_or_reset(dev, ads1100_reg_disable, data);
> >         if (ret)
> >                 return ret;
> >
> > +       model = device_get_match_data(dev);
> > +       if (!model)
> > +               return dev_err_probe(dev, ret,
> > +                               "Can't set device data\n");  
> 
> Hmm, if device_get_match_data fails, ret will still be 0 per previous
> devm_add_action_or_reset() call, therefore you're returning a "successful
> error". Additionally, the error message isn't aligned with the parenthesis.

Message also talks about 'setting' when it is 'getting' data from firmware.
So needs a rewrite.

Jonathan



