Return-Path: <devicetree+bounces-249920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAC3CE49C3
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 08:19:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6E6B300E3D1
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 07:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19AB286400;
	Sun, 28 Dec 2025 07:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M06xJJGw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UR3X2NA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0739C285C98
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766906344; cv=none; b=EeQn7Hr8C7OkEVOaHbpMM6SkVAamcjPB3Y56x4Bu0xUwtRpn/ascQfWrNjJEivmm0QB0DuNny80MPvyt4XozGJj8Hs9LZKKa2XtTx02BDe4LTqjXohI3ZktRlrU8C82Ii6QectjLv7Br4D7BqwtdUDiOxvP26vPDeW7k9N4nKlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766906344; c=relaxed/simple;
	bh=TPJ4nOt0iU964oJ/THYFOaKErd95h1/+MHg0jLU0LLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MtRXtvD5hAiVt6bAyq/pQSNa/InbR6scwKJ4zdUxkmPA0C19o5HRqLWFAi4c2n3wgdmLWPlj4OfN/C2yeoXc6Uz+CbR/fvxqUELkpK5GWQSlHRRMPrbdqhpSNSzIV6n/gvTp4x7PEDZWlVgyedownrsGAEBZMnIGxF8SVsfNvMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M06xJJGw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UR3X2NA/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS2IXhg1792534
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:19:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yvF+ZaDkbR9O600mcCSFI3Lg
	kpXf1owzZ8QLLJIzow4=; b=M06xJJGwCEef6733zEaRhhbhtWxTKRhXuyWjdTP3
	4o2fJG6gcEcnIm7F6qHCzmHJ2qc0HJGmLpm33UtOiLU2EBKl/nPfaq4ddn1wxSK6
	MHMcJYZacWFOPgSzgbeIj0IKWAzK6VlY9honysD2tCGPOCr8fIqj5FTryIuJMc/4
	e07XiWcnkhvKsEEV68Wkk106QXlPktO+bsmhBs6KPabYNy6UIobWa7jNRcVVbzmn
	xzFvK03UF6YXaEMpfxI0qMTKAQ0CjO+k6DQ7ZACDglKcycmvBGUfJt2zYF/zlMTa
	6U7riMmJsZKvBzc0skx8y8IhKrVThQhiWm9wrySLvAV3mQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7u5htu0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:19:01 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34e957c6302so2280061a91.1
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766906341; x=1767511141; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yvF+ZaDkbR9O600mcCSFI3LgkpXf1owzZ8QLLJIzow4=;
        b=UR3X2NA/v2EG5eNdUxIKysHWEf/6xxwBVi6q6z4mHZl+bumerg68vhEwSpAZfzJnRu
         w/uR8WES/sjDGlVPTHiwIMXVabxTJEmZpJNDzj+EjYOeDxzBthUs2DP94l/Sl4nkirvX
         JlZcYTz7YAPAPlmY1mlINVvtYxtC/qrvjkP/7G6xRHAsyOlccINPilzoP8OFJIOnKenz
         HtjON2NvIh/13lO+2nUgi0V+/LFETCk31P1WRRsWo2Lukd41vGJJSuMh4CZhw060MfX3
         lP1KbiMGeUzIz6VPo0/Fpqms4R5H2mbD3zdp3r/xy2dDmhME6gFkmYqk5/PKJq7LBrLE
         6Ulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766906341; x=1767511141;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yvF+ZaDkbR9O600mcCSFI3LgkpXf1owzZ8QLLJIzow4=;
        b=rBbEGqEvMhXtusToV4aiZnpH1I3x0Z3mzEV8rPjIv0CX8ZcPx46s+5cc6NcIU9ITUK
         lPI2m3V1PTSvGlo/m8nPJL52xvopgnXAPauJJk2sYLS7ZpcKlSqjGv14boUcaTmhRP5M
         isB0439AFkNIMqZPUlKBM9AV69amTPFGa+cB/rB4l6Zm4Nl/Y7xXAlFcxJcP8+uhwOcT
         ARR6YoVWiz7aJ5LeI1u7Ogd3JSjLe5Mbz3PR1jnHSLd6IJVWC1ISSsvFMyAYDqlk2A8N
         tYi5hRyKYJG9eE8HkA3Mpwponldsqd1V7ULQ2pq7ZXEw5tlIHhpivNzNiHm1YwSo9M0K
         HMzA==
X-Forwarded-Encrypted: i=1; AJvYcCW0bJZwQDRmwIEq9PP9udefr3bpUt9Yy6mLbVpf/g+U6KVa0KNG6iwJz6zBN1xjc3XGxCmeNpJllHbl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx10N6QVOJaXGQmafcy9pTOKV/IpuCd27hU8dgkqCFLVXK9BKCY
	NCTnoVsswhf5Bl56rCc5ISuQKa/xC2D/Bs1TNUPO0izRCR9f9pVg6QR0agOLepWUMxGyKrEzfvX
	++IoImVkwsurTw+NdOj5BKudLFtMG+N83orP25ejxZVSjMaVVwXAPtH1oLfMHr4cH
X-Gm-Gg: AY/fxX70VYJMOfXr+NHnDcu5q00zXcVeWkA7qhUOnBUtwH+erhljqMxIxYGgIP/l/Qu
	5wwxZrKJfuyFUCvJmpZ8Z3bscvsV4FSRR9UDOq21RnpxmnlILgf5fSStv4SPyANuRzLYMYJ0xVN
	QJI7BdYEgB/vmnfmQbLLow9DWe/bkHGqFXKZNLIt3d1vqgbifthCA9wVvBQuwyx5a/lomI5pi1K
	d8zaBwleLWcbQ6F3VU7VKMV8Bxl+bf1H2/+L+4Z1yRrTxsb7AaqcgFkoGpY6Lga+1//pdz7ur5b
	fBY37Zwl3gs7hsFyYpqxi8SCRvGcNKpDbcDjjF0d7hVYtAHw48o/7fDe6HY9AggZTMgjsjGdsOf
	Wxhm4t4vKIlyn6x7HlERd+20AKSfsYPSqJ20HR8s7VGOtHWCwFRhTWN7HKZqWOsdcC8irtUTsDw
	vZ2SOcZ9D7euIpt4TyJnpl8vJ0xU+WTw==
X-Received: by 2002:a17:90b:4b0d:b0:340:29db:6196 with SMTP id 98e67ed59e1d1-34e921f3412mr17112348a91.4.1766906340776;
        Sat, 27 Dec 2025 23:19:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMh+iK/TE3hYIbqjInhO7Ft6hUEt0HB8jepGeFEdmYBbnxEpmk+kvjgsl+E9k2sICZiR+rag==
X-Received: by 2002:a17:90b:4b0d:b0:340:29db:6196 with SMTP id 98e67ed59e1d1-34e921f3412mr17112330a91.4.1766906340310;
        Sat, 27 Dec 2025 23:19:00 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c146aabsm22503139a12.25.2025.12.27.23.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 23:18:59 -0800 (PST)
Date: Sun, 28 Dec 2025 12:48:52 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Message-ID: <aVDZ3GBUJW6zs3y6@hu-vishsain-blr.qualcomm.com>
References: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
 <20251118-lt8713sx-bridge-driver-v2-2-25ad49280a11@oss.qualcomm.com>
 <c931853e-faa6-41ae-89a8-d22544a9da9c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c931853e-faa6-41ae-89a8-d22544a9da9c@kernel.org>
X-Proofpoint-GUID: Z9jwMqoBQXrtcgZw0hMv66KCpin62cE2
X-Proofpoint-ORIG-GUID: Z9jwMqoBQXrtcgZw0hMv66KCpin62cE2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDA2MSBTYWx0ZWRfX/3ChEZfEA+Ds
 FE+cv6Z9oZ7norQQmqTwf5ApAAbq8Att/sGv0njPRY+XOjaB+whSiXu3lY2iqLigspnaYA4DwYT
 3QGlH09k7ejT7zTj6vUenmu2CDXeRHBXMyAEotX/SUjJaW8PyIwuFyh5sNC4+58hsFaFoLGlA6O
 MbdfygD0WhuiwL8ZODcyJVPVJXh+BxTWmvQl+xthArkUwSZbEAPVyDjeV9LQMNWYZ+saqqyB1Jd
 LegwFnF6rFKVk808S01Iqn0HsrLOaURXq6rYww0fpbQESYEMe6L+MDS+hA6OTlLnPS9vj5epCwx
 4Y0JaQe5I7tuaJGDFqMuuX4DHt5OzyhZ0MOG9fqMbt2VJINbMl6aYuVEAMN7Swn4yPnw2FeLOxj
 Kw8O60G+cFOrzqxXZKNUeUspVJ9H4NrHV9DAnDVUw/Q5wi3xSSNDOiunZil4Nsyolh4P7IuODqb
 ZNdktdZ/8icLVNxRQzQ==
X-Authority-Analysis: v=2.4 cv=DptbOW/+ c=1 sm=1 tr=0 ts=6950d9e5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VNomtPhMec7HeW0AfjwA:9 a=CjuIK1q_8ugA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_03,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280061

On Tue, Nov 18, 2025 at 08:37:22AM +0100, Krzysztof Kozlowski wrote:
> On 18/11/2025 05:37, Vishnu Saini wrote:
> > +static void lt8713sx_reset(struct lt8713sx *lt8713sx)
> > +{
> > +	pr_debug("reset bridge.\n");
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> > +	msleep(20);
> > +
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 0);
> > +	msleep(20);
> > +
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> > +	msleep(20);
> > +	pr_debug("reset done.\n");
> 
> No, it is not done, because you kept the device in the reset. 1 is
> reset. Don't mix up line and logical signals.
done. 
> > +}
> > +
> > +static int lt8713sx_regulator_init(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret;
> > +
> > +	lt8713sx->supplies[0].supply = "vdd";
> > +	lt8713sx->supplies[1].supply = "vcc";
> > +
> > +	ret = devm_regulator_bulk_get(lt8713sx->dev, 2, lt8713sx->supplies);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to get regulators\n");
> > +
> > +	ret = regulator_set_load(lt8713sx->supplies[0].consumer, 200000);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to set regulator load\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static int lt8713sx_regulator_enable(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret;
> > +
> > +	ret = regulator_enable(lt8713sx->supplies[0].consumer);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vdd regulator\n");
> > +
> > +	usleep_range(1000, 10000);
> > +
> > +	ret = regulator_enable(lt8713sx->supplies[1].consumer);
> > +	if (ret < 0) {
> > +		regulator_disable(lt8713sx->supplies[0].consumer);
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vcc regulator\n");
> > +	}
> > +	return 0;
> > +}
> > +
> > +static int lt8713sx_gpio_init(struct lt8713sx *lt8713sx)
> > +{
> > +	struct device *dev = lt8713sx->dev;
> > +
> > +	lt8713sx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(lt8713sx->reset_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(lt8713sx->reset_gpio),
> > +				     "failed to acquire reset gpio\n");
> > +
> > +	/* power enable gpio */
> > +	lt8713sx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(lt8713sx->enable_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(lt8713sx->enable_gpio),
> > +				     "failed to acquire enable gpio\n");
> > +	return 0;
> > +}
> > +
> > +static ssize_t lt8713sx_firmware_store(struct device *dev,
> > +				       struct device_attribute *attr,
> > +				       const char *buf, size_t len)
> > +{
> > +	struct lt8713sx *lt8713sx = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret = lt8713sx_firmware_update(lt8713sx);
> > +	if (ret < 0)
> > +		return ret;
> > +	return len;
> > +}
> > +
> > +static DEVICE_ATTR_WO(lt8713sx_firmware);
> > +
> > +static struct attribute *lt8713sx_attrs[] = {
> > +	&dev_attr_lt8713sx_firmware.attr,
> > +	NULL,
> > +};
> > +
> > +static const struct attribute_group lt8713sx_attr_group = {
> > +	.attrs = lt8713sx_attrs,
> > +};
> > +
> > +static const struct attribute_group *lt8713sx_attr_groups[] = {
> > +	&lt8713sx_attr_group,
> > +	NULL,
> > +};
> > +
> > +static int lt8713sx_probe(struct i2c_client *client)
> > +{
> > +	struct lt8713sx *lt8713sx;
> > +	struct device *dev = &client->dev;
> > +	int ret;
> > +
> > +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
> > +		return dev_err_probe(dev, -ENODEV, "device doesn't support I2C\n");
> > +
> > +	lt8713sx = devm_kzalloc(dev, sizeof(*lt8713sx), GFP_KERNEL);
> > +	if (!lt8713sx)
> > +		return dev_err_probe(dev, -ENOMEM, "failed to allocate lt8713sx struct\n");
> > +
> I did not ask for dev_err_probe here. Do you see such pattern anywhere?
> No, because there are never error messages on memory allocation (see
> coccinelle). Drop.
Dropped this dev_err_probe.
 
> Please run standard kernel tools for static analysis, like coccinelle,
> smatch and sparse, and fix reported warnings. Also please check for
> warnings when building with W=1 for gcc and clang. Most of these
> commands (checks or W=1 build) can build specific targets, like some
> directory, to narrow the scope to only your code. The code here looks
> like it needs a fix. Feel free to get in touch if the warning is not clear.

Run a couple of tools you mentioned and fixed the warnings in next patch.

> Best regards,
> Krzysztof

