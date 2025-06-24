Return-Path: <devicetree+bounces-188812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719CAE5A2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 04:43:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B36574A4204
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 02:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41BA2192F8;
	Tue, 24 Jun 2025 02:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N/Q3ScHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D00317A2F8
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750733027; cv=none; b=rP6rAt/6rzcWUW6vtusyzQx3KnM8EahsUEQMKHfABxwOctkkjN9i4knW5nto6QYrj1AAFw0q5LGPtn/BksZomAceHUAm+Sdgu8I0enxX+w3PvKXY9ZIQq6ij4DunHJLt9EGXaMET8CkCuYf0SGVfsaI8RrSbBrvNDq2NiHQQD2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750733027; c=relaxed/simple;
	bh=FHL+gsjsPdHuYxFfYAjijvJ6tRyazCSteFsgvpJW5HQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y7nI7WJvchBI7KlBaqcd3yGu+00TmaPsrQ0CwCNZDfa6TtiyH6ljTjMTb8gK7cYqKcJ/Rt4BZxmAcUJiIEGw81y9lH7pN10IppwnP6L0Je5M38CM5UOxSrdjhkf+oGvXlgvo+1hUsyUP/r04SC9ou8NNqleP73HquzQCp/VpgI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N/Q3ScHk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NJdvj6014510
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KN3XXvaKtZM+YmK/jTYgNUfD
	5TIEnLm1ZgvjPuBqaac=; b=N/Q3ScHkA8ejc2FoLAPivBDZY5hNDMftlsjPB9ma
	ER3bqn7xi9t3J+WV8Uffr5IbDMu1+Ck9EJaUhM042yfLQ1oax+kxERBazLauXmVB
	LfnD6j0uzVsdz5bIlIXPMYlQqSrg73ghFFC4JUnc3bCwQ9ZuUOHiRVIUtbv2FPsw
	xQBrzJoflyPy3++ZmHt4kdJjkMrR/1pztntBV2USCCK5o3QJiKNmSdsZgg6/kJXm
	h0dzB7E40GgXoIJeRg1U8IxK8BkBJLhCMA7mGG7fOMMJ6tZhWBK42GXs//wTVNQS
	ojDKZL6If3CVdbXr1cxG9Tf4IZBPwGiGxOGFHKSpArMWug==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5kp5a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d399065d55so573837185a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:43:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750733023; x=1751337823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KN3XXvaKtZM+YmK/jTYgNUfD5TIEnLm1ZgvjPuBqaac=;
        b=VYFh663DjKwEAZj+60K90NOxGWNjMcOt/mjDySvatcdpOFTQk1apqJSfC0rgj2FuGm
         QcFIQsnhGUxfwkQRiDeXjDJtyQpopSr/nf31rIr2gLFn6L6r2PZFX+yd7y1UPddu3+EK
         MUDs+nAV9i2MAHU5IoCDv40BsgwTPzbf+6fBZW4iI/WneBIWgxSHQJKqZvz/2uhpG0Da
         X6iufyhqiUD8TLob0lix97PTDDUZULnczEon/jcQt1W4gUgUWFtaSbhRNVDAqG/l21Wh
         V6jiRjtb2l6/YQeINIwkFmYcfHtRvehXqu0X63jI8e8f+iFgKX5Vr4keWpNXuzWoaKA/
         tgJw==
X-Forwarded-Encrypted: i=1; AJvYcCXrS31jamvBxS85WKHOFymlmZU25Ki9hZc0ky2vzqCx6d3AGu/TA2AjHvrtbkqOevpwqHIIr5MKtVj0@vger.kernel.org
X-Gm-Message-State: AOJu0YyEuOU23RGnXj6ZNVFMai134c709T8TD/+JDKr6YQ+pxEJfJDrw
	iDv5Ki4p8YLpo66IIWRBz3YV64YWQ/0XxhcmqjFxetyLfuFW9BPJFnC9N8Pq2bJ7Dmn2E0l2ZWs
	wffHn1b3Wm66eSTfnDvOnWrJ5uSc8I3K1savF8Rpu2RAJgcX74dgcnA1iPOR/d0jxWiGh37nisG
	8=
X-Gm-Gg: ASbGncsnyPyOI+oJpRupAAvgOFdPEt0y5dd2kHLC5g1v+tXxdGbsuLzutdOQXBbhQLP
	IWc1kODMiZvgmL0Z1WvM7FebRh7HJ5lnAg94CkUYkI4w++hMwTMJDsrw3v0C5xpR2Fmqv456UKc
	NoGzsmfyP2c9UVtoFfRLcct+amHMDYWP4JKJ2VuN2zH2YP+gBwVtO/KzIsUQzzeHgyz1E3uUkij
	1WDveQz7+5gtQ/v3Cq6aHSxNtrynMW2ktTlmLIRinEPsm68pyhEuGn+6kOwcZXlB1x3+84HhfKa
	+JOBkcfHt6yORPJr1Qn/mx1g2Xr46I8fuePbkIatRIvkzYs5nWuv6W4+iBTQyetEIv1LT0VNGX1
	/kOxK+t1faqC9N7xk9VGl0wecZWLgnMMv4zU=
X-Received: by 2002:a05:620a:17a2:b0:7c5:4adb:782a with SMTP id af79cd13be357-7d3f98c7db9mr2276708185a.9.1750733023180;
        Mon, 23 Jun 2025 19:43:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGit7DNQ9/dBe0d3sh4hHnQ03gUGXShhl+f6zGzYJBNK03gLkKyzMUdUA7ErzCdFn1GhoLtsA==
X-Received: by 2002:a05:620a:17a2:b0:7c5:4adb:782a with SMTP id af79cd13be357-7d3f98c7db9mr2276707285a.9.1750733022781;
        Mon, 23 Jun 2025 19:43:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f5916dsm15255841fa.2.2025.06.23.19.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 19:43:40 -0700 (PDT)
Date: Tue, 24 Jun 2025 05:43:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] ASoC: codecs: wsa883x: Handle shared reset GPIO
 for WSA883x speakers
Message-ID: <v7oxwbf6xjc2gxeviwe4tayovzasysqig5smk752an74qd2e46@q25ymfyru3ze>
References: <20250620103012.360794-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250620103012.360794-3-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250620103012.360794-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Proofpoint-GUID: G37lqXD-8TVSBm_G_U-O4IHkhYMtJ6Vr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAyMSBTYWx0ZWRfX5bKB1GoBhQ5E
 KXLpDk0XyTZOu9CpatT5U4yMMGD2/AkG4rf0N2z8ErGkt4kxTbZGVczdpwZC2qIktDNI2KOzrgN
 HP0uEI6AFkAkm4LXHKn16so7OZBZ0vsyN9ZuqQSM45psCmfqDvkpChQHHFT1e4G9La5lHMp3qc5
 T0d6VRuHN5H/IjG9HMXuPyFyAdvrNUQHOhEodJveYaAYVAodmv+6OsUQW/Uz3kZEyKto/eJA0eo
 3p1LBtPByowEMbXA90gVzafPmdMqGogMZq/jya7TGHHIP1DjflXriWJMuK9jQ0ENkS72sNs03UJ
 8V6v8DpaOGY7XjolQ+2zg2+PWrlnqn4hyW27lxay82oP54m+KFZ1Q89YL6Xm3sZjvNlLKlp55eh
 v/54cAWbyAsk0t5w0xqNV4CN52LfTiAHf9m/zYBA4SCOJ6HWu6BJU3XGVQzs40YNpJXZEQ08
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685a10e1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5E2qFXZqrqlClrV78BEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: G37lqXD-8TVSBm_G_U-O4IHkhYMtJ6Vr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240021

On Fri, Jun 20, 2025 at 04:00:12PM +0530, Mohammad Rafi Shaik wrote:
> On some Qualcomm platforms, such as QCS6490-RB3Gen2 and QCM6490-IDP,
> multiple WSA8830/WSA8835 speakers share a common reset (shutdown) GPIO.
> To handle such cases, use the reset controller framework along with the
> "reset-gpio" driver.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  sound/soc/codecs/wsa883x.c | 57 ++++++++++++++++++++++++++++++++------
>  1 file changed, 48 insertions(+), 9 deletions(-)
> 
> diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
> index 13c9d4a6f015..b82b925c1f8d 100644
> --- a/sound/soc/codecs/wsa883x.c
> +++ b/sound/soc/codecs/wsa883x.c
> @@ -14,6 +14,7 @@
>  #include <linux/printk.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/soundwire/sdw.h>
>  #include <linux/soundwire/sdw_registers.h>
> @@ -468,6 +469,7 @@ struct wsa883x_priv {
>  	struct sdw_stream_runtime *sruntime;
>  	struct sdw_port_config port_config[WSA883X_MAX_SWR_PORTS];
>  	struct gpio_desc *sd_n;
> +	struct reset_control *sd_reset;
>  	bool port_prepared[WSA883X_MAX_SWR_PORTS];
>  	bool port_enable[WSA883X_MAX_SWR_PORTS];
>  	int active_ports;
> @@ -1547,6 +1549,44 @@ static const struct hwmon_chip_info wsa883x_hwmon_chip_info = {
>  	.info	= wsa883x_hwmon_info,
>  };
>  
> +static void wsa883x_reset_powerdown(void *data)
> +{
> +	struct wsa883x_priv *wsa883x = data;
> +
> +	if (wsa883x->sd_reset)
> +		reset_control_assert(wsa883x->sd_reset);
> +	else
> +		gpiod_direction_output(wsa883x->sd_n, 1);
> +}
> +
> +static void wsa883x_reset_deassert(struct wsa883x_priv *wsa883x)

Please name these two functions in using antonyms (e.g. init/fini,
powerup / powerdown, assert / deassert, etc).

> +{
> +	if (wsa883x->sd_reset)
> +		reset_control_deassert(wsa883x->sd_reset);
> +	else
> +		gpiod_direction_output(wsa883x->sd_n, 0);
> +}
> +
> +static int wsa883x_get_reset(struct device *dev, struct wsa883x_priv *wsa883x)
> +{
> +	wsa883x->sd_reset = devm_reset_control_get_optional_shared(dev, NULL);
> +	if (IS_ERR(wsa883x->sd_reset))
> +		return dev_err_probe(dev, PTR_ERR(wsa883x->sd_reset),
> +				     "Failed to get reset\n");
> +	else if (wsa883x->sd_reset)

No need for 'else' here.

> +		return 0;
> +	/*
> +	 * else: NULL, so use the backwards compatible way for powerdown-gpios,
> +	 * which does not handle sharing GPIO properly.
> +	 */
> +	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
> +						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
> +	if (IS_ERR(wsa883x->sd_n))
> +		return dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
> +				     "Shutdown Control GPIO not found\n");
> +	return 0;
> +}
> +
>  static int wsa883x_probe(struct sdw_slave *pdev,
>  			 const struct sdw_device_id *id)
>  {
> @@ -1567,13 +1607,9 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>  	if (ret)
>  		return dev_err_probe(dev, ret, "Failed to enable vdd regulator\n");
>  
> -	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
> -						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
> -	if (IS_ERR(wsa883x->sd_n)) {
> -		ret = dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
> -				    "Shutdown Control GPIO not found\n");
> -		goto err;
> -	}
> +	ret = wsa883x_get_reset(dev, wsa883x);
> +	if (ret)
> +		return ret;
>  
>  	dev_set_drvdata(dev, wsa883x);
>  	wsa883x->slave = pdev;
> @@ -1596,11 +1632,14 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>  	pdev->prop.simple_clk_stop_capable = true;
>  	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
>  	pdev->prop.scp_int1_mask = SDW_SCP_INT1_BUS_CLASH | SDW_SCP_INT1_PARITY;
> -	gpiod_direction_output(wsa883x->sd_n, 0);
> +
> +	wsa883x_reset_deassert(wsa883x);
> +	ret = devm_add_action_or_reset(dev, wsa883x_reset_powerdown, wsa883x);
> +	if (ret)
> +		return ret;
>  
>  	wsa883x->regmap = devm_regmap_init_sdw(pdev, &wsa883x_regmap_config);
>  	if (IS_ERR(wsa883x->regmap)) {
> -		gpiod_direction_output(wsa883x->sd_n, 1);
>  		ret = dev_err_probe(dev, PTR_ERR(wsa883x->regmap),
>  				    "regmap_init failed\n");
>  		goto err;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

