Return-Path: <devicetree+bounces-12206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD147D8520
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7E271C20D44
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1822EB03;
	Thu, 26 Oct 2023 14:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U6cuCtqK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56088829
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:48:41 +0000 (UTC)
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B09661AA;
	Thu, 26 Oct 2023 07:48:40 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5a84204e7aeso7539427b3.0;
        Thu, 26 Oct 2023 07:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698331720; x=1698936520; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XSDX+BdSMVWh1l8Isu6QYqyAP7slLBrrW6u7owXfVjE=;
        b=U6cuCtqKqDX+VIjCwVOiX9f++cApI6LNupUfPzuAGCdS/jm9I8C9O2YU4Mhqm4a2WH
         RnJEfmI0v4+mJ9jn6wHNLGMJUNOHYOfAVVu0UFUALSkGptiHFhL4gvJCiPRSsDj5vWnd
         Dkyrlgp1fqu0tzndZPXCjujMpeDq6HCzclC2h1wli5N9ofcpzaAEMNSUnc4AwhjY1Z5N
         widoqappFWaIlVvTB24g6qzohSIuJoshmvWZs+fPAOWeVYoLu2jnQS+YYuNNhGKJCBbn
         HmOTj6GoNYbcyOzL5DGWwqhLsFyxQ9nMD6YZ2k9oCrtTngjIPVWL+Z6jjhV6p5RroOVs
         KMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698331720; x=1698936520;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XSDX+BdSMVWh1l8Isu6QYqyAP7slLBrrW6u7owXfVjE=;
        b=dg5ZaQEFN+dRRN7zwZgpL4wArTTr+ZjaQtkwXRh+OpwPMZMIviEbrHRW8dCkJAjZ3D
         tGTRNnS27ifQXrvZmASKy4Hp7/V3lexP8QqRlMUQQSvWh78/WMXP7PJ7ufYUJSWP5XII
         maDW9KbBn/K9Og+TWLX/jHoIcKfr44x2e6NF6qUYC2hXLgi3HqQWImTkgzJHtJsvueBT
         zMM8nnaEEHWxUJra4IGChkVcOCAGagPEnQ/055ABPlivwNHrKkduyy7nMIPGWZvlvAo+
         mPy1XSWIbuYVP1D7wtm/b6qbOyWtCzF2ewezxkOlr+PhWsvPTuMcEUwmHraMrje6jvad
         n+ow==
X-Gm-Message-State: AOJu0YyVwEZEKhrxbbfPmIpG4NfoGqWhLuVQqzhZxBMlV1+JEHA5rIDI
	US0LvSM8ssEQTtIW0U+sXuU=
X-Google-Smtp-Source: AGHT+IF1OoaoNzlVGhA9F+49qkBW5al0SKgEJ58oOccdqD1KCOaAk1TGB7CedKNLIuSaLBuTZOMuYA==
X-Received: by 2002:a0d:d082:0:b0:5a7:bc0e:193e with SMTP id s124-20020a0dd082000000b005a7bc0e193emr22915013ywd.18.1698331719802;
        Thu, 26 Oct 2023 07:48:39 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id u9-20020a817909000000b00577269ba9e9sm61672ywc.86.2023.10.26.07.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:48:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 26 Oct 2023 07:48:38 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] hwmon: ina238: add ina237 support
Message-ID: <0cdb53e9-6651-4201-b110-e788ff8a036e@roeck-us.net>
References: <20231026-ina237-v2-0-dec44811a3c9@linux.dev>
 <20231026-ina237-v2-1-dec44811a3c9@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231026-ina237-v2-1-dec44811a3c9@linux.dev>

On Thu, Oct 26, 2023 at 09:08:49AM +0200, Richard Leitner wrote:
> The INA237 "85-V, 16-Bit, Precision Power Monitor With I2C Interface" is
> basically the same as INA328. Therefore add a corresponding compatible
> to the driver.
> 
> According to the datasheet the main difference is the current and power
> monitoring accuracy:
> 
> +------------------------+---------------+---------------+
> |                        | INA238        | INA237        |
> +------------------------+---------------+---------------+
> | Offset voltage         | +/- 5�V       | +/- 50�V      |
> | Offset drift           | +/- 0.02�V/�C | +/- 0.02�V/�C |
> | Gain error             | +/- 0.1%      | +/- 0.3%      |
> | Gain error drift       | +/- 25ppm/�C  | +/- 50ppm/�C  |
> | Common mode rejection  | 140dB         | 120dB         |
> | Power accuracy         | 0.7%          | 1.6%          |
> +------------------------+---------------+---------------+
> 
> As well as the missing DEVICE_ID register at 0x3F, which is currently
> not in use by the driver.
> 
> Signed-off-by: Richard Leitner <richard.leitner@linux.dev>

Applied.

Thanks,
Guenter

> ---
>  drivers/hwmon/ina238.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/ina238.c b/drivers/hwmon/ina238.c
> index f519c22d3907..ca9f5d2c811b 100644
> --- a/drivers/hwmon/ina238.c
> +++ b/drivers/hwmon/ina238.c
> @@ -33,7 +33,7 @@
>  #define INA238_BUS_UNDER_VOLTAGE	0xf
>  #define INA238_TEMP_LIMIT		0x10
>  #define INA238_POWER_LIMIT		0x11
> -#define INA238_DEVICE_ID		0x3f
> +#define INA238_DEVICE_ID		0x3f /* not available on INA237 */
>  
>  #define INA238_CONFIG_ADCRANGE		BIT(4)
>  
> @@ -622,6 +622,7 @@ static const struct i2c_device_id ina238_id[] = {
>  MODULE_DEVICE_TABLE(i2c, ina238_id);
>  
>  static const struct of_device_id __maybe_unused ina238_of_match[] = {
> +	{ .compatible = "ti,ina237" },
>  	{ .compatible = "ti,ina238" },
>  	{ },
>  };

