Return-Path: <devicetree+bounces-259721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEAZIeI7eGnsowEAu9opvQ
	(envelope-from <devicetree+bounces-259721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 05:15:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1C38FD37
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 05:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34C62301A383
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 04:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2E91EB5C2;
	Tue, 27 Jan 2026 04:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D9C3sVbt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OwuQajP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5669E244692
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769487318; cv=none; b=u0P9Bkl+zkQ2YomRnsC0sA9isvHYiN5g+CCA66mBOPHCG4VTeywCjqXisVFTGXlUKgUfAbppk+BTPUZhiV08AdqAMVThDwfLHau4AvNe6KDGoNLSBzeIgnQAtBUIgJ9npCbPJDhripWVSFHF5e0J0Zpx5j8utKHHwzLSfUStEM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769487318; c=relaxed/simple;
	bh=xDoav1BfW2wI8Iv+YupRqR17ieEF5LHWM/T4d5wyYmI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xn+byb0qrfhXf0SsIqpeIGm5WtUnD3amNzM+MA5jsr/qAhdGNQ6YjbfagnfCi5q/dHYH75gvNYqLXid/xj+YDtEBo0FgbvZWiD88e/vW/R07L7OcUq82mYRLdCFedgmWVBttgXsuaru5SXE7qS3phYtfN98wf8Veu7tCvIcCq+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D9C3sVbt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OwuQajP9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKgtBm925405
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:15:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yR3aK7XyKr62djQaHFknCTq+ksn7q374+TYHBAPMHvs=; b=D9C3sVbtyvzpfTpv
	v4PR7w/M2VJsuPUqxwbgtTnhbREm2J3m5t9umuRiBRCttObko820HzQkhya8qgID
	/HGeaenw8wGG3dKjCSgg7xVOXJqKwr+3tFz89FSEh65oUYgral2B1/k3CmDVPwbi
	1egLMCiXPQpmb3bpUXsJc1lTBov5aSPIskNVPCuWPvYendTLpUMjnOJezaq4FHKw
	9pHYvQJwcL8blqxKnz3gGnKBZ83opsHpTaodD+Eiqf51UvIv54htxic6/cYRjmm5
	GpNGrrYw1U0QMhlrE2DArNfmrgOrrz1vd6L+CaPPZydxzcP/f0ILhtTMcZ2wV+fl
	ZPmlDg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxadpt4hg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:15:16 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35301003062so12392906a91.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 20:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769487309; x=1770092109; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yR3aK7XyKr62djQaHFknCTq+ksn7q374+TYHBAPMHvs=;
        b=OwuQajP9RYNxRBXVcOpnhEuQsqf9p0al2m8fXVjj8QrEQ21nbflXsq/YJ0LSgPOyu1
         n4aqIbfAbGKFRhfAKLTbnJ44HHdQosUlBOtJsvKuAm9B/ECm3w/yZCG5Spej/UYef3sl
         PuVg/nyA5DCXonKvrxG3z+vZETTLSnwhlSvoYLgaCiU2ljq6bCXVR4r2uJn4C0hzS/Bs
         cICO4x30s0fisjurSy9u8PBkyiK5aVVrkJMTeQL8RehEqHy00U3b3YuOdZqjMuvv1Y9S
         wjgpfT2KuI9pr/o0IhXHJ392sMFArXz+qDYA1yQRQ2THhWi+DrKE+HfRxViowBSV50XS
         Fp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769487309; x=1770092109;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yR3aK7XyKr62djQaHFknCTq+ksn7q374+TYHBAPMHvs=;
        b=YKsLUVMmykPXn3GGrf5iFbSYYAGSgArjurRHifUsYQ2XHzL4bJbRaMe9D1jOao5ypY
         KNN6dt5tKFWe/po9gtAUpJSg5p4pfEd9M0DBSlalOZ3UImSCBBgigxhXGKOGrBGtrzwL
         8/ULYZHJpvbeM+HLx9YjYl6UpU7hiJ80oKmxI0mPKz2SHl9h9KZ3I8ctXWIDNAwh5VzE
         Ud+8Yj3gc4Epu+fYjQ4GvNGj+y6GvQUWR9DRL6gulSQhqg74w6NRVmQZT3GAzl/1rFKK
         lNy4WiIsUGiDPjs67HcHnBgkgod09MFleZPc+/B8UvH07+bDm5LPEJub1rH5nQHEp55P
         pzFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgW24S6Gqd3OHF8UGcmJOwG+j5ZTKQ1fquNZdhOJoz94EYJqf7cBNd4txFo4+qUsUer9vAbGEQ5XYg@vger.kernel.org
X-Gm-Message-State: AOJu0YwZM7Dd6wc8U6Wj4/16iJxTIeZw6ctKM5ISSIfLJrBH/f8hpthf
	pRT5XLLlhDI+s9bhTu2WtkeAfdpT2pK04w1ewkARiInJvxR8vWD8sMqfBR4p8gxLHh5ut27x0OK
	RJQ5h4lArJsh1yd1hrRGJUkrHIfaU5D4xEo7jbVAS9EQFXEM1xYpwtzQFjGxfK6M3
X-Gm-Gg: AZuq6aIpc2ztIBPOMHfG5OUhqlV85hiTPrNcCOlDKEoienOW5suDWKSTDMj4hs5mLpy
	uIdgRv3DrcE2v7YV+d85B+G7x87m0NfHpeTT2ji8i4NKmW0rSz5JI8h6huef3G9PPkDzPdUnNVr
	OfsKEzXvkL3KWXj6T1NHk9ZJgskfwA+WVwttgULsxID+5ZRwgEPum/qgykavSia/tOsMq1yI7Zk
	LGzIEsDCFZtHLFXUoV/t4A0MVdFuYWK5gMWqGp4tTuTojO/j4NWDVtX3tTCftpHRa/qiPwqCc8z
	jF7KdL+oWJlHfGOGxqHMrFxGozMl34naNbU3o52R7HCX7PZbm7dX3HcYbRtmVBRgitSV1WVoWFT
	BRYlpnM8VFFavvO55hqvqbr2KTzsodi+vtfjpIXsBEAv3
X-Received: by 2002:a17:90b:50:b0:352:fa96:5137 with SMTP id 98e67ed59e1d1-353fed5cb28mr515821a91.21.1769487309466;
        Mon, 26 Jan 2026 20:15:09 -0800 (PST)
X-Received: by 2002:a17:90b:50:b0:352:fa96:5137 with SMTP id 98e67ed59e1d1-353fed5cb28mr515792a91.21.1769487308971;
        Mon, 26 Jan 2026 20:15:08 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f612917csm931826a91.8.2026.01.26.20.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 20:15:08 -0800 (PST)
Message-ID: <def02695-0c39-4a65-859d-17ddaece7d6f@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 09:45:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
 <20260121055400.937856-3-vijayanand.jitta@oss.qualcomm.com>
 <CAO9ioeXLJK6fvriRA9RZs8cWcBdv4fgw8VG1_LqLDfc-5hFQZQ@mail.gmail.com>
 <21b3f41a-d480-4eb1-a02e-c2ae411f3dd9@oss.qualcomm.com>
 <CAO9ioeU8-uQx4cJ=_nPfQ_ZJ=ZUAwwCYrehSqLw5X-YBVnFz3Q@mail.gmail.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <CAO9ioeU8-uQx4cJ=_nPfQ_ZJ=ZUAwwCYrehSqLw5X-YBVnFz3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: b5X3969kIP01inF1Gf_RuiQcqFmqw-D2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDAzMiBTYWx0ZWRfXzL9CRkGEMdr+
 NreR0KqwbJG5WsLJM6yUzLEz7xB6ZuTkPyONPxBGH1KFTAFzeCsX6MwIXfYlAxvAgo7N2E1lCUX
 k4USghFfMb3AwcTTsQozkyarzJZ7ioT5derq+d7eYaNuYnF+EPQyjNIbW+ocdYUJbJaybh8BU9y
 W04j1gU3EtYG6VY2wQosSHI0BmH0Wr351m5dE1D86WTYC6E4+9Q8bUlENyGvhihNIxP6faEkjrK
 HjbGyxTJr+6kKTN04z5QrUfTHsbXXJrVfcZVictug8EJsdkRnM5m/eiWe+nLxa1LlYpQwmyW6dK
 o3YZBJqYmgo58H240+7XGX/OuY8PQRp+NqIpXRiSPbEEewSlh5BYhgGmM3Zv/gZ0QRSq3GvzFOv
 Vu4lCA4zBzy5Gq5Gzro2hc04u3BxxQAq0nC23njxAYaLlzGhJ/y91ZjmUM2N0XWaG0tJIofy+Ur
 vsDM0v/c5Fw0x/6g8EA==
X-Authority-Analysis: v=2.4 cv=GvdPO01C c=1 sm=1 tr=0 ts=69783bd4 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=HnkMKtxlUvcyAqyK8NAA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: b5X3969kIP01inF1Gf_RuiQcqFmqw-D2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270032
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259721-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EF1C38FD37
X-Rspamd-Action: no action



On 1/21/2026 12:08 PM, Dmitry Baryshkov wrote:
> On Wed, 21 Jan 2026 at 08:38, Vijayanand Jitta
> <vijayanand.jitta@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 1/21/2026 11:30 AM, Dmitry Baryshkov wrote:
>>> On Wed, 21 Jan 2026 at 07:54, Vijayanand Jitta
>>> <vijayanand.jitta@oss.qualcomm.com> wrote:
>>>>
>>>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>>
>>>> Introduce a new struct type where the optional arguments passed to
>>>> of_map_id() are Currently embedded as of_phandle_args struct.
>>>> Subsequent patches add additional arguments to the struct that the
>>>> caller expects to be filled of_map_id().
>>>
>>> Which additional arguments? I don't see anything being added in 3/3 of
>>> this series.
>>>
>>> Can we use of_phandle_args and switch to of_map_id_args when it's
>>> actually required.
>>>
>>
>> As mentioned in the cover letter, this change prepares the interface for a
>> follow-up series adding multi-map support, which we will be sending out
>> shortly and which extends these arguments. Keeping this in place avoids a
>> subsequent rework and keeps the overall transition incremental.
> 
> Could you please point out patches adding more args.
> 

Please refer to the below patch series, it extends the args:

https://lore.kernel.org/linux-media/20260126-kaanapali-iris-v1-0-e2646246bfc1@oss.qualcomm.com/

Thanks,
Vijay

>>
>>
>> Thanks,
>> Vijay
>>
>>>>
>>>> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
>>>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
>>>> ---
>>>>  drivers/cdx/cdx_msi.c                 |  2 +-
>>>>  drivers/iommu/of_iommu.c              | 12 ++++++---
>>>>  drivers/of/base.c                     | 37 +++++++++++++--------------
>>>>  drivers/pci/controller/dwc/pci-imx6.c | 10 ++++++--
>>>>  drivers/pci/controller/pcie-apple.c   |  4 ++-
>>>>  drivers/xen/grant-dma-ops.c           | 20 +++++++++------
>>>>  include/linux/of.h                    | 32 ++++++++++++++++++-----
>>>>  7 files changed, 75 insertions(+), 42 deletions(-)
>>>>
>>>
>>>
>>
> 
> 


