Return-Path: <devicetree+bounces-238052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E91AC56D6F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6396A4E6222
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:25:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C78552F7479;
	Thu, 13 Nov 2025 10:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ecQb3Uzi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DSUR2Ytl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E40B2E6CA5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763029497; cv=none; b=Xx9OzzlxxnOqtwxVJBcXEaUrSvKdueN/6cAnCLRGr22YT5evaKP6rKkFcrBxq5aMgtN0HJlcSGT9wv7i4hph5oIwB/qUpE0lvikIqnIeQtqFwALYXAzLFOejbYLf4cD7uNpqvaxeIqjC7fVKNThnuD2D9UjYux5AXXYWgGnPRpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763029497; c=relaxed/simple;
	bh=y3Tkh9Y+00TkC16p9tWZ5iuCujnyRKQ+Q9BWXTtfT5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p1mSmITHl3/lHDtMgyCPtdf0yJ3lDGW1l18bjH3SU+PfZevmSG1xxm/F4AidNGEcaf7upck5hnQSJibsrDB/pN5/CvfxjHwbjuHWBBG0qNAUiRT8WdGs0fidw/zRLOShQFZLiSl9RbB4O8rZ7K7oxD4DxYZ+S5gORgUleysxUig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ecQb3Uzi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DSUR2Ytl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD6hcJp3801307
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:24:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5OSax5t+kt4/xPcqkn+xgV2a9SEJt/pjMe89M6iO6pc=; b=ecQb3Uzis5TIo0Ts
	XCz2YVy9BUgoVj/4GJA/ubtmiHO3b8najejQq63DxFQUV5+Ptw5KIbaIU7EQEQiA
	7D6XjULPe4iKYvdGI+pPVDVsO54lGGBs81dT6QLxU+u/nsuWF+l52D1Ad6V/b6XG
	3PbEbJe5lQ75vO9S+hJ2T6Um/XQ+UIgUxLE8UCRbAj644t2g1liudtjgyxsZakTR
	tvLT95iQbv261QIYs5OCiTOGtPcV8tXWVrlYC8RsWiL8VQYTD3g3fTZRnOchyxj3
	vKHYZ6Jlbx/l8qISJuI81UpqhM2B0MG1+IL5UmsGehldaRZBWqBb9jptAJGl7a22
	7p4xdg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adaam8pgr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:24:54 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a998ab7f87so1061853b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763029494; x=1763634294; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5OSax5t+kt4/xPcqkn+xgV2a9SEJt/pjMe89M6iO6pc=;
        b=DSUR2YtlaIUCuslAqoKzLWxESW+5g6EiPY1eKjOY/PDJPe+A4gMWwyNYjLUJG5XzEe
         oVgmtiopLsLGDXVahb0yqIctJ//Um3G/nn++DDMoLtGvmWvAuZZqzN7bw2O3DVLX2l8Q
         cMVcp/kPrQj9e4AN7FWNrfJwHv/AOleOn8ReV+P5DiiQINrqxskMSosK6+9mCbURO6OI
         jHDZW6eyHAEcjMK1/XEX4kcuwiDEcvn2pWcKtvAksVJEg6szXqceUGu8tTFMG13KdXnO
         ZzcXthI7PRRaEBjoXlw4GphmutJYVFCRqYlHO8h/5l+y2mqLJvK0qOYXFeh15B4mprP8
         e4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763029494; x=1763634294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5OSax5t+kt4/xPcqkn+xgV2a9SEJt/pjMe89M6iO6pc=;
        b=G+nhd/y2TpuOuAQJch/iGN694ixHJHeA3Y3F7hOHBfiV8ZLN3/+4WsDJMxaxcIkwRT
         XAUNHk4BRYKz77AuhUZQh9Qw5I/cTdVtmd/IV6W1y17hfwT14565y/9KbSMXGneZp7BD
         aJCN9A0foXFHfVkCkPXKPvL2kl8P554UW1HV3h1RqZmKixOraGT/TSYGpZRKvGXZn/S9
         oWYERn1gTw2+g42HZI7fpSYkhhg194X7ANK2oLg+V+rreZ4yTIFgrPx7+JtMS9wq9ao3
         gTun/g80n5kilRpJDuSdOD69DgVj1hPim4kMY43LWlvyMBLgaWYezkn0CheaYRtz1q07
         L24w==
X-Forwarded-Encrypted: i=1; AJvYcCUW8bMXhepBqsGlzvIgOvk49bKhmobhzEeW1eLkRlgLNGVibpxsOHvtLHIMaEryNgEBghO7NaUskzSh@vger.kernel.org
X-Gm-Message-State: AOJu0YzMMFIYz+UoNLTBxxPOJoA2LxZezJ5wEea80Br9rCxj6+R5FMTW
	jByNFtvatJM+b1rCTzmD+AUGy64vw/H/wUXybq5mfxzrXaiRPjB4HmdeqllvnA6KiKX66DjeDZP
	Pp/x9OyGs5KgtVy/1MOQFCppyWyandDtKXx2t27DT/PnebnsgDjLD636mqZ72pZZ1AsHnseHk
X-Gm-Gg: ASbGncsatBNlXTAg1PXqXEmec9Pn/AMjBEjDxs1XO8JQcdDvfoEdOxOyqLx6gdtJl6H
	RTr7K7zbIAbfsbDaBwsS8hz+dnX6GwY8GTHZKyAqv/lzP95v9r5/jJhGiygaueWvBjfTYf3mRNJ
	e+2XV41h+suXS302TEOVYCgEWGjVjSWK8O9DU5xup6ACpRnDwsPbymCKap7IxVOnkEWrWKLqwo4
	mCLotJ8hRidaHsuLMHVqGhTyO/nlPJUmrUx9jV3nvbo+5jjwipTTzy8YaAZzPEY0AzV45t+Wv70
	aXhq8NoJxamHXDqXEvrjJ4DQqR1YrsUQN6PBWAU1sNcB2mnMKYgYUVDlzWL5zx6D4PlKqpZJW+B
	uSFiIUNKZp6Ha60fP+hAPbLcZ4CirTTkPo1fBGrOw1wnTtlfE6vEmC1qJBfyRZlau0uUX2/J/g3
	XbNEwHwfNmFdiuvUVR3+8clg==
X-Received: by 2002:a05:6a00:3ccd:b0:781:2538:bf95 with SMTP id d2e1a72fcca58-7b7a299aeb1mr7083460b3a.10.1763029493649;
        Thu, 13 Nov 2025 02:24:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnWkPH7h7QZCCvr43VCijhRBypZyvpSZr65Qfwwqa4vfN5Jq0617Vyobk+VmSzuOSZTLg90w==
X-Received: by 2002:a05:6a00:3ccd:b0:781:2538:bf95 with SMTP id d2e1a72fcca58-7b7a299aeb1mr7083430b3a.10.1763029493115;
        Thu, 13 Nov 2025 02:24:53 -0800 (PST)
Received: from [10.190.211.199] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b927826dc9sm1812902b3a.53.2025.11.13.02.24.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 02:24:52 -0800 (PST)
Message-ID: <0df6882b-5ac7-48d4-abf6-470921fea81f@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 15:54:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] firmware: qcom: scm: Register gunyah watchdog
 device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti
 <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20251112-gunyah_watchdog-v6-0-38ad01f8dac0@oss.qualcomm.com>
 <20251112-gunyah_watchdog-v6-1-38ad01f8dac0@oss.qualcomm.com>
 <e5awatsfe6qksjj3z2vqn4fpc6pnlzuezu544f4oiyduappihp@zxgvyvyro76a>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <e5awatsfe6qksjj3z2vqn4fpc6pnlzuezu544f4oiyduappihp@zxgvyvyro76a>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA3NiBTYWx0ZWRfXyR8tJPlWqhqn
 znKhEcGNBctCSP1gi6jm7jIhba+Zkar8hCGXdFgEwrT2oYokZMAYMky8fv6m0R9INxQ52LEVYzE
 tQZG2gf5dl0+DYzHhetZNaUH3cBi/iWjO/bXfKbFUa3GR1NxbAkbI0pSxwU4tZzgZoMiR9YQOMJ
 wUuha4wSEMO6PQ6eTP2SCtNO9penxz6qdBzgXu0nf2xpqkzvk8EiJgLYM+0K15Xl/z6W0AwM1UN
 9CY30d6qjE0bqjX2FjCXjwxzOvSa5Fw23V4/y5Cr26v2Q3HEAqjh+1yuzVATXQr/fkTndp0uUU5
 +pdCtjoIynLIZa7xLjhkg+JwfAUlhU0/pC1HCKNk+t765LIyQ3cfX7KYYb1YPyVcHvhqGhZz5Wf
 XqKUr/L1ThKoudCF6nGqeS/tLL7u7g==
X-Authority-Analysis: v=2.4 cv=d4f4CBjE c=1 sm=1 tr=0 ts=6915b1f6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rIQdjpfwJTbE9Fzp_MwA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: OhdorX0uCX_-AiCfA03xcSll7cqACJIX
X-Proofpoint-GUID: OhdorX0uCX_-AiCfA03xcSll7cqACJIX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130076



On 11/13/2025 1:32 AM, Dmitry Baryshkov wrote:
> On Wed, Nov 12, 2025 at 07:35:20PM +0000, Hrishabh Rajput wrote:
>> To restrict Gunyah watchdog initialization to Qualcomm platforms running
>> under the Gunyah Hypervisor, register the watchdog device in the QCOM
>> SCM driver.
>>
>> When Gunyah is not present or Gunyah emulates MMIO-based watchdog, we
>> expect Qualcomm watchdog or ARM SBSA watchdog device to be present in
>> the devicetree. First, we make sure we're running under the Gunyah
>> Hypervisor. Then we move to check if any of the above mentioned
>> watchdog device nodes are present, if not then we proceed to register
>> the SMC-based Gunyah watchdog device.
>>
>> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
>> ---
>>   drivers/firmware/qcom/qcom_scm.c | 53 ++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 53 insertions(+)
>>
>> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
>> index e777b7cb9b12..3f45cc69ef83 100644
>> --- a/drivers/firmware/qcom/qcom_scm.c
>> +++ b/drivers/firmware/qcom/qcom_scm.c
>> @@ -2182,6 +2182,56 @@ int qcom_scm_qtee_callback_response(phys_addr_t buf, size_t buf_size,
>>   }
>>   EXPORT_SYMBOL(qcom_scm_qtee_callback_response);
>>   
>> +static void qcom_scm_gunyah_wdt_free(void *data)
>> +{
>> +	struct platform_device *gunyah_wdt_dev = data;
>> +
>> +	platform_device_unregister(gunyah_wdt_dev);
>> +}
>> +
>> +static void qcom_scm_gunyah_wdt_init(struct qcom_scm *scm)
>> +{
>> +	struct platform_device *gunyah_wdt_dev;
>> +	struct device_node *np;
>> +	bool of_wdt_available;
>> +	int i;
>> +	const uuid_t gunyah_uuid = UUID_INIT(0xc1d58fcd, 0xa453, 0x5fdb,
> 
> static const
> 
>> +					     0x92, 0x65, 0xce, 0x36,
>> +					     0x67, 0x3d, 0x5f, 0x14);
>> +	const char * const of_wdt_compatible[] = {
> 
> static const

Thanks. I will make both of these arrays `static const` in the next 
patch version. Have taken a note of this so I do this moving forward.

Thanks,
Hrishabh
> 
>> +		"qcom,kpss-wdt",
>> +		"arm,sbsa-gwdt",
>> +	};
>> +
> 


