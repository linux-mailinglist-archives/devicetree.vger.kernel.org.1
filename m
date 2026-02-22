Return-Path: <devicetree+bounces-267188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +C0OCAJMm2k5xwMAu9opvQ
	(envelope-from <devicetree+bounces-267188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:33:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7B917012B
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 19:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BBF193007512
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 18:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DA6353EE0;
	Sun, 22 Feb 2026 18:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HQF1VZ5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB0C13957E
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 18:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771785213; cv=none; b=TjQ/PZ+8kMlZR3KnvyPtA/u7SGD5IscS4o9LYGL5RoU5csza5y1rLXom83TXJC7HpMfZa7XH8CFCIb95Als1VT4cDV0TkAg9AS9I+TpBLQNPhdAeH/x3PIWK7q2/4+2UTO8/+nVCTYPIjrs5sNd+gt9BefcATZQWWBpdHh7UD64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771785213; c=relaxed/simple;
	bh=Gxa5A+tvgIFzLTNVZwkWDhuRkbCoNzau+xJzqZTG0Q4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ny9vdCZqXo9MPixKx0h7FyrYu6YdhH9ON9NLePFnbhJ/kXpwWIWyZoAGTxloYo+daUT6o4ErbppSU9+M/88ucU5hxbcVqdyzl2QRPf4qOYhzBNXqLOFMD3edL/cAfUK6lIl2KlWBwBDb+i0XMB6yftoKPTGXlA5e4do/sDT+yp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HQF1VZ5S; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1275750cf9cso2946357c88.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 10:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771785212; x=1772390012; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1GthVDsIOd+2sKUfi8Uh06K9+Ix22GSuy7Q9hscrocw=;
        b=HQF1VZ5SRDaaA2ftTv2oj1xY2pxGhqL+ZkbaxG8Cgr3cuihCvQdraxkNMRB9q0U9sJ
         h7lASR2c5P+HQhy7dlQHga0us3DpAJqjTfj12Fnd3RMZEu+S96k4B6o1sAyV8Qizmim0
         7+dwvQQPfLnqWZD9EzvdUzoux9Yzvt5Y90eIaYatia74eKIXESQjiNqOnFlx9pNAAER9
         I2L56tFde6u5CceL8ShKVUaV5nAaDJbVX6vt4G7JgNbywegF1MlKe79E+/GI9U2rTGzG
         Mbx4zI6dqrfzlDAdmanStTU6zjLv5uscEfS/l1DZdwUkZM1FX46CtJ5aSSGqHUiD8jEV
         IHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771785212; x=1772390012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1GthVDsIOd+2sKUfi8Uh06K9+Ix22GSuy7Q9hscrocw=;
        b=luPKkuXl6fvQVPGz1Wb0YMMSIhWzaDCUguUGPi988bvX94wC3GMfGWwPahRZdg3pg5
         bv0l4es+0JkaRdLwNdIyRepIyadEtqEwskNmxLPhQ7WkU1RGrPXsgR8wPs17Tdwn5i6b
         azQxnOO/GptT3aSEc7ZBGKHU0FHtCk/0r1rJ3hgrM3ULrMwT9zEeH7aIcqQQ7siybVuY
         p9RyRX3/1wKa+a633bUtgavW14rVQwwUjezYC2lSOJUNEnVvVqO2HLlx3ahk4/YflNVr
         evtG03eJ6Lvs2FZnPOruIcBGjHs2zfQ3rtbyraVKinO1dSy8yQqq1ow6b46drLdAePdk
         4xew==
X-Forwarded-Encrypted: i=1; AJvYcCXLXMSsawrkFi1pxjmT+wme3DClFH/WqzzpFGdGg0L/qbgCfLiDc7ViZTZlN93Yyr6uCdqpwAYUlQ44@vger.kernel.org
X-Gm-Message-State: AOJu0YxZVkdOu4UCU08kcNkeARrPBJbyVup34kB5V/Yr3kBxoBdBuEUM
	XVXobBqJ+o7EHJGWpkBQ+PTKhf1JHrzJEBzrGJxjqkQ+y+TEOwbMdM2F
X-Gm-Gg: AZuq6aL3Thfjmev0fuC0AqL4LGwIeHIgVweMjibMJkCyqyzJOUH0fgdXa6eXlGci1rm
	amEppaCYIHj7ih5tA2PeYgEcJh+CFk/MbAr2br44n59+0HilzNp8hcb5Iuo6uykdXs/uQuKKwd6
	5Hu+2pm6pK3Gdsjsmg1ifvG1PcrnD62Et9hAewGsmJGEK9sOVJMWP8J9q3lX1g3KE0iGeyyTQX3
	ogAcLpfUAT+xQ6RGnOPND7vk9TWBzcIOQwkc9twCVbRQm9NLKnDscn+3edOqVSSsoyH57MPEgaB
	3suOQqixwOdKEEXs63wN8bd5LLTcAufNqemhKlLmY/sPlwEJw12A/Sw83Pj3DwTmV9dp+WjgssV
	4ZFqC+t5H518K3kSpIf+bvMFVsIAg8yeBNg8BhHhta4jAprKi9aAUqvPdY1da0lecgJ7t1/x6+L
	6p2Jm5BuUwcOfk9vUe1GJ1mmY/L8g5hd2kOYTe
X-Received: by 2002:a05:7022:4387:b0:121:9f05:c4c2 with SMTP id a92af1059eb24-1276ad18ec5mr1966020c88.23.1771785211890;
        Sun, 22 Feb 2026 10:33:31 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af9f74bsm5158185c88.15.2026.02.22.10.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 10:33:31 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 22 Feb 2026 10:33:29 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Hao Yu <haoyufine@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jcdra1@gmail.com, akhilesh@ee.iitb.ac.in,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] hwmon: (aht10) Fix initialization commands for
 AHT20
Message-ID: <dab83860-0dd5-4c88-bcb1-99226cf4fce7@roeck-us.net>
References: <20260222170332.1616-1-haoyufine@gmail.com>
 <20260222170332.1616-3-haoyufine@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260222170332.1616-3-haoyufine@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,ee.iitb.ac.in,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-267188-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AE7B917012B
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 01:03:31AM +0800, Hao Yu wrote:
> According to the AHT20 datasheet (updated to V1.0 after the 2023.09
> version), the initialization command for AHT20 is 0b10111110 (0xBE).
> The previous sequence (0xE1) used in earlier versions is no longer
> compatible with newer AHT20 sensors. Update the initialization
> command to ensure the sensor is properly initialized.
> 
> Fixes: d2abcb5cc885 ("hwmon: (aht10) Add support for compatible aht20")
> Signed-off-by: Hao Yu <haoyufine@gmail.com>

Applied, since htis is a fix which doewsn't depend on the devicetree patches.

Thanks,
Guenter

> ---
>  drivers/hwmon/aht10.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwmon/aht10.c b/drivers/hwmon/aht10.c
> index 007befdba977..4ce019d2cc80 100644
> --- a/drivers/hwmon/aht10.c
> +++ b/drivers/hwmon/aht10.c
> @@ -37,7 +37,9 @@
>  #define AHT10_CMD_MEAS	0b10101100
>  #define AHT10_CMD_RST	0b10111010
>  
> -#define DHT20_CMD_INIT	0x71
> +#define AHT20_CMD_INIT	0b10111110
> +
> +#define DHT20_CMD_INIT	0b01110001
>  
>  /*
>   * Flags in the answer byte/command
> @@ -341,7 +343,7 @@ static int aht10_probe(struct i2c_client *client)
>  		data->meas_size = AHT20_MEAS_SIZE;
>  		data->crc8 = true;
>  		crc8_populate_msb(crc8_table, AHT20_CRC8_POLY);
> -		data->init_cmd = AHT10_CMD_INIT;
> +		data->init_cmd = AHT20_CMD_INIT;
>  		break;
>  	case dht20:
>  		data->meas_size = AHT20_MEAS_SIZE;

