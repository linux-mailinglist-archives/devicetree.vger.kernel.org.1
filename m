Return-Path: <devicetree+bounces-178935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F77ABE11B
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFE038C3ACC
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:48:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37C62750F8;
	Tue, 20 May 2025 16:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NY40pvZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7653A26F473
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747759746; cv=none; b=kmCzJt763kWjflUtT4EMbnaTw5zZHi1dYR5+1aSX/AgMjX784DzoCFycHoI3mZVCsRrQMEpVpetUuUudd0QVOCfVJz0Ro+FW876Jx7oLUIORQ3cgYip6iGiNtegjFL22Y+/HX0wAZIwFgsB9Ozzgfw/8mKSGTj0O3ehTDsxGYu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747759746; c=relaxed/simple;
	bh=X4+btThmKvIhjE0qAfhLumAaALzryTgL0hvFCGxRLxY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rBeauUjiSWyvBt23Y/KuRY4RCL7wG1WWoKQEDV/xPMkP1/5AYjnD0O6PzmH+R4AsdzZ984uozii1GX2DIXnLOOUO8A7TEVcCXsvEzqF1THRRagQVfHREe6R5UfxPkvUluyYWpbmosSQe9JUAnHhStI9+/hQvC/Rz5pcPalIDU7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NY40pvZA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGhBth014496
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:49:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ho35WoPUyH3gxfEwkpGcPljNy3jZF5gHV8aJ2JxHA1E=; b=NY40pvZAX6r4ynz5
	4ET4ml+TnJzRKNVvWI209DKeBNv6uKXPSHVDXR/15HjZuyKUkI/YreBQki9pL74z
	LL3QjOuOtAhr6mr/nHuY2T/jrDLvCsFwV21o6rgp1TQaVUQWocMXzGg2z5y8QzIh
	FIntJnrFs8OBL2j9gN0eZj19pOBVI/+rt13BnumvF+Vqgo8Yt+/jmvuuPfbC7C7E
	pmxfYMdmoNHcUuqZobhJXq4QTwkbuqfyFfGQuDniNVY6kqRw6ejub1aR6jyrKlJI
	DNsgrlyRb2AucPacWP1NVXf8/zJwx52awkfJTXPySN22i4mgwsx+/qhV+kRDpC0e
	TxL0+Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf6g0xy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:49:03 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f0c76e490cso14940536d6.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:49:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747759726; x=1748364526;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ho35WoPUyH3gxfEwkpGcPljNy3jZF5gHV8aJ2JxHA1E=;
        b=Qnahi0YyYH7L3sWwrxbRH6zllBbljW/SEL3KVBk+DkYA7wzpccPekYGx6fo5O3LKoU
         ntUtvDJN9mGhOR4kVqKMIUJRD5/9p4G6IX/vDQJWjmCA3FQuxCKlq2Hikfs3duRrZFOI
         XSkp28VEem1QBemz5gF9f6DTki7xuXsf8nUKwJUP4FZFetYTBFILSmHnIayyAaa+vanD
         sFSLMWNcz6jjL61KCaQ0YBy7RT9SRWUivno+ghYoBSNvGpEuAbhnQ/PXlFUzfa/EzZl5
         vgtrSs2GUErrujMYin6NEmnI8crnZ50ca2686NrburfWiewFVUz+i5hZKYs51tLBczua
         fFrg==
X-Forwarded-Encrypted: i=1; AJvYcCW2HJrMd1HGGxqnX6/+uzCpDCXvisOK7QM4XDcA2P1n+24gNCDLuIDDe2tfFJ/ALG+U/F+vaTuJ/HFM@vger.kernel.org
X-Gm-Message-State: AOJu0YxSCXvLwHrWvlVuaO6uYQxn9+VbLbhz5gCTPOLEczhFO4UxuKRr
	dNf3LqQkQCJQnZEmPiXgY3DbRbQemNyhW7bpuGhuDvck5igKVl8fscUwaPC+T3lp/40hQjD5YCc
	zBPXk1wTUEgRPReuOpZyitLXouIIRUOk7nQ5zFVljZmVeHbI/UDLCe1gKhM4jPMMYPwsO74XE
X-Gm-Gg: ASbGncskfQsyb6JcTPlrdtIz9nAyeBS3pSY1m9u6OkOzyPyK2AbzOBlSEAlPBApwjHv
	GKXXygbh0JZwHkMNgqILyz/cJ9dWlkLuvHsryt4Ld9gPCaZkOjpOJWuBpq3GQozC8wL6Mb+54Ut
	nbDe6Nt/U9/lQsOwPH7d3TeOir4YSzxNRBnaVgM1m331/0FPnu2NxyciaeWgOl65fftAkMfyVx2
	k4N+ilH0354LInbI/JXJy+3OLOKBjyE0BFrogmGob7vXuKQCCPyrBrUyIamYwXYS367pihajYVF
	nQ+NXpLf2IPZwliiwpTQcpIjtFFYj/nx1NNzXWUnWaLvkxaD+mLZnRZZ0V1XF/Glcw==
X-Received: by 2002:ad4:5941:0:b0:6f7:d0b9:793b with SMTP id 6a1803df08f44-6f8b0944b8emr93780886d6.8.1747759725646;
        Tue, 20 May 2025 09:48:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPLddRavjW7T5Aifs9O+LKyxFQH6Bk/4p2Fk+pp7h3r2EbU91L3XnVOfAD+U2L+jZ1PqXF/A==
X-Received: by 2002:ad4:5941:0:b0:6f7:d0b9:793b with SMTP id 6a1803df08f44-6f8b0944b8emr93780726d6.8.1747759725166;
        Tue, 20 May 2025 09:48:45 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005ae3888esm7381058a12.65.2025.05.20.09.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:48:44 -0700 (PDT)
Message-ID: <6cd1e3df-5a47-472b-98f3-468b8e86de5e@oss.qualcomm.com>
Date: Tue, 20 May 2025 18:48:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add UFS support for qcs9075 IQ-9075-EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sayali Lokhande <quic_sayalil@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250513084309.10275-1-quic_sayalil@quicinc.com>
 <bhu7ifrgg4fgy56lc3ix37drxyciyzl46qkicv6lr4svjejcgi@dqdv63ogxtjr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bhu7ifrgg4fgy56lc3ix37drxyciyzl46qkicv6lr4svjejcgi@dqdv63ogxtjr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VL/dn8PX c=1 sm=1 tr=0 ts=682cb27f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=9KQU9hNs3Guf2Fy9bq0A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: IqYPoxC_GIiCxwmaxqVq_3urflp4Nvi1
X-Proofpoint-ORIG-GUID: IqYPoxC_GIiCxwmaxqVq_3urflp4Nvi1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzOSBTYWx0ZWRfX7UgsHL8Ieamt
 b8xeIlyBBxLtdLr2fxGb1pOcixHzGCTv++tRXWlvI49Xm+Fv++8bcv4seCZcsUklkVODCTK7rnj
 EFPlVn+yNvKq91ImZB7VtQtVElvJVTBb5JybcjUwG5E9AFODXA0OnuElW+svnhsnFdvKyQx0/ko
 CKHqmSHsrbwM0LtqBzUddm0PqaMO811qMaoIMC+RgJXkrCwdzMT4PwjCPgVgJzlAngguk26spPE
 lU0fhti1CgbpsIxo8jRwylv1QokAiqKFYu9hMPWgGF1Y7Cb+l2zwHTEpZe6nZTgXsdY7yjzWXBw
 vSv16m09iE/deXFbHWc9ZYpKxS/gfkDEK1m1bC39B9T+dGn1FU6OWBeHFRARLlGzdl8+yAFggDt
 DXE5n5tfMfjE+mdV0x11dFLZudzEeinOl+YvhoVD2q6e9QlpeParffgOOxgvCHrL43A6iyDR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=969 clxscore=1015 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501 adultscore=0
 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200139

On 5/19/25 3:07 AM, Dmitry Baryshkov wrote:
> On Tue, May 13, 2025 at 02:13:07PM +0530, Sayali Lokhande wrote:
>> Add UFS support for qcs9075 IQ-9075-EVK.
>>
>> Rakesh Kota (1):
>>   arm64: dts: qcom: Add support L4C LDO for qcs9075 IQ-9075-EVK
>>
>> Sayali Lokhande (1):
>>   arm64: dts: qcom: Add UFS support for qcs9075 IQ-9075-EVK
>>
>>  .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 27 +++++++++++++++++++
>>  1 file changed, 27 insertions(+)
>>
>> Please note this change is dependent on [1] which add
>> qcs9075 IQ-9075-EVK board support.
> 
> Please squash it into the original patch.

+1

the patch contents look good

Konrad

