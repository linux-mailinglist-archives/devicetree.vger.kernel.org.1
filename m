Return-Path: <devicetree+bounces-31823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EC782CCE7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 14:59:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB111284526
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 13:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1CE2135B;
	Sat, 13 Jan 2024 13:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tMgXDlTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B96F210FA
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 13:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40e613b6afbso26375345e9.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 05:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705154327; x=1705759127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WT8QIYQ+4FB0VcFrJSjLO9Fc2EguI6T2KF8zu0XQvV4=;
        b=tMgXDlTQelvPFnKLtkLb2OwHnuAofGXGKN9p0to3S5VWeB+4KBlQHOji31Yewx1OD9
         13FGoa2uAmWp14AE+o/ovhdGTM1R0B88WogQSaN4/pi1djLsFBom+YQVz/MvVDJu/EBN
         JJnGKqkhVYeiDP3wfi9n0pXO9dQ1Cm+i0qio2ghliWcb1u30rjTMhOwqaDFcvBo2jji2
         CyG+xyajlQ6RAORymnfHR50b6/jmIP/MFJVuPYaAhETAlZW4FpunLq/+XLRZOAws4aWW
         J/bCyscW76F1UL6Rr3wu6l0u9D1y8+WmV1jPywmxJ9ISPlv4MjuHKoq5VJLtkE0Ci/ie
         2fkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705154327; x=1705759127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WT8QIYQ+4FB0VcFrJSjLO9Fc2EguI6T2KF8zu0XQvV4=;
        b=jVlNylkY3k48tBeRHl12PkazjyXpFzxLd8XDOVhBl54oAz/WjGxhWPpNpF79Z3hYOC
         HI3EM8qbV9b4iUuC1QeEg1wD1+cG59i1HC+doRLIFE5Pb1ZeVN6aLDmpJx6MRk1FJ7mD
         gi/b35cLwIOtNPIsLhkBIIKyNc1s9xw5c++aUD/Ce61Cl3an8YlursQGo60xRVoMy5pR
         kQPSnlvBZ85OrkEgJCPsYSqYSCaLFZc95Nes2bzabjElWm+tvf6OJXU0APFAU2Z9Ofdk
         85W+4TxbMXK3bmb1OdPhpSqqybm1lxsHoiUElW2ZmNukmka4NZRJHZ2H7F19K+RbO9T1
         nBTg==
X-Gm-Message-State: AOJu0Yz7zlQHUSU9/QKZeqOZhQ7aRmsb3vSKFsRsFCzJt2QrJI6JbRY9
	NuMf17bKcsbVb9uLG5w85ghwGbilWRuRlg==
X-Google-Smtp-Source: AGHT+IGwKJspmTKwK0oeydh5C+0W91YyLyDhfqNDMWTHwa14f1p0dzNVkcnuqnvLJgl8jRaN9pq7Yg==
X-Received: by 2002:a05:600c:4e48:b0:40d:39cb:6af6 with SMTP id e8-20020a05600c4e4800b0040d39cb6af6mr1701326wmq.28.1705154327179;
        Sat, 13 Jan 2024 05:58:47 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c350600b0040c6d559490sm9476148wmq.3.2024.01.13.05.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 05:58:46 -0800 (PST)
Message-ID: <7e15bce2-977d-4b02-9f8e-6503383eb281@linaro.org>
Date: Sat, 13 Jan 2024 13:58:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] usb: typec: qcom-pmic-typec: add support for PMI632
 PMIC
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-6-de7dfd459353@linaro.org>
 <7e36b380-8ab5-4555-8919-1c2c6ff7aa68@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <7e36b380-8ab5-4555-8919-1c2c6ff7aa68@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2024 10:33, Konrad Dybcio wrote:
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
>> The PMI632 PMIC support Type-C port handling, but lacks USB
>> PowerDelivery support. The TCPM requires all callbacks to be provided
>> by the implementation. Implement a special, 'stub' Qcom PD PHY
>> implementation to enable the PMI632 support.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
> 
> [...]
> 
>>   #endif /* __QCOM_PMIC_TYPEC_PDPHY_H__ */
>> diff --git a/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
>> new file mode 100644
>> index 000000000000..5d3b0e78d4d8
>> --- /dev/null
>> +++ b/drivers/usb/typec/tcpm/qcom/qcom_pmic_typec_pdphy_stub.c
> 
> Not a fan.
> 
> Maybe add some TCPM_FLAG_NO_PD and solve it in a generic manner?
> 
> Konrad

This is a good suggestion, provided its the direction Heikki and Guenter 
want to go.

Otherwise @Dmitry you can retain my Acked-by for the stubification.

---
bod

