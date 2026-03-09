Return-Path: <devicetree+bounces-272912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBVaNAG8rmn6IQIAu9opvQ
	(envelope-from <devicetree+bounces-272912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:24:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D5A238C0F
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DEF0030BF56C
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CFD3A962B;
	Mon,  9 Mar 2026 12:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nrwkvq1k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LB/BKJQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FC03A9621
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058267; cv=none; b=s0dm+FmLr8/sBRjgglfT9FWwj4mubRYgEGMgBPT3oouVNpP4K3FKnd/1NpBoZx2THCnF8aI+sQQRNhP27ATPQ5kcdJpu0ZwV7UAVjPpGviSgYfOTMzgtysDGPqmxsSL6Qfb4qtj/5bGIHc7MUl3gFmfNBY/5sJGomzpm53XgSyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058267; c=relaxed/simple;
	bh=BTOhTZiR+sU5XnomQReIXYrThw3LP2w3T0/+foMg2UQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ee/+J2IJARo9XeWo42CZ4GVrOovSclzh8BG3SiQbb8vpU+fu1fQo6guK+z4eiK3wug7t6R7cYPRsin1657Vy0VbPrvrh8TEQe9XFM4bvHbj+nZO8+SVSHa5UTKeQmhUy6XFse32Ohm0tdSu9a3Iq3GyiEH9D3mvvXa1IipshqiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nrwkvq1k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LB/BKJQF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6hmh2195267
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N0KUb8AFGBiIYPTEYvJInXNBz0gyDilMXYt3nEtg0rs=; b=nrwkvq1kJ1j8ilGh
	gmlBmvYd0QJAa5CQFYDrxSpml9rKZY/bOJBt/lgx8gaK2NCKn6/LIy+zF/vbbyGl
	3zKMCRnBUpRsdYZphKHlcnFR6opMG31Yan3+NShD3H6vOgJDrrxv0m7qTraa1Brx
	cyD+cdd3hBY7jlimJH807j2brgwXQzz5F3mNtVRlyDljrQx0lNhJFuzYI0M9wIi9
	3ZPnBbFwu76QWX5o9B88ahWUeKF956p0Lyubt59k4fNXPv/V8D43tOBE60oHX56e
	hxNTMKga/fxEzf5agrhxO5wb02Az0e+cZdtkWgpCxv4gFVWZD4Le1LuTzyCZ6d85
	ZkbRYA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u8d6j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:11:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd8ea43d4eso26376485a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058264; x=1773663064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N0KUb8AFGBiIYPTEYvJInXNBz0gyDilMXYt3nEtg0rs=;
        b=LB/BKJQFKF7Js/1M97Ullx7Ve4H6rtukGE53zsb76lwblTzqItoDuELdotf2qWQ6Go
         TsHNW7MENvN3KoKpNouXXNMEM2+rHzc7xu0R2t+xwLJomwOAbdLy6V8WV2nCSIAIffuy
         47A3Gx9q0hhHK8otK48cCGbSwF21FgPWWL21FtZ8emh3FC1ub3T4LqIPTKaWVuHgDsdu
         Ps3O213FHKGZzYIb6StbBDtqvc5HVspLiZkS7HNqLyup2b2ezlqmB4XM9uShXvjn2dLI
         SOGgcgeuXZNTEHwqnFXcJ0uk16JrGNz5mT0D0mZoe64NWv7lxKPlUJOZsJ/sVdE0F3KI
         YlDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058264; x=1773663064;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N0KUb8AFGBiIYPTEYvJInXNBz0gyDilMXYt3nEtg0rs=;
        b=jIM9DbX1e/x+cz+hVGKdRx+mm43LesrVFcdRAHIMsCtIIcSV7r1pUFtjS1AsAq21N0
         2Fib9y9SnZy8A3KwnWKlcgoJO+3UJAVT0XflhTKLwGUW4S6VAOwfDz8KZ0pIkTYslb8K
         NuhbBEvtWYkPcUYnlkzs0GzStZlXW4mEeDySSOsmwnjnNTx6o02zRe6xuEunC5JVEKux
         b6ZK+gpByBY0atvCHbQWuiKgEoozSEL6ytG7FV3BiLJVuIoCTYxwV4AAWLsok4xPp8DU
         4nl2BXtEVmfGNX18aHmqfFaKlQrytCsf6V4CdCIyfHvAivLCqg4+yx0F/jPWFVTtfUc5
         IFDA==
X-Forwarded-Encrypted: i=1; AJvYcCX/EwyNJ4BQETboSZ8lWzElDCaBsoeKI1cg/r8acjV2tFJgFktczoKpiAEp1XhtAAb+m2GxHv5wdS/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwQw255p4YWWOHO5AgeH9AfsZV2pK1dG6aPLX8IsgU52nVrlRWg
	HDe9tGSETfsV5+Rmv1g6mNea10dvAf8aaXdvMjNUOJaF5e+Pe+kvVeWPc/+JWP9SlGv0kxl8dpA
	vbulVYYq6oEWON9FLoR+MZs0+Qjmeyb6Cv1J+eVNLaLzhIOOdWb/II++Gs/BEphttRnvuV91D
X-Gm-Gg: ATEYQzxKv4/iDIkizsQohpVFKHddmUcJLcW3/Z5vITf9tij0CCd1/yxVqh1zhPiu2+X
	4mQ+X5uce1n60DYP14MDmS6kKbWsoDVuigR4xMW586XSoZtA5214ONjZOavWcVEP6Viyty3OlXE
	SGgnte16uGpRb0I2xaL/f910LJcseDYKM/zZPmh/QF59l+EqpxFRBgNa351HxeEdwXmtvtC9reB
	qbeW7VMOyZZZpbCXjsS3w/byFfsYxFGdAikzzuUcxXUq5yCko2OJDReWHbuEUUz5hhwWNs0+Xxq
	0hJQehU52iUVgrKNqRCYBjhvt01ZB5be9uxw86HXkt2ghz40p6DPQEP2R5/4EeFJxIGSXuFknFP
	NTQn9rLFFJIeBhEFslfFD1R0Yw5sLvU9oH5aJ7CWDLa54/HVWs7o4SKOJNhnSL6nq6Cvr6yLXbp
	rEwIA=
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr243492785a.0.1773058263885;
        Mon, 09 Mar 2026 05:11:03 -0700 (PDT)
X-Received: by 2002:a05:620a:7004:b0:8cd:8b9b:4581 with SMTP id af79cd13be357-8cd8b9b46a0mr243488285a.0.1773058263329;
        Mon, 09 Mar 2026 05:11:03 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8b67dsm352544166b.15.2026.03.09.05.11.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 05:11:02 -0700 (PDT)
Message-ID: <395f0607-7d6e-40fe-90b3-a7b49a6b7eea@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 13:10:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, robh@kernel.org,
        krzk+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        bryan.odonoghue@linaro.org, ilpo.jarvinen@linux.intel.com,
        hansg@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-3-sibi.sankar@oss.qualcomm.com>
 <aa6M2QSXW72xqYiB@linaro.org>
 <96f8738f-9baa-4528-8bc6-6ce20030e391@oss.qualcomm.com>
 <805525cb-ef53-4bdd-a73b-6fe7513228ce@oss.qualcomm.com>
 <aa61HZOuz42C_R7X@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aa61HZOuz42C_R7X@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tkJC4YL3FSkikJSGco02W_DQrWWC2112
X-Proofpoint-ORIG-GUID: tkJC4YL3FSkikJSGco02W_DQrWWC2112
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMSBTYWx0ZWRfX5C969/1msSAE
 GSIR5ksWeUlmyOWgpNR/ogrcyzhz4a6YLtH6IivyW5arWYOc5rdiF7bz9OgIJdu4I3MkWoqlork
 6ynPogHv5hPOmUCt5JYXgehUmJLGSVZ6vRJ7EoA/EahFhqITJMGuiX8Zr6He06VnYbyuuNPt+TC
 3x26swvf0vUVpObPFvYRw4UxraH4du03V3a7cikId1XI+7rZHLNWvW/x2rK04KqVXvB+Hy0hRpX
 HNurUO05zKwKAtWnyv/1LrvyX6X/8g01e9Ea1sAYT8gUS/RJyE05A//3w52LOsGX0+sgyKZXGbj
 02BtKtNMW9MbA8Pm07DqA+mAhrpPgJWq5Yd6V06VKldCSWL+8NBZA3Y6qwKX75yqFAmSvh8mp2H
 LOvVXKt/MEXv2JytL3yWtP7Gk54cQOqnSFIH3X7nBF9GBJHm6T2MHeP0fFPHE671DCymx2nFVBH
 MigE1+/nFjnspV+prnA==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aeb8d8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=i9FFgL4WzkIojyinDGoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090111
X-Rspamd-Queue-Id: D9D5A238C0F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linaro.org,linux.intel.com,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-272912-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 12:55 PM, Stephan Gerhold wrote:
> On Mon, Mar 09, 2026 at 12:47:33PM +0100, Konrad Dybcio wrote:
>> On 3/9/26 11:04 AM, Sibi Sankar wrote:
>>> On 3/9/2026 2:33 PM, Stephan Gerhold wrote:
>>>> On Mon, Mar 09, 2026 at 05:06:43AM +0530, Sibi Sankar wrote:
>>>>> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
>>>>> reference boards. It handles fan control, temperature sensors, access
>>>>> to EC state changes and supports reporting suspend entry/exit to the
>>>>> EC.
>>>>>
>>>>> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>>>>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>> ---
>>>>>   MAINTAINERS                            |   7 +
>>>>>   drivers/platform/arm64/Kconfig         |  12 +
>>>>>   drivers/platform/arm64/Makefile        |   1 +
>>>>>   drivers/platform/arm64/qcom-hamoa-ec.c | 462 +++++++++++++++++++++++++
>>>>>   4 files changed, 482 insertions(+)
>>>>>   create mode 100644 drivers/platform/arm64/qcom-hamoa-ec.c
>>>>>
>>>>> [...]
>>>>> diff --git a/drivers/platform/arm64/qcom-hamoa-ec.c b/drivers/platform/arm64/qcom-hamoa-ec.c
>>>>> new file mode 100644
>>>>> index 000000000000..83aa869fad8f
>>>>> --- /dev/null
>>>>> +++ b/drivers/platform/arm64/qcom-hamoa-ec.c
>>>>> @@ -0,0 +1,462 @@
>>>>> [...]
>>>>> +/*
>>>>> + * Fan Debug control command:
>>>>> + *
>>>>> + * Command Payload:
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | Offset    | Name        | Description                    |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x00    | Command    | Fan control command                |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x01    | Fan ID    | 0x1 : Fan 1                    |
>>>>> + * |        |        | 0x2 : Fan 2                    |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x02    | Byte count = 4| Size of data to set fan speed            |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x03    | Mode        | Bit 0: Debug Mode On/Off (0 - OFF, 1 - ON )    |
>>>>> + * |        |        | Bit 1: Fan On/Off (0 - Off, 1 - ON)        |
>>>>> + * |        |        | Bit 2: Debug Type (0 - RPM, 1 - PWM)        |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x04 (LSB)    | Speed in RPM    | RPM value, if mode selected is RPM        |
>>>>> + * | 0x05    |        |                        |
>>>>> + * ------------------------------------------------------------------------------
>>>>> + * | 0x06    | Speed in PWM    | PWM value, if mode selected is PWM (0 - 255)    |
>>>>> + * ______________________________________________________________________________
>>>>> + *
>>>>> + */
>>>>> +static int qcom_ec_fan_set_cur_state(struct thermal_cooling_device *cdev, unsigned long state)
>>>>> +{
>>>>> +    struct qcom_ec_cooling_dev *ec_cdev = cdev->devdata;
>>>>> +    struct device *dev = ec_cdev->parent_dev;
>>>>> +    struct i2c_client *client = to_i2c_client(dev);
>>>>> +
>>>>> +    u8 request[6] = { ec_cdev->fan_id, EC_FAN_SPEED_DATA_SIZE,
>>>>> +              EC_FAN_DEBUG_MODE_ON | EC_FAN_ON | EC_FAN_DEBUG_TYPE_PWM,
>>>>> +              0, 0, state };
>>>>> +    int ret;
>>>>> +
>>>>> +    ret = i2c_smbus_write_i2c_block_data(client, EC_FAN_DBG_CONTROL_CMD,
>>>>> +                         sizeof(request), request);
>>>> I think it's nice to provide users a way to override the fan speed, but
>>>> is this really the main interface of the EC that we want to use for
>>>> influencing the fan speed?
>>>>
>>>> As the name of the command suggests, this is a debug command that
>>>> essentially overrides the internal fan control algorithm of the EC. If
>>>> you use this to turn the fan off and then Linux hangs, I would expect
>>>> that the fan stays off until the device will eventually overheat.
>>>>
>>>> I think it would be more reliable if:
>>>>
>>>>   (1) The default mode of operation does not make use of the "debug mode"
>>>>       command and instead sends the internal SoC temperatures to the EC
>>>>       to help optimize the fan control. (This is what Windows does on
>>>>       Hamoa, not sure if this is still needed on Glymur?)
>>>
>>> That's true, Glymur already has a way to access average SoC
>>> temperature and even on Hamoa it can still be functional without
>>> SoC temperature i.e. with thermistors it has access to.
>>>
>>> The aim of the series is to expose fans as a cooling device so
>>> that linux has a way of fan control independent to the algorithm
>>> running on the EC.
>>
>> I suppose the main question here is "what happens if i set the fan to zero
>> and put the laptop in my backpack"
>>
>> The driver for M-series Macs for example, 785205fd8139 ("hwmon: Add Apple
>> Silicon SMC hwmon driver") hides that behind a cmdline param, since they
>> have no certainty. I would *assume* that if the CPU hits thermal junction
>> temperatures, our boards will reset, but we should be able to get a definitive
>> answer here.
>>
> 
> The CPUs should automatically throttle when reaching high temperatures
> and Linux should also do this for the GPU. So the chance of reaching a
> overtemperature state should be low as long as Linux correctly
> functions. The biggest risk would be probably if Linux hangs, the
> watchdog doesn't trigger and the machine is stuck in some state.
> 
> As for the hardware shutdown temperature, see commit 03f2b8eed73
> ("arm64: dts: qcom: x1e80100: Apply consistent critical thermal
> shutdown"):
> 
>  "The firmware configures the TSENS controller with a maximum
>   temperature of 120°C. When reaching that temperature, the hardware
>   automatically triggers a reset of the entire platform."
> 
> The question is if you really want your device to hit 120°C. :-)

And whether the firmware running on *your* laptop actually configures
these limits.. I would imagine that to be the case for Windows products
where the TZ comes straight from qcom, but I think someone in some thread
mentioned LMH is not properly configured on Chrome/TFA.

In any case, let's see if we can establish what/whether the EC does in
that case

Konrad

