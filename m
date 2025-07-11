Return-Path: <devicetree+bounces-195452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E732B01C15
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 14:32:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9130C3BB2FD
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 12:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4EB2BD001;
	Fri, 11 Jul 2025 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E/pjBBTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39F527A127
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752237153; cv=none; b=C3u2RRqMCrxB7dqBPPzDOD1LMbyNKy5Dbs+6D0GoQ/HTa/U9hGWMyP2NoQwAsJguuu87cjm2KjUEDfzuEwrz+3C4btASO7Ghw1KyAZvPktyTRfm/DrnZ2g82Lge+96VlSvnwsr8UnQZHH35jnRFlMoxxvOzK604aJcqWpvIfEV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752237153; c=relaxed/simple;
	bh=jskRVxDVP/S7EV7/YxIs2gggxobMl3QXDo9NH63okro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MoydRcN6WPl3A/As9KMwP6GcVDPQxtPIYpe+icbbGufxX4unZTqIaaB0+hS86ij4VQM8WHdABbXl5vBEWr6AkuuhAE311a+6W+ZXTHn4Mw3vuITqshOP43Z4hetSin0fE0AxfHSswuYuxGFPpSd1EHKnTCrRzsBK1j/ZSwIj0K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E/pjBBTo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAnkHe016953
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:32:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I+uJUa0zDVqqPkW/P6ZNncfaiD0Ik/YbmbIwujNrzqc=; b=E/pjBBToKGzsD7Nd
	aP/K0oulwHPlxsH9QDB5UjkokGaSTwp+ppzV3nPC+zT0BAr1G2IsxtUchb0/O1r6
	IXdkA7CV8TuW/2M6R1CGUEA9OTppGialSdxTjdC5tlulcQFhsGbFUpxIAY5Wdejn
	A3ym7h3zKXy/RBGl6G/H77MKPrI7+QLrsSlDnCZJN7KV9rsIRPzDY02eapz7lveF
	aZ7oKzOgavVo3GAdhfV6WxApnbgw0XnrD2vuizxgp7T753m8zZZmrSlR6jxDNbDC
	4rgx/9s1/zjlN4vrW6g+s0VCJ+K5kIBA7byNQu6EUv95pcKztrKQZlEfD0AxWhx4
	apS7jQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap8jcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:32:29 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748f13ef248so1984346b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 05:32:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752237148; x=1752841948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I+uJUa0zDVqqPkW/P6ZNncfaiD0Ik/YbmbIwujNrzqc=;
        b=Dj7j4fR67IktGtWo8Ne8CLvJ9oC2L6V9TWUBFWhDPOFPa30km1yOeJFz3l023SRvUs
         /2Nf8TsF4Fl+WpstBbC0BMz5t9xpMvU7nYxMALLjIbvJtWUZr6y21mRXHpz1sQ75Lfjy
         2N3JchB4CkSxS7lRpGT4C+CcI17hxHoRU6Obxi1623DpzK9f4cPjykrRdt9I42tkKSKp
         QbnTmls8mmKDagnwhLXEkyqz+qOXK0G03XpfIPTgaI58oIbQHzN4Gw+g6OO6Vmw2cRWY
         tnZ8JSMJ5SZI4JS6oiPFohsJIJy6v3yw6TgHvvO9LhLychmgEUcHUiuPJeWIT7kl1Q+M
         UbgA==
X-Forwarded-Encrypted: i=1; AJvYcCVD6oVCMpDYQUxWr9ifIlEpmeGtDskTlFJKBgVV8EIwtiMfi3nFjbSo22W08oaXCKvfVAbc5icq6sCI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp3X4TEsOtcJmLEHi75XkXDuCbvfohCQVlt0uA/mHydyI1kCtG
	wgZAUztnZQObEE2ejrjXKCA3iYJvR5Wr1frseiyoPyDQmYv+ZQrfMdXuA/8piiBazsrdlYwVNX3
	KrveC5Wk2h/pyMSnC4TrDrgYiX0OzKRE37Zy1GtuROuzEcWv5JmbgeS1QYKheU/5o
X-Gm-Gg: ASbGncu370NbRVPD1go1FhrhVBkTVfwHc7xqhUu0lQIco/YrQDNTjeVqrn1JAvu6V6W
	vHFZYMt524k7Bk66M/5U9LS15NUaO5oadG+wl8DxZ2jgZQVRHBUJyPmZe2APceR18T3AxbFYbKV
	zxEDyJsBYT5xneAtCeXJ2AH2KLLbRXyTvNS7QMmukPBAtf5vzc3Xyr0bDZcAwcmf2pcKBHWpDEZ
	JmDnx1H4qOytWlySqPjyQ+9wEHdi7IbJa5beurQ/2GmzaXDbztcgtYi/N6GBeGZffuk32ZzMrHt
	5aoTGpiakwViifs9h9xX3WCtBLMsaiWsXP/ebHk+S8nWf8kAjSVeONDXkKvS6qkOVcveZds=
X-Received: by 2002:a05:6a00:1151:b0:74c:f1d8:c402 with SMTP id d2e1a72fcca58-74ee07bb96dmr4845181b3a.8.1752237148300;
        Fri, 11 Jul 2025 05:32:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9gsUsqbiWSyynICyXIvV85uCk9/J6nn3GoQC+GKfjb1N1fCIuGevD1MSbYwD9kXnui8JeEw==
X-Received: by 2002:a05:6a00:1151:b0:74c:f1d8:c402 with SMTP id d2e1a72fcca58-74ee07bb96dmr4845108b3a.8.1752237147622;
        Fri, 11 Jul 2025 05:32:27 -0700 (PDT)
Received: from [10.219.56.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f90d66sm5040981b3a.173.2025.07.11.05.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:32:27 -0700 (PDT)
Message-ID: <cdadd6cf-18c9-15c7-c58a-b5d56b53452a@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 18:02:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 02/10] dt-bindings: power: reset: Document reboot-mode
 cookie
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
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
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-2-b2d3b882be85@oss.qualcomm.com>
 <20250710224740.GA15385-robh@kernel.org>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20250710224740.GA15385-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=6871045d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=s8YR1HE3AAAA:8
 a=PKmmUXB_vcMajKhYsGEA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: FNP-4h46PJ9L5aY4OsAllitPp0uj-kvD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4OSBTYWx0ZWRfX3vo761520hDF
 28VVbEQYlZ3WFDz6diUrMZsDllcy4qcZQ+cFmFkP5QDhQg/T8IUn8ywegu0hV2wNvMJAR8G+HFC
 xG6+dYcSW/MfptOrr2m2bbdvQpxhTCkQL6u6m98J4mpEGio5yCfvHT4/66JKx2BrdWqBm02ZGvu
 fuBtzMJpSysbNca874JxPYbSQt8hPVEmlNuMvP++mDut4JBXn8RuW9/b55R+faa1GZ7sPzRVp/M
 wMo+qDzhamIoEZcJUs42Kyt8FSMwAK3xjFWsHYSfTQlh/jUh9UNVA8cbLsfHqF8SizqkDCJmSCu
 4VZL4jAaXJNnetnEyRn00qw7+yGPmyUP4lMvSvD/EmOXmOlF7dmXlMGFTRYfhbW/Cr7sQnNQxU8
 mM0p7oT9VHC5hNfo+h8z/egZqiUbYrCRfc1PY/S9J96OUfGy2dnWr7bC6wf9d6NNX/CG5BBl
X-Proofpoint-GUID: FNP-4h46PJ9L5aY4OsAllitPp0uj-kvD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110089



On 7/11/2025 4:17 AM, Rob Herring wrote:
> On Thu, Jul 10, 2025 at 02:45:44PM +0530, Shivendra Pratap wrote:
>> Update the reboot-mode binding to support an optional cookie
>> value in mode-<cmd> properties. The cookie is used to supply
>> additional data for reboot modes that accept two arguments.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/power/reset/reboot-mode.yaml         | 12 +++++++-----
>>  1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> index 3ddac06cec7277789b066d8426ea77d293298fac..a4d2fe1db51e0c1f34ebefddaad82b8cc0b1b34a 100644
>> --- a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> +++ b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> @@ -10,14 +10,15 @@ maintainers:
>>    - Andy Yan <andy.yan@rock-chips.com>
>>  
>>  description: |
>> -  This driver get reboot mode arguments and call the write
>> -  interface to store the magic value in special register
>> -  or ram. Then the bootloader can read it and take different
>> -  action according to the argument stored.
>> +  This driver gets reboot mode arguments and calls the write
>> +  interface to store the magic and an optional cookie value
>> +  in special register or ram. Then the bootloader can read it
>> +  and take different action according to the argument stored.
>>  
>>    All mode properties are vendor specific, it is a indication to tell
>>    the bootloader what to do when the system reboots, and should be named
>> -  as mode-xxx = <magic> (xxx is mode name, magic should be a non-zero value).
>> +  as mode-xxx = <magic cookie> (xxx is mode name, magic should be a
>> +  non-zero value, cookie is optional).
> 
> I don't understand the distinction between magic and cookie... Isn't all 
> just magic values and some platform needs more than 32-bits of it?
Need two different arguments. Will try to clarify a bit below.
PSCI defines SYSTEM_RESET2 vendor-specific resets which takes two
parameters - reset_type and cookie. Both parameters are independent and
used by firmware to define different types of resets or shutdown.
As per spec:
reset_type: Values in the range 0x80000000-0xFFFFFFFF of the reset_type parameter
can be used to request vendor-specific resets or shutdowns.
cookie: the cookie parameter can be used to pass additional data to the 
implementation.

Now to implement SYSTEM_RESET2 vendor-specific resets using reboot-mode
driver, we will need two separate arguments. reboot-mode already defines a
magic, which will be used as reset_type. For the second parameter requirement of
SYSTEM_RESET2, we add support for additional argument cookie.
> 
>>  
>>    For example, modes common Android platform are:
>>      - normal: Normal reboot mode, system reboot with command "reboot".
>> @@ -45,5 +46,6 @@ examples:
>>        mode-recovery = <1>;
>>        mode-bootloader = <2>;
>>        mode-loader = <3>;
>> +      mode-edl = <1 2>;
>>      };
>>  ...
>>
>> -- 
>> 2.34.1
>>

