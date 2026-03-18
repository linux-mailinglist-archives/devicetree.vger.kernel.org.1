Return-Path: <devicetree+bounces-277232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIHLDvmuumlXagIAu9opvQ
	(envelope-from <devicetree+bounces-277232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:56:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD272BC6F9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7299B30CF782
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E393D9DAA;
	Wed, 18 Mar 2026 13:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NuIh2cp+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HyOHCsf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8103D88FF
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841840; cv=none; b=XJhUnFJywWYyUxRknel3IAxZ2ziGcpAG1wKf78mtLsO9QyMpyh9AowUm48pyRmlhOHeXIc1dqcApqtCZIp3ciFlcu+PXgpxSEYEx5sF6/pTfFp683uHbWN+eBI5HotNJvkJF0sG6InSLhUsdNqnvUvp6y7TDHewoqmNg4dLkUQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841840; c=relaxed/simple;
	bh=nkQS4w83MmdQFrdP0W/19UuG3MELkzWpAnrl4Uv2Z0k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c/GMQxf7hqbXrICLAFxBFZcuHNppiSslSDtWAJ+ppvvZD8xzHna9Zp0VymME/3QkAg6tpb1qkKPD4+Q9fFRJ+9by4PtbxParr9oMINQiR3+faxSQLlRfFTMdf1tKptpHFe0vliSuYkgA1hAcuXMdElwO8fdwqUWHif5hvA4eV9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NuIh2cp+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HyOHCsf/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IBB9sA320093
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:50:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxgPs4A2aV5nJQ+32pziXlEECTTOn7MJ+QMCGaDo1PM=; b=NuIh2cp+bqxR0rAi
	z15rXLlZnst4Ym5fd+fbNfyzm4tjtEJwvKj5HWFGDa8XCfWF87GKcHTULR2RI6zR
	RtKLV33s7C/AX4CGd9PHrKpr78/0gWDLk62KPLC730prWj7JesPDC+tdj1NqiGVf
	0YTE6JVhzUHEGyk0ROit/WLx+QYDtUZQVRclIqaKi0xJcKVwJMJo3J7ZnTWITq6Q
	kVByqA7vEaL+lxLr8477ALq5FDRgronMal6xCglNnjCMmgycSuldKKiUTobjCHy4
	7Xofb9Gr/CbUyUM2QFHBFJbqePgGJ5ulkwIT+54lLytraHAuYNw6anRCTBzLd3sw
	xdOfOw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytxyrg5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:50:38 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35b977ffbcdso3486306a91.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773841837; x=1774446637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yxgPs4A2aV5nJQ+32pziXlEECTTOn7MJ+QMCGaDo1PM=;
        b=HyOHCsf/xjOsKQbBy6E4BTLu8bKoF6CrsIzpHN2NvfC/3EumwF04olcoT6G7FNnl20
         hdrLTw8b2/mpNoya0HG8etXy8rAcwls7aekqfVhIidsymOWwkXCVoIbNf2VzPHAJiYIW
         nwpbGx6R/DrLm/ReYxVUiMYdsMxkatzTsC8ak4L00GN3OVVemTXSJG9CAAOlKGFeDbde
         S379hxSQmux6wpmRlT57Lfvf0OAOBpDQs74kCjIxoQBL+qqrMfg+8IuH2tVhTdrpJGee
         aRy6DvAlk4zW3bIj7tN4uMQR2mRDLB79+JCpYTNYL5PAP9wOxAzfSYHgQ6qgPBaRKA4R
         K7nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841837; x=1774446637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yxgPs4A2aV5nJQ+32pziXlEECTTOn7MJ+QMCGaDo1PM=;
        b=EEhrzAiune6fJn2Sc6LMMBk9g96bqCf5nMgjYDLcfB+OfuFqbCmfqaK5tiE/ieSFRu
         KhAjv1K2NtfYr7ixMW4mFb1aYjaAp3qJ/uZLdK7ZfWk/q76zzgXRuA9WGkzGs+0xI9Hh
         I8rzzOguZ5M38buuBUxnDJhI5vp/gqLKg5wnorfKctJpnQETrWVlmXyuBL3yKCokozZU
         uLFVTF4aVr6Q+HgQGt9jmJ8NfnEHyWguvb/In7M/QNKtwuM/VYB7l5GYPtvN7zuZimMR
         LfpqdL0fPbV6h8tGFDfgNAg+dWKbDS6/awMrAsQNy9G33bsa4U6zdj4uMgIRuS3gthOc
         7imw==
X-Forwarded-Encrypted: i=1; AJvYcCUmO4t8xHJ80dQj2zmcyYghONTBONI30AQa93lWF46cvjdW2cstGr+6PnOA75LS6WV+hL+P83JYpAsM@vger.kernel.org
X-Gm-Message-State: AOJu0YzzlGBNXltcOUn8id2Z12F/D55xAbPi7XnXZ+JAaK1IF69Wuu3Z
	QmXcccmqM9TvHKBV0dMW15FFpX/+ebuXXFjfETvCdlL4TF2De1VwHe/WnQH8kswOq62wkuR+JJO
	IljeXk7jlJr4l3yEkg9TT22xphQkyDcQjjlA+RuTjvF5daLWfZwNOWhUtm6KjVbit
X-Gm-Gg: ATEYQzyMtPqhe0lVUyfqjegqkwSHKZLqNu7c7QL5B2jID8veK2zso1/b/VrBCwlF7/I
	dVtvJ+2DE/ZE76JJdTo3qkXebnmyervYFhxsmq+Wgnqkvn1ICK2FsjbMGXKXtovHCy2vu6jba6p
	lrgXnawoZdxmqElFMrhC4Odi5QwNt4VPp9VO8Zook6JcqbN9xSJr/LosYtt65hL3MB8UE7ZpH2Q
	z/Dc6nlBBh8HnCby+YWmbs7uey5NWF0t8b9rH2Gr2n1zExhQlvh4cqsAFtOCL3Q/qtG/f7pZVGO
	kpKoMwd9onI92eEIceNb2G4S1vrbLdKVnvGzuV/1H8j95CpGnIJu9Ak+tYY7gVt6H6bZqW6RMnp
	mf4b0zgneLu5LL25rMDgbFyBUkUxZD2U5MZL4iDM4Y7zYvwPQY+Ea8TRjDJekPy0h7/4mLyipEF
	1GHpgH6DM6Ne4=
X-Received: by 2002:a05:6a21:3483:b0:398:7357:bb92 with SMTP id adf61e73a8af0-39b99ca7b7cmr3605290637.5.1773841837363;
        Wed, 18 Mar 2026 06:50:37 -0700 (PDT)
X-Received: by 2002:a05:6a21:3483:b0:398:7357:bb92 with SMTP id adf61e73a8af0-39b99ca7b7cmr3605260637.5.1773841836849;
        Wed, 18 Mar 2026 06:50:36 -0700 (PDT)
Received: from [10.133.33.163] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c741e577c1esm2929352a12.28.2026.03.18.06.50.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:50:36 -0700 (PDT)
Message-ID: <d2d4b2e2-f3b3-4ed0-8586-9a4eca9daf25@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 21:50:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 7/7] qcom-tgu: Add reset node to initialize
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        konrad.dybcio@oss.qualcomm.com, suzuki.poulose@arm.com,
        james.clark@arm.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260317032639.2393221-1-songwei.chai@oss.qualcomm.com>
 <20260317032639.2393221-8-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20260317032639.2393221-8-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sr_EkXukyIwSl6-IdNpVt42IvfTzxT0t
X-Authority-Analysis: v=2.4 cv=FKAWBuos c=1 sm=1 tr=0 ts=69baadae cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=arahFDS25cvTpKsIBlcA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDExOCBTYWx0ZWRfXxnYgr/rTBo45
 ZGXL3qEnDn8Qtd8BZ3dl2DtE8/zcI/l74rHfnqPjkEtnl0/mQKfw+qcMlniWczdgOeutxGUK3AX
 sRh0/hPrBuqSYMiqbTKDBVGrJee9tHQHru2LMTX4wwWdAUpKThFQp1OJIpZ70HlWZBvCf9d+6Yl
 DcxBdZBapXnewYXWkfmLGRnQNGMpn0WkdLEAiqk3TWx1YT/zuPYeJiifFn3idJ6eLGonww87XNm
 zE92lImxkMys8nnD3AAlfdCq31YPC1yepVddn1ZJ5reVog90BTuoLYFKb/TIclijvFHblGiDr9l
 axHFhhuk8actldeopwStBmS157XD5UplMzhfVB3UVrZS0M4/dIETGbat082LG98hiPNeOqQzkGk
 dlKZYaKrYUjXR9bvHtPXplny5gBnH1Ngx9DMNVh019+geUw6NuWrQJO78x8KZtlUEw5MLHethFM
 gtoC1mwncLcj7peGqHQ==
X-Proofpoint-ORIG-GUID: sr_EkXukyIwSl6-IdNpVt42IvfTzxT0t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180118
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277232-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8DD272BC6F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 11:26 AM, Songwei Chai wrote:
> Add reset node to initialize the value of
> priority/condition_decode/condition_select/timer/counter nodes.
> 

Reviewed-by: Jie Gan <jie.gan@oss.qualcomm.com>

> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---
>   .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 ++
>   drivers/hwtracing/qcom/tgu.c                  | 77 +++++++++++++++++++
>   2 files changed, 84 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
> index 5370882333bc..1dcb8fb71cd9 100644
> --- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
> +++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
> @@ -42,3 +42,10 @@ KernelVersion	7.1
>   Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
>   Description:
>   		(RW) Set/Get the counter value with specific step for TGU.
> +
> +What:		/sys/bus/amba/devices/<tgu-name>/reset_tgu
> +Date:		March 2026
> +KernelVersion	7.1
> +Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
> +Description:
> +		(Write) Write 1 to reset the dataset for TGU.
> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
> index 4539415571f6..e28e6d27cf56 100644
> --- a/drivers/hwtracing/qcom/tgu.c
> +++ b/drivers/hwtracing/qcom/tgu.c
> @@ -410,8 +410,85 @@ static ssize_t enable_tgu_store(struct device *dev,
>   }
>   static DEVICE_ATTR_RW(enable_tgu);
>   
> +/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
> +static ssize_t reset_tgu_store(struct device *dev,
> +			       struct device_attribute *attr, const char *buf,
> +			       size_t size)
> +{
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +	struct value_table *vt = drvdata->value_table;
> +	u32 *cond_decode = drvdata->value_table->condition_decode;
> +	bool need_pm_put = false;
> +	unsigned long value;
> +	int i, j, ret;
> +
> +	if (kstrtoul(buf, 0, &value) || value != 1)
> +		return -EINVAL;
> +
> +	spin_lock(&drvdata->lock);
> +	if (!drvdata->enabled) {
> +		spin_unlock(&drvdata->lock);
> +		ret = pm_runtime_resume_and_get(drvdata->dev);
> +		if (ret)
> +			return ret;
> +		need_pm_put = true;
> +		spin_lock(&drvdata->lock);
> +	}
> +
> +	tgu_do_disable(drvdata);
> +
> +	if (vt->priority) {
> +		size_t size = MAX_PRIORITY * drvdata->num_step *
> +				drvdata->num_reg * sizeof(unsigned int);
> +		memset(vt->priority, 0, size);
> +	}
> +
> +	if (vt->condition_decode) {
> +		size_t size = drvdata->num_condition_decode *
> +			      drvdata->num_step * sizeof(unsigned int);
> +		memset(vt->condition_decode, 0, size);
> +	}
> +
> +	/* Initialize all condition registers to NOT(value=0x1000000) */
> +	for (i = 0; i < drvdata->num_step; i++) {
> +		for (j = 0; j < drvdata->num_condition_decode; j++) {
> +			cond_decode[calculate_array_location(drvdata, i,
> +			TGU_CONDITION_DECODE, j)] = 0x1000000;
> +		}
> +	}
> +
> +	if (vt->condition_select) {
> +		size_t size = drvdata->num_condition_select *
> +			      drvdata->num_step * sizeof(unsigned int);
> +		memset(vt->condition_select, 0, size);
> +	}
> +
> +	if (vt->timer) {
> +		size_t size = (drvdata->num_step) * (drvdata->num_timer) *
> +				sizeof(unsigned int);
> +		memset(vt->timer, 0, size);
> +	}
> +
> +	if (vt->counter) {
> +		size_t size = (drvdata->num_step) * (drvdata->num_counter) *
> +			      sizeof(unsigned int);
> +		memset(vt->counter, 0, size);
> +	}
> +
> +	spin_unlock(&drvdata->lock);
> +
> +	dev_dbg(dev, "Qualcomm-TGU reset complete\n");
> +
> +	if (need_pm_put)
> +		pm_runtime_put(drvdata->dev);
> +
> +	return size;
> +}
> +static DEVICE_ATTR_WO(reset_tgu);
> +
>   static struct attribute *tgu_common_attrs[] = {
>   	&dev_attr_enable_tgu.attr,
> +	&dev_attr_reset_tgu.attr,
>   	NULL,
>   };
>   


