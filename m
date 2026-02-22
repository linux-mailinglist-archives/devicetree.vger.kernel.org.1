Return-Path: <devicetree+bounces-267175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id phrXJnskm2notgMAu9opvQ
	(envelope-from <devicetree+bounces-267175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 16:44:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA68416F8CB
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 16:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 452DA300517A
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 15:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CAD53559E8;
	Sun, 22 Feb 2026 15:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P0qlIPYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FCE34FF47
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771775094; cv=none; b=R9I5IMg291k/6FD4iGAJiFBfHIXYpvCC+98AURd/5I0bm8A+vgjw6ksTwBYkbbizmFEhi4wozPd3MrPzj5yb/3gfScVCYCDSvkhjjEFpp3723AOiUg+Exw92ZQYfNNbRbELPsSWDkkYYyWordsa6dth+73L0yUszwv3CEM5S+wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771775094; c=relaxed/simple;
	bh=GDXeDdZIT8e6Ekck7+QHOeFdtoAXk18KLFlCirrOc9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qzwFfrWf1CB6myUEYQ5tCj1jo4lD/eq9gDwFCIhKx4wRGjS39iM9QyEZ2tjEZVmYeWKX81zGZAsXSDfdf1Se/ffUp40eQ54Rvx0ZQfnPcOLWLTU7WdnfPuigWAe3deLaQ3shnIXxpV3Dt6mRp2YnYq6kIuee/+HMx4hNYtgQzbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P0qlIPYp; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-823210d1d8eso1936239b3a.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 07:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771775093; x=1772379893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=o7xO6usibUEKimdMAc7KCxTcRTfewI3MRrrOCGbTFIA=;
        b=P0qlIPYpsmhyzi29Jzxu2YP/gdGJ9XXPC3hb+JQJAG8n3bQ8H1dNCUJ9YgHcY2NueD
         NjJlJzBDUurT/JPITni7+Ni3k5OBXH2E9SF+1m0iYUBQCcyA/CHR2Tq5wdIWdb46+4B+
         5psyRhmtffTRvitmJ9mJ3jfg/pFbk/gYPFzo97KbtkKAeT9W18I2JAOVdv6IfoZc1OD4
         pNYfbZc/xWgQwne2yai+I06lmOteXz+Qr/AZL1EKBMR4EU/JAat6d1oIbYZY5jS3R7uL
         YA/bmGRJNFkygxXV2EwtYprK6jRZyHHWob+uLTufvTnmERkQOQSsugDxMKy5ztPUMR76
         XyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771775093; x=1772379893;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o7xO6usibUEKimdMAc7KCxTcRTfewI3MRrrOCGbTFIA=;
        b=BFWv9OyRRgJ1l5mWtJOfma6YYVUN4HOtjpaHrm9JClXzJ5nVtl0evw494rumDlrkC+
         bwgfj2TMSORRCsQvagAm8uYvhnfgj5Sz0bCn2Yqx6bi3xZRnPUnBh3rD6q+A2NZ7TWzj
         35Qu7w1kN08q4BdVecot6EgK5JqW2RKLJAKAo1uqm46g0YhksdFA4Jx0ymp3nomtGy8Z
         5EqzWmEQbqU7zhbMq5aKRa6q+01jVLwgr0EhcvNjqSQA9SxGUaXWmKFURJnlploE3/WV
         buIjzPbav+I3QDxHblq09XaZWGYGDWe25Cfzp6zywKh7NM1sKNZdDEdEVWCI24t9kMpy
         Vy4w==
X-Forwarded-Encrypted: i=1; AJvYcCV80eczEVdKYA5S3fsBrO0x8OtClOarFRn2QlV6Bu1dbvkEclz9CMPbxPqizTrbiNmACBd6gfb5ifER@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0VDIG73pI+zkn9LK8emCZCBx/g764f7scKO8ifJG0xnlcZMPb
	HTujnNhhZhkz6EoxNBEWrvk8a8YBQbm5Zn+bdFg6fpqpce2iVommRD0o
X-Gm-Gg: AZuq6aJ48quN357qA1/HMhrdb+A0v3Z9uqnsVLe3P3plvoBx7IuZia346nRcAA4pZEC
	F/g454GDeXFtE/Z38ItzlxdslQTWM99rZDiM8rq8e+aIilt3pYlUQVurDoYBBMHffCjlMhj4r7v
	mf36idCjm6rgeDIiChQwUi94W0nb9pWzvWqhnsCPc77ba9/o8+99izVFVRhBZ0BoOkEq5NanoIO
	OBikmqeWp3xRvOGlJ1diDMgomT+GtU8QA/m3l3c/6xt0dA7xCsM5e30ZJNRRrlDwfNGhQR5pPRT
	JWDTgV/R9y1G0xbrZLfYim0ScSttLZB1vVE527l+3sKTC8wyrTO3zscO47q1EFBFCShLN7TMu4/
	4TWN1duRXmfQ/QbkkauTrUbt5jcMkG7PynV/CWm+yntYxDwvNrvC5IHbgDMVAuHWtOLJjRLa0u6
	6RT5MHPOk53q+ilwWd334Tq5X8Z4podUDKn6OU/8LR926r1puM20R19/u+rIJ9Tol8eYxaYRw2
X-Received: by 2002:aa7:9a87:0:b0:7a4:460e:f86a with SMTP id d2e1a72fcca58-826da90af1cmr4820979b3a.25.1771775093022;
        Sun, 22 Feb 2026 07:44:53 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd89cda7sm4423383b3a.44.2026.02.22.07.44.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 07:44:52 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <f03ce33f-10ff-495a-aef3-1cfa4436805c@roeck-us.net>
Date: Sun, 22 Feb 2026 07:44:50 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] hwmon: (aht10) Fix initialization commands and add DT
 support
To: Hao Yu <haoyufine@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: jcdra1@gmail.com, akhilesh@ee.iitb.ac.in, linux-hwmon@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260222105831.7360-1-haoyufine@gmail.com>
 <20260222105831.7360-3-haoyufine@gmail.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20260222105831.7360-3-haoyufine@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ee.iitb.ac.in,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-267175-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: EA68416F8CB
X-Rspamd-Action: no action

On 2/22/26 02:58, Hao Yu wrote:
> Correct AHT20 initialization command sequence and
> change DHT20 command format to 0bxxxxx notation.
> 

That needs to explain what is wrong. The current initialization command
is 0b11100001. Changing it to 0b10111110 but does not explain why the old
value is incorrect. Something like "Per AHT20 datasheet, the initialization
command for AHT20 is 0b10111110" plus an explanation that the AHT10
initialization sequence does not work as intended.

> Tested on rk3566_lckfb board with aht20 sensor connected at i2c-2 port.
> 
> Signed-off-by: Hao Yu <haoyufine@gmail.com>

Fixes: d2abcb5cc885 ("hwmon: (aht10) Add support for compatible aht20")

> ---
>   drivers/hwmon/aht10.c | 16 ++++++++++++++--
>   1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwmon/aht10.c b/drivers/hwmon/aht10.c
> index 007befdba977..c18332cc48ba 100644
> --- a/drivers/hwmon/aht10.c
> +++ b/drivers/hwmon/aht10.c
> @@ -37,7 +37,9 @@
>   #define AHT10_CMD_MEAS	0b10101100
>   #define AHT10_CMD_RST	0b10111010
>   
> -#define DHT20_CMD_INIT	0x71
> +#define AHT20_CMD_INIT 0b10111110

tab after AHT20_CMD_INIT

Thanks,
Guenter

> +
> +#define DHT20_CMD_INIT	0b01110001
>  
>   /*
>    * Flags in the answer byte/command
> @@ -60,6 +62,15 @@ static const struct i2c_device_id aht10_id[] = {
>   };
>   MODULE_DEVICE_TABLE(i2c, aht10_id);
>   
> +static const struct of_device_id aht10_of_match[] = {
> +	{ .compatible = "aosong,aht10", .data = (void *)aht10 },
> +	{ .compatible = "aosong,aht20", .data = (void *)aht20 },
> +	{ .compatible = "aosong,dht20", .data = (void *)dht20 },
> +	{}
> +};
> +
> +MODULE_DEVICE_TABLE(of, aht10_of_match);
> +
>   /**
>    *   struct aht10_data - All the data required to operate an AHT10/AHT20 chip
>    *   @client: the i2c client associated with the AHT10/AHT20
> @@ -341,7 +352,7 @@ static int aht10_probe(struct i2c_client *client)
>   		data->meas_size = AHT20_MEAS_SIZE;
>   		data->crc8 = true;
>   		crc8_populate_msb(crc8_table, AHT20_CRC8_POLY);
> -		data->init_cmd = AHT10_CMD_INIT;
> +		data->init_cmd = AHT20_CMD_INIT;
>   		break;
>   	case dht20:
>   		data->meas_size = AHT20_MEAS_SIZE;
> @@ -375,6 +386,7 @@ static int aht10_probe(struct i2c_client *client)
>   static struct i2c_driver aht10_driver = {
>   	.driver = {
>   		.name = "aht10",
> +		.of_match_table = aht10_of_match,
>   	},
>   	.probe      = aht10_probe,
>   	.id_table   = aht10_id,


