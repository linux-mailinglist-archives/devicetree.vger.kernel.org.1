Return-Path: <devicetree+bounces-25788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5039581485E
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 13:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8246F1C22AB3
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 12:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9062C69E;
	Fri, 15 Dec 2023 12:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tCiA6SMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E6D2D78D
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 12:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40c517d0de5so6766295e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 04:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702644313; x=1703249113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M8qMxxO2sTgOsnMtfrSl6kmtLRCDScORkkwQtbVzK9A=;
        b=tCiA6SMaMCpqjMpGTrE2NLWn+cejEX17ZWoG4oxpDDRfiCnZKBI0N8M5njiQI2Lvt/
         J9Yx/LznOhEE8dBqGGeDF0kaCfJqOZ23Lp7y271p61x0PyOnv3/+xhBZ9w/d7eDET08s
         uzk3HGgZJ/efvJSQFrKr0OBAj+zWrAq1Lj6i2LbjcaJ06unhHrWl8iY7KEjs4YGx87xz
         6IyxZ1zqGTr8HXRgBS0j40bu1LCNoSArVEQTD7DC6jFbKly3ybC9OhJTBj0wXDnOVM53
         SbQLC43Vaaemt1y3OvirlrpawqySzqAZz9TqcqHJcbEriRKAshhZi9Hdoyhp7DQxVxpa
         cWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702644313; x=1703249113;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M8qMxxO2sTgOsnMtfrSl6kmtLRCDScORkkwQtbVzK9A=;
        b=KsQ58pA3a7YEQHvd858/lt2bIgd3OSIPCrqCFThXZnF3NZxdG3Ov4hbyk7XPcuHWN6
         i0n0CZVSq+9xROQgMEkJMUxEXhwBgx9DE582PPI+g0EhJUvhuLVnqtJUtwTJDFe8Fk4P
         D14GCy7K4hjlpnfEMFQ+tVZXl+0tc2DKVF4PC3sh/fy9gQRQNYmyfo/CKb6UQ+L3kojf
         fA7g8IxYr9MqodJD/7j+nrGrtKcbj0eV0Y1zyd9zWZqDDFg1vVwQofxHeknPfCKFspfe
         V4CiDvZfohdlcpLgV5+phCfJFfNvDfVfUlsM3gPI5hdlKxSB41mdhwEK0AUcKAczURo5
         arhw==
X-Gm-Message-State: AOJu0YzFJqwyIOez/e64cgmfoVtt0IIsFGE82FzBs0bHXABtYWlhYUIC
	yF01SDN4FyTrZCuEIpuHS0O3Ig==
X-Google-Smtp-Source: AGHT+IGVZ5Ll48i4ZjJg6LkbXdr6ZbwNTBA6pOQht94m0MrCE+V3SKYwEW73wLOsIBF5OOHAxBk+gg==
X-Received: by 2002:a05:600c:601f:b0:40c:33d9:6998 with SMTP id az31-20020a05600c601f00b0040c33d96998mr6284905wmb.132.1702644313109;
        Fri, 15 Dec 2023 04:45:13 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id f9-20020a05600c154900b0040c4be1af17sm17495803wmg.21.2023.12.15.04.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Dec 2023 04:45:12 -0800 (PST)
Message-ID: <27cc9438-d31f-41af-b012-adb77dd4da5a@linaro.org>
Date: Fri, 15 Dec 2023 12:45:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/10] clk: qcom: Add dispcc clock driver for x1e80100
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 Rajendra Nayak <quic_rjendra@quicinc.com>
References: <20231214-x1e80100-clock-controllers-v2-0-2b0739bebd27@linaro.org>
 <20231214-x1e80100-clock-controllers-v2-7-2b0739bebd27@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231214-x1e80100-clock-controllers-v2-7-2b0739bebd27@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/12/2023 16:49, Abel Vesa wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Add the dispcc clock driver for x1e80100.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

> +static struct platform_driver disp_cc_x1e80100_driver = {
> +	.probe = disp_cc_x1e80100_probe,
> +	.driver = {
> +		.name = "disp_cc-x1e80100",
> +		.of_match_table = disp_cc_x1e80100_match_table,
> +	},
> +};
> +
> +static int __init disp_cc_x1e80100_init(void)
> +{
> +	return platform_driver_register(&disp_cc_x1e80100_driver);
> +}
> +subsys_initcall(disp_cc_x1e80100_init);
> +
> +static void __exit disp_cc_x1e80100_exit(void)
> +{
> +	platform_driver_unregister(&disp_cc_x1e80100_driver);
> +}
> +module_exit(disp_cc_x1e80100_exit);
> +
> +MODULE_DESCRIPTION("QTI DISPCC X1E80100 Driver");
> +MODULE_LICENSE("GPL");
> 

And we don't even do the odd underscore insertion consistently. For 
whatever reason "DISPCC" instead of "DISP_CC"

Just to reiterate the underscores should be dropped from these clock 
controller names and defines entirely, they just eat up bytes in databases.

.name = "dispcc-x1e80100"

("QTI DISPCC X1E80100 Driver"); better but IMO we could just a complete 
word here

"Display Clock Controller" there's no need to abbreviate.

---
bod

