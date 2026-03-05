Return-Path: <devicetree+bounces-271538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEl6KbNxqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:06:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC9E2113F3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCCF430752A7
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 12:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BDF8384236;
	Thu,  5 Mar 2026 12:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jD6qCXHm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="auMGB1Xb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E093137FF5B
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 12:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772712081; cv=none; b=kAPotcODjQKyCMW8hhXBMqYQ69q7a/ui2aL4Fqu9SYlxHqsOcbMf7Co5JM/ASxEOclfNp0EAixSUhL4OUqjrk1rAtnH5StRrGDdVeZfHfI5UAKXZloX4mWuQlDB2qlU0EfCJ2ltGR1Pf7XoKUyW4TJx05xKM873ujChPUpLE4Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772712081; c=relaxed/simple;
	bh=zygdDX9+W+oMjvzo+XEs4zkITghAIx30y9g+SS5sjyw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qcMhMLLd07/4JWMyjKmqXUpT7SWJ18J36ipCNFElpy9rxE4nu2aSmJ8NBYSamOim1YrUF6AjEJ7y4/q6HF4Jy1yi+lgWtSr+G2zru22CbpMtTsXLp57y9gBe1HY0GMd/avym+mBUd4nO8YqSiODEU29y61X/N1hFUH24BMS3dNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jD6qCXHm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=auMGB1Xb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFiuU935975
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 12:01:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+kHJsrS+fSQ7OcWRA5LmpUsqkNxNip5EorCn4UGNqtc=; b=jD6qCXHmhRK6QZeg
	0wfR1Z8/vxPdgcefMUB22eKws/TyF+3BQDo09hdYh6+ZXdzSW8jotOTwmiN1jKcG
	EYwFa7Js28wMLNF9uZYQhMVJ6fsJxRr+O8k+C2uam0SvGi89lHX6XJgSsGFsuQSp
	eRt8ThN2ab7qSl0QwgcYDUOCb2x/xOGtwHoEELW9mlQZ1B0hzi2BY3DhAdCkFFr5
	Zeg3MRBGZGP0yy3Vg20MMl0zOj8mKm/BYxMYLrkZMDwf7mDLKLeiQc2MaizfHVFa
	05s7YnrTWncEszyupAGF2grZwy8F1twve6NPowPUmQ0r6+D0iVL2RUo0oWSz3aME
	GICJvg==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq04u1xvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 12:01:19 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94ad0d8eff8so64014427241.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 04:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772712078; x=1773316878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+kHJsrS+fSQ7OcWRA5LmpUsqkNxNip5EorCn4UGNqtc=;
        b=auMGB1XbqQYlsPAtjdO0WprsC56SGNEJkxyIl/plFE928amArhQEUUpRGONjU9TqdI
         61vdy9Dq5a5CEe7dYh2BM3pb7Sfc+/PRNy3EdnVpfck6cJDdcSS+zNx0HhAnyy+lgnAu
         R6MJcnMHuk3SU72DDh90iEGEDOlLHg6lX2anUBYWCB5V10K7oZgCUOlrMUdTunTem5Fp
         dWGzLG9yjmdDuAnG8E5avQr+GJyUIw4hZBiaXa7iE7FQs9F7hcrZHJMqAdbvCRWuSRSg
         SbrU6TZ2TBNt0TTOL6YXKAGGEg8RsIYSKs+cRf7j07CQGtEUm8SHbPBhA16154FMTYhP
         lAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772712078; x=1773316878;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+kHJsrS+fSQ7OcWRA5LmpUsqkNxNip5EorCn4UGNqtc=;
        b=v2NIzcP41Fa0kfQ6OWvkWs98khUQASgm8erGrxeWcGVYBEifdQgtD0bTyY4wux/fw1
         +yv1U6HLeCBv/sCbZdq0E+OcjGJ0ErW6ewIPbDHy3szbQaw57gSOdwB21Lq512sPEu3T
         DQuvs20uXdQj8qH7pshFz45eOKXd1wxqqAblbp0v8wMjoFz4LFxbYb3lNeLamXYmoesu
         bxEvYDvj2OzEk+AomZ5pcxedRXZJ5BFTyP8/VjL8iBMLS4iIss7Uf9w/qfnBx7XuyZJb
         qviVZse8riZFfR+yGPHwcqzNqUX4bLZg6hrxtRwe4JQe2urXcuCAGjVH24vTGdf3YOXh
         /cxw==
X-Forwarded-Encrypted: i=1; AJvYcCXRmoaVM7MnMGYfZ9+v6dwN+j1wXozlki52nTOIoBx0KbcslYMx+KJkuYnUXmmVW0qvv4eQc3uSsDOe@vger.kernel.org
X-Gm-Message-State: AOJu0YzAmkQTHqG/02QNSDKk2jGkWzB6ZzAakMgx04D+J5mCYdRVprsX
	XlK2I8AKlJeafSv7FarWb2OB8m8dGKLQt05rLN5+t6MDLRy8XOezOQEwsd3KoLGSCvq1vZjTavg
	HxxxlnoV0ZRdxpXcQAf1oY6P+jMy6IFTovBicIchaKl32ODAsnFIOG06K5LTkh8lZ
X-Gm-Gg: ATEYQzwaAdrACvRvztxIsBnzzcJxRmNTN3WJcps22WW1ogdpeuV10YQ0Tyg3IW1hVN8
	PXdpAXoiOL8AR9Z/mY7BPC7/k6dBs6GmfGzW8iTTjK7fjURXKXlCd3NgnbQXnesu71bsOsjbPvO
	RzHWvSLLpswYjyawyIR3Id1dm6ChxFll/woIM4Ex4/2994oHDXC0H6ZuZ9yigxH0DM/CABIgiR0
	U3vFxjgEgrBzUWskcNfAVeO8c6w5oigdF16KNu3d4Zf4Wg2xeGL0fTEPgURvJMEKDT4T/BZ4ffg
	XT2iul7tCD0xpMg8Qte4lA1MMYrtIloF4JVJp4ePZU0ma9kb4xKUbpGC+igWkY0CV/9CRJNav1s
	qGji8P+AvXbcVqO4og33LLU/KzgWb+0MeQ3xRSCcLWlaqBxuRONKBISwJgm+EEDx11YqYTEG3oO
	3u31XlsjbTY48pcaafmAzhHL3Xvd4m6FSDspbWwG8SDfUxTRZ5h20pcbGgK8E2s+Mt4P4QXD/1T
	gZ52VlQ87KZt+px
X-Received: by 2002:a05:6102:3f4d:b0:5ee:a6f8:f93b with SMTP id ada2fe7eead31-5ffc8bdd63emr883541137.2.1772712077959;
        Thu, 05 Mar 2026 04:01:17 -0800 (PST)
X-Received: by 2002:a05:6102:3f4d:b0:5ee:a6f8:f93b with SMTP id ada2fe7eead31-5ffc8bdd63emr883507137.2.1772712076661;
        Thu, 05 Mar 2026 04:01:16 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b94172ca2dfsm34184266b.36.2026.03.05.04.01.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 04:01:15 -0800 (PST)
Message-ID: <e529e5c0-ae0d-4d1e-bd83-e1db77e911b3@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 13:01:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: johannes.goede@oss.qualcomm.com
Subject: Re: [PATCH v4 2/2] media: i2c: mt9m114: add support for Aptina MI1040
To: Svyatoslav Ryhel <clamor95@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260305102123.17216-1-clamor95@gmail.com>
 <20260305102123.17216-3-clamor95@gmail.com>
Content-Language: en-US, nl
In-Reply-To: <20260305102123.17216-3-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BbDqV0S1_E_XkKtkovBUqtNj0JcZwQBx
X-Authority-Analysis: v=2.4 cv=eqTSD4pX c=1 sm=1 tr=0 ts=69a9708f cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=bTc6kqDxjHKFMN1yjnMA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: BbDqV0S1_E_XkKtkovBUqtNj0JcZwQBx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA5OCBTYWx0ZWRfX1G5OKzCVUoSd
 076JPl03BayRu1o1ZIYiOIQwEC9VKU55GE9FKHuCFWADh4IiH3ohTEjPb1ECCynDyvc5rtgFvTw
 h31MTrsF7ukyesiqP0tA089+RfzQVZ74iV6cbk2b1CR/zUeYYe+rh2FpcaXgzpyCNSOq0qgJxS/
 30f68NjuOe5tG9+agf2UJR5noLBo6P/wXKLmOk3doeT3wBp5kCGC4inqYvVvBgzBIVmBrDHxUOa
 qTnNXiDw9mKSIEluIsOCHVLyrR9RYW7rbTZ55EDmdzZ7gkJYXGoBZtVShpREMiO3DKVhmfGBJST
 i9tmvxdGLXRgpUkNwouFa+JLcA4TTWyPxrN1ZQSiGgGiGExjAZJfOmyYr0/r0ZorM57AeElIO9B
 MMY0yFMH7XMR6pl0hh+6h0rJrJZ10XN6Ok1wVUBhWm7LFl8m4VnasWBkFQGba5rtJhJHUcnKhHz
 Jf2ix7oKN4k0AA8Oi0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050098
X-Rspamd-Queue-Id: 6DC9E2113F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-271538-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ideasonboard.com,kernel.org,linux.intel.com];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[johannes.goede@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hi,

On 5-Mar-26 11:21, Svyatoslav Ryhel wrote:
> Slightly different version of MT9M114 camera module is used in a several
> devices like ASUS Nexus 7 (2012) or ASUS Transformer Prime TF201 and is
> called Aptina MI1040. The only difference found so far is lacking ability
> to poll STATE register during power on sequence, which causes driver to
> fail with time out error. Add state_standby_polling flag to diverge models
> and address quirk found in MI1040.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <johannes.goede@oss.qualcomm.com>

Regards,

Hans


> ---
>  drivers/media/i2c/mt9m114.c | 35 ++++++++++++++++++++++++++++-------
>  1 file changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/i2c/mt9m114.c b/drivers/media/i2c/mt9m114.c
> index 16b0ace15813..e395e2d14e97 100644
> --- a/drivers/media/i2c/mt9m114.c
> +++ b/drivers/media/i2c/mt9m114.c
> @@ -368,6 +368,10 @@
>   * Data Structures
>   */
>  
> +struct mt9m114_model_info {
> +	bool state_standby_polling;
> +};
> +
>  enum mt9m114_format_flag {
>  	MT9M114_FMT_FLAG_PARALLEL = BIT(0),
>  	MT9M114_FMT_FLAG_CSI2 = BIT(1),
> @@ -417,6 +421,8 @@ struct mt9m114 {
>  
>  		struct v4l2_ctrl *tpg[4];
>  	} ifp;
> +
> +	const struct mt9m114_model_info *info;
>  };
>  
>  /* -----------------------------------------------------------------------------
> @@ -2284,9 +2290,11 @@ static int mt9m114_power_on(struct mt9m114 *sensor)
>  	 * reaches the standby mode (either initiated manually above in
>  	 * parallel mode, or automatically after reset in MIPI mode).
>  	 */
> -	ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
> -	if (ret < 0)
> -		goto error_clock;
> +	if (sensor->info->state_standby_polling) {
> +		ret = mt9m114_poll_state(sensor, MT9M114_SYS_STATE_STANDBY);
> +		if (ret < 0)
> +			goto error_clock;
> +	}
>  
>  	return 0;
>  
> @@ -2532,6 +2540,10 @@ static int mt9m114_probe(struct i2c_client *client)
>  	if (ret < 0)
>  		return ret;
>  
> +	sensor->info = device_get_match_data(dev);
> +	if (!sensor->info)
> +		return -ENODEV;
> +
>  	/* Acquire clocks, GPIOs and regulators. */
>  	sensor->clk = devm_v4l2_sensor_clk_get(dev, NULL);
>  	if (IS_ERR(sensor->clk)) {
> @@ -2646,15 +2658,24 @@ static void mt9m114_remove(struct i2c_client *client)
>  	pm_runtime_set_suspended(dev);
>  }
>  
> +static const struct mt9m114_model_info mt9m114_models_default = {
> +	.state_standby_polling = true,
> +};
> +
> +static const struct mt9m114_model_info mt9m114_models_aptina = {
> +	.state_standby_polling = false,
> +};
> +
>  static const struct of_device_id mt9m114_of_ids[] = {
> -	{ .compatible = "onnn,mt9m114" },
> -	{ /* sentinel */ },
> +	{ .compatible = "onnn,mt9m114", .data = &mt9m114_models_default },
> +	{ .compatible = "aptina,mi1040", .data = &mt9m114_models_aptina },
> +	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, mt9m114_of_ids);
>  
>  static const struct acpi_device_id mt9m114_acpi_ids[] = {
> -	{ "INT33F0" },
> -	{ /* sentinel */ },
> +	{ "INT33F0", (kernel_ulong_t)&mt9m114_models_default },
> +	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(acpi, mt9m114_acpi_ids);
>  


