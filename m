Return-Path: <devicetree+bounces-245632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2909CB369D
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 17:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63BEE302C4C9
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:03:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAFBA27EFF1;
	Wed, 10 Dec 2025 16:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cDCfmMeA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LEzwAJ/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B281E9B1C
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765382599; cv=none; b=kraoZ8a4KKzkaJ648HM8JOlr1SxBaeyRLbBGpJZZLc/UiPPD75SrYXEDNfzAfpC32xMPWFPm+EsAyD9qC58he+PAFqzFHiQqKjaLUUTcCxjaqNzPjCLTI2nKhSu3o20Mpzi5UPn5zPVMwZqaUWSd1BGtbfVuRRi1wAHgHmOC42U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765382599; c=relaxed/simple;
	bh=vDLeDjze3CAJFQxJiJhVhF9noa1V+GL6pWvLKLpaGKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V1GfRZianlj7apqwxMXZaBq5JPBoL7MEyCriVLxQ9PChyfKuc5yWwy1cnQxG3wsh8z0DW2sCRHPvI9UlTkOkbmwgoW4mYRQTc87WwpJ/ZIy4XVvDEhoT/zOwBDtKngCkU39Di9hBpoLF+764ULTx7ILPMwolwVqaz8RDOgT2Ie8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cDCfmMeA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LEzwAJ/T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8eT2O2669763
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vw24HSksNG8hCF7jWBesuZPSi2PEJTTzm8y1J89uLNU=; b=cDCfmMeArCuEhhwH
	M4coyoXROFPv5P+jJSbitnSLDfon2As27YGvFW23TVFCDYYRCgvoFVVbjrnebTi1
	MLRWNNTs58iuj4goVL3jKmerVn3Vr2sie62svXjIzDHwkiJr7Ffa7fYEHOSvPtcb
	/DUfBhQcC5kltD6vLZqOG3AzEwgg28pVz9Ls/bHoMp3FeFoJxewps3tv+asFFzC8
	uEG7jJvRgpvwAlMGuDZTBdbhciQWpXiASuXB9yP48Jw+4SrrV5u5qQTOvkxvjhiB
	KEXPyzDwqLLDWCWEgAxHO/+EWTrjAriakJDgSt+hVKBKO20YNY5pyEA0scHHCFA0
	bHfU1A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay4ykhed8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 16:03:16 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7d481452732so11762716b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765382595; x=1765987395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vw24HSksNG8hCF7jWBesuZPSi2PEJTTzm8y1J89uLNU=;
        b=LEzwAJ/TiZOTf/7XvellJRJy/ZovPz+sSsucSBEeitIs70vi/lRdc4fbtTKHgTgPI0
         wER4oOXLmGBqrcnQkgVNMPP31mnS8gp8CzPv1BSXKnEWAgqbZtEbAZ462P7mhmUfP9pl
         N82y/rGy/snvrJDZBo5Ij0prValZkDDxbN/UKfpbKK6qs+m5q1f52oGAmvCjWJGw/DDq
         N4PzdMUOWQNrseRTD0fIv0ITF5TWR3OHsWgJfdIrqDmwIPFPT3Xc+YgiIP4b5YAkS3zk
         5a81n7OYLBwdx86l3v4nE5TH9X3gWBw/jZuxwCI4eJ18k9VLJ7nsN0vtwMB6FFPN0LHh
         kM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765382595; x=1765987395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vw24HSksNG8hCF7jWBesuZPSi2PEJTTzm8y1J89uLNU=;
        b=no6bfSltwLBiFaVGjPqki0+5RLbEn8GzY05bU6gaQ/j3AOr82c6kdXuOblq4eDbl2R
         DwuACWdGpJQcZEz5AuMYFpPLde9crR6wFVZCp1IsK9BLZh6D/jrj7BG9eoRN/u3X7/3t
         NBqiMqw+adq+ZjlNUqKfG9mYZVGrDAQM1x/ws8TqneM7mDEzQfwNX4YGKQ2m6UtEzTg8
         JH6QjpY725448lL7nWmT140mDzWxRAJ3zyfpjy6O25m9yBx+mEQvqAI0HI7Bu4HscWpu
         6Mwc8g6WZxgbGztqly0SzXj69U1rMYL87tnox+KCywu7W2Ye5xUHbwwRli0B8d6a4HHM
         Rg/w==
X-Forwarded-Encrypted: i=1; AJvYcCWxT1+f01/2Fx1tKsGj3Migjqnfo+r/rqXI3bCBMaAD07tcwSQFfE61YSbiDzB3zvb3MJglAzglqxQP@vger.kernel.org
X-Gm-Message-State: AOJu0YyfiTaeIXWBAHM1mWUeL2RSdHkJ06EL2xRkoTKmJA3tgZvVuUji
	umsWchpLupqRRq1m2dViOqFefSWWWqTyDhJh+bQPionVHkZC8SxxnwI8pSg+H5s8rNOjmaLNdai
	ldJY5T04yzP36mqbUQCqsmAgmRPX8DxHv3k/4C87XTv/aPug6cITKtJCQIcDp+emy
X-Gm-Gg: ASbGnctWxPO7TjNLi/Wb2Ht3JjA8nT5W9Dz8M0k09lQO51GR+p0Q3nfmdO35jtbpC2J
	uWwW5/dqkbM3nkk+Cz0qe5t0jlJbQxZ5/kuUlJQrpPPcnlQkcwQ3WJo8GaDLpd/7xEl1ABMP+Uz
	ZEIaKWtj0XUT437Q2nO2Q0UK1l5oqn1p//A/gXGcmSCSCrmkqZ8vTbV76C5j4Tgh3eg099+xVt6
	XgcRtrEc/1AZePMUvYztqXPTWuPs7Qj2mqAIvEPiFHK7gVLI0lQojIVBtOpAyHPyQzBseIxAZok
	auDoT+jDc6A4eAoP+QjLZ01trJz8z457VvozvGTyF+9h66nZCUdQ/6goQSULfPqUO4JhFUhKpqT
	C21z1Gg4BQEp7wA9ESiFWSApTSDbygfWKYz+s
X-Received: by 2002:a05:6a20:6a13:b0:366:5752:ef2b with SMTP id adf61e73a8af0-366e0beff24mr3372078637.21.1765382595001;
        Wed, 10 Dec 2025 08:03:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGokOFQ6UXMOS/HXUhbTwelEbn54XlnOKk+gQDepU/9nQj5iAW/cvObO5HWJHu0C8J7lZvUgg==
X-Received: by 2002:a05:6a20:6a13:b0:366:5752:ef2b with SMTP id adf61e73a8af0-366e0beff24mr3371982637.21.1765382594111;
        Wed, 10 Dec 2025 08:03:14 -0800 (PST)
Received: from [10.218.4.141] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a14f4101sm18830166a12.19.2025.12.10.08.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 08:03:13 -0800 (PST)
Message-ID: <fcdeea3b-f20e-4b6c-9c64-5479f75b05b9@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 21:33:08 +0530
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
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <avpwp57yqkljxkld7dsqdsc7m26wvmwwhvph6ljv43yjjdyqof@szlfmik6betd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: dLwWM8pORhhSNt7ty881echSQmjRjeQE
X-Authority-Analysis: v=2.4 cv=Mfthep/f c=1 sm=1 tr=0 ts=693999c4 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=jIFDL7pEgysyKnD7NMIA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: dLwWM8pORhhSNt7ty881echSQmjRjeQE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEzMCBTYWx0ZWRfXyRBVAwIqc6Zj
 /AJXU4tUAbuwvahvCK7ZBmX8MzSxQ2iSWSbHNEBIN8HdK02GeJ/wQw670eCg/xxrqTz75cpLVOX
 34zPYw5cltYFLqVaHXMpSExrkxyvknlmOhalw8gm7IBqpiEGVnvK1UArhm2c9gifs4o7PJx7lcQ
 cYH6HkGNxkGxaBMUOlbeeBZQHjfw/Usg0DKcdTaLY3y0ye7x4Aq+kuhXm5mvGxtSNfsVpVSpHpa
 guTjvlzokvvTyuEpmON6i9u4B4MFYc/sB/MF5Q5//681sJa4dtULvMyTVmS8OJVBXEy+DtjyQYe
 gsdl1gglOxWF7pBpnLiK4yNydq1zXxdcOwa8+jmeLhwa/yqorDa2DYbxI6sgm+lg9/Q/87yfHNy
 e8pnv17lAiC+eQgr5iu9009Cbw4RYg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100130



On 20-Nov-25 11:23 AM, Manivannan Sadhasivam wrote:
> On Fri, Nov 14, 2025 at 08:26:46PM +0530, Ram Kumar Dwivedi wrote:
>> From: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>>
>> Add a compatible string for SA8255p platforms where resources such as
>> PHY, clocks, regulators, and resets are managed by firmware through an
>> SCMI server. Use the SCMI power protocol to abstract these resources and
>> invoke power operations via runtime PM APIs (pm_runtime_get/put_sync).
>>
>> Introduce vendor operations (vops) for SA8255p targets to enable SCMI-
>> based resource control. In this model, capabilities like clock scaling
>> and gating are not yet supported; these will be added incrementally.
>>
>> Co-developed-by: Anjana Hari <quic_ahari@quicinc.com>
>> Signed-off-by: Anjana Hari <quic_ahari@quicinc.com>
>> Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
>> ---
>>  drivers/ufs/host/ufs-qcom.c | 161 +++++++++++++++++++++++++++++++++++-
>>  drivers/ufs/host/ufs-qcom.h |   1 +
>>  2 files changed, 161 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>> index 8d119b3223cb..13ccf1fb2ebf 100644
>> --- a/drivers/ufs/host/ufs-qcom.c
>> +++ b/drivers/ufs/host/ufs-qcom.c
>> @@ -14,6 +14,7 @@
>>  #include <linux/of.h>
>>  #include <linux/phy/phy.h>
>>  #include <linux/platform_device.h>
>> +#include <linux/pm_domain.h>
>>  #include <linux/reset-controller.h>
>>  #include <linux/time.h>
>>  #include <linux/unaligned.h>
>> @@ -619,6 +620,27 @@ static int ufs_qcom_hce_enable_notify(struct ufs_hba *hba,
>>  	return err;
>>  }
>>  
>> +static int ufs_qcom_fw_managed_hce_enable_notify(struct ufs_hba *hba,
>> +						 enum ufs_notify_change_status status)
>> +{
>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> +
>> +	switch (status) {
>> +	case PRE_CHANGE:
>> +		ufs_qcom_select_unipro_mode(host);
>> +		break;
>> +	case POST_CHANGE:
>> +		ufs_qcom_enable_hw_clk_gating(hba);
>> +		ufs_qcom_ice_enable(host);
>> +		break;
>> +	default:
>> +		dev_err(hba->dev, "Invalid status %d\n", status);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>  /**
>>   * ufs_qcom_cfg_timers - Configure ufs qcom cfg timers
>>   *
>> @@ -789,6 +811,38 @@ static int ufs_qcom_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>>  	return ufs_qcom_ice_resume(host);
>>  }
>>  
>> +static int ufs_qcom_fw_managed_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>> +				       enum ufs_notify_change_status status)
>> +{
>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> +
>> +	if (status == PRE_CHANGE)
>> +		return 0;
>> +
>> +	if (hba->spm_lvl != UFS_PM_LVL_5) {
>> +		dev_err(hba->dev, "Unsupported spm level %d\n", hba->spm_lvl);
>> +		return -EINVAL;
>> +	}
> 
> You should consider moving this check to ufs-sysfs.c where the sysfs write is
> handled. Failing due to unsupported suspend level at the last moment could be
> avoided.

Hi Mani,

We have planned to support other spm levels also in follow up series
once the basic UFS SCMI functionality is upstreamed.  This spm_lvl check
is intended as a temporary safeguard while we only support SPM level 5. 
If you'd still prefer a change, I caupdate this in the next patchset.

> 
>> +
>> +	pm_runtime_put_sync(hba->dev);
>> +
>> +	return ufs_qcom_ice_suspend(host);
>> +}
>> +
>> +static int ufs_qcom_fw_managed_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>> +{
>> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>> +	int err;
>> +
>> +	err = pm_runtime_resume_and_get(hba->dev);
>> +	if (err) {
>> +		dev_err(hba->dev, "PM runtime resume failed: %d\n", err);
>> +		return err;
>> +	}
>> +
>> +	return ufs_qcom_ice_resume(host);
>> +}
>> +
>>  static void ufs_qcom_dev_ref_clk_ctrl(struct ufs_qcom_host *host, bool enable)
>>  {
>>  	if (host->dev_ref_clk_ctrl_mmio &&
>> @@ -1421,6 +1475,52 @@ static void ufs_qcom_exit(struct ufs_hba *hba)
>>  	phy_exit(host->generic_phy);
>>  }
>>  
>> +static int ufs_qcom_fw_managed_init(struct ufs_hba *hba)
>> +{
>> +	struct device *dev = hba->dev;
>> +	struct ufs_qcom_host *host;
>> +	int err;
>> +
>> +	host = devm_kzalloc(dev, sizeof(*host), GFP_KERNEL);
>> +	if (!host)
>> +		return -ENOMEM;
>> +
>> +	host->hba = hba;
>> +	ufshcd_set_variant(hba, host);
>> +
>> +	ufs_qcom_get_controller_revision(hba, &host->hw_ver.major,
>> +					 &host->hw_ver.minor, &host->hw_ver.step);
>> +
>> +	err = ufs_qcom_ice_init(host);
>> +	if (err)
>> +		goto out_variant_clear;
>> +
>> +	ufs_qcom_get_default_testbus_cfg(host);
>> +	err = ufs_qcom_testbus_config(host);
>> +	if (err)
>> +		/* Failure is non-fatal */
>> +		dev_warn(dev, "Failed to configure the testbus %d\n", err);
>> +
>> +	hba->caps |= UFSHCD_CAP_WB_EN;
>> +
>> +	ufs_qcom_advertise_quirks(hba);
>> +	host->hba->quirks &= ~UFSHCD_QUIRK_REINIT_AFTER_MAX_GEAR_SWITCH;
>> +
>> +	ufs_qcom_set_host_params(hba);
>> +	ufs_qcom_parse_gear_limits(hba);
>> +
>> +	return 0;
>> +
>> +out_variant_clear:
>> +	ufshcd_set_variant(hba, NULL);
>> +	return err;
>> +}
>> +
>> +static void ufs_qcom_fw_managed_exit(struct ufs_hba *hba)
>> +{
>> +	pm_runtime_put_sync(hba->dev);
>> +}
>> +
>>  /**
>>   * ufs_qcom_set_clk_40ns_cycles - Configure 40ns clk cycles
>>   *
>> @@ -1952,6 +2052,39 @@ static int ufs_qcom_device_reset(struct ufs_hba *hba)
>>  	return 0;
>>  }
>>  
>> +/**
>> + * ufs_qcom_fw_managed_device_reset - Reset UFS device under FW-managed design
> 
> I believe this is not just device reset but both controller + device reset. So
> not pretty sure that this is the right place to reset both.

Hi Mani,

This is as per our ufs controller design where we reset the host before the device
to stop the TX burst.


Thanks,
Ram.


> 
> - Mani
> 


