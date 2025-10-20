Return-Path: <devicetree+bounces-228892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 95380BF1BD9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:09:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D959F4F8BAE
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C57E320A03;
	Mon, 20 Oct 2025 14:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XjJcvvYy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452797261A
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760969226; cv=none; b=LOPr/UGUWAcmbQoK6GckJ4xFKXeSRjU9ICHpASHjvZMi4PakfgvJCXnkgsl1nHQf1fVJT8fI9e+D+wdRFcfxr3hu2aBZFXS0eNfC2jGLNNHvoq6Q5HD6vxTloCuBz7kW07Rg+D67VRPQzw0G7ta4POiNSfswN2RC8BdaUwa7Y2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760969226; c=relaxed/simple;
	bh=iYFkl/nxfDRLe0SeNUr0Hl4oXg6cy9/Dzz20ODXL4b8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QIgq2gPdwpVh+BhBAdJGuCdPnkM+SjWzvcENWLxdg95y2ss+3QcTUa+GGL+zysjoD2DqlTO7+DuAETDtHWuhezSaZ6DTPwm0h0TIyniiF0K8bBdgEftuy0rOoFKLx2d2syn0mMqLKSYCwSvUf36XbsGqqvTNs4Os2+XzElPRKFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XjJcvvYy; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-63bf76fc9faso8067584a12.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760969220; x=1761574020; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6kZeqZ1f1Kjlwt5WlxnlLU6u8FvqUbW9sH2W37ltY2w=;
        b=XjJcvvYypyH+tcgmKr0o2Ya57xrhU835l/L5zyANYw2ME1fCN24Y7A/PNJAC8oY8eV
         grdexpf2M7AqR4vz4IMcG3a4LTgUQZYrXrxqDC5CToo62XcnWTXViyUiMR4lcN+ZrmDu
         hLCt0/AHvLSbwhUEkMfMTjELF+YQ0DixY/TLthM9TVS+eW4biGmIDVQRtIYzjGiTvDc5
         /4tepfmvZQhMakxnbrKEdmO8Dc1jWG4bU1xJkWaKTnlOQZ/B0fZrNvnLQz6dkLGgOzHb
         pVwNKVfDA755tCVEWAx/ENPlJFmUhnkrXaQkl5zNsYHfVsqdh0oTiT737OcV+cy11qKw
         6aww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760969220; x=1761574020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6kZeqZ1f1Kjlwt5WlxnlLU6u8FvqUbW9sH2W37ltY2w=;
        b=t+Ak6kb1E2Mbhgy8UDOWjEKRTz8FTIBH1hw+35SsWhcMbqdReC+1kbzXorR6X+n0YR
         eGON3ZGzzgnmJfIPHDyrhM0AadC3rWZxRLSoSbBUPX8hqAAaF5cT7AEg62W1L2mtQOZI
         8d0FUxkEb50x0mt3IK0Rv9fS9nUW8AvDMPPbfcJQBYwomOtLjYqQDmpgBUkmME22UZUD
         BL/SpR3mzxBF/R2ChrE3N2YQHhc7ykAdJhh/akHwvHVG7Lh0qZJ3uQ+T1CT32ZNbDIud
         5FkEv+fsb3m1ONX/hpfy9JSNeVUFjUHFVKnp+/lCQ6hgIeqV9uDHUQHwBWehhau46f7H
         2vMA==
X-Forwarded-Encrypted: i=1; AJvYcCUwoO2GX5ZMZBtUUvBM+mLUMmX8JrRYKjvRzMnxxw6FzUaKkReXgWaZ9AJ/7NIMqiOySb9GrvYvv0E/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp4HWut6k3f41uqDg1T5bJwYoenJ56OGbU9J8I/pvk7+hGUi/a
	Cf91orfiRDfa7j2VRrRwCQ6KJ/3QGV3D1vhI//0exKveeE38DJ85wy42
X-Gm-Gg: ASbGnctOlqnVzbyORcIzYs2qI4Ph4YcUhYW3LQSw7S3YCOfXXa1l9H+cK7bxiqNB+xR
	2u7BT6dfncz39Ctlam/qXWIYQ62qtxxCJUApHntbjp75bOH0TIOk3EjH/qLHn45DiQAxYGQqjbl
	WHJPSi+KO4uXOVRCj+JVpDhcepjrV9dO6rO6oYfLQppzVKB+Pc7/mLZ7T5U8hIzKi1LbzfnXiew
	4B4XbZpkccmGiIKAT3ZjlB9IgEWi/LLrv8Cn4oYkwtgSLAxfWyWZa/78dGAkRG8hWmF0H6p+pdn
	dw7W5hrBB2r2QV91t6GRNfhvcaG7QXhYEzssHsU23eo6B4pcUD+3+6t9OK+szPJEiWQ9ow1Obvn
	TX8xzc5EYbL/zYKcNdWpp5dGkJq5fXg/qSUa87VqEaIqMtLo5a4RRok2/L3lEAx2QWFZqkiFSep
	TIbNhVpY2MvIlwMutBNfAF5muqY3tikNDViDP+/UlVJXus9tzekQ2gsQ==
X-Google-Smtp-Source: AGHT+IHVJ/TkOaDWREHUGoT4AMJTtZpCtqwsaqdgZXDvsL2iueitwKCDkh+1+uFs2HpKPMVPG6Ccmw==
X-Received: by 2002:a05:6402:848:b0:63c:1170:6572 with SMTP id 4fb4d7f45d1cf-63c1f6d94edmr11212098a12.37.1760969219915;
        Mon, 20 Oct 2025 07:06:59 -0700 (PDT)
Received: from [10.25.213.231] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c49430272sm6767614a12.23.2025.10.20.07.06.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 07:06:59 -0700 (PDT)
Message-ID: <1bd36f10-aeb7-47d0-bc9a-e2078d5aeb86@gmail.com>
Date: Mon, 20 Oct 2025 07:06:55 -0700
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


not a void *, "id->driver_data" is kernel_ulong_t


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

