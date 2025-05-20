Return-Path: <devicetree+bounces-178877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3ACABDD8B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:43:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DDB11889E2D
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 14:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7913824E008;
	Tue, 20 May 2025 14:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FFryM423"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E130324BBF3
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747752074; cv=none; b=VsbpQvHust/za4YU5dFGvW3JnRGvGHoUEt5Kpq1dEfZLZ1XfnYV3zROwcnNUfAKgScyTUwU0Nx3ftQ1AQ/JK9Bf4PSKG4bHY2QeHHcOu9jx1KNrqSdUqnX+/bDr67s3CaYZ6FXuXvZNS3ZOEsZIJsPps0ck3OZ79ymUEYBbgbEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747752074; c=relaxed/simple;
	bh=qFi0PJjY/GA1ckQYhEy9BBKu3FmQYIbZut6fOgyE9AM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sK4UCfaTH6L/mTlrm6qV+97PAIgojXFGFIlbXbH0YU3rvl0LG1dA9b7Kk3kRRe4A4oVwbQAi7Es3aq+gYCBUVvx/FrCupysn71heuj/GqV4eTcGKg150+9lzJqgVkJNk+xK4sQBd2hLKu3jLzvVavMRDJ1PO6QTOnHyWt1f0DA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FFryM423; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KDqh3T014108
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:41:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5mlNLJPj3keKy5AFMk6a+E68XXmDj4hPUVAPocc0XyY=; b=FFryM423ca3nRm9G
	9EWVIkfKHYKFJf3qZI6nG6kJEqZwqnhOjG5ve7C+E3K9PEn2SjplGrhAtR883N0U
	T9rh2oHx/HQSR3Cbg3yd6nd8QXRHfd6mT/4J7C0sribVshIsoKtvXGMLpKO8Xt5o
	rhKZZuNM0xh7n8tdy5/T0T5/OhKIxJXIpUOAZCBt3Nshlv8/k9+TrIrh9ZuALrMF
	rLLscKbHuSIy9jpqRkCsupsOolox2rbRg+i8if/rN237QEKxqMlAYmSNMEBEE0zr
	op00AaGrC9jRtb28Z1w58E71RnP/K4nxHBaH+E7OiBdMHflSDKV9dNUjNU/uP98X
	F9BBPQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnyr30w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:41:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54734292aso163458085a.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 07:41:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747752071; x=1748356871;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5mlNLJPj3keKy5AFMk6a+E68XXmDj4hPUVAPocc0XyY=;
        b=w9sPZ6aUo1mR6wcZSIS8t7L11jjSqXIW1adxj+ZbN6Y6EGA6phDCdQUzcA/XCqQmuv
         s4B/Gr9ivhCOfguJJhyo1lXacFo6KDbeaxGEoIZOmf5kzNgn7fU8qIGQ1H0gzGESf796
         Gne+o8YVAKvOZKt8v2oQDCLpYnbHtG00tDsYe1uEHiYhOfjISSSzxn72tpiM058HaQMQ
         Kpepdtx6bU4iFJy+0W7y6jWPMXhWtYpcGgERYS1U+N7bFPrR/R2ssiNzJksNVde8L5/P
         1s4rZEWgYNYvu1EqRK0veQz3KgC5zuDeFQZ1saiYqxK4clJoB3PkHReEx0yqBCX2G965
         NtWg==
X-Forwarded-Encrypted: i=1; AJvYcCXZhuf7vJZp79dPjr7Q2Y72usnJs/cpDhKA/HwqopoHUPSydCS2Xlxg/Dp9Vayd+E0K6SdZ6kLJEDy0@vger.kernel.org
X-Gm-Message-State: AOJu0YyfOTuHaFU0ChE0DbvgYHwUKXER5p2pQEwLmnrNDQLl8+E06Bfj
	dzTHhoAe0Zac1xZG1VC0Q+6hb0pWQYkM2EPgfMsXKy86a2a3Fx1Ebghqg3YN0RBCv0iaDwLK5gl
	UjG5NZLwgpSfDCW+f9EXKN0SezmNO5v1Bh6VCpHio6YBQ4gmB9LN1Y4yKa7aUY/vO
X-Gm-Gg: ASbGncuAOtSJgcaLToV24RIXa2yJ7oPNSgR8y/q1izfXxxjeoJ3vmWjNx9AYXwfvK47
	wO+BFfvQ8CExStii8Do0cHI8D4Iol+yOviqczPKPFdG7aDuNBeyZbzNJD3fxbUtfDw7ERgpYrRt
	3dINHNwZXcDIo+Gw0ZIqHaPi+cBHYbRjOQCG9zzCrujeNmRERdPUkBrglHu2MfCsEfnrNaLfhLZ
	tDs+4kbk+PBbG5yPtogQZUiHh0J+HXDqFCkZPmBH88EfTVP0RqRfpk7w9lYjm4g9uhLbetcOuAC
	nLiMR3rGVLxw7rseAyYc08O9ZU8JkJoXDo8KTY+8W4a5wvLR3lyj/RdUbjPG/nGm4g==
X-Received: by 2002:a05:620a:240c:b0:7cd:4bd2:6d5a with SMTP id af79cd13be357-7cd4bd26e5cmr922855385a.5.1747752070701;
        Tue, 20 May 2025 07:41:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPo77pYRE2NGo3yezIOzCTbQgbl0QAy276sr1Zd5knvtytt7Q4ECIBHJ/yj8osKF+sAF/G1w==
X-Received: by 2002:a05:620a:240c:b0:7cd:4bd2:6d5a with SMTP id af79cd13be357-7cd4bd26e5cmr922854185a.5.1747752070132;
        Tue, 20 May 2025 07:41:10 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d04aed7sm742444866b.9.2025.05.20.07.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 07:41:09 -0700 (PDT)
Message-ID: <c9b1422d-46f4-467a-b6c4-27eecae95897@oss.qualcomm.com>
Date: Tue, 20 May 2025 16:41:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
To: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com>
 <20250429-ddr_stats_-v1-1-4fc818aab7bb@oss.qualcomm.com>
 <b3119bef-d045-467b-91cf-37fe6832ff63@oss.qualcomm.com>
 <890b9e41-d5a2-4df3-bb21-71642b4e6410@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <890b9e41-d5a2-4df3-bb21-71642b4e6410@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDExOCBTYWx0ZWRfXzjUZm42Mzq/z
 0cNeHmeaXzqYSYHWTCgaVlzLoFOturU24PWdIMJZuH+aIV9DZ95nJ+hY6vgKg/kNv1FjI+zy+ER
 KYi3abfvKy3GZL1Ecbm+NbKlfVFpAuu01dMwR9OLxRV3bvGVP22+y8jGgCiAtaLDaXCaHeORYEN
 QgFQD9UN9Ij2wEzqqmblcAFGeXgQvnzNQGsu4JIG2nWBjPJx4FBKLxVSA+f9cZzKnQEOLzal4go
 63LJcYnOb7VGEWjQHjbrcKd6DsxGQyH/fuPUzwa7ZOMN3Jbg5lbJ3wprcj1Tw0W+kfUbc5DfED1
 C6t3BtIJrWOpSeEVI4XFVnjZJXxOxYrUuzi2GrdlWoEHf6HqJvk09jLmZG8tBVRt6wtk9xtJ+sV
 O6CaZKdGUcN7whmzVaODb9d9qQRH69T9RWed5vHDx7Uj+wPSvMEA4403XSzU4lI5MSjmSwgv
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682c9487 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=1C6ALYQBLxPpYy_y2mUA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 4GxUw1CFPF2jTZ0M-N-j3voNY2KhtubG
X-Proofpoint-ORIG-GUID: 4GxUw1CFPF2jTZ0M-N-j3voNY2KhtubG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200118

On 5/20/25 11:59 AM, Maulik Shah (mkshah) wrote:
> 

[...]

>>> +static int qcom_ddr_stats_show(struct seq_file *s, void *d)
>>> +{
>>> +	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
>>> +	void __iomem *reg = (void __iomem *)s->private;
>>> +	u32 entry_count;
>>> +	int i;
>>> +
>>> +	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
>>> +	if (entry_count > DDR_STATS_MAX_NUM_MODES)
>>> +		return 0;
>>
>> -EINVAL
>>
>> Konrad
> 
> I kept this return as success from details given in commit message of [1] 
> which made the qcom_subsystem_sleep_stats_show() function return 0
> in order to run command like below to collect the stats without interspersed errors
> grep ^ /sys/kernel/debug/qcom_stats/*
> 
> The same may break if return error from ddr stats too.

Stephen mentioned that the errors may have appeared because the subsystems
may only populate data after the probe of the stats driver.

I would assume and hope the DDR stats aren't affected by this..

Konrad

