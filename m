Return-Path: <devicetree+bounces-196458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E6BB0576B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C2DC1C2335A
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 10:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37EA2D63EF;
	Tue, 15 Jul 2025 10:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fMqEb0k9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B0C2D12E4
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752573867; cv=none; b=ncF12lvzyofAvvA6Z/qQn3lGQguae1bRVf9E+Eq7ta6eVjJsn3tII7TGf34eZGxQ7k4mY/BbMZejZD/jOpy54n02kuY6onj1q3YZBCgJnmXb4z4a2TbHeuLP+po8lUDhkdAB+o7n/tHKXZ7uUiDyrST7dSTGM6UeXwbfxv//kLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752573867; c=relaxed/simple;
	bh=BNgJdx2kgLGA+3XaVIpYoIeQu4ysU05k9jPfvfGKAYQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GUSks2tmJMz+zxC0aniKRCFJcslAS78l5jO3+zgH6UyIfAlKGARsxxmx3V6k9MUXEkelLoC6841fR6zNufN+5m4zxhcGLoybunZQRs/+AjiCHKtbXbO/CS63GclD97EdsmK2P3asdhMQB99pxQKpIIsijRxvDFHoUXcX3+KkK7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fMqEb0k9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F64sAu021925
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:04:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jHYSJD27uvDlRUQTR51LeWjSN/YPjznDBPWdLD1taHo=; b=fMqEb0k9eOsvPtRq
	pgvyCg8P1RYy3WiwKPOu3hnglFNcOIKalBAIKpJFwvy9Edf5SD16CyGWB1j6KNK3
	wI1pFEitRq2zsqcLKcHn8KaJaR9C62cbR0hxyO0Icz9tF+UM6fbCF7MW1zPCv/y1
	IaBKsqfrFvrJ6l+lJ/dPNSoJxsGvmBu4MEf1tzgUUCn0xnaVbwepLQQjWna939WK
	2PsSQ6hzVP9RvXzzmaCfhvLtE7f6Lcvm0FDy7vtkXDO4Y+7ae28ubPcbtpTJ6r2r
	SFMoUVunvGXifOs/tf3RLhrNQe5V2z5H+PcRG4YUJD3CQQGEC3cKWX6LmwAeg+Uo
	eaCPgg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpaj4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:04:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e32edf8dcaso3665785a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 03:04:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752573864; x=1753178664;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jHYSJD27uvDlRUQTR51LeWjSN/YPjznDBPWdLD1taHo=;
        b=OroFLrRBIZHPgefAo/2HJtqpMxpyL03vxfq6H9RFWaf08HILDQhb1IrPxP1WbvMDMW
         AWE5zxHgoH+WoEQZmkYo56Seof19N4+aFKVvfFLW5od7KUovkrbHbUwxdDvmUWwECeHC
         xtefOqn0Ca2vmA5mxZl6XPOAxQFrXEqrnvr+b4Jr4fvH/smS8YSbzg7oUFjigDmc1+QX
         2bx5OttFZqPLcNHitqC360GOVlTbHSP3W/4Gb80zT0yDlTIYRB547a028WNph5WASI9x
         aeJ1VtfF8Nq3gxb1kInJeauUypN7QQW/QWNMOKhgpmWPpWS00ZedZyuN4GyOVFbsgpId
         RSzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnwxau/LpNxSxpmPoafsBqYo1xnpIkJZHaHb3Qwez/sDM4UFhV7OE79odpTVNMepzZTSNi4aHu85Gi@vger.kernel.org
X-Gm-Message-State: AOJu0YyYUaAGcqoMZFqBrtQdszCkWIIArvrPmcvOroHEWBQs9Ro6+yqz
	vjSInU1JkoZVbBub9jBOch2O1Nh34gLJ0/zpFN9AKMKiQ2EHwTlLeRVYNQQL8mHSwjiUk4Y3k92
	OBJEeOfUgxsNz1OLRX0sAWu5vWlxuO9ooqUe/D4N8n/7QYZuInRDOo9gBdI+3PE40
X-Gm-Gg: ASbGncuvSjfV08oGIWc7UqY4vPzrUiSe/aPRbIchTBKD4V9a4FCpX9i9m6Hcl/m0HAP
	TzONo6wpN14AkaNDuoa8UWgXlxgLRclTRYWOC+iIrRg3E263ri82v71SCn5L+pihx+Jz9+rBXU9
	lVtX0eE+YRuq0C2dYe86ouWWIjhd0Ut5mjNB6JT+M+VGFV6LeOQxS3WBw063upbjThvvctDkXrl
	WP+PIKOIwk2hsQRoNnIRqMnBmm/vAS5y9unBOsFCb1+pWsbj4TTIZJrDTB8aKpVvPz1A5LfsrLW
	f9fIYzBuVEXLcdFygXwLCVrX4x0KvabZElJcBFWqEf/pIPqbY79OSqNmhJhxCqmoJUX4/7C3ubi
	6PEiFidOgMvBJbciAkrTS
X-Received: by 2002:a05:620a:6405:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33c64d5d6mr50122185a.0.1752573863946;
        Tue, 15 Jul 2025 03:04:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUyozA445ADYpujI0kmNPEbeGrDOg9nc9SAGKkwFmSlzeir/EjIgg27sen+sL7L37zz326xg==
X-Received: by 2002:a05:620a:6405:b0:7e3:3001:b055 with SMTP id af79cd13be357-7e33c64d5d6mr50121285a.0.1752573863480;
        Tue, 15 Jul 2025 03:04:23 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8313036sm956336766b.180.2025.07.15.03.04.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 03:04:22 -0700 (PDT)
Message-ID: <babdaa54-8804-4f20-9847-9105cd485538@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 12:04:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: i2c: imx355: Support devicetree and power
 management
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20250714210227.714841-6-mailingradian@gmail.com>
 <20250714210227.714841-8-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250714210227.714841-8-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA5MSBTYWx0ZWRfX55JQEzNBuuDt
 d9nI+kU3ETpE2EleCeggzw5oNgJfqSt7+gJwIHQev+XwDX/os0WQbNaXzprYL1RUt7tBSLevSey
 bkG0fOISop5dvnu9NGFzyUaPf9wZmrYiWVgehPu0E1g+jx/b77R4w0zRcfnk6+I6rXHk+AXfiy7
 +wx41pi7mNcQDcS7uKitI/E0Zcaul9MFKTzC5mzdLup3m5+Gqmii/RAqtFMoqGLEN1JjiR+UdiG
 0T5hw2j36VFFEZFt8kjVWUkcAz+fvuLLZtbiPhnBSrBAZbszOyuPu/K5ovWKK8macpv3PEsKuxZ
 LLuSlacNVuu/BjeHELvfYs9+Dua9NoPISoYfuQIB2aO/+7PwsmDF7+YKAPRoBbumQTEz85oLb/j
 IF74zdvu6HMlXyEXMVMMlxdzSYaoj1XmHps6MOmxRCfKVvKYrjJIvJE+h1hpfZu4fezSdP8g
X-Proofpoint-GUID: rnOFnpxieLyEqrzGcDzUn1zWJVAoYIDi
X-Proofpoint-ORIG-GUID: rnOFnpxieLyEqrzGcDzUn1zWJVAoYIDi
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=687627a9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=P1BnusSwAAAA:8
 a=UF4_Mx3OVNFJwZjtfFEA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150091

On 7/14/25 11:02 PM, Richard Acayan wrote:
> A device tree compatible makes it possible for this driver to be used on
> Open Firmware devices. Initialization of power-managed resources such as
> the reset GPIO and voltage regulators can be specified in the device
> tree and handled by the driver. Add support for this so the Pixel 3a can
> use the driver.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +static int imx355_power_off(struct device *dev)
> +{
> +	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct imx355 *imx355 = to_imx355(sd);
> +
> +	clk_disable_unprepare(imx355->mclk);
> +
> +	if (imx355->reset_gpio)
> +		gpiod_set_value_cansleep(imx355->reset_gpio, 0);
> +
> +	regulator_bulk_disable(ARRAY_SIZE(imx355->supplies), imx355->supplies);

FWIW power_off is normally a mirror image of power_on (so one would expect
thissequence to be reset_gpio->regulator->clk)

[...]

> +static struct imx355_hwcfg *imx355_get_hwcfg(struct device *dev, struct imx355 *imx355)
>  {
>  	struct imx355_hwcfg *cfg;
>  	struct v4l2_fwnode_endpoint bus_cfg = {
> @@ -1648,11 +1715,15 @@ static struct imx355_hwcfg *imx355_get_hwcfg(struct device *dev)
>  	if (!cfg)
>  		goto out_err;
>  
> -	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
> -				       &cfg->ext_clk);
> -	if (ret) {
> -		dev_err(dev, "can't get clock frequency");
> -		goto out_err;
> +	if (imx355->mclk) {
> +		cfg->ext_clk = clk_get_rate(imx355->mclk);

See:

<20250710174808.5361-1-laurent.pinchart@ideasonboard.com>

Konrad

