Return-Path: <devicetree+bounces-239820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8EBC69A3A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:41:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 6A7002AAFA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE503502B0;
	Tue, 18 Nov 2025 13:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dHwaacsz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hcA8Gxqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6697734EEE7
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763473306; cv=none; b=PU5lDN85v76VOzDvmnA5jupVulU+RvDCCNboL5IThNLiL/77NVCJIYx+ZDcD57EBznS04NlPBSMxWCZ60WYH4LbSinxJfIir20GozKiJSYL5fp1SGid7z4BpkuZvfjREaMUPDC+nZcN+yJgSox0+VOQBFfECwDAz1McxN+YCb1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763473306; c=relaxed/simple;
	bh=Zo8K2yUnf9uubFIzjR8kfvtCxSbWPa+RPe4pt+y0sAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bFEZaNWu+BwFs/MXIkDONteluWH6FAOlrk3RjBj1AEWrDMQWKTMcnRKx8VUhDqNyIkRFNQxesspA9ixVye3Vh/JUPxjISKIUkO2tvIX6zpEAb0nV0eK6BrbjdoE/WQx7Z4YTEU/KLiIIMCvqw69F3o8N/6Fi2YVbsBojzqx/cXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dHwaacsz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hcA8Gxqr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fWc62343444
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eqRV2aVVd+Us1s82VVuj58sUCW2v0MN6BPbX+PLpd0g=; b=dHwaacszWgUkcRdx
	gxzK9IXVoA8YvPwRHKvF+U6RtAb6N9x8pA/YCQmWZttBBnx7OncZgz2XGEfSlVXb
	SfSfRrtBxjT5w7cU1dCw3O53XyfLkbRnBufksmBWwLSMrTIyRPR25C4I968eNSXL
	IW0K9mHu9/v/oIFbPk8JDiKrQgtKuX6PBXL0aPTYar2koKrtaRnLp05adGDYcfOm
	dgm0b1CqLovmg7AqWrw1QsIq2lQQ+fmGIoiVYnVyKh0obYS3G1TL+7cZrrGDsOG9
	Fr2OJBrH0azhHQWeghRjIqUCU/0dWDjGQUSUVKfuGnlpWkrs2dr5F1HWVA+RebGC
	X3UXsg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrn16dr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:41:43 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed5ff5e770so13748271cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763473302; x=1764078102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eqRV2aVVd+Us1s82VVuj58sUCW2v0MN6BPbX+PLpd0g=;
        b=hcA8GxqrSOKKj7/ypb9J2J8J91uq72SzSXDSXITtKBKGuOyutVOAhSHPssiq2igzQO
         1d906F9RZUa/oN0KDM+XabQQEHc9I+XQHmFCGPb3rqK6gkbLgRBy6aYhGXoyO5K5mJUF
         L7KjvtC9H4FrMf29naSHOfXxXjsP24jdXql1fwK7dOuNRJ/n1g64TPuJwXcuD2APVk7Y
         qbpCoREN2rtC59J7Zvl0l83YkQiEYHYZVrNnqU2ZgFx/1A6sab4t2MhQFbSpfWImuful
         AQl/VzoJRBVXqBDZHHKqCbexLDg2KwqHoFjtgB5lOZt1I5r+UM0M14aL9cvPxenkMGYr
         aUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763473302; x=1764078102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eqRV2aVVd+Us1s82VVuj58sUCW2v0MN6BPbX+PLpd0g=;
        b=ifCy4fRwng+BVNO8soD5rXPs4IhMdDzIY+vEEzonwed7gCHW1qhYi4wJ3rPnW3hqOm
         Rm4KAFSJIXYk6g4rbVTxzq4lPsDyTWVP6x0AQi3OzbhXjVbu1JFsnCg4RAdT+S3ewl7b
         ZKiFwNHhEnvZURtVIHMoc8h1LcIMmATOdQl1dAHrYDEurJ/RnuUltkpcvmvJl8ySRr4f
         xxkLMaIaOKGSovwioOHuudcHkCHI4bMvfuQ2XyKSNLzwpmq9kMpuhd3Tk7pYmSpUkFBK
         tlIrAgQlM8VUorft/q6BOzOOYNKIe2IpFkkD/VFsZ4BEqMPBfHgtrhzezmdPZWaIAn6u
         DAqA==
X-Forwarded-Encrypted: i=1; AJvYcCVOk9Gnt9YNgAeXLmCupJTwgeQ+SThsbQc/ZZrT/2ZeygkecmXr5HcEgl1W3id098Bs1DD4lxNobtyW@vger.kernel.org
X-Gm-Message-State: AOJu0YyzvKWulwqHes7Es43p+gzHHh5/c2i+TsAhqaRCZDJ2e+iVu67C
	iIfctJVQNN7H0TNyWzbGomNNkimGd10pLi00hFNcWovGmfQC/lRzB4uwTc4+Zw8uj8IQEgKE4Yj
	mTt7TidCPuXymSJE5evDf3mR/czncCdZutoeZZ6Z90FLLwTkfWAvUUmVrJZcF6Usy
X-Gm-Gg: ASbGncveIAcnArEWYlgg3lt/u9vsIui7R7l+7/7kMZGQFZhbsC0Cmai7j5ebWDqiJQ0
	MEJqmPvdmlsRdwMdZzcZlvSwD2LR8EA7CRXBZTqOEpD09UqRU+lr4HlB5A8X6/c2t+24Lgp10a9
	rAZh4BXz6OKQYo+3ekBunBzfRKqQPNAnYj95vgBxHMy5lfw/UGYEGXTEEE8o54oPzsFTUEPy8Du
	Nhk3kWyqmq50FVzUy9G2nN8QAxsXzmIQ5BF/OiUCBdafnlm7nH2mUHRbOAAqjIqDfe5aWWHqoXo
	VsRbS8jJzsGCZbh8bD1UNn+U3G5TjVcE5kJEk76xG45mnVEqnuoG42KqMJHjqRmXsf2wYg4GwLK
	bVmP5D2YWiaEJCn8B9llMGvqjQJbKWBgwYQ5TJ8CzHONOh7QytoOKFj7Wq7PRLOnfZpg=
X-Received: by 2002:ac8:570f:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4edf202fd18mr175516011cf.3.1763473302409;
        Tue, 18 Nov 2025 05:41:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG2L5dm2T1z2wEDohRTNQGcAvzKF98sJtsZ9cN+Q3K8DeR9Z4KdenAu1WYqthASSoj5p8VKjQ==
X-Received: by 2002:ac8:570f:0:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4edf202fd18mr175515671cf.3.1763473301831;
        Tue, 18 Nov 2025 05:41:41 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda8da2sm1322499966b.55.2025.11.18.05.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:41:41 -0800 (PST)
Message-ID: <96673da0-d8be-4b82-9e8c-2263f752881c@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:41:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Douglas Anderson <dianders@chromium.org>
Cc: phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>, Vinod Koul <vkoul@kernel.org>
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz>
 <20251118-pixel-3-v3-8-317a2b400d8a@ixit.cz>
 <d81b0e70-5e3f-4e33-a268-e8b903904e9b@oss.qualcomm.com>
 <d9c91625-a829-474f-9fda-5e39342bb4af@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d9c91625-a829-474f-9fda-5e39342bb4af@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: kV-noFh_ztmqYxKuKi-My6YZGGwLbIpn
X-Proofpoint-ORIG-GUID: kV-noFh_ztmqYxKuKi-My6YZGGwLbIpn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDExMCBTYWx0ZWRfX8PIYP64kuUd+
 hEG84ZBjR/evRpsIKhQreRx8Ii/1leEVuao2cQWGNHaulZ8fL80F9djT30o7k1RMxQ8Qbks9Nsp
 AlbaxXx70pZPIrxpNNaupmkytl3XesTOYrjPFRjllheSTBy2IGncB932a8NhxBNv9eFOtjeYTeo
 YFfrdkZDChMLJDAoOGl1RGQwYRGqrG5QWjaaw4XNElE7xGNmY4ARtROVZpjIAFP42sl5O24weQi
 dTbgJhlAR4UxG1uRyO4pRJZgXidaMTNs9k95FjbtoFfRtyqJqjeRia0AAcJslrtp+bMHQaDqwlP
 Zsmv/74xKvSJgmKxMBhL5RRhJf1ZZquJe3xT5oWxb6FK3eH6RVNKscU0phuevTnH9Appikm6+bX
 WkVqF3Y1XSkSldRvi0OreE7AxvK0+g==
X-Authority-Analysis: v=2.4 cv=L+kQguT8 c=1 sm=1 tr=0 ts=691c7797 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Oh2cFVv5AAAA:8 a=wtcFHR801LI_0YcmPCAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=7KeoIwV6GZqOttXkcoxL:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180110

On 11/18/25 2:31 PM, David Heidelberg wrote:
> On 18/11/2025 13:32, Konrad Dybcio wrote:
>> On 11/18/25 12:30 PM, David Heidelberg via B4 Relay wrote:
>>> From: David Heidelberg <david@ixit.cz>
>>>
>>> This adds initial device tree support for the following phones:
>>>
>>>   - Google Pixel 3 (blueline)
>>>   - Google Pixel 3 XL (crosshatch)

[...]

>>> +&adsp_pas {
>>> +    firmware-name = "qcom/sdm845/Google/blueline/adsp.mbn";
>>
>> Sorry if I asked this before, but are the binaries identical for
>> both devices?
> 
> Yes, there is only one firmware, which crosshatch has different, but all listed in the initial bringup are used for both.
> 
> To add, crosshatch was somehow not that popular device, so as I've been suggested in u-boot discussion, I would love to keep blueline everywhere.
> 
> One exception is LineageOS kernels, where they go by name crosshatch, but again for the both phones.

Google seems to suggest crosshatch is the 'base'

https://android.googlesource.com/device/google/crosshatch/+/refs/heads/main

Ultimately if none of the Googlers (hello +Doug) care that much, it's up
to you to choose

Konrad

