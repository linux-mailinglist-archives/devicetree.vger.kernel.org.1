Return-Path: <devicetree+bounces-240970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E618FC78292
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D9DB2353120
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B842D0611;
	Fri, 21 Nov 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hOe8q+Yp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDC42144D7
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763717394; cv=none; b=WvkVdWNQ+dVfJkCMAWlZaom2BODXQTliLwCByjrbMWaR2Z2hsIj3c35KljUWY6n8rFVJN6Z16DI6DehrVwM1YLPi7WAQrxPY3zpMDJ7PvqASObp5oZc437TgVlT0LWkbPcrJfGdGGURHk10ZRtWriTTo6zoZh0ZREOHF5fbMe8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763717394; c=relaxed/simple;
	bh=uSbYcEm1WCPNJwx8UqPV/i1enY5q8gnMalq46Q7qZW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnMlHN37MQEjyrGfEBjljog4iAAVkbdT/oMd+Sq2Hikozxr7rtLwRyph3Ln7uCeM1iGcO3GJT9mX/TALMFJ4kwM4jh62C/0T31vs4DCEhRaqlSOB7E/s8NhuW+BX1jTC7UcMlfvF1jiD3MbqAMulm6h7CPxb4YLmgOdAuftPqxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hOe8q+Yp; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b735b89501fso203838866b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 01:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763717391; x=1764322191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wl2xu8XKN1gPMV9ACQzl23UL67KsRhgGQiSjpamCaq0=;
        b=hOe8q+YpB9Z+lp7JGPGx+zpY/Q2DF6WpeFfc1dy4uapImoAll3cZsTSHIGe5SZU2zr
         tzaS+8BSTBBQSEv3mqIbJitGfCwDNs1C0M8LlX0yRLAJc+/Oj9zYWlMybWU4lQFlIM7b
         eOpIE61D2Rja6pAZ+e8zRcVKSuhgnoqyQo7qV7j0IiBakJTI8qfaU44kz8kxbM8Gb5zr
         MwtnWz8Y7OE/QW+sKoqP7F4zS2gAa8MorSVHCgyPL2SoCNmCCbXOGh0hqPQJV2m1ynYE
         gX6pl2i8hsvIgXgWcwC6gOwT7cKZfdY2zkMtlcaaCxbaUsHKrakXr9ouoXoDSVpGe6Lq
         BMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763717391; x=1764322191;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wl2xu8XKN1gPMV9ACQzl23UL67KsRhgGQiSjpamCaq0=;
        b=CbaBk3IyqAd9Uk5sy7JzM9O/2+OTfgfTvFLn53Kc6JcTuNkZJCPNK9YvZh9cJZ97uM
         rDpB0UNLFnEAVqYPJ4W3pl6A4XbF6aNRhZFEieQFgl39IIhfXp17OP4R1IGWVAsnlh7g
         2Ms/pp9J0z2pt5v4MvN0/3dfn6GcZpUWkD4NXBWEJh6XZIotA/j7KGtGpXMa6j3nmozP
         u7wZDA94LKGvDnqddOySkpTYDf4vYZ7lzBOwfq3johem2Nchk6zLZzWJTMETKHymJCDd
         iNkbtO4s/iTasDWKjfr+PFzqz3q4jNPJuo7vrYe71rA3AjbMkj3q9noKNQDPGawUaxT0
         ZwLA==
X-Gm-Message-State: AOJu0YzWSNI/dDi3dLojhF0PRMxL1S0jIf5J5frjelp+yqK4TYwonOz3
	ItFpOuzi515bSb81zINraPq+tHIEmNxcVZNXiESQYOmXbq5FWcyrRzNs
X-Gm-Gg: ASbGncvoew9d7dNDAN56V9foOqMxgubpVrHQ5Dc1510j9KRLAQSKkFWc0NqyZH6g/Kg
	CZe0UuPV02zs8As6A+Ye6rkbd8ksudbSIshUMNj4EYXOfpF0wV1E8AdVNptBJ6kt2d3XtAWtXe5
	JGPpLhbLbM/dOu6Q0Hlh9rBomUu+7kEZfDvqmfVDbKFnbD/toJitusPUylaxNUC592Z8WLC6BWb
	ZlQVROYosCaWBNHt9CRmBZ6kL6dGLwzWXD4RLL7jiK0c1BbZO++qCSKY613BQ6sDCUpWoiNFUvJ
	rTDl1H4a85X/z2G3Jd5spM9KTiyfCmL7Lr1wrCbiYL1sb+PMcGay5BldH+xtCI+nO5aJWRnzf44
	F24s9YPvHe5E7AQXxcIBZ14RDT1Zki21Haupm2qrHUw0AwGCe3tC5FDHHlJbYmrOtWnH+4dNxTt
	XPGE98pbkd5xePhxjNksIrLasEzAwq089xm38D8Af6gpQ=
X-Google-Smtp-Source: AGHT+IHq8hk9zncY5NjxJIA+5dLJtbgJgeFMs63IXI+ZjuoPAQXsuFcRPpdcxS7UMwvUHeWvXnedJA==
X-Received: by 2002:a17:906:fe4a:b0:b76:277b:9a3d with SMTP id a640c23a62f3a-b767170a37emr166265266b.29.1763717390579;
        Fri, 21 Nov 2025 01:29:50 -0800 (PST)
Received: from [10.25.210.163] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654fd4275sm402635166b.37.2025.11.21.01.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 01:29:50 -0800 (PST)
Message-ID: <3959e908-ae61-4424-a8ef-89f655a4de8c@gmail.com>
Date: Fri, 21 Nov 2025 01:29:48 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] reset: imx8mp-audiomix: Extend the driver usage
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251114133738.1762-1-laurentiumihalcea111@gmail.com>
 <20251114133738.1762-5-laurentiumihalcea111@gmail.com>
 <8b225c56612ff01845a90388be0945c7d0b3f0d2.camel@pengutronix.de>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <8b225c56612ff01845a90388be0945c7d0b3f0d2.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 11/14/2025 8:02 AM, Philipp Zabel wrote:
> On Fr, 2025-11-14 at 05:37 -0800, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Switch to per-device reset map to allow reusing the driver for other NXP
>> block control IPs.
>>
>> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
>> Reviewed-by: Frank Li <Frank.Li@nxp.com>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  drivers/reset/reset-imx8mp-audiomix.c | 18 ++++++++++++++++--
>>  1 file changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
>> index 35df9bd5f71a..d3396f37d1ff 100644
>> --- a/drivers/reset/reset-imx8mp-audiomix.c
>> +++ b/drivers/reset/reset-imx8mp-audiomix.c
>> @@ -24,7 +24,12 @@ struct imx8mp_reset_map {
>>  	bool active_low;
>>  };
>>  
>> -static const struct imx8mp_reset_map reset_map[] = {
>> +struct imx8mp_reset_info {
>> +	const struct imx8mp_reset_map *map;
>> +	int num_lines;
>> +};
>> +
>> +static const struct imx8mp_reset_map imx8mp_reset_map[] = {
>>  	[IMX8MP_AUDIOMIX_EARC_RESET] = {
>>  		.offset	= IMX8MP_AUDIOMIX_EARC_RESET_OFFSET,
>>  		.bit = 0,
>> @@ -42,9 +47,15 @@ static const struct imx8mp_reset_map reset_map[] = {
>>  	},
>>  };
>>  
>> +static const struct imx8mp_reset_info imx8mp_reset_info = {
>> +	.map = imx8mp_reset_map,
>> +	.num_lines = ARRAY_SIZE(imx8mp_reset_map),
>> +};
>> +
>>  struct imx8mp_audiomix_reset {
>>  	struct reset_controller_dev rcdev;
>>  	struct regmap *regmap;
>> +	const struct imx8mp_reset_info *rinfo;
> Since only rinfo->map is used in imx8mp_audiomix_update(), you could
> directly store a
>
> 	const struct imx8mp_reset_map *map;


hm, that is true, but I wonder if instead of replacing "rinfo" with "map", it would be better to

keep "rinfo" and add an out-of-bounds check for the reset ID in imx8mp_audiomix_update().

Something like:


                if (id >= priv->rinfo->num_lines)

                    return -EINVAL;


we are stuck with "struct imx8mp_reset_info" so might as well fully make use of it?


>
>
> regards
> Philipp

