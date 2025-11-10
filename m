Return-Path: <devicetree+bounces-236745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD64C46D98
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E3403A8027
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844F23101B0;
	Mon, 10 Nov 2025 13:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ngCIZ6IZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gx4To2D2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE3C30E0C5
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780933; cv=none; b=pkix37tNcSnd7O0M+utOjzMv4l3XVKa2T84h/DVc2WrVr4F5DHnYRm6TmoK16SFud5BxtwzJ2MghBw/gKhjK9BwF8uuzM7bFQUg2UfJw1eY989BRslczDz1Zh4EVH+0QlmPKakG1dFkXF2nncjGbSbmSemG/sxitPn0Bfn5Tan8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780933; c=relaxed/simple;
	bh=MEnR2zX5puAIQkCSZiqLDP7yLlxvkF3Pzrw0yu66dDw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pGKLRjDGmcrTwoxy/4M/w9cO4ckm4BpWCtsw+Iq80fI1IFlVbeIrbO5+sbjSgNhme2u0DcuzBrC7zWhf9FMAt8kegE3NlO2TniJOptyKY13X6eQPYJnxadvJMKLF69oLgRmtumodGRLTV+Y2GbKGNZ0YbRWx6blu8iLmKQNruFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ngCIZ6IZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gx4To2D2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA9ChMx3146440
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:22:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dNQmS4jbwpplws3/GqBzTBGZxk17z/yI06N48KACXEA=; b=ngCIZ6IZdux4pNlz
	vnryMk3sbvEMOZU+reWLrD08JqPXu386diZPJEfB1xchGD9A33BxUYO1BxZv8o1N
	es8kr9DT/kR14PP+xXdiTP7VatdTVhSRes8TdhdGw3zdJtwjIE81sjHQokc4XGP1
	9aKjSTr5Nivon5u57+4oVoni6XZK2lmgYraKBEjCpEmHcXIZaiDWiDf581NFc0R5
	7mdQuob/QQ4dJuzgzS/GLHLe3sAUzkoGsDM14mWp0rUyOfStBJmMxBjjo8etwJt5
	gCZxjg8zYubR6SqaVoC/XUsDbhSe8GtsT4jYQvZ05RoKcATavjUmeGMAvne6LzIz
	H24phQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abd7hrqjj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:22:10 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297fbfb4e53so24639425ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762780929; x=1763385729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dNQmS4jbwpplws3/GqBzTBGZxk17z/yI06N48KACXEA=;
        b=Gx4To2D2VND/9Medu+PqGz2EqOBryFypFfgLi/xEMI7fjye6VWRaqsL046x3jFuZCJ
         aKhlmDGqr+KztLoZ35KHoOBt3MYLx9s1pMk9jUGmKcW3fHoabO2XdmwA1iB74WJaqEwu
         /o1fd3YG9d5Nnmai0sH2tqZQseY/EKHVseLK6djPjz87gAOrUHpy1YKTX4M2T8o57P0O
         aHZmIo/0CRtmpGGKHE3lJjgLARZYAgANCEEsbD6V2ig6ujHbBDdg4BqXmN58e8rdafZf
         zbepqFFXsDLC0r6KTnm3c2uxreZFe4RN5EV4J1mRon/r+3ZNvRPKYn2lWakCsBJH+m6v
         Tegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780929; x=1763385729;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dNQmS4jbwpplws3/GqBzTBGZxk17z/yI06N48KACXEA=;
        b=t+RneDUGITc+Fy5JeFBdI6O2KPYi0va0H1/xUo9/XpPfGvb+NKODAVrVlRSTA5pZpP
         yngljbiyKVdrIMam5HevRZvk8Gcgtr7eydhOZz/nw2irdMmaL+ptnD7uDUP+zL7dxV0C
         IflkzsW4nvYxXqTMSKnZ8xTOaRUhDjO8Xyz9qa2YlrL09Xu592oB+O3vMh/Of4lwcCa0
         xfrlwttPauuArwIGCuQLWVMctfam0vL1382CczgHULCMd0Zjk9I0QOe21fyWJtt7qIAN
         zT8TheWzTMwZZUuoR4cBOAb7s3F6OINMyFu9tY48zjnThcV45wXoB+BhWymguVNC7rg+
         ZiJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUefGyQ/atI7Hy2KtQbafNvczJ6m/0y9khO7ev+s4V1TTU8mczKT61VYOGm0nzEORSVUZnh+8Uj0f19@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0xTcScWg2KNQ7FoG2zs0zXOPLYcOJn8V1c0HPi8BNRhZ9xV4b
	3I6luW5RDmky6N10fCiAh+6++MbQfh1qyVk8D+TtC8PDFO/zb0gHGUgVhLaNKW5T7aBt24q+NRg
	3tKsguDTtU8+qkRxBb1rgT3qjGmWNtiNfw3LuCxQq4SFR42bsRuC95a7+aiG/j4Xf
X-Gm-Gg: ASbGnctdAF6rIcSWqCL/RunqXqhHMgOkbzDRbDQ1Feb5uM7K499MFNIZzHt/dX8C+Q/
	YWFhy7fyDtkBnkBMcC5IkaPgqAl+KZftzmV6Z0rUJ5zi+CYhehD56hvNJS7cbJCADtfekiCgIc6
	j7Y5c8S6MIb9AZfKburDKyL2Ii+4EZzT5Wde8fnT68pjZt8YDHYMxKl46uWteltpwLlFwUQ9Bpv
	Xgui1Mt07HAGZT0w9e2N9Ps0IJrDzB39i7OKDZJaqiYStUbsTdQYrZPjeMcmkOX+EsP5L0YEYxk
	8rdf7rsry/x5uEicDci/nfNBCXulBHBZBTdX32MXquSaNMFDjiN3l/sKocDBXoLxI6tWeC7ehgl
	8yHlW+nzwl6d6FZ/BXhEltTT53MqqUlQF
X-Received: by 2002:a17:903:32cd:b0:295:2d76:72fe with SMTP id d9443c01a7336-297e56f9b16mr106607525ad.45.1762780928948;
        Mon, 10 Nov 2025 05:22:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3AZW8cePcCTipuquggBDwoFS11PQj8F9mPSOHc6aFTo8bPEdW1wKw0g++4ar8sj+Ro+Qf8A==
X-Received: by 2002:a17:903:32cd:b0:295:2d76:72fe with SMTP id d9443c01a7336-297e56f9b16mr106606915ad.45.1762780928388;
        Mon, 10 Nov 2025 05:22:08 -0800 (PST)
Received: from [10.219.57.23] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-297e2484bfbsm82037535ad.26.2025.11.10.05.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:22:07 -0800 (PST)
Message-ID: <dfcd8bb5-7278-4345-6d17-1903aea3966a@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 18:51:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 02/12] power: reset: reboot-mode: Add firmware node
 based registration
Content-Language: en-US
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-2-46e085bca4cc@oss.qualcomm.com>
 <20251110131306.tkrsfqeh6oa7ql2c@hu-mojha-hyd.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20251110131306.tkrsfqeh6oa7ql2c@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0AGhf4jxyKPmFv2P30UUC0GBaLb7TKEu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDExNyBTYWx0ZWRfXxyTZRL1+5Nnh
 WJMznvJCbtSBDMQ+AKzerIGlgnuXjZs3zUDe8LyQWJvPjg2k+byQwi+XpoqNOSedKYPBOSZ1mzF
 HCOgJr5IS2l//5k5CH9NcF4iAq63S777lbZgiF9ElhbgMXOyeaB+j0dHE6mw6RJtBHuOsJWyiYo
 /a8FG2jdEYo/3jZIFflQtJP+7bSLn+e5/Nt7uOTc+CiyRI8OEYd267zQNlYg7cLyDslSxW8l+Hq
 mj481e+1SqGaYx6qRn/xbU3Gg1AFMylWxuXLFi6e/Vw6M/FJ6hInUQmoGmlzsHbiiG4ECKP5jlT
 5MMdvqKu7tOoGSiZMmwagvs8ls2cvUCleysapauhNQesnZdEQobnoPBvhNUONn9H9BjA0fjUWdb
 SgmhPyqZUxDNu9VzXYsi1ZNQmXL0iQ==
X-Proofpoint-ORIG-GUID: 0AGhf4jxyKPmFv2P30UUC0GBaLb7TKEu
X-Authority-Analysis: v=2.4 cv=Yt4ChoYX c=1 sm=1 tr=0 ts=6911e702 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=O8xs1vKCwhjr2-LdiPMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511100117



On 11/10/2025 6:43 PM, Mukesh Ojha wrote:
> On Sun, Nov 09, 2025 at 08:07:15PM +0530, Shivendra Pratap wrote:
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties.
>>
>> Remove the dependency on struct device and introduce support for
>> firmware node (fwnode) based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 19 ++++++++++++++++---
>>  include/linux/reboot-mode.h       |  4 +++-
>>  2 files changed, 19 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index ac4223794083f36960b2bd37a601b7e1f1872de5..eff60d6e04df2cb84ba59d38512654336f272f8a 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -8,10 +8,12 @@
>>  #include <linux/device.h>
>>  #include <linux/init.h>
>>  #include <linux/kernel.h>
>> +#include <linux/list.h>
> 
> nit: Looks like stray change and belongs to other patch

Ack.

thanks,
Shivendra

