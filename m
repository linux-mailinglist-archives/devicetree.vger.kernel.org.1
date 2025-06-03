Return-Path: <devicetree+bounces-182507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F20C9ACC965
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 297ED188436C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 416B4239E94;
	Tue,  3 Jun 2025 14:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZhrnOb3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F2623371F
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 14:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748961777; cv=none; b=coPtoDncrGhrAMXUYXfcWw9is2SwhbwRbo9vFe2sT1fLdrFjIpSrBWberwx0lPjUikIdi936JovOQK4POzGw1V/Uk0CzPRrrXVqiuVdhZZ1FlwExZ53y8/RO9pXItVFfMyKZS+Ul2PT2zumxLGmFm4JDed+tYZYsegi7KOF5dYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748961777; c=relaxed/simple;
	bh=c6nw/zKVb6cTi4ZCZBsAqQI9vCilD0W6s2t/c/WVVKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PnXKyvtEkSDg9dVCVmI2ydI4mn5ENKwhBozmCCNuROqZznjJVVOEVR90oL7upDDKbtwrq2afS0b1Vy1gqsNtIv5gHAzAsODLaGMthJZG6dgWYSSJi1w4mGvWdTiO/W077Z4y0C1U7ks/aYDtlG5rjbMfmhb5y4uuSIf0GmXi/do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZhrnOb3E; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-442fda876a6so50935205e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 07:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748961773; x=1749566573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gSY3d2fHzmf8tz11ZszZbv0h9m7v/xD0XmSTgwQsEm4=;
        b=ZhrnOb3EkuvZ5HSord2VtZ/VolaMkQT2aXeKLOYP5UBtX/fzMVgemcMkI89M5J/DQ6
         osi9cM/gyqDRgECGdL79iHSx2ZXr/fwvUKx7Exr5OhRY/dIK1naG9sZVaYrh+o9dBW5X
         WPAl1A442QOe9//Wf8ICMZa7U8juRT8xadeV6kD+1UwensUOEFuv2QRN8LqkLBznjAKf
         jWiAxSzH0hEPaUOS200zICtgtKcY5HtENGH1ToBaZbsvyWcIItCqonxB20eWH4jfUh7S
         ZihnPbRXwrV9rQ5q7LZRbbH6sCL3ETgbYf5eVvy9dAsf3sDOwuShkkVn4DKLb0qENrER
         mfUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748961773; x=1749566573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gSY3d2fHzmf8tz11ZszZbv0h9m7v/xD0XmSTgwQsEm4=;
        b=abZw9FM3ztu4Lx1e4GSqDLUO8J/gdNA3ooeA3PnJqVJM+ZOo5gL77zTUCQ03cyKGJ9
         qi62rbRjBE28+ZW1m+UGgHrVN+CUsFgONE1dc5R93AGU5LZcBS7gq8iIwmHVZDEIFWZq
         q2Xz6UNZCaF57vch4ZmdIA8zEJQrnZ76h3KbI7oOQ0BTn5qKAeEGAc41wKRqJXZkXTyx
         QRx64u0lhFFIGLzgJPmmQKrhiB4Hy2Htv+FxSM4vnQ6YHn5h0tmRrPqcgTlZfZU/KulT
         t7iFNwfK2jQ0QZDahd/1p0HIVylu7q5gYceP7gaUBXFwS3yHM5cbKbr/AgBhpAeCnmEb
         LDEA==
X-Forwarded-Encrypted: i=1; AJvYcCXajmNqu4huNKhdqyAodU6bdCNmCre7Nf/JqaaBTV1U9hjjcQW7WS3AaRScNH0/aUrRYUGQ6hGLLi3Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxU3HDWBmriP2LkESX4FZyo4RRhtpcq6P1z5IjQCGHLVPPE5sC8
	h8ykl8rdU5KUp8g0EabulPnkd0ERaDI4RXR2HX6mMCunSyEPU8BAcCXBbvBA00T1Cc0=
X-Gm-Gg: ASbGncuTNurXib4Wr8/w0hZ7aOPmYg/EZ+K5q+7fZvrhHoUHOsswYEXTrlJ2mBj5mNo
	BxWq8FOA44/8CBzXCYrgAIB5LSnOaZNMdKh4TWvOBltxcsCY1eUliNUVAcSV/Snipgx6HEyU6rz
	r3H5dFnonNw6eyj4DLi4BC15YJLXW7g711p3bg/pC/i2BwN3/pGJO7kuGcPSfstKQXanmRtR1R2
	oeGZiRJjs9/sUWvE/ghoZeve6GW7nk45aR5Ed+qU7Ak5YBXexEScQM8ZLcNys2iCF+D7mHnmMZx
	iRpH036Urn4+rEZN/LD7dAVGc2E4pEd5AnmuMVvZrDvxqWvCh/COxH4iuk5GeCWVz0hQ5v/Ol3O
	QiAYe9qifKeScaerx6Pvo9+ALbLo=
X-Google-Smtp-Source: AGHT+IEEsISNcafiB1EJ54Q5v26DBzVAy/duUN9sRABDJbDKKNVPalBCusb2bVQQUvJeorr1xZ/fZw==
X-Received: by 2002:a05:600c:4f05:b0:450:d611:eb95 with SMTP id 5b1f17b1804b1-4511ee150c2mr138571685e9.17.1748961772547;
        Tue, 03 Jun 2025 07:42:52 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d7f8f1e7sm165701595e9.1.2025.06.03.07.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 07:42:52 -0700 (PDT)
Message-ID: <b5958e94-7d83-4d87-b5cc-15e40e15eba9@linaro.org>
Date: Tue, 3 Jun 2025 15:42:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/8] serial: qcom-geni: Enable PM runtime for serial
 driver
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
 <al7FOrwGsnaq9zGSHVjKj4mANrXQj5ID0LM34V0zaIeaSjIvNVhM7_OnjxWfPCKMnNZow76kfyuMEB_bOEkR0g==@protonmail.internalid>
 <20250506180232.1299-8-quic_ptalari@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250506180232.1299-8-quic_ptalari@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2025 19:02, Praveen Talari wrote:
> Add Power Management (PM) runtime support to Qualcomm GENI
> serial driver.
> 
> Introduce necessary callbacks and updates to ensure seamless
> transitions between power states, enhancing overall power
> efficiency.
> 
> Signed-off-by: Praveen Talari <quic_ptalari@quicinc.com>
> ---
>   drivers/tty/serial/qcom_geni_serial.c | 33 +++++++++++++++++++++++----
>   1 file changed, 29 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/tty/serial/qcom_geni_serial.c b/drivers/tty/serial/qcom_geni_serial.c
> index 60afee3884a6..9d698c354510 100644
> --- a/drivers/tty/serial/qcom_geni_serial.c
> +++ b/drivers/tty/serial/qcom_geni_serial.c
> @@ -1686,10 +1686,10 @@ static void qcom_geni_serial_pm(struct uart_port *uport,
>   		old_state = UART_PM_STATE_OFF;
> 
>   	if (new_state == UART_PM_STATE_ON && old_state == UART_PM_STATE_OFF)
> -		geni_serial_resources_on(uport);
> +		pm_runtime_resume_and_get(uport->dev);
>   	else if (new_state == UART_PM_STATE_OFF &&
>   			old_state == UART_PM_STATE_ON)
> -		geni_serial_resources_off(uport);
> +		pm_runtime_put_sync(uport->dev);
> 
>   }
> 
> @@ -1827,9 +1827,11 @@ static int qcom_geni_serial_probe(struct platform_device *pdev)
>   		return ret;
>   	}
> 
> +	pm_runtime_enable(port->se.dev);
> +
>   	ret = uart_add_one_port(drv, uport);
>   	if (ret)
> -		return ret;
> +		goto error;
> 
>   	if (port->wakeup_irq > 0) {
>   		device_init_wakeup(&pdev->dev, true);
> @@ -1839,11 +1841,15 @@ static int qcom_geni_serial_probe(struct platform_device *pdev)
>   			device_init_wakeup(&pdev->dev, false);
>   			ida_free(&port_ida, uport->line);
>   			uart_remove_one_port(drv, uport);
> -			return ret;
> +			goto error;
>   		}
>   	}
> 
>   	return 0;
> +
> +error:
> +	pm_runtime_disable(port->se.dev);
> +	return ret;
>   }
> 
>   static void qcom_geni_serial_remove(struct platform_device *pdev)
> @@ -1855,9 +1861,26 @@ static void qcom_geni_serial_remove(struct platform_device *pdev)
>   	dev_pm_clear_wake_irq(&pdev->dev);
>   	device_init_wakeup(&pdev->dev, false);
>   	ida_free(&port_ida, uport->line);
> +	pm_runtime_disable(port->se.dev);
>   	uart_remove_one_port(drv, &port->uport);
>   }
> 
> +static int qcom_geni_serial_runtime_suspend(struct device *dev)
> +{
> +	struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
> +	struct uart_port *uport = &port->uport;
> +
> +	return geni_serial_resources_off(uport);
> +};
> +
> +static int qcom_geni_serial_runtime_resume(struct device *dev)
> +{
> +	struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
> +	struct uart_port *uport = &port->uport;
> +
> +	return geni_serial_resources_on(uport);
> +};
> +
>   static int qcom_geni_serial_suspend(struct device *dev)
>   {
>   	struct qcom_geni_serial_port *port = dev_get_drvdata(dev);
> @@ -1901,6 +1924,8 @@ static const struct qcom_geni_device_data qcom_geni_uart_data = {
>   };
> 
>   static const struct dev_pm_ops qcom_geni_serial_pm_ops = {
> +	SET_RUNTIME_PM_OPS(qcom_geni_serial_runtime_suspend,
> +			   qcom_geni_serial_runtime_resume, NULL)
>   	SYSTEM_SLEEP_PM_OPS(qcom_geni_serial_suspend, qcom_geni_serial_resume)
>   };
> 
> --
> 2.17.1
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

