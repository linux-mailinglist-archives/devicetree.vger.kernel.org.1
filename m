Return-Path: <devicetree+bounces-205613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8CBB2997F
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A500C202E66
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC00D2737EE;
	Mon, 18 Aug 2025 06:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R55iCj8P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DB0272E71
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755497674; cv=none; b=cUImYQ8rtyivCpREZXctWjMFF4RUmo+zRt0VbKTzAZ6NImynArYaU2eIoxGBuMJLANrsC3lfe78GhmDDlEHzGEZSYkjqG4Q8WKS6ZrhuE7k4tgHSeCrnMe37Rs510pO6XmiEG5dOJNU4TsQAjg+K9oQr2MkVtcrrS/9LI5qORZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755497674; c=relaxed/simple;
	bh=b9af0JOkk3qCsNlz3GAfeWhsFnruqX66qp60DveQtB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fXAzLqjkfW6AGTzfZVy8B85piSvpmxLqG+atOTkVXM/uYVNx7yvq32AEBc5UFHz14RrfurVhdNmU095/RbH58L15At/OLNxktMpq2+Hfwm4xUZc+ZvIhWNs3p/AkSVShmxCLA0M2MtlzhDUs+ysp/zljXKap2IxzbON1zJX7PWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R55iCj8P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57HLEYq8002874
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:14:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wzuB+yfYTi8NabTXC8LU3lRMaFxlb+s9tmJJs7u++Y8=; b=R55iCj8PdUBLmAL6
	rB6tlNwvLf539S3tLlZ6yJvgahID3eSDs4UTuhaHn/gcvNF82Xr3RBdOmtRiGFhr
	6hqIBmDjuG23qWiH5jPBLqCvvMH5mMpXP518s/mCYgifMNIDBHyEDY6ZRVLiwxxo
	hbu8tKLXBrUW7wZ1Fe9CwXYWBhllr6LYvlyiWqh41m9W9t7HPWQdtm+qorJKDn8a
	c81bIxofaOmMR21d1A6FOfOh5LYjQ0uV7yUNSMomZRSqHBpjOOIp3my6i+jZUV6G
	DhC0WxGhui4YPLch1jPXftPZfjQm98QTDQhlnNC3n+aQW/oipOvDbfztudH7Ob8o
	XRNkVA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk5mbcqm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 06:14:32 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70ba7aa11c2so57249836d6.1
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 23:14:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755497671; x=1756102471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wzuB+yfYTi8NabTXC8LU3lRMaFxlb+s9tmJJs7u++Y8=;
        b=EdYoY86zW2rfhy0om/QKqxEw9Y7w3Rlw5qjRITTpjFLmZYBjyq6Re5MyiSFvDGp7mE
         iv+i/TqBxVIw37i6SeInaiv0mo+B/66IhyMqndwD5BvSAEdQqLRTeALiNlE0tHu8cd1/
         nl7JcRNzNRs/MwfvoiqYZPHxcwfNDNKFe9kmO7Z7JUcVvNfzboply3puJUMRa+Hiya4d
         G2Iyl/ES5cLKRCohHfIuU0ppyShz2ZMR0clg5CxWs3xCib2ynuNH5CMCGDFVPKqKkaVJ
         J+sLg2t2D41RldJeysyNZ5kHELskrHjgNM9vZKWfz8xwXai9Y51aCXWUGmH2ORC7+eHS
         Th1w==
X-Forwarded-Encrypted: i=1; AJvYcCU3ddPyOZ3HtqRWKEMS/qPle/IRvHVfioAe33nSflVbOJ2/9hrKJEJghd2k0/u2t2eEa/e/rD03ID7J@vger.kernel.org
X-Gm-Message-State: AOJu0YxvKYO2DUlb7h/rMT5sW1IIAZVEVhBeLyTZtcSi3JVBbHRUGpjg
	uTUujuf0mBvUH+c2ysJAI+hxz7wS4EAgK1ZSF6chUfDSMHr3o7RzN/eoQcrKpiZvd6T00887U3o
	X5TlvKPAd+v4xlEuvbUOdz3HkTO/kWg8yAN4aDH7A1kT/8mXrpgC8cyUppdeT6gbx
X-Gm-Gg: ASbGnctCQYePzOxADLCLnnkwFcVvdzoR6QhI7vakkeAR8baDni/oCUZC0yF61t/5EAe
	C/N1dvTKs+WMyMtbSCsePr6YjvYQ7YtArkWi8BkgKCPBc5v7zVsnAQWLVG/bpLc5Jb4ToJ8mxoY
	96CH+BegG6/h5qE1p4l3do1ayaud0QBq+bwSB+QR2PrVcL8+BsRjl5JVyZHDUmCugENjD9sXIQN
	BO7bXB8z6LN/U+W4CGoPuOVxz+YKO1ikG+NqHqzMzT2Wc9oqZaUKFeKCYojsjyJeO6NL+AqwykQ
	3KILnlVwxMDQyIZm2TVq+557I2O65fCoCVOFxDdo2npGe2OQmf/SvX7iZKFY4Twk1FM=
X-Received: by 2002:a05:6214:268d:b0:709:7e2e:646e with SMTP id 6a1803df08f44-70ba7aac450mr169979226d6.16.1755497671004;
        Sun, 17 Aug 2025 23:14:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFt/A/2HlQJpAZauyOKwbvMLnEHhxmdbD3mg22b9mV8n2s7/74fr1dltPVGUwmpFKeXxzIQFw==
X-Received: by 2002:a05:6214:268d:b0:709:7e2e:646e with SMTP id 6a1803df08f44-70ba7aac450mr169978966d6.16.1755497670527;
        Sun, 17 Aug 2025 23:14:30 -0700 (PDT)
Received: from [192.168.68.118] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3bb67d86755sm11364274f8f.48.2025.08.17.23.14.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Aug 2025 23:14:29 -0700 (PDT)
Message-ID: <321dc1ac-1837-4d49-bb7c-7da49316b208@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 07:14:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] ASoC: codecs: wsa883x: Handle shared reset GPIO
 for WSA883x speakers
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, kernel@oss.qualcomm.com,
        Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250815172353.2430981-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250815172353.2430981-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250815172353.2430981-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Sdn3duRu c=1 sm=1 tr=0 ts=68a2c4c8 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=GII5O7IxXX2w1O2W61QA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 8yqrEK-HtaIWNWW5vMkK8XgN20R1BxIh
X-Proofpoint-GUID: 8yqrEK-HtaIWNWW5vMkK8XgN20R1BxIh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0MiBTYWx0ZWRfX1UBCU7RkFxOR
 WPcaqKHr3Lo+CviHsEdyjNwkWb7bjOL0OUJSf9QyBb6YrXBwmxLineF46PWRVu5DRxSJ+Ocs6au
 01/YLd9XN3YRfOryhANV/AxjPl2oZrQLmBwQuqfZhvkDhpWHMPwCKle+br/ExEF0aO9gcthfslE
 DxBzeCaDiIh7kbYhygOL1em1g2Vcy27mXJ2WVeGM0R/3uHizftatRwX2cdynaiEo8tTJflVm0Nz
 DMfdzd476K3oiXhAKfb1LfOyEuvPdx8yVhDLA8aON83mlem30eCTj80aEUJwlQJrA824F+PyZK2
 /smnmDkI1+aMV+arj0EBKqJsjqWpxBVHORa02/4J69KFUpoPsFTemHGXKLPRrNJgg4mf5kejDF5
 n9zOLCFr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160042

On 8/15/25 6:23 PM, Mohammad Rafi Shaik wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> On some Qualcomm platforms such as QCS6490-RB3Gen2, the multiple
> WSA8830/WSA8835 speaker amplifiers share a common reset (shutdown) GPIO.
> 
> To handle such scenario, use the reset controller framework and its
> "reset-gpio" driver to handle such case. This allows proper handling
> of all WSA883x speaker amplifiers on QCS6490-RB3Gen2 board.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> ---

lgtm,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

--srini

>  sound/soc/codecs/wsa883x.c | 57 ++++++++++++++++++++++++++++++++------
>  1 file changed, 49 insertions(+), 8 deletions(-)
> 
> diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
> index 188363b03b93..ca4520ade79a 100644
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
> @@ -1546,6 +1548,46 @@ static const struct hwmon_chip_info wsa883x_hwmon_chip_info = {
>  	.info	= wsa883x_hwmon_info,
>  };
>  
> +static void wsa883x_reset_assert(void *data)
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
> +	/*
> +	 * if sd_reset: NULL, so use the backwards compatible way for powerdown-gpios,
> +	 * which does not handle sharing GPIO properly.
> +	 */
> +	if (!wsa883x->sd_reset) {
> +		wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
> +							GPIOD_FLAGS_BIT_NONEXCLUSIVE |
> +							GPIOD_OUT_HIGH);
> +		if (IS_ERR(wsa883x->sd_n))
> +			return dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
> +					     "Shutdown Control GPIO not found\n");
> +	}
> +
> +	return 0;
> +}
> +
>  static int wsa883x_probe(struct sdw_slave *pdev,
>  			 const struct sdw_device_id *id)
>  {
> @@ -1566,13 +1608,9 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>  	if (ret)
>  		return dev_err_probe(dev, ret, "Failed to enable vdd regulator\n");
>  
> -	wsa883x->sd_n = devm_gpiod_get_optional(dev, "powerdown",
> -						GPIOD_FLAGS_BIT_NONEXCLUSIVE | GPIOD_OUT_HIGH);
> -	if (IS_ERR(wsa883x->sd_n)) {
> -		ret = dev_err_probe(dev, PTR_ERR(wsa883x->sd_n),
> -				    "Shutdown Control GPIO not found\n");
> +	ret = wsa883x_get_reset(dev, wsa883x);
> +	if (ret)
>  		goto err;
> -	}
>  
>  	dev_set_drvdata(dev, wsa883x);
>  	wsa883x->slave = pdev;
> @@ -1595,11 +1633,14 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>  	pdev->prop.simple_clk_stop_capable = true;
>  	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
>  	pdev->prop.scp_int1_mask = SDW_SCP_INT1_BUS_CLASH | SDW_SCP_INT1_PARITY;
> -	gpiod_direction_output(wsa883x->sd_n, 0);
> +
> +	wsa883x_reset_deassert(wsa883x);
> +	ret = devm_add_action_or_reset(dev, wsa883x_reset_assert, wsa883x);
> +	if (ret)
> +		return ret;
>  
>  	wsa883x->regmap = devm_regmap_init_sdw(pdev, &wsa883x_regmap_config);
>  	if (IS_ERR(wsa883x->regmap)) {
> -		gpiod_direction_output(wsa883x->sd_n, 1);
>  		ret = dev_err_probe(dev, PTR_ERR(wsa883x->regmap),
>  				    "regmap_init failed\n");
>  		goto err;


