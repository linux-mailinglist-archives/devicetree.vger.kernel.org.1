Return-Path: <devicetree+bounces-222763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DACBACAD6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 13:26:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCB707A21F8
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 11:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D662F5A11;
	Tue, 30 Sep 2025 11:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dFwZdirq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8931823D7CF
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 11:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759231554; cv=none; b=t8wX86DS18VCTKjp7w3xWU5ohzcY9kBNyqXmogEt5VGC0EuLxIMkrGfeoc5KBY3Z+cEqXZFEr4OOG0WIZBgR+wDbs0o3CiGaFba2VbXF2TI3urS8Q1kOh49NGsZm51gdmbojg/PnqjyoRcmBVGsrF4rMQ8VPFXzPGQXwz67epvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759231554; c=relaxed/simple;
	bh=LRRZo+WT2xP6CFwmsKi7m761K4DaPFkni8XtdzN9t7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eBt8kt7zBYXzLe2iXWY6KoypZGkz08hS1pBcecvEan9aJx4ht4WjmeoTR8fbkl4GCfhOFUJtOZeJq24hJykqHin/1guoL+66UwfDfNlTxO0t5zLAzE/jj0dPa6UsFbJiQi92ky8qDH0vUxL9GBFEZj065M3cAC6GvTcnHC/pXbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dFwZdirq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HYUu020364
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 11:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nZmbRUIgjQnJaBNXO8k2s7Ar5zCROndbpUISKQygcl4=; b=dFwZdirqMB4th1KH
	SXS9KalXIO2Ns/HlaaFOtYCOndVLh8SO1IVRBDudkItaW7QlTm4XVFh/QHk6n/kO
	4x/gIE5UfVwHNgeIEDeZEEsxweQxpsAti9IEUo0H7teLRiYtCAMSEPCmsoUXN+fq
	fAKIcr7pUpaxUowzv/jzQEgVZVSdyZyJBHmeEclBe9yca40A5Kfwp9hv2Ve6eH2O
	tFZUZAELHmtZG7zoX5M7dIt5TX36/al7vYFcaSrd0xiZphItRnvw9BetBYZnUrKN
	cXIeu25ySp32mb9+Z8ZYXn2ef3tflgafHwA0ci28ycX1cOzeuKulZh68l+x51rX7
	LQuVEw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5rvpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 11:25:50 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-781171fe1c5so3910248b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 04:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759231549; x=1759836349;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZmbRUIgjQnJaBNXO8k2s7Ar5zCROndbpUISKQygcl4=;
        b=TaE7ACWp7AyksJvsDvVJ9rfR+HHX/laimyXwfuQi2lCu8ZLuO5LIxvpxUZzD249rTj
         jPHJv8FikiShnSDmYM0uE1wXeDpiifwu8R30quPWUwLbwe+/Pm9t9Zlte6UWLaG5f5EV
         gr1eE17iZuzLo8su972DJ6u1vePaah32Q0C8OPEicJ92mGu+GojYvS8omvhaDco5GHo8
         lW2RiOShNVsevbT7J+gaQTtdE6HfaqYLWPUPKk7yq4N+CkwOMnAPgkYDQca8QuTLDsPE
         qrsZ0mzDo129nwP3DhAwwEaGJbQJwECE9/YpVbw69mc8t1XOUJ5/E+5/Jyxjinw38OTB
         nAkA==
X-Forwarded-Encrypted: i=1; AJvYcCVS2SqO53IlEQTsOrVu/ODNZUcm3V0ELXEpe42ovvoP6NDuV8aob7/m/Nyr5TrTHkyj9BXbiDOlO0xo@vger.kernel.org
X-Gm-Message-State: AOJu0YyPaYcFyb8RSg8ggllk+AvBkuAu61VE+i08hgcwuJlknrpayiZZ
	yxgc7d2YFOinU7Vr0zp5ZZrfQqlMHAiTZFOLozReV0gFQYD7ziC9j0q85Jf/+X7xr0YxIbQdEpP
	VEyn5EQjoBUQAAOLglZ7DBdUq2Jc4sPEA9k3T7sb3sfYhxt8oZtfL9x6zVfED9Ddw
X-Gm-Gg: ASbGncsQ+4a+uAinT/p4exvf29UDWDg56L8hR/j/dPlXbu8YTzsVJrqWBr66SvszyuR
	DfFdQkMqk9CxWlEwcPHbssdB/rVA8IX7UQ8MNF3kRrXj6YbDeXD3Ijqbxuuj82B6db/EkXMePYM
	WNPxkZ+Z/PG5eA0JDGqXU2Tb5jLv3EWENpkTiDhDFOxVyIp0DhbfNf0krBC8gH/VhtGxaFltfE5
	HVYd6YMgPJ+jjtSnbWpKQ+oVPt28Z4cWDiSUtg6UKTlD7b9qispN/BLJQ0zu3ChuqJQ0pdRuEtH
	IyIl0EwG8l4WKw/bf64GhVIX68x+iacQ9A3YvepdoGuC4ucLBEfG607qjNEkHUH2OphIffcxjoH
	4lQ==
X-Received: by 2002:a05:6a20:a121:b0:247:b1d9:774 with SMTP id adf61e73a8af0-2e7be066ae2mr26632107637.5.1759231549041;
        Tue, 30 Sep 2025 04:25:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwkhgfyGvhj+bA5hFJW75FNK7qSzTO6ggvNH3y8HKIDf7EE+2tkPsEFmTQBxSe5dDAeV7kNw==
X-Received: by 2002:a05:6a20:a121:b0:247:b1d9:774 with SMTP id adf61e73a8af0-2e7be066ae2mr26632063637.5.1759231548547;
        Tue, 30 Sep 2025 04:25:48 -0700 (PDT)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55741dbsm13545086a12.31.2025.09.30.04.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 04:25:48 -0700 (PDT)
Message-ID: <f162fe7e-3615-3514-0fd8-a3b76fe9d44e@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 16:55:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 5/6] can: mcp251xfd: add gpio functionality
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linus.walleij@linaro.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mukesh.savaliya@oss.qualcomm.com,
        anup.kulkarni@oss.qualcomm.com,
        Gregor Herburger <gregor.herburger@ew.tq-group.com>
References: <20250926133018.3071446-1-viken.dadhaniya@oss.qualcomm.com>
 <20250926133018.3071446-6-viken.dadhaniya@oss.qualcomm.com>
 <CAMRc=Md2pW1YBNk1PLV+A6rHET4WbHDQf9P_Y4FeoVAgVsxUEA@mail.gmail.com>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <CAMRc=Md2pW1YBNk1PLV+A6rHET4WbHDQf9P_Y4FeoVAgVsxUEA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tnihQSwTjCyZY7suw2l1tmvzfnOqn7RZ
X-Proofpoint-ORIG-GUID: tnihQSwTjCyZY7suw2l1tmvzfnOqn7RZ
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dbbe3e cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8f9FM25-AAAA:8
 a=KKAkSRfTAAAA:8 a=oC8yqeNgLv2HgbuJSHoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=uSNRK0Bqq4PXrUp6LDpb:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfXyabgpgqumZyz
 th7gLv1vaMuPtOkjB+TbloH+93HsdhsPDyJ42ds17iY5NVrpErwDDNu5RtQxByCHRtyvTZKghUR
 zh3KObryrbyfdKZOT5ErBlZOjAv58uVJywDc5Ey6V8NT8S3bRX48sN1xsHE3+LT07cMaaa7wH7g
 XHNaASiOVCDJVATZMZ7CwNeGnGoIoSw4f3zDuas4BdwmwjMvL0bjrWY9XZPNQMOLvAKZURtT4DI
 7Efeml7t8IruilK+d8wnAl/WVyjk7oKM5h6kTGX5YZ77XPZhMrOrJr//A/FIAlZqyzxqIljf967
 /d/1LM764C373MAp5wo8tRMfTSpxJlwPG49KqBoiUcvHHSjzNPIMhVzpvmdQSO5aB91j5MDDlDi
 j/v6kDjsRrpKiSlQ9XtlKrH+9jiyAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018



On 9/29/2025 7:08 PM, Bartosz Golaszewski wrote:
> On Fri, Sep 26, 2025 at 3:30 PM Viken Dadhaniya
> <viken.dadhaniya@oss.qualcomm.com> wrote:
>>
>> From: Gregor Herburger <gregor.herburger@ew.tq-group.com>
>>
>> The mcp251xfd devices allow two pins to be configured as gpio. Add this
>> functionality to driver.
>>
>> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
>> Tested-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
>>  drivers/net/can/spi/mcp251xfd/Kconfig         |   1 +
>>  .../net/can/spi/mcp251xfd/mcp251xfd-core.c    | 172 ++++++++++++++++++
>>  drivers/net/can/spi/mcp251xfd/mcp251xfd.h     |   2 +
>>  3 files changed, 175 insertions(+)
>>
>> diff --git a/drivers/net/can/spi/mcp251xfd/Kconfig b/drivers/net/can/spi/mcp251xfd/Kconfig
>> index 877e4356010d..7c29846e6051 100644
>> --- a/drivers/net/can/spi/mcp251xfd/Kconfig
>> +++ b/drivers/net/can/spi/mcp251xfd/Kconfig
>> @@ -5,6 +5,7 @@ config CAN_MCP251XFD
>>         select CAN_RX_OFFLOAD
>>         select REGMAP
>>         select WANT_DEV_COREDUMP
>> +       select GPIOLIB
>>         help
>>           Driver for the Microchip MCP251XFD SPI FD-CAN controller
>>           family.
>> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>> index ea41f04ae1a6..88035d4404b5 100644
>> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
>> @@ -1797,6 +1797,172 @@ static int mcp251xfd_register_check_rx_int(struct mcp251xfd_priv *priv)
>>         return 0;
>>  }
>>
>> +static const char * const mcp251xfd_gpio_names[] = { "GPIO0", "GPIO1" };
>> +
>> +static int mcp251xfd_gpio_request(struct gpio_chip *chip, unsigned int offset)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 pin_mask = MCP251XFD_REG_IOCON_PM(offset);
>> +       int ret;
>> +
>> +       if (priv->rx_int && offset == 1) {
>> +               netdev_err(priv->ndev, "Can't use GPIO 1 with RX-INT!\n");
>> +               return -EINVAL;
>> +       }
>> +
>> +       ret = pm_runtime_resume_and_get(priv->ndev->dev.parent);
>> +       if (ret)
>> +               return ret;
>> +
>> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
>> +                                 pin_mask, pin_mask);
>> +}
>> +
>> +static void mcp251xfd_gpio_free(struct gpio_chip *chip, unsigned int offset)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +
>> +       pm_runtime_put(priv->ndev->dev.parent);
>> +}
>> +
>> +static int mcp251xfd_gpio_get_direction(struct gpio_chip *chip,
>> +                                       unsigned int offset)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 mask = MCP251XFD_REG_IOCON_TRIS(offset);
>> +       u32 val;
>> +       int ret;
>> +
>> +       ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
>> +       if (ret)
>> +               return ret;
>> +
>> +       if (mask & val)
>> +               return GPIO_LINE_DIRECTION_IN;
>> +
>> +       return GPIO_LINE_DIRECTION_OUT;
>> +}
>> +
>> +static int mcp251xfd_gpio_get(struct gpio_chip *chip, unsigned int offset)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 mask = MCP251XFD_REG_IOCON_GPIO(offset);
>> +       u32 val;
>> +       int ret;
>> +
>> +       ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
>> +       if (ret)
>> +               return ret;
>> +
>> +       return !!(mask & val);
>> +}
>> +
>> +static int mcp251xfd_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
>> +                                      unsigned long *bit)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 val;
>> +       int ret;
>> +
>> +       ret = regmap_read(priv->map_reg, MCP251XFD_REG_IOCON, &val);
>> +       if (ret)
>> +               return ret;
>> +
>> +       *bit = FIELD_GET(MCP251XFD_REG_IOCON_GPIO_MASK, val) & *mask;
>> +
>> +       return 0;
>> +}
>> +
>> +static int mcp251xfd_gpio_direction_output(struct gpio_chip *chip,
>> +                                          unsigned int offset, int value)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 dir_mask = MCP251XFD_REG_IOCON_TRIS(offset);
>> +       u32 val_mask = MCP251XFD_REG_IOCON_LAT(offset);
>> +       u32 val;
>> +
>> +       if (value)
>> +               val = val_mask;
>> +       else
>> +               val = 0;
>> +
>> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
>> +                                 dir_mask | val_mask, val);
>> +}
>> +
>> +static int mcp251xfd_gpio_direction_input(struct gpio_chip *chip,
>> +                                         unsigned int offset)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 dir_mask = MCP251XFD_REG_IOCON_TRIS(offset);
>> +
>> +       return regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
>> +                                 dir_mask, dir_mask);
>> +}
>> +
>> +static int mcp251xfd_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 val_mask = MCP251XFD_REG_IOCON_LAT(offset);
>> +       u32 val;
>> +       int ret;
>> +
>> +       if (value)
>> +               val = val_mask;
>> +       else
>> +               val = 0;
>> +
>> +       ret = regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON, val_mask, val);
>> +       if (ret)
>> +               dev_err(&priv->spi->dev, "Failed to set GPIO %u: %d\n", offset, ret);
> 
> Why do you loudly complain here but not in other callbacks? I assume
> it's because you had a log here in your previous version (the one
> rebased on v6.16) and just didn't remove it when you switched to the
> new API? Maybe just do `return regmap_update...`?

Sure, I’ll update and post v6.

> 
> Otherwise looks good. With that addressed:
> 
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
>> +
>> +       return ret;
>> +}
>> +
>> +static int mcp251xfd_gpio_set_multiple(struct gpio_chip *chip, unsigned long *mask,
>> +                                      unsigned long *bits)
>> +{
>> +       struct mcp251xfd_priv *priv = gpiochip_get_data(chip);
>> +       u32 val;
>> +       int ret;
>> +
>> +       val = FIELD_PREP(MCP251XFD_REG_IOCON_LAT_MASK, *bits);
>> +
>> +       ret = regmap_update_bits(priv->map_reg, MCP251XFD_REG_IOCON,
>> +                                MCP251XFD_REG_IOCON_LAT_MASK, val);
>> +       if (ret)
>> +               dev_err(&priv->spi->dev, "Failed to set GPIOs %d\n", ret);
>> +
>> +       return ret;
>> +}
>> +
>> +static int mcp251fdx_gpio_setup(struct mcp251xfd_priv *priv)
>> +{
>> +       struct gpio_chip *gc = &priv->gc;
>> +
>> +       if (!device_property_present(&priv->spi->dev, "gpio-controller"))
>> +               return 0;
>> +
>> +       gc->label = dev_name(&priv->spi->dev);
>> +       gc->parent = &priv->spi->dev;
>> +       gc->owner = THIS_MODULE;
>> +       gc->request = mcp251xfd_gpio_request;
>> +       gc->free = mcp251xfd_gpio_free;
>> +       gc->get_direction = mcp251xfd_gpio_get_direction;
>> +       gc->direction_output = mcp251xfd_gpio_direction_output;
>> +       gc->direction_input = mcp251xfd_gpio_direction_input;
>> +       gc->get = mcp251xfd_gpio_get;
>> +       gc->get_multiple = mcp251xfd_gpio_get_multiple;
>> +       gc->set = mcp251xfd_gpio_set;
>> +       gc->set_multiple = mcp251xfd_gpio_set_multiple;
>> +       gc->base = -1;
>> +       gc->can_sleep = true;
>> +       gc->ngpio = ARRAY_SIZE(mcp251xfd_gpio_names);
>> +       gc->names = mcp251xfd_gpio_names;
>> +
>> +       return devm_gpiochip_add_data(&priv->spi->dev, gc, priv);
>> +}
>> +
>>  static int
>>  mcp251xfd_register_get_dev_id(const struct mcp251xfd_priv *priv, u32 *dev_id,
>>                               u32 *effective_speed_hz_slow,
>> @@ -1930,6 +2096,12 @@ static int mcp251xfd_register(struct mcp251xfd_priv *priv)
>>
>>         mcp251xfd_ethtool_init(priv);
>>
>> +       err = mcp251fdx_gpio_setup(priv);
>> +       if (err) {
>> +               dev_err_probe(&priv->spi->dev, err, "Failed to register gpio-controller.\n");
>> +               goto out_runtime_disable;
>> +       }
>> +
>>         err = register_candev(ndev);
>>         if (err)
>>                 goto out_runtime_disable;
>> diff --git a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
>> index bd28510a6583..085d7101e595 100644
>> --- a/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
>> +++ b/drivers/net/can/spi/mcp251xfd/mcp251xfd.h
>> @@ -15,6 +15,7 @@
>>  #include <linux/can/dev.h>
>>  #include <linux/can/rx-offload.h>
>>  #include <linux/gpio/consumer.h>
>> +#include <linux/gpio/driver.h>
>>  #include <linux/kernel.h>
>>  #include <linux/netdevice.h>
>>  #include <linux/regmap.h>
>> @@ -676,6 +677,7 @@ struct mcp251xfd_priv {
>>
>>         struct mcp251xfd_devtype_data devtype_data;
>>         struct can_berr_counter bec;
>> +       struct gpio_chip gc;
>>  };
>>
>>  #define MCP251XFD_IS(_model) \
>> --
>> 2.34.1
>>

