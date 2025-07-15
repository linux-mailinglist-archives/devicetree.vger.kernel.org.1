Return-Path: <devicetree+bounces-196339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE17BB05073
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 06:48:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF75C3BE9D6
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 04:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99F42D238B;
	Tue, 15 Jul 2025 04:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lTHCMFWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72185244691
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752554880; cv=none; b=qYYCH+IvYvJAfCnU7CCHMDuLytzJuBbpD7c1XtEP9kiKmOU+CfMfBAoIB270YPJoXmCF1KeFiIL+CY1URRlj2KBlSmxk64xE8SQ2CiOToIDxH3s6wjTF/arsu03XsTTp6t0BJXBlcjEYjtjpD4F7H8/KvyD+ZXIuXtm2vB8JHHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752554880; c=relaxed/simple;
	bh=X5WcdvGOR4ZnxxgkKRanPZQzRvjeUHxMPCMuzd9RT9M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OSUtzSVjeblLFpvAl/zHeCLWC5DM6WdQ0VIYCateQuN0RAcY5pb3ciUL2dMZYRP147q3z+/UW8y7tUoMoKI9ziJ2XMXupxrunEMM0e8dkImFXjVmX/MY6EZd9kznkKwH9YrDQbaM/nwE+FsUsZ31V4rqdUXCvLo9cyZitzjgPWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lTHCMFWJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F3kb7R005134
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1G81B60xsleyJTfUNHppUdfBzYqz0JcVfIPyN+RmVmM=; b=lTHCMFWJPCu8e0E9
	V/AAabygrTtorP9ChfuHJ9QbaufTRbwAtIY2Rnsv6uzT8ZS6xO8bM8WClCszfr+3
	2UESTZeWJreQfs82l6td3wsLsNo7xAOgkgkMFCVK1nxaq0nL16cVvLakSs4lN89J
	WI/HZUoYudLihQS+dLl2FY30gwZV4AIZufsJl3kaOVET2/9yrljJ0YedI4ElPHlF
	nypIZuCALT0fhRhoUCP92kBc2JHq8t5L8/TG0IZzx2QRtDJhe4uc8AqC8RkeqZUF
	csLwdvEUN5twDhMSZpwg9ST71WieDwSh9lhcEKT1jzmlpYdexbtdvTGQO07ozx5H
	+o57kw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfca040q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:47:57 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74ea83a6c1bso2256461b3a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 21:47:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752554876; x=1753159676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1G81B60xsleyJTfUNHppUdfBzYqz0JcVfIPyN+RmVmM=;
        b=JV/YMfRKdfx72txCehCFXhaqJqFxJVKHByc/DHuiAlgoPmdQwIIxKTQ+ZHI/8hMA33
         r+dY9rwtt4fQeXoqpRxukKXfEvKz9B/Q2IepPum1NIpwS2DTgOd7oy+/IJePJq+7CnMF
         1GBQrCbHf1OY7UCuq2UdwmPAU0WIkrb3Mw3MnyxYkklfAUm7cC0ZSyOwOKSXhwy38lb3
         guYWiyCiA9FqQ3f0i5EJBfDFUIyEQsjKuIOwve0smSFw9EfIEcDOZIu7rIhYNtbA/h1/
         GPfe0q+NVPCayUXAwm7jD3clHuNz3fg9H97n9Uix0Y0C0oh00BK3l2WHcR9ANJhlnBUK
         ZQ6g==
X-Forwarded-Encrypted: i=1; AJvYcCWo2PODV8lwwXRD24+KHxX2A0Wbwfc+l9OI+puwLrcNGmqCGhyhuqiuwCYyHpMdK3SGM1PRfV+Gyc8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxma7TIso9FXDWiE0AlM7V8hmiDEoGazUc6KvSmL4n2S+VmKdXJ
	vje+5CEXa6lj+PLKFEXDvHG+XzswOWYAcKYNtGeMhr3/s04T+trDLr0fKNQxk0yvcEGUxuOfAEj
	h7T4PcsgzyyZ+r8rnF4UiTRuhX5uP5PCSkUiC5ePfCAFMglnfmdmtidcEw3tEuxll
X-Gm-Gg: ASbGncvSbMtAM+b7LXcqLnH/3wmPEfyubiIJmhdWil7xanqtV0vV3DD4xUIGgkh1Oij
	OXmPWRwsS6Vo8qzR++//qV9NzA4s6Wlm7qUACw5GGa8S86xMWam7ECWix3NRUcOw0dq+CGCaZFa
	eoXnJLoJXa1Qi+bEr3LgS0RLLu++DIV7LvOApkfqnnZOSSKjmhuTqCkO+QGWEbChUMyRoLGpZH3
	n9xZFHw5w4VUH7PewAP7VQgA7fUwCVfD8CRV8wxxDPVlT0pkdFLkRJXT5vV7SPXOUZpGxJAonkf
	AGM56eGNKTZ/M+e0weYtXW6I8Y5hTC7y0HHJGxHOHpwjrZPkiuEx0G+3qs9rLtc9IzUzh4Q=
X-Received: by 2002:a05:6a00:148c:b0:740:9d7c:aeb9 with SMTP id d2e1a72fcca58-755b4cb576cmr2345360b3a.21.1752554875828;
        Mon, 14 Jul 2025 21:47:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLw7QsQsRMoAC5kgpjcNQia8kN0Ju9KrU7l9OxO3SkPSGi12dP1bd89nTq4dVCoxD0vfJycQ==
X-Received: by 2002:a05:6a00:148c:b0:740:9d7c:aeb9 with SMTP id d2e1a72fcca58-755b4cb576cmr2345327b3a.21.1752554875237;
        Mon, 14 Jul 2025 21:47:55 -0700 (PDT)
Received: from [10.219.56.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd5d30sm11715343b3a.5.2025.07.14.21.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 21:47:54 -0700 (PDT)
Message-ID: <08a0b50c-76e3-5c34-22b0-74b8d20c8e63@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 10:17:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 01/10] power: reset: reboot-mode: Add device tree
 node-based registration
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-1-b2d3b882be85@oss.qualcomm.com>
 <5zlix4hfxkz447g6e6imjlatmnf26pvunnsmfkol7mhvropq6o@k7wr6h4hyqtg>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <5zlix4hfxkz447g6e6imjlatmnf26pvunnsmfkol7mhvropq6o@k7wr6h4hyqtg>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA0MSBTYWx0ZWRfXyv7OvqjcbQB3
 vO4c13bd/6Qkt8xd/sE90KqJK2b63VhWUolFXspR5qtRpWaq2j/AVNfpzcOcu7u6U+iiwV9TS93
 CVd6IMIqoCnLk9ec/IfIAcjDSzzfsTpkAe/p7Bwh0TLhG6eOE60yovD+zuGqbLhkroka4jnLrLi
 mjVAMf44bKFKyk7EWLJwyxlGiRr82VSXi3wZ6WozeGfinNmt5inEGdfRz7AUkhw8H+uIy3SxdSC
 hVYmM5YDBYfeA9pc4ZWmR/NeBuozG4hkI55bp1akXy5jOS/y9CYhkd2POiZ3bPGYex7ZCaN0Fen
 ohg5d30b5aOewPlFU2yPdOLPlEh2icr2lUJmL1eH2W0PsLx508GOkkyPoPkrxpayVikU8U/nOWh
 D3vwjavDNw8q8JDEi0psA3wbz4YHEdsFsH/Wzm6ZYrKHQJR7BoqHXREJokvvzOusYaHCc35O
X-Proofpoint-GUID: n4ptgutQ4iMe0nwXtIAQECb57suyzNif
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=6875dd7d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=w5sRTUNUNuywR65qw8YA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: n4ptgutQ4iMe0nwXtIAQECb57suyzNif
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150041



On 7/15/2025 4:41 AM, Dmitry Baryshkov wrote:
> On Thu, Jul 10, 2025 at 02:45:43PM +0530, Shivendra Pratap wrote:
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties and the device pointer for logging.
>>
>> Remove the dependency on struct device and introduce support for
>> Device Tree (DT) node-based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 23 +++++++++++++----------
>>  include/linux/reboot-mode.h       |  2 +-
>>  2 files changed, 14 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index fba53f638da04655e756b5f8b7d2d666d1379535..61f647b23959789a313f3af0bd967abcad45fa43 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/reboot-mode.h>
>>  
>>  #define PREFIX "mode-"
>> +#define pr_fmt(fmt)	"reboot-mode: " fmt
> 
> This wasn't really tested. If I remember correctly, it should be defined
> before the first include.
yes. fixing this in next patch.
> 
>>  
>>  struct mode_info {
>>  	const char *mode;
> 

