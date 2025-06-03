Return-Path: <devicetree+bounces-182495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DADF7ACC907
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C93A168401
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A862356CF;
	Tue,  3 Jun 2025 14:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jKH8CDvo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E2322DFE8
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748960686; cv=none; b=B8+Df0gmic4kr5bIfGoh6md620U0eirR5v6ktmvwXzdB35Er1NKCCcm/wJhHF/HB9HiaJsULQmle6I1hLxmnq5KJYl0DpZE+qmQxq8XkW98qE6oXOdm0OyqR5QZAxE2Qs8Ai1UOZoa8CHhQEuhwMLAlWRDdd6uGbthHm/JbVCSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748960686; c=relaxed/simple;
	bh=JXK/xmufJuxonCR4VR4HKP9fpPLw5qrjkgdIyDk//jM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W5NrfDM/h7V3Ny9UYrbVOjV1tCbF1MGRsCtxUg7Bnp42jLPYRKBVfmFGVVBc1f+36GfgMulODMDMPnjFv8jyRaFtul0qfUbNKzfNfxg3uSvlPR748RdAjidDxbon4FZvmX5hcu8SdHaQusUa3rDIIbK1dm56lix1q5tXT0h/R1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jKH8CDvo; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so63085275e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748960682; x=1749565482; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rHtAAAWTBFt/w+WKOQZYbzdx/MM9jTFUC+sESUEsyV8=;
        b=jKH8CDvozFOqRRhRtZVRhR6ClqOZuBhdhW83e3kFCe7UFDa82Q011marYV8d9YPnKi
         BgwDXr65x+ashJFfgpbZm7lWn2bZW+btvNpc4q3Gl2SRqMWgALIHNqgrtl3+o2Bpnde1
         iUZlaUTv+oKJ4N4vZXkwsk94k2BkFVED10KDkCEBx41GTayFeot7p0MXDdJlG7GYvd2o
         BH4UHbwhYn7z7RVPxdaC8aeIpcSS9HzOIgRZoLwDBqAxA1T+dQGM13Qlv4AiAUMhplK2
         U+szDEjcFUpTPS+03jKcppyGQCWm9g6meSTEaU1s+jubQebjICzliehiC/S27VDv0bUD
         ANEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748960682; x=1749565482;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rHtAAAWTBFt/w+WKOQZYbzdx/MM9jTFUC+sESUEsyV8=;
        b=wSpDYRtIlVTWpjov1JT4g+b+vFqLywFOb4B4tmAL1xjES2OtO558M5FY9tuY0F9ErB
         6LAXQGIyG7F2NwMBzeZFUwdJWmZL1zBQ88lckJ06FNI8ak50IEtghfQh6zPRaByJLTPR
         gP5fxJTOIXaPO6PGrQ4XyQ+P1O85D4LXTYrMKXZ08hPWpGFhUglucuZkpDwpqXKBybW4
         Q1EC2K5sGPmsBoWE01NXwvDDYaPAjJhRcnXlcXw9/rEW2b13zXUKOc5reC25ESL8d4Ec
         GOeBNLH01Ui17iCZP3+96P7OnLvdmocSPt2RFQW6STyDQtUITMkAXOVR6vHbYrjK19Is
         49VQ==
X-Forwarded-Encrypted: i=1; AJvYcCUR173UQyxUlPjqjlBJJFv+Yd82hH0citysYcnlGAqVCGD8ZZpqj4gT51oBcPw7wKCc4vTwEheGqq25@vger.kernel.org
X-Gm-Message-State: AOJu0YxVg5NBU6dZhu8WAYIoEkOWpY7y6J6xBBCcBhesGbqk6pVObDfJ
	QO+UtwtURBq7FI0hLekvbMI+aBiQc0MGlEnkI445k5SpRTY5KMKFK9eXyn64E6XkDOo=
X-Gm-Gg: ASbGncsHyjPB2sjhEp/UOvGSxCxgpa56zRNaTkyOcbKua5yRmuMsXiZly8niesY/jOh
	ws6FadHItlmDnMoyJAyzi2rP8qssfCKZ+pqXxLRGdvHW2y+Rp8QCe8J9NV4F6ZpBKmQepHdnVwy
	kZ6CO13+TipJvnyWa3HJ4+oSbmIz78/tvJ6wrdeaMsGASoCmS1TSGMUWQpT1SZGv+kp+3zfqei3
	Gn8508+7XDLbagoRevO1nUMm60irpvaXCxbkcKVuqv1tTkLi7c3x1sN7Hc61544lMPTZcFVRZQz
	qVHGXmi7mlrNpPheVe0XTXeBt7nzt0+A/z6tAthUnKZmSCOOVTQUN2xl2w4o34DSa5TlHu+z9iY
	PYgH78KzxUT8mN64A
X-Google-Smtp-Source: AGHT+IGOliVcIaPHKQvqVXftdOlY/sCFDbU1ccZ57y5YgOYOGDCeCFvC0d5aY2ocIzqknxfGCLA9lA==
X-Received: by 2002:a05:600c:4711:b0:450:d614:cb with SMTP id 5b1f17b1804b1-450d6598695mr142446175e9.33.1748960682165;
        Tue, 03 Jun 2025 07:24:42 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e5496282sm19191775e9.1.2025.06.03.07.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 07:24:41 -0700 (PDT)
Message-ID: <0157bafe-fe94-4d57-a3ea-3501b35cc940@linaro.org>
Date: Tue, 3 Jun 2025 15:24:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/8] serial: qcom-geni: move resource initialization to
 separate function
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <yuQ8-6eRa_erLH4cthB6uPntyvkKK2kQ4_BdtWJIG-cQdq5H3P1F8ZaS6gAroBatLHueTyrqerSiPv95OfGiOg==@protonmail.internalid>
 <20250506180232.1299-5-quic_ptalari@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250506180232.1299-5-quic_ptalari@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2025 19:02, Praveen Talari wrote:
> Enhances code readability and future modifications within the new API.
> 
> Move the code that handles the actual initialization of resources
> like clock and ICC paths to a separate function, making the
> probe function cleaner.
> 
> Signed-off-by: Praveen Talari <quic_ptalari@quicinc.com>
> ---
> v3 -> v4
> - added version log after ---
> 
> v1 -> v2
> - updated subject description.
> - added a new line after function end
> ---
>   drivers/tty/serial/qcom_geni_serial.c | 66 ++++++++++++++++-----------
>   1 file changed, 40 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/tty/serial/qcom_geni_serial.c b/drivers/tty/serial/qcom_geni_serial.c
> index 0293b6210aa6..6ad759146f71 100644
> --- a/drivers/tty/serial/qcom_geni_serial.c
> +++ b/drivers/tty/serial/qcom_geni_serial.c
> @@ -1588,6 +1588,43 @@ static struct uart_driver qcom_geni_uart_driver = {
>   	.nr =  GENI_UART_PORTS,
>   };
> 
> +static int geni_serial_resource_init(struct qcom_geni_serial_port *port)
> +{
> +	int ret;
> +
> +	port->se.clk = devm_clk_get(port->se.dev, "se");
> +	if (IS_ERR(port->se.clk)) {
> +		ret = PTR_ERR(port->se.clk);
> +		dev_err(port->se.dev, "Err getting SE Core clk %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = geni_icc_get(&port->se, NULL);
> +	if (ret)
> +		return ret;
> +
> +	port->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
> +	port->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
> +
> +	/* Set BW for register access */
> +	ret = geni_icc_set_bw(&port->se);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_pm_opp_set_clkname(port->se.dev, "se");
> +	if (ret)
> +		return ret;
> +
> +	/* OPP table is optional */
> +	ret = devm_pm_opp_of_add_table(port->se.dev);
> +	if (ret && ret != -ENODEV) {
> +		dev_err(port->se.dev, "invalid OPP table in device tree\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   static void qcom_geni_serial_pm(struct uart_port *uport,
>   		unsigned int new_state, unsigned int old_state)
>   {
> @@ -1690,12 +1727,10 @@ static int qcom_geni_serial_probe(struct platform_device *pdev)
>   	port->dev_data = data;
>   	port->se.dev = &pdev->dev;
>   	port->se.wrapper = dev_get_drvdata(pdev->dev.parent);
> -	port->se.clk = devm_clk_get(&pdev->dev, "se");
> -	if (IS_ERR(port->se.clk)) {
> -		ret = PTR_ERR(port->se.clk);
> -		dev_err(&pdev->dev, "Err getting SE Core clk %d\n", ret);
> +
> +	ret = geni_serial_resource_init(port);
> +	if (ret)
>   		return ret;
> -	}
> 
>   	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>   	if (!res)
> @@ -1713,17 +1748,6 @@ static int qcom_geni_serial_probe(struct platform_device *pdev)
>   			return -ENOMEM;
>   	}
> 
> -	ret = geni_icc_get(&port->se, NULL);
> -	if (ret)
> -		return ret;
> -	port->se.icc_paths[GENI_TO_CORE].avg_bw = GENI_DEFAULT_BW;
> -	port->se.icc_paths[CPU_TO_GENI].avg_bw = GENI_DEFAULT_BW;
> -
> -	/* Set BW for register access */
> -	ret = geni_icc_set_bw(&port->se);
> -	if (ret)
> -		return ret;
> -
>   	port->name = devm_kasprintf(uport->dev, GFP_KERNEL,
>   			"qcom_geni_serial_%s%d",
>   			uart_console(uport) ? "console" : "uart", uport->line);
> @@ -1745,16 +1769,6 @@ static int qcom_geni_serial_probe(struct platform_device *pdev)
>   	if (of_property_read_bool(pdev->dev.of_node, "cts-rts-swap"))
>   		port->cts_rts_swap = true;
> 
> -	ret = devm_pm_opp_set_clkname(&pdev->dev, "se");
> -	if (ret)
> -		return ret;
> -	/* OPP table is optional */
> -	ret = devm_pm_opp_of_add_table(&pdev->dev);
> -	if (ret && ret != -ENODEV) {
> -		dev_err(&pdev->dev, "invalid OPP table in device tree\n");
> -		return ret;
> -	}
> -
>   	port->private_data.drv = drv;
>   	uport->private_data = &port->private_data;
>   	platform_set_drvdata(pdev, port);
> --
> 2.17.1
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

