Return-Path: <devicetree+bounces-250716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 304E9CEB432
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C537301516B
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459D430F95E;
	Wed, 31 Dec 2025 04:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kXmaVh8r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HHaT3Q/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A998B25B1C7
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767157057; cv=none; b=uTESDQ9CKl7i7vL5P8iJQ9m624QuY67SaNHGqdAUuGtqLKi3yjC7bAWSVLkeeTIKdSTnE9yz4OsLVlJ+2Xusd086QAaIj70Xqqz61axDPQ/b76JeFz6F+/yN3pvKOi4MR6WwoMloLUImhfpgAscazG+D2vjgNY428vVbU3csbaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767157057; c=relaxed/simple;
	bh=nRnDSxaO0a1stVgF8xWHRpYYW1TnOZwqY8sNVXpPqaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vEd0rGmDRU3KNyi15eJt9L69G0Ht3oGc0DEINF2GY+niQvU/8K7zuy/UyRJr9eFPgonyCFVEVpzGoP65UeTycp8g0L3Z+qaFhuezbUXGV5W/hXiWkYYW1SaS34fICcKfVbkUI6PigLuL4g/2HCKbjhICXgBG1Q2OaC2ANQ3YsHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kXmaVh8r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HHaT3Q/v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUEAmWE3541042
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ks5UXgo+vhH090NmXm3avHA2qXaqWvSkBGaUCGSgJBc=; b=kXmaVh8r4UkcesTY
	qc0YJrjzg+lnquHfI/MDmOhiwegbRk1yGdrxUJgpYbNv4L52c5t1qgQtOy6msbnD
	MhSMQXF9p9itFApOgbX9xOTkm9kDWaUVzLY+LNxTrlEXB8Q3obv/28K0l0ia/+Nc
	sbRAIb3xWo7r98qv4JhkPG89ztOTX/5wORw5VPdjC7mYZYCrgnjC/oOjLLZugYoc
	lyFiWp+TaniT23FPw8K278WEcAJS036mLYm3G5neKC1nt83XHswfuWtKIQEAqNr8
	yP+h1fCr6A+HB5aOo1V2GYXzaEHHSogfjDaK50vx3uPi4x9r7OiJ9bvCXQi0ncK5
	3TtfNA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88yjs3e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a31087af17so209255295ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767157054; x=1767761854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ks5UXgo+vhH090NmXm3avHA2qXaqWvSkBGaUCGSgJBc=;
        b=HHaT3Q/veOO479VKBRqrKO1dEbBq7wRX708kIZd8Q4jvdEikQOSJz/SmZ1xvejgv1n
         ca3CvvELquKuerJ0g5DGqfuuWmNzFOowLOeYMLhHcHqV7RqH3N9wkr2a6AUnUnJ8A3kj
         rO4oAfDFY+DMhka43VMOwOzOihB5igSWN00c7DE3v+smy+6gCcW61SDIj0uEvrbsf5zY
         qFnBNmckJPirxdPUNrHnp1NpKVS4S4zrS6+HnyxhhLAK+psTJdypnFUR2qErELnPWRG8
         LkmS1szdSGxq7l/uDPPUb45eErL5F2q4cOFYNumCwNUImJIUDB4uarggkGlPN/ocurJq
         8wYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767157054; x=1767761854;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ks5UXgo+vhH090NmXm3avHA2qXaqWvSkBGaUCGSgJBc=;
        b=FhFRkdK8RBboEdn644pEyQwpc+hUpu+N+Iml41zcclhEyjAAUHkfgk/Td9IKYbdFyx
         blRW17G4oddkdz3jJrvNfqr5H9RuGLA9MCIrHkafBx0obtwknnxyLokwKixEB0rrnYmV
         HgK3SnxeI7hZ9OpXa3XXwSj3sJMbPebtTPVrViLkru7aqe4OFyvRrQrb1Z7aF0cbHwVb
         5/mXKd46+y11xOb0iPXtOzQRf+4GLfRh1L3NKK53bgMDu1KhlkNtdUvmF13I4ass7Qtu
         6zwuvlMULxbO/TtftMzzk8tx4VPTW6VsFTaKn/9JE4eQd1elCrW0yFtZn21XSFpB41bz
         S0iQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8ZneiDwHOHPlEfj32/Wz3f3ThFV8kbseuLMnoPpggdJTgfIjYUYZclxR04i8cCds4tGhV/LcvfySr@vger.kernel.org
X-Gm-Message-State: AOJu0YxQEHNrbI+LxYd2vfp9H7Hy/vr73J63N6VXdiYl0xXFRgmYGMmu
	J2fCSLuE9E5yNOTutwSMxV9rpJASz0NmUHoNmaiOXY+Bw31asd+rCG46mWwp/eHoNR+7Ubj6DEX
	5a8u9foGVSW0nHcjogOc3aHW1jVy5jibW/1givkoVr7KjKmp3RngSJFHi1qZu4isk
X-Gm-Gg: AY/fxX7W7T35iXgeml5Z0DfLvxqfoyKm5smuMlptX6S0DTOHEvPtvKAEfTUxGE9JZis
	5Xd5zhIHu+Wb5oK8HzgaI6sEsO3ymwP7wXw8DH47BEyjWVdLxZbWDYQfH3/pg6iow8KPlRyuuB8
	KK5VQ3yRAIHNIDN6c45UCNd1Iea45CBjEEoFIlOMr8PTczWYel5pksAM/YZF0D8Hb6gRDgrlSC0
	f36q4sxX8M054NDeqEbVn1URgHlrpFV3YvrNnaddS2/ELXlBtvXbW3GwXB9kdo+mou8+CVs9FrP
	U/5eJ9QmBVUibWwC84quCBfK4j814++7wsGjY7qBtxjUa+Mnvqew32S1T2r+LfUs+eodOTwq6TA
	n1X/UZJ48ynpragNl4kKYz7CHaQLKtY+Wp1W5W4Pn
X-Received: by 2002:a17:903:1a85:b0:2a0:acca:f3f2 with SMTP id d9443c01a7336-2a2f29370d3mr326717945ad.48.1767157054174;
        Tue, 30 Dec 2025 20:57:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGn3vmxsqgSirQ9sc3GALEuNjn6LQqOGszUghtGapmtZGCmqf6QjnlT2OI60YLyn0Ad5nuvvg==
X-Received: by 2002:a17:903:1a85:b0:2a0:acca:f3f2 with SMTP id d9443c01a7336-2a2f29370d3mr326717625ad.48.1767157053701;
        Tue, 30 Dec 2025 20:57:33 -0800 (PST)
Received: from [192.168.29.239] ([49.37.133.221])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c7263a3sm28803816a12.32.2025.12.30.20.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 20:57:33 -0800 (PST)
Message-ID: <d437486c-b782-48a3-a7ab-665cca769c79@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 10:27:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/3] ufs: ufs-qcom: Add support for firmware-managed
 resource abstraction
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        quic_ahari@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shazad Hussain <quic_shazhuss@quicinc.com>
References: <20251114145646.2291324-1-ram.dwivedi@oss.qualcomm.com>
 <20251114145646.2291324-4-ram.dwivedi@oss.qualcomm.com>
 <avpwp57yqkljxkld7dsqdsc7m26wvmwwhvph6ljv43yjjdyqof@szlfmik6betd>
 <fcdeea3b-f20e-4b6c-9c64-5479f75b05b9@oss.qualcomm.com>
 <64hjdpdc745gazdzz7vuauhl5cohbfz2cgxb2yz2bt6mpezyb7@i2fyze7ozbc4>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <64hjdpdc745gazdzz7vuauhl5cohbfz2cgxb2yz2bt6mpezyb7@i2fyze7ozbc4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=6954ad3e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=+/UKhaqxHMWBDOh8pPecxQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=n3v4BAOmL911Yo7HB7gA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: x_teyCxtWrtqSmFw5wX_ACLpDTm21li1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDAzOSBTYWx0ZWRfX9QwNJaM4OGcO
 qNh44UCQr6W9xzPyZj1FNTGkPeccxq9rcEERpBNqqsigdbLbOMYRHqu8QX/b6nIEbG/8wEVQ6ni
 VHMFMjrRY8sjrXwZaHvzVryiTmFVNqd0S2W1LRPcKmBob2XX6OHyNBCb08kPCm+A64Muu4aBk7J
 dUTFZJzFsYFiLYI7TOuPUUlsdgq1TQLsWaN6xKBsTuDULOGOLN3iD05BplA9I5XeyNClhM9Zvei
 zLTqVBUk3dX1CuOQU1ZJn7Ezq3d/L8uhPMLzB2gD5icutSzNuhrjXuhOY2J3Go0OzhYxm/VWLE9
 8y72N5ipwYi48cLwBdSIuJI02ByaHp9Jyo0mBS0T5RRC6eL3dI45ZR8pdwoAA6Uop9QV9516HGU
 xeU5igvorwn6ieNKpcq+pILGhPkBuGdHrgP+ag2pfYUWV2/hRxO92ESGGO4LcCWXDGV0CpYblZg
 OhrODG9t3jez0OUZdmg==
X-Proofpoint-GUID: x_teyCxtWrtqSmFw5wX_ACLpDTm21li1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310039



On 12-Dec-25 6:15 AM, Manivannan Sadhasivam wrote:
> On Wed, Dec 10, 2025 at 09:33:08PM +0530, Ram Kumar Dwivedi wrote:
>>
>>
>> On 20-Nov-25 11:23 AM, Manivannan Sadhasivam wrote:
>>> On Fri, Nov 14, 2025 at 08:26:46PM +0530, Ram Kumar Dwivedi wrote:
>>>> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>>>
>>>> Add a compatible string for SA8255p platforms where resources such as
>>>> PHY, clocks, regulators, and resets are managed by firmware through an
>>>> SCMI server. Use the SCMI power protocol to abstract these resources and
>>>> invoke power operations via runtime PM APIs (pm_runtime_get/put_sync).
>>>>
>>>> Introduce vendor operations (vops) for SA8255p targets to enable SCMI-
>>>> based resource control. In this model, capabilities like clock scaling
>>>> and gating are not yet supported; these will be added incrementally.
>>>>
>>>> Co-developed-by: Anjana Hari <quic_ahari@quicinc.com>
>>>> Signed-off-by: Anjana Hari <quic_ahari@quicinc.com>
>>>> Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>>>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>>>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>>> ---
>>>>  drivers/ufs/host/ufs-qcom.c | 161 +++++++++++++++++++++++++++++++++++-
>>>>  drivers/ufs/host/ufs-qcom.h |   1 +
>>>>  2 files changed, 161 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>>>> index 8d119b3223cb..13ccf1fb2ebf 100644
>>>> --- a/drivers/ufs/host/ufs-qcom.c
>>>> +++ b/drivers/ufs/host/ufs-qcom.c
>>>> @@ -14,6 +14,7 @@
>>>>  #include <linux/of.h>
>>>>  #include <linux/phy/phy.h>
>>>>  #include <linux/platform_device.h>
>>>> +#include <linux/pm_domain.h>
>>>>  #include <linux/reset-controller.h>
>>>>  #include <linux/time.h>
>>>>  #include <linux/unaligned.h>
>>>> @@ -619,6 +620,27 @@ static int ufs_qcom_hce_enable_notify(struct ufs_hba *hba,
>>>>  	return err;
>>>>  }
>>>>  
>>>> +static int ufs_qcom_fw_managed_hce_enable_notify(struct ufs_hba *hba,
>>>> +						 enum ufs_notify_change_status status)
>>>> +{
>>>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>>>> +
>>>> +	switch (status) {
>>>> +	case PRE_CHANGE:
>>>> +		ufs_qcom_select_unipro_mode(host);
>>>> +		break;
>>>> +	case POST_CHANGE:
>>>> +		ufs_qcom_enable_hw_clk_gating(hba);
>>>> +		ufs_qcom_ice_enable(host);
>>>> +		break;
>>>> +	default:
>>>> +		dev_err(hba->dev, "Invalid status %d\n", status);
>>>> +		return -EINVAL;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>>  /**
>>>>   * ufs_qcom_cfg_timers - Configure ufs qcom cfg timers
>>>>   *
>>>> @@ -789,6 +811,38 @@ static int ufs_qcom_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>>>>  	return ufs_qcom_ice_resume(host);
>>>>  }
>>>>  
>>>> +static int ufs_qcom_fw_managed_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>>>> +				       enum ufs_notify_change_status status)
>>>> +{
>>>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>>>> +
>>>> +	if (status == PRE_CHANGE)
>>>> +		return 0;
>>>> +
>>>> +	if (hba->spm_lvl != UFS_PM_LVL_5) {
>>>> +		dev_err(hba->dev, "Unsupported spm level %d\n", hba->spm_lvl);
>>>> +		return -EINVAL;
>>>> +	}
>>>
>>> You should consider moving this check to ufs-sysfs.c where the sysfs write is
>>> handled. Failing due to unsupported suspend level at the last moment could be
>>> avoided.
>>
>> Hi Mani,
>>
>> We have planned to support other spm levels also in follow up series
>> once the basic UFS SCMI functionality is upstreamed.  This spm_lvl check
>> is intended as a temporary safeguard while we only support SPM level 5. 
>> If you'd still prefer a change, I caupdate this in the next patchset.
>>
> 
> Please do it now as I don't see it logical to error out in suspend callback.
Hi Mani,

I have addressed the issue in latest patchset.

Thanks,
Ram.


> 
> - Mani
> 


