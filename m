Return-Path: <devicetree+bounces-275512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN7SLMhZtGklmQAAu9opvQ
	(envelope-from <devicetree+bounces-275512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:39:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F63288D0C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A48330A08A1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB693DFC62;
	Fri, 13 Mar 2026 18:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ob1WRnqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619453DDDDF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 18:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773427087; cv=none; b=LMMaHrY0vPwwZidQGPjlEcx4rTd16X5Y6UEBw9OVO7vcJLxTSkSIQTGviiRjBgsNJrLh+NiesuOsGD1hPWuY+gphBZW/Y5n3Uujdyb7yJNE8wNq0IClWKtXvLE8YGtTlxN9NZGu/B8i7bakVp1dTc+Ut6L5pWXEN9vexAzfDqds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773427087; c=relaxed/simple;
	bh=IC3W1fF8lre9ZUCS8NDhRva8zIinkQfLZ7J80XkE+wM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kn0ZOk9XeYnBn7+iFJ6Bk8GNQefLUu1g85TPZTikzfUSwRtAXOZwI68TPa6DkPaXiMc4Iwnw4gHSao/Ww4YlkLYZfSjnSba/5RVe1UyOtqN0+xLkCBBrAQv/BPbjGMiVn9RdwC6tkpXgtvduXHzxr8Fg1KQ/vF+W4EvHGb4N9Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ob1WRnqN; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so3227096eec.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773427079; x=1774031879; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eg7eI9ivG3+/ZJvb3PtZ/9IeNP82PhJuviBrZwDJey8=;
        b=Ob1WRnqNqPegpR4NDAuVyQnNY6+cfYo3ijqj7LCAeNq75zkvCjVQTgKF3XtUdpwPkV
         xQH7MzcoD/lZx11euSaUjUKG7UM2N/CUzYXjIi+n8XYXjYzgEpSdaYzBJXiagrj3Sdsu
         Bn0zVRDpMUQPC/qK0VMLnUtPzc8UYQUm2rfET8aKy3534Y4ZN0gpicURdeD+ZPW/uPcK
         6Qy9o8GHDtkxtXnhnHPg7UdOJUiuJ3/3IlQr//G/gbyYYZh1VJmz5U9c6waAFOtL5gpB
         rQnLbMzGDM1SfOkJyCUBtpS2Cg53QY0lDWcis30axunlZxLiyRfBuixTHgWEESS2ittl
         L+xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773427079; x=1774031879;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eg7eI9ivG3+/ZJvb3PtZ/9IeNP82PhJuviBrZwDJey8=;
        b=eoxRppLMWrKWI1i68cOOOrigRztpH/WD+lxVXkQ8OpP1TSBUMJ6wqnJXAuNp4jyHN4
         727y7rDiEJWDSke5M/AJjMA7wD1sBzvYy6WnCbP7fm4G3For6j+nRxQHXESgRvYhmWb+
         i0I1F5QYE5LY8NR6lDjTjYH6/mXzlxgo00f7sofEV9RHMiYULi8UbP7gXk0npPyIuEhj
         ynHwYQrQkcIEY8tVkwAg7545ZSKV09RjevnRx8DK3cIyG9RCbVFqnKWf7E3Xuie0nIx1
         +xO8vK3+1EiORpBPdN5nzORpbTG8lYfeFbofxiOgA4xq0nRLjmSpfK/RJ5wEk3ObvH3T
         vO1A==
X-Forwarded-Encrypted: i=1; AJvYcCX8SO+osQ4Ngz3kTq4krUabmfKadPZNKTroU6NJI0mCsyTles/7GIdP371XwuaN9MkEmKxjRV63cBH4@vger.kernel.org
X-Gm-Message-State: AOJu0YwwtKmvivgtLHNy4EKUMOj01Pttme8EMxYVaXRxa1pSlgNysH+g
	+QZiZf2CKeR6Z7+H9cmz63AugAnIbgSO8TsooMpFXDtXMiZXOXhQbl/u
X-Gm-Gg: ATEYQzyi9bmzPbCs/GQTwZf+eRIwwfbt1m6Qf8RfPbJpSUWvDhic2Bfh1EOS4uB8GRF
	Ypx4H8SBYw7sDPvefoJRuWY/em3WrLNR6e5eRFC9NV/vLXIXS+Sm7Bxtu6xW2ZuWYupm+2Sk42k
	2eLGTx0DC4l2UquwyN/pIHbWZnuCxXta8qaa2qhl++Y0Sa1vWSIiDdxKYynUuMX476d++Nw18Gj
	hx7oucaOShHexiDXN+gztuY5Rnyj4mHiLj4Vlk/gz7TNy4pTFSOIQgi2SWz27hNlQiwZF9txbgo
	xL0Yvm37MtcPgiHjqZ7GYa+MFk66TrGduYpVZiLv+mP9M2A1AP6VRWMYtqKKqdytb7CJlKB6vVO
	BrIfpsLwvgsewAlLYAr5oy83WuUB7sRNt0SRYDsML4uue8p4qV1a/O+6T0lnFLs33fis4JAa9Lu
	EEM+hFM0F0ctOjR0s2i7MB23bI+/Iw0QqXk0wi
X-Received: by 2002:a05:693c:408b:b0:2be:ad5b:d5a7 with SMTP id 5a478bee46e88-2bead5bd7cbmr1024934eec.4.1773427079093;
        Fri, 13 Mar 2026 11:37:59 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab555c44sm4279781eec.25.2026.03.13.11.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 11:37:58 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 13 Mar 2026 11:37:57 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Flaviu Nistor <flaviu.nistor@gmail.com>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] hwmon: lm75: Add support for label
Message-ID: <b1118a3d-85bb-4214-84f0-bf12e0cd4ade@roeck-us.net>
References: <20260311105809.107357-1-flaviu.nistor@gmail.com>
 <20260311105809.107357-2-flaviu.nistor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311105809.107357-2-flaviu.nistor@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-275512-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 18F63288D0C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 12:58:08PM +0200, Flaviu Nistor wrote:
> Add support for label sysfs attribute similar to other hwmon devices.
> This is particularly useful for systems with multiple sensors on the
> same board, where identifying individual sensors is much easier since
> labels can be defined via device tree.
> 
> Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
> ---
>  drivers/hwmon/lm75.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/lm75.c b/drivers/hwmon/lm75.c
> index eda93a8c23c9..66178ac63e4f 100644
> --- a/drivers/hwmon/lm75.c
> +++ b/drivers/hwmon/lm75.c
> @@ -108,6 +108,7 @@ static const unsigned short normal_i2c[] = { 0x48, 0x49, 0x4a, 0x4b, 0x4c,
>  #define PCT2075_REG_IDLE	0x04
>  
>  struct lm75_data {
> +	const char *label;
>  	struct regmap			*regmap;
>  	u16				orig_conf;
>  	u8				resolution;	/* In bits, 9 to 16 */
> @@ -363,6 +364,16 @@ static irqreturn_t lm75_alarm_handler(int irq, void *private)
>  	return IRQ_HANDLED;
>  }
>  
> +static int lm75_read_string(struct device *dev, enum hwmon_sensor_types type,
> +			    u32 attr, int channel, const char **str)
> +{
> +	struct lm75_data *data = dev_get_drvdata(dev);
> +
> +	*str = data->label;
> +
> +	return 0;
> +}
> +
>  static int lm75_read(struct device *dev, enum hwmon_sensor_types type,
>  		     u32 attr, int channel, long *val)
>  {
> @@ -534,6 +545,9 @@ static umode_t lm75_is_visible(const void *data, enum hwmon_sensor_types type,
>  		switch (attr) {
>  		case hwmon_temp_input:
>  			return 0444;
> +		case hwmon_temp_label:
> +		/* Hide label node if label is not provided */
> +			return (config_data->label) ? 0444 : 0;

Unnecessary ()

>  		case hwmon_temp_max:
>  		case hwmon_temp_max_hyst:
>  			return 0644;
> @@ -553,13 +567,14 @@ static const struct hwmon_channel_info * const lm75_info[] = {
>  	HWMON_CHANNEL_INFO(chip,
>  			   HWMON_C_REGISTER_TZ | HWMON_C_UPDATE_INTERVAL),
>  	HWMON_CHANNEL_INFO(temp,
> -			   HWMON_T_INPUT | HWMON_T_MAX | HWMON_T_MAX_HYST |
> +			   HWMON_T_INPUT | HWMON_T_LABEL | HWMON_T_MAX | HWMON_T_MAX_HYST |
>  			   HWMON_T_ALARM),
>  	NULL
>  };
>  
>  static const struct hwmon_ops lm75_hwmon_ops = {
>  	.is_visible = lm75_is_visible,
> +	.read_string = lm75_read_string,
>  	.read = lm75_read,
>  	.write = lm75_write,
>  };
> @@ -721,6 +736,9 @@ static int lm75_generic_probe(struct device *dev, const char *name,
>  	/* needed by custom regmap callbacks */
>  	dev_set_drvdata(dev, data);
>  
> +	/* Save the connected input label if available */
> +	of_property_read_string(dev->of_node, "label", &data->label);

Please use device_property_read_string().

Thanks,
Guenter

> +
>  	data->kind = kind;
>  	data->regmap = regmap;
>  

