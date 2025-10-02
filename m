Return-Path: <devicetree+bounces-223330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6C1BB3806
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:41:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A38117759F
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DDC30171B;
	Thu,  2 Oct 2025 09:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EuXulkm6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEC0301027
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759398074; cv=none; b=iJyt7aXzRNA9snDw6qf3z7gbaw2W/1m+i00Mk550i7Ph14g3RPHCWGj/gknriHGrdIcOp5t93sALQqgy/iOoWlDcW7NrX3mgpLOPLcUON0523KefKYkhF5lqxAE9SxuQgFnvu5YQr1AlxbVlr7DmfqceFRuRmhHBs/9GPtFvHak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759398074; c=relaxed/simple;
	bh=2+RRAWyE3suax71TISctQT8u03cKa4jIUKTkgo65cH4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BsShvtB/wu0MKFMoC/CZLkLeH4d0pR8n+xW+6IaO6ddvph05CzWoa0aZCDtT74m4S9Btp+2VXgW48MKCs+Ju/aQ47l7s+kx3jYssbj/S3JFaeVJgj9f0QHyfubQS4Xgm6R+7HJT+8yLV333L6wD30kthrImc4lkJWM2WsWfLLYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EuXulkm6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929ADPp032113
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 09:41:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Z4CJbkv1E7Ldtfiyrw9vrB/hvoYfQbk84yyOwtlJNz8=; b=EuXulkm6i9qi73ZC
	ixdp4+t+0n/M4f1rI11MCWmSiTuOGIP2Y0KbFgn7pDzlg6VRrGx1xCl+rpOr4Dfl
	T1sxs/Ykds5QttvZD22+l0nH11UdW7jBdWpyYDe2oB6WXRjl+eTvKUF25lnSOW+Y
	0D3X9u2S2Rl8hhrNPcuhm+RJB1ZAqKmmBEzEnOxXDerhbJXOcCdJmQ4T7DekePsW
	DHoeN7teK5tCbW1X1X7XuykTzphuzxR+xZCwANgYZgmrMkCbv2h4qDCCsDJJS7yy
	8dSooBiG3UcyWtOqXWs1oqdsMC8DbYQJIc+ucjahSoxfxUKzb1XRgdAO2+by9sph
	UU9a0A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5yh8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:41:11 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befb83so1063092a91.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:41:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759398070; x=1760002870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4CJbkv1E7Ldtfiyrw9vrB/hvoYfQbk84yyOwtlJNz8=;
        b=rLmjRF4cW2Qocelo9brFi6hybf+PgGizoagz6D07F6C9A5R7INHj33SR7IncQyfgRC
         3r6VAbu6O5hcdeKBh6MkpPB31mFed7MtCOJNSZ5U+wz4cSMD+SHxq9tcK7Q/spv4ehs4
         iLWPcx7n66c96UPUmIV9ihxlSrqRBYV6Kh7AUepPqPjqiJZ906hDvpZw01+mDPhcCV2a
         V5a1PO71dQTJMZGAXS5PeGa+PzpmIC97S2SNsLklVQrHRxgFfMNtw0H9FzG0Lg/rs2NI
         bfrqzPzHgTfwBq7n8JC9JVEIWbHTc+6VPQZ4pDEWAiGub9+h43WH+aseVCW7+RLb6voG
         trgw==
X-Forwarded-Encrypted: i=1; AJvYcCVWkg2Y0spnqhoVOMQLCdUWR1mbwjyGL+B21C6wzV5w7PEbjae28zfwA2J+tj7jGasGMs+w9zGGVV/k@vger.kernel.org
X-Gm-Message-State: AOJu0YwFdsb4XXj7escoZRdGoS66x5mlCsnRIhwXIwdMZZswBWM2T86g
	QVmhtMHTcO91dXmMliCFlKRcYq6ReBhAVgp83WKXfh/4IP7zdSFy+juND27UaiigaJ4R3lCVLm7
	B47UidjOVhBJrjL9Xa2jLzKdlSNrSs8vNq2nmvedahWGgDL9zgqCPX+GGU194KHwI
X-Gm-Gg: ASbGncs0Cx+LecLVhPMfiG9hlx2HankLlZ+UYPvAPEiYH1AxvG8tD7iueeOtu8Xv8WG
	WXPWtPGEly1cMmxkDcCXuSxzzb6HsrnMy3ZEHvZQ3Ayn4EG0aTA2Vra7AS7tjeht+gJv3Nmz56h
	UjTlW+Mo6QeY3hKLERI1IfKgbpgeWru93iaZnU/Q5wXB5xi+xVec3ajwyOk5x8HW++OfyoJsvcf
	/tH2Yjp5EFAc4FarN2rzh3bMnVWqe0jm7fIUCLsVdZjbNaM1hlLF6hTfPJQJL7KCU2GeJqaiOhm
	Mjr/msmE5uymcj1G9KUK5XT3GFBAu5nXirPGtZ8Mi05KabHaSfhBrUrnVw1NTugC4EXpI1Guza5
	dlhg=
X-Received: by 2002:a17:90b:1a91:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-339a6f58396mr8008614a91.26.1759398069900;
        Thu, 02 Oct 2025 02:41:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrQXdvyBSld64O1fXcWJnNXjuF1iF9neRdC1GOocwtAa/1NbRXNWOkpTU61PS7Mqc8K7jbKA==
X-Received: by 2002:a17:90b:1a91:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-339a6f58396mr8008587a91.26.1759398069409;
        Thu, 02 Oct 2025 02:41:09 -0700 (PDT)
Received: from [10.204.101.186] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a701c061sm4473608a91.22.2025.10.02.02.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 02:41:08 -0700 (PDT)
Message-ID: <9b8d587d-553f-47aa-7203-a2a573208990@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 15:11:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 7/8] media: iris: Introduce vpu ops for vpu4 with
 necessary hooks
Content-Language: en-US
To: Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-7-e323c0b3c0cd@oss.qualcomm.com>
 <3355306e-4059-4af5-8865-3b5335356382@oss.qualcomm.com>
 <68686586-f161-c6c6-cd3f-c5eb87e33954@quicinc.com>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <68686586-f161-c6c6-cd3f-c5eb87e33954@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ivK-ZzikUvLJpdFy-dvYGsEPt_sNDAt_
X-Proofpoint-ORIG-GUID: ivK-ZzikUvLJpdFy-dvYGsEPt_sNDAt_
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68de48b7 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=bkvKUzPmFnKcqkYD6asA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX6wUxZ9zmwJYK
 +8I63jHZG0QcUmXZuH0cfdwOV71iAcuBWOnPF4zcoaHwN//nU4r5sd76ZqpicjX2Qqpt81+B6IG
 uTGTtFmaG8JP8ozcTXF6K/GKr621ksU0kqYcfXTe40kZvYuhnjM5UweK9CcMALLDQsumzbrk8Tk
 CIQVK57QWcxTZTn8QIZQaRQdhl1nih09Jsrhaevpy4TDwol/S6V15ZzDJpulgO85X7+EbjrM2m8
 rjPJ09S2mvugziCSXzcB3Ex6hwfQrHKo+3buIsgRBY0qlPmPGKacNPFs/TTxaHq4za48hAGtkyv
 zH37A+dtyuvBn27gIz/pCz2PWRd/zGVwHPKdRbDumpoBhrSZwAAA9PZ35Iy6rLJJ2zlyJHw2aNj
 v2EIss9aInITsilHm+MWSSidaDUt2Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018


On 9/29/2025 11:15 AM, Vishnu Reddy wrote:
> 
> 
> On 9/25/2025 2:48 PM, Konrad Dybcio wrote:
>> On 9/25/25 1:14 AM, Vikash Garodia wrote:
>>> Add power sequence for vpu4 by reusing from previous generation wherever
>>> possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
>>> earlier generation wherever feasible, like clock calculation in this
>>> case.
>>>
>>> Co-developed-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vishnu Reddy <quic_bvisredd@quicinc.com>
>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +#include <linux/iopoll.h>
>>> +#include <linux/reset.h>
>>> +#include "iris_instance.h"
>>> +#include "iris_vpu_common.h"
>>> +#include "iris_vpu_register_defines.h"
>>> +
>>> +#define WRAPPER_EFUSE_MONITOR            (WRAPPER_BASE_OFFS + 0x08)
>>> +#define AON_WRAPPER_MVP_NOC_RESET_SYNCRST    (AON_MVP_NOC_RESET + 0x08)
>>> +#define CPU_CS_APV_BRIDGE_SYNC_RESET        (CPU_BASE_OFFS + 0x174)
>>> +#define DISABLE_VIDEO_APV_BIT            BIT(27)
>>> +#define DISABLE_VIDEO_VPP1_BIT            BIT(28)
>>> +#define DISABLE_VIDEO_VPP0_BIT            BIT(29)
>>> +#define CORE_CLK_HALT                BIT(0)
>>> +#define APV_CLK_HALT                BIT(1)
>>> +#define CORE_PWR_ON                BIT(1)
>>> +
>>> +static int iris_vpu4x_genpd_set_hwmode(struct iris_core *core, bool hw_mode)
>>> +{
>>> +    u32 value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
>>
>> I think this could use some explanations.
>>
>> I'll go ahead and assume that the eFuse tells us that parts of the
>> IP are disables (hopefully not all three at once.. we shouldn't
>> advertise the v4l2 device then, probably)
>>
>> You read back the fuse register a lot, even though I presume it's not
>> supposed to change at runtime. How about we add:
>>
>> bool vpp0_fused_off
>> bool vpp1_fused_off
>> bool apv_fused_off
>>
>> instead?
>>
> 
>  Hi Konrad, Thanks for your review and suggestion.
> 
>  The poweroff and poweron ops will be called in each test. There is no
>  ops available that called onetime only to cache these values.
>  And, to create any variable, Need to add as static global in this file
>  because these are specific to this platform and I feel it's not
>  recommended code to add into any common structures as a member.
> 
>  Do you have any suggestion from your side how this can be do it in a
>  simple way?

IMO, its a fair point from Konrad to avoid register read multiple times. We will
recheck this and optimize it to the extent possible.

Regards,
Vikash

