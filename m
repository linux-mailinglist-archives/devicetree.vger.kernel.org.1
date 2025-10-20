Return-Path: <devicetree+bounces-228827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2CABF0F95
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:01:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 09A4D3B566D
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D08530149A;
	Mon, 20 Oct 2025 12:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CgsAlOnI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791DD24A058
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961600; cv=none; b=Q9lq1aCK5iuMRKyKCQYs7pU5LOlW4EK9G/g9ULXPbU8Ws0AILyvHdrC+hEdX3HUfiB9Ip9UzCytC0zKe71/Am3oMngXOMFHkOZzyWSI4G7Bj8gboYfuyhDOv4hmkVpUd2VwJH2WNfoV3E60IkmYLCdyFc3gwq0oy1h7pi+RAj7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961600; c=relaxed/simple;
	bh=+tJtGhzL8/nlJ0ZRUo4lnx1z48ZNBBmtc/H2ux9Ns1s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WAglobGXgIkX+sHLE7fppmEP+O2XRKUlCxBuBFP/HJgDOtLDnp0BISyECxDfXqHCrosbi0DUIVaOElYgOV6wkYHeXvw/vzwLfMKIjdq8WGe3W9ewpewPzEKmUjNWma/DylKbHQrM6wAt28kgosl5mzv1OqBU9JnD02LRRCRIMDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CgsAlOnI; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b4736e043f9so716464866b.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760961597; x=1761566397; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r9qU6FzgzJIkijGhPwFvDcu1xBSrqOMq/g46aIW1/Vk=;
        b=CgsAlOnIZJ101Jg6p1eZ+8FJr6o3ZoA0XYLCCfzcLslU3E5voxzHRyqDOy3bd5H+rh
         2tPQLgYz06mZPDy02VQ2v8aeWyb37RgMUlHYRJRzP4AYmWI1iVX4+hp6TyIIYBx40QFH
         RDiBzu8Yo1qhZeIV8v0hWOZRltRSsfX92XXAxLVFKMTpJwMEF7UttLUwuGOSl7jV7Uzj
         8nYt1mBiGtuZ8rkdGRDa7bs4OWzsJKbiKHcjQAslbXxuPKRqHw+Qu01UlfkOlp4KAo+d
         K+2313Uv3bhKxSDoJC/tIrjoIgcEzmRodANjuChTlVLwnrqzGZ6tOb7lPnEf3l6DIkRx
         XzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961597; x=1761566397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r9qU6FzgzJIkijGhPwFvDcu1xBSrqOMq/g46aIW1/Vk=;
        b=Z4ceAaIsMb4bjCu/CEmcmoL8TU8j0x7mzW0KZcCJQwSNq13MF3vXS+xdtwctZSz/Ej
         KrSoDigB/W045j0l4OQSYoph1cp1+ySyuA6i2hrtEhbl57hmMX9pir9LgrHMdmMLaEkx
         6UV9f1AE1k4lYo9TyMWtNiV8WK9mqO50mYhGTYGHnRcuRFJN6arOPKGBc0dZQBGCRWiJ
         rMbLfN+2CXFeNMhYnUs5yHSPQnGYtpP3rdk9DAuK80fVmoQ7JFgaX1xGFWpAyUwF56pW
         Z5e7x7UJXw0zTPdcIwv4fBFygA/x+YHZS+J1sC62OCbSAGRcGmCMEYloXyt5CQvvRifU
         0ISg==
X-Forwarded-Encrypted: i=1; AJvYcCW0ShA8bnEQz8oqlkWxNZJWorsG7qB6Bzmlj1NxYseX2W4Mq50WkWL937pcaD9P8ouCHc457K3COngE@vger.kernel.org
X-Gm-Message-State: AOJu0YwbY8yFor078EbKBDa8eUvpbR3DNm0rCjLaluUPVZKCGJZVT5BI
	+QJEmrAi03vkP7sdtMoFXeQOHnVdHCMQ454vTMf8gbx+AZsc+kRH50kxdDUz0dshgV4o8A==
X-Gm-Gg: ASbGncuxhX0MbO/zzU5WLo0gm3yTkuqzujDO6qJNQEKhzSYEt4q3Bb7NDTwxMSScx7p
	UqZU+6XbSfdTI/7PNa9kxj8s6GhxJWcePJrN6K/cRfnldi9lY3x2tjZQZggpsRCfpC7w31B+LiE
	uCSMFjbedZPOqg8OLrHa00xwi3eNC0jYi3s1TBfyzStHqU64VWky7tIcOdkPdJssCWatshUQVOO
	6AH9w+QlBBjh2RZQqZF44bXlW/R6YennbL0bcwh9se0e2ldai+FKli0lzDvdgfzP4R6Fo6+Ek6J
	w0MmMcmkJdBTmDUlfXcReNd+1glDztmFo6F+e+RK3Lo2IfyUvXLzqPt33gEy4LsF32zVg23Pqp3
	faQSmW+n/OHj+UuODIE/qFfcP7JfB1XETScTX59pHgyubJhaMriWpTz3utMQA3Jg7A5dTVUfukn
	DxOAsLZExavmTVRcu1w34bt9bQCVkOSpP3
X-Google-Smtp-Source: AGHT+IEBXKsErf4ichcBkQA9FZmSnI5DZeli6KgMkaabKrVEZ2rxSHwXbSqWavZ4Sb3eNG/IyTW7tA==
X-Received: by 2002:a17:907:70d:b0:b42:9840:eac5 with SMTP id a640c23a62f3a-b647482e03cmr1529682266b.61.1760961596496;
        Mon, 20 Oct 2025 04:59:56 -0700 (PDT)
Received: from [10.25.213.231] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725d80sm777107466b.67.2025.10.20.04.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:59:56 -0700 (PDT)
Message-ID: <7b4936f5-77ea-4077-94bc-38bb5c63f4c3@gmail.com>
Date: Mon, 20 Oct 2025 04:59:52 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] reset: imx8mp-audiomix: Extend the driver usage
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-7-laurentiumihalcea111@gmail.com>
 <aPJZCv+iG6cuxsj4@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aPJZCv+iG6cuxsj4@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/17/2025 7:56 AM, Frank Li wrote:
> On Fri, Oct 17, 2025 at 04:20:23AM -0700, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Some NXP SoCs integrate one or more, per-subsystem, block control IPs,
>> which allow users to control the assertion and de-assertion of the
>> reset lines tied to some peripherals present in said subsystems. Some
>> examples of such SoCs include i.MX8MP with AUDIOMIX block control and
>> i.MX8ULP with SIM LPAV.
>>
>> Some of the aformentioned block control IPs exhibit a common pattern with
>> respect to the assertion and de-assertion of the reset lines. Namely, the
>> user is able to control the state of the reset line by toggling a bit from
>> one of the IP's registers.
>>
>> Linux can take advantage of this pattern and, instead of having one driver
>> for each block control IP, a single, more generic driver could be used.
>>
>> To allow this to happen, the previous approach, in which a single reset
>> map is used, is replaced by a per-driver approach, in which each auxiliary
>> device driver holds a reference to a certain reset map.
> Can you shorter your commit message?, basically, you just add
> imx8mp_reset_info for difference auxiliary_device_id.


yeah, but the commit message is not trying to explain the code, but, rather,

offer a bit more context to understand WHY we're doing this. However, I'm not

fixated on this so if people don't think it's useful then I'll just shorten it.


>
>> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  drivers/reset/reset-imx8mp-audiomix.c | 18 ++++++++++++++++--
>>  1 file changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
>> index c74ce6e04177..c370913107f5 100644
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
>>  		.mask = BIT(0),
>> @@ -45,10 +50,16 @@ static const struct imx8mp_reset_map reset_map[] = {
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
>>  	void __iomem *base;
>>  	struct regmap *regmap;
>> +	const struct imx8mp_reset_info *rinfo;
>>  };
>>
>>  static struct imx8mp_audiomix_reset *to_imx8mp_audiomix_reset(struct reset_controller_dev *rcdev)
>> @@ -60,6 +71,7 @@ static int imx8mp_audiomix_update(struct reset_controller_dev *rcdev,
>>  				  unsigned long id, bool assert)
>>  {
>>  	struct imx8mp_audiomix_reset *priv = to_imx8mp_audiomix_reset(rcdev);
>> +	const struct imx8mp_reset_map *reset_map = priv->rinfo->map;
>>  	unsigned int mask, offset, active_low, shift, val;
>>
>>  	mask = reset_map[id].mask;
>> @@ -144,7 +156,8 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
>>  		return -ENOMEM;
>>
>>  	priv->rcdev.owner     = THIS_MODULE;
>> -	priv->rcdev.nr_resets = ARRAY_SIZE(reset_map);
>> +	priv->rinfo           = (const struct imx8mp_reset_info *)id->driver_data;
> needn't force convert from void*
>
> Frank
>
>> +	priv->rcdev.nr_resets = priv->rinfo->num_lines;
>>  	priv->rcdev.ops       = &imx8mp_audiomix_reset_ops;
>>  	priv->rcdev.of_node   = dev->parent->of_node;
>>  	priv->rcdev.dev	      = dev;
>> @@ -168,6 +181,7 @@ static int imx8mp_audiomix_reset_probe(struct auxiliary_device *adev,
>>  static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
>>  	{
>>  		.name = "clk_imx8mp_audiomix.reset",
>> +		.driver_data = (kernel_ulong_t)&imx8mp_reset_info,
>>  	},
>>  	{ }
>>  };
>> --
>> 2.43.0
>>

