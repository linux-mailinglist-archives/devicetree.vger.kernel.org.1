Return-Path: <devicetree+bounces-267402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKvTJatGnGk7CgQAu9opvQ
	(envelope-from <devicetree+bounces-267402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:23:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B80176125
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:23:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99EA308CE51
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E96836214F;
	Mon, 23 Feb 2026 12:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BS4Kplx3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hGu0SkkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AF4365A0A
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771849174; cv=none; b=rAXMkliguo4IqCHE006WHFl0fTE4Q+Hg7RO6SnxxMU8Jfc9r3O2+GAsoH85T/zGPMEaBsz5DyoQrhQwI/i1vsbQS6nz1U9cUbMEs13MipQJDLvVQNlU02XMZ0c5m6OnzAVkMktBcP7ldyGnJf3jORuhynFMDKfhDn2Nuqr9/xLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771849174; c=relaxed/simple;
	bh=H9tBpH3FJ8NHINo0k6gxJuREDCEnVNm57V43aQX5k/Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gOmHhk0714Nt8I2bw0/RIjlehXw41sJbkBfCyy/sk+sFYeu3uSeu3eH+SyVzsZxLc99lIRQk6HFAaneXP0wAWXM1l24O6N/IooSGxgJnhoEdooPwyZQoZVSt42gm9tIfWMRSiOSTk0taKUCXTucuM1DSUG/TJ8nXiDQsDBXKZNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BS4Kplx3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hGu0SkkB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61N85gS5624267
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:19:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Et4rmFw5DqcAxFldXWsgH23NJXURgSeQXkLXYWOqGk=; b=BS4Kplx3EbeQ9V6m
	OrVqeOT8W+6+fwfbK4UCcZ5H0RuNlMxDJPtzLoJ6c/OXduS5Vc812BlSZvM45ArP
	cL7d7/xjg2hzn7Uxzi7R+c0cu5Ce9YeaQsEcVYHIXF4C6uwbQqLdkdk7ZTIrQTwI
	VYsbHSK70Dc5CjEjOO6Ypg2w45rYkRPGUEF+p4ULg6CishGvrJ55wnURRHQhektI
	ykHAlHI1gCSnV1qkL9ZR6ienC65ACZnbKT96YxXvPD3GZy/XFbvc5k355rpfKH5O
	BU8tsgx7osGmRH6BnZRMSX6SS8dPBmEhI4iWMicDjq89Njc7Hiq5B+Mb3f9QR1pK
	+RPpVQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5u9vp3d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:19:29 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a7701b6353so51129495ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771849169; x=1772453969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Et4rmFw5DqcAxFldXWsgH23NJXURgSeQXkLXYWOqGk=;
        b=hGu0SkkBHLPNggvQGvOw+7UVxx/AivcBLucfYOLwmmoprJBNoa7ou0HdM7xvSabzCO
         fKY5+oHdeyPtV4TBAHphMrvbhLeP4l9/jS/vQ+yq21baLIxIFpsTbQoswgGP9hMrO+yH
         RIqSASo8nHzbbwHppv3CFfGUklhkpU1e22SlK7U5Y+hWQ49NgZoblw1/ngKm8A9kDnig
         L4Vbl1ULYGbv4c5m9OGydtmAPzLpFCfEiyaP7i/eTCbDc2JQPCIkKxOYNxlDdle8Z1qO
         ZZrlptQwGJuTm4d4oo9RWOCswRnbKm70z98fFLenoKHjCIfM7JfnRSFGC/MyBKuo0W9F
         b0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771849169; x=1772453969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Et4rmFw5DqcAxFldXWsgH23NJXURgSeQXkLXYWOqGk=;
        b=d8diZEwsmHVMgSvpdWZsoaJKPY+e7lxqUb4xImqXcIilnxcSrBHycHQafSOxWMfh5l
         3ocYJ4FmAOTHKexnVcE2CNjq/1gIQFv0GMR2ogkGmsm3yF7D9bYVaCjGi0QkE/qZkbFA
         qDRy9Nw1f1bZxYPeAblCH9WbEQ5Q3TL/EezZ8a/Oq1F2U+1Q0p1aYieUsFG2cQ4UUmpo
         YCBHyWfIxutbDWU04RQKDvRAOHV4OPMQl17WlpwMp3X41GtGnceTjXOvW/RqHOyCZ+71
         BHsq+EUqJ+szCQ6VwEO7qVdXZxBS6aH2TqI9zDKREHCr+++ChgIF2FNw0eP9Urgb5+sp
         VzLw==
X-Forwarded-Encrypted: i=1; AJvYcCWwn3F4L0toOreCkB2FLyeGNxH0VQOGVo0Zy2iMtWDUSj+OuBkOtpQBvyw8yxMq+IgFKcVMnVp4LvnN@vger.kernel.org
X-Gm-Message-State: AOJu0YwruIWcASfllmyYGZyPyIIQFAM4tBt6UDlWJUPiAVjEUp9rQIXF
	rBIWEWJFBuUPIevSU/tTsM+3XRu/IrF8UUh5hTdnxGv+n+KuwT0X48TPZSzQ8xtUuv+6+aYSs6S
	WnlZhTZ8HYACyClfVLu27NRLMTM0mnORHneR7g5VqgfRuRVSYHj/xnkZvlv3+ELoI
X-Gm-Gg: ATEYQzzIpP/g2me0Q6eJyfM4k55dYmOXbJVr9AeEk7ojqyr3vQi/eV04o0f+rwFZtAt
	IQu/Z2sicQJxkTKLepYGPtfK+qEUjjERITQeEN8MzEIDsO6rtpia6eSz3AZ/2oGwGHbdLQtekf6
	kGOyDyuzEvA2hi6gOYVmMdPASyuT+Bt8f4vjqIuHiMAPoJPgMXyJU6p6BHq35pwzo09t9sSLCgD
	Xe6Av4RMCuo/XLoxQzSXg8hx/wAEp9vhzDvB39RlXf25JoVG9ir3l7tcG1J2eLuSsBkdbKS9yXU
	CmYBGN2pKvF4a50GMQhMNWmK9EhjXNyOyWXtYBjygxKh55iH8TgPYRoeIwQz1cRT6KlTNTpOD03
	uECmnZF+EspN9KqQM0ukv0VH2Qla8JnUiG1tC53JITDmQWwGm446HXA==
X-Received: by 2002:a17:903:2451:b0:2a9:5b48:2b57 with SMTP id d9443c01a7336-2ad7454a6bdmr76541275ad.45.1771849168727;
        Mon, 23 Feb 2026 04:19:28 -0800 (PST)
X-Received: by 2002:a17:903:2451:b0:2a9:5b48:2b57 with SMTP id d9443c01a7336-2ad7454a6bdmr76540885ad.45.1771849168127;
        Mon, 23 Feb 2026 04:19:28 -0800 (PST)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad75035487sm74021225ad.74.2026.02.23.04.19.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 04:19:27 -0800 (PST)
Message-ID: <70b77d54-a6ab-426e-a7e1-3e011adad6d4@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 17:49:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V10 3/4] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org
References: <20260130115421.2197892-1-jishnu.prakash@oss.qualcomm.com>
 <20260130115421.2197892-4-jishnu.prakash@oss.qualcomm.com>
 <20260131173941.68b8116d@jic23-huawei>
 <6012ad64-3a10-4f05-9f37-f2d0c36df582@oss.qualcomm.com>
 <20260207165638.0ed27302@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20260207165638.0ed27302@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDEwNCBTYWx0ZWRfX2EBRNBKkwqvK
 O/NZOFTIXpcZ+s7QAy+NrCOE2KSwKDtdrWDg7IBI+fB/x30JnJ+3GFix3qiajhqYSxIX9ySL+yh
 grGnf0S3EyonTvjb88ZJquIFWRprCdhw1lzFKnfdL0AjE73FOK8LsgTYzsN+8QO0yNLAjPzXsF9
 rjNqIrfW2QxfRJxN9OuGatjTTPgPpH+8vcCGo+ViYzOA3WOPq7L2m48veDL8mzCgRVxO1jwlXyM
 607cgz/z/lGS4Mj2dyhDI7EE41TXoeEPHlnc/r91w4+pKvnLd4BsvG5PJybwuKo7HFi5ycDwT1A
 MEAvX2gKKHYd8hXH8d7vZtT9t5BGqM8EG09tpCB/32XehyL1bKJOdj5qx195cwh8YD2PiQWl+rd
 TywkAHSwov67FSigSC7VeLmOI5O6ETxviDE3DB6qqKOLqKzj9I6OTiTUixzmXvR9zgf90nxT82C
 VcxsmfTN0UnzFVqON1g==
X-Proofpoint-GUID: xlzmGo_bQDJapRiAm9gQdpcoMlFq060W
X-Proofpoint-ORIG-GUID: xlzmGo_bQDJapRiAm9gQdpcoMlFq060W
X-Authority-Analysis: v=2.4 cv=RpDI7SmK c=1 sm=1 tr=0 ts=699c45d1 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PFIV_uwPMKvENUFLfcIA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com,intel.com,arm.com,vger.kernel.org,chromium.org,quicinc.com];
	TAGGED_FROM(0.00)[bounces-267402-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 02B80176125
X-Rspamd-Action: no action

Hi Jonathan,

On 2/7/2026 10:26 PM, Jonathan Cameron wrote:
> On Fri, 6 Feb 2026 18:45:02 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
>> Hi Jonathan,
>>
>> On 1/31/2026 11:09 PM, Jonathan Cameron wrote:
>>> On Fri, 30 Jan 2026 17:24:20 +0530
>>> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
>>>   
>>>> The ADC architecture on PMIC5 Gen3 is similar to that on PMIC5 Gen2,
>>>> with all SW communication to ADC going through PMK8550 which
>>>> communicates with other PMICs through PBS.
>>>>
>>>> One major difference is that the register interface used here is that
>>>> of an SDAM (Shared Direct Access Memory) peripheral present on PMK8550.
>>>> There may be more than one SDAM used for ADC5 Gen3 and each has eight
>>>> channels, which may be used for either immediate reads (same functionality
>>>> as previous PMIC5 and PMIC5 Gen2 ADC peripherals) or recurring measurements
>>>> (same as ADC_TM functionality).
>>>>
>>>> By convention, we reserve the first channel of the first SDAM for all
>>>> immediate reads and use the remaining channels across all SDAMs for
>>>> ADC_TM monitoring functionality.
>>>>
>>>> Add support for PMIC5 Gen3 ADC driver for immediate read functionality.
>>>> ADC_TM is implemented as an auxiliary thermal driver under this ADC
>>>> driver.
>>>>
>>>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>  
>>> Hi Jishnu
>>>
>>> Whilst there are a couple of comments below, I think this is ready to go.
>>> Unfortunately this is just a few days too late to merge for this coming
>>> cycle as I need to send the IIO pull request today or tomorrow (due to going
>>> through char-misc) so this would get no soak time in next.
>>>
>>> Also, I'm not sure how we actually want to merge this given close coupling with
>>> the thermal driver.  Perhaps best bet is I do an immutable branch of next rc1
>>> once available that we pull into both trees. That would have the first 3 patches
>>> on it. 
>>>
>>> Jonathan
>>>   
>>>> diff --git a/drivers/iio/adc/qcom-spmi-adc5-gen3.c b/drivers/iio/adc/qcom-spmi-adc5-gen3.c
>>>> new file mode 100644
>>>> index 000000000000..f8168a14b907
>>>> --- /dev/null
>>>> +++ b/drivers/iio/adc/qcom-spmi-adc5-gen3.c

....

>>
>> Also, is it alright if I push the next series to address
>> your comments immediately? Would you be able to include patches 1-3
>> in the immutable branch you mentioned, once it's available?
> It's fine to post a v11.  I'll only be building that immutable tree
> after 7.0-rc1 is out (or 6.20-rc1 depending on Linus' decision on naming
> for the cycle that is about to start)
> 

It looks like kernel 7.0-rc1 is out now and I had posted v11 here earlier:
https://lore.kernel.org/all/20260209105438.596339-1-jishnu.prakash@oss.qualcomm.com/,

so can you please check this latest series and pick patches 1-3 if there
are no issues?

Thanks,
Jishnu

> Thanks,
> 
> Jonathan


