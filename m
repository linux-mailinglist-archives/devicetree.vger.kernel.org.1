Return-Path: <devicetree+bounces-173684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7416AA9418
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:12:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 127D216B6B9
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54AF24EA9D;
	Mon,  5 May 2025 13:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hARKPk25"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA517B50F
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746450763; cv=none; b=H85fbnxjiPAYNfGWA7b5xUCUrREu9As7OkseRfB+xheO1ReILcTCR5iN0yoh24OvbZp/CXSEUsuN+UoUvDETwzlsl3p5/qUsHy1qk31FYySLd91C4QTzMmLwTVF3P13rHeyuZFQIGHnMtbGLE0x3DisoAYyhL0NTF41s5zg8LbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746450763; c=relaxed/simple;
	bh=USF+sNnBEJKQ1y96l81A26s3nnhS4sYU9mA8l6FJcj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nox7YUjNGaUOAS4Y1YPbq+9C/VntQDp4ZgMCV8mfhluIbvMhl8ZwHzqf5p8FG0wZv+m9QalnpLGeiOz0ARN2CKgTuOy7mrKB6nGNtBvF+50cW05oRFNYS1r16W/xSfPRDNXiq7+DwqrYcf0nwMUdEKN9A+mlo30k6sODjuIY6/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hARKPk25; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BZa3s005126
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XgGrNXXTksvJen/Mk1Biwc5pmi1abVHe5nBBkizEdEs=; b=hARKPk25iTRhLQcq
	qHqQ5jtR3CdTqLJbkVMvIw0kMJLSjSe3/dhPm7EhV9jlSKfKtudd7vNFaivEjLmn
	idqPezgr77PjKfV+cnYZQrEj+Y6/2z30kmGU5lQkmNzQMpVTCEO7c0rDTO4tO8Cr
	aQfEbdetzu2PHdE48NcLW7VdIy6c+dhGjtuW2lBaiv3KD4aj5iglni8WZSdea76X
	0YJEPCYxYbA3tO9vDg+Xa9o+Sc/iymxrsSS48IRHsu62JO/wUOzOvATtf2LeYn8v
	qOLhl0AXunRrN44jbV9v+G6WWHL6V9A5M1kXykMOBUvKTq5f5I5z2lB2ZbA1u9dQ
	vRIgEQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbwfm1h1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:12:40 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7377139d8b1so3373639b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746450759; x=1747055559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XgGrNXXTksvJen/Mk1Biwc5pmi1abVHe5nBBkizEdEs=;
        b=K613475PDoBHg47B+gMy3gt3/e6c9v79LnP15yA8CJL4i4GTxdfHwe9s6MWgn0paNl
         AHEx7Q2rAEScDn/cGy5oGk+VltjoTSeDbmQvKzrMpsCbhyAydggTldKKXL6NXsP4aLPd
         dJKDEJ0oOBJDp/F86cIc3hHCruGk1ZYhtU9x9x08WnnzORPowV2TAQyJmENtCqxXc313
         S2muX58HSXyL/VAvmpe1HiaQKFgGXaH2zKMJFiWYauLWih6PQkous3CbXI9Q1vY/OaBI
         IK/LbASUj0OkNVigst+6zU1R91QwF1XRF95+I3dI+7m+sxW7QKnQ6ECZ6Of7JUDi8ZQj
         fYUg==
X-Forwarded-Encrypted: i=1; AJvYcCVwKX02STwIUmAGxWT//U6VBoHMxwA8cnYNniYXZS3QkvODjTeoMUiNjuAZShkq252sf9klwsBVOgD5@vger.kernel.org
X-Gm-Message-State: AOJu0YwVDfT4+d2wbGFdL7uMqsRHZ4gZOQWmjYKCLXxiNcnH/b5feldQ
	y6JXdUj8yK336OPK0yclrSfFl/6IJGYjqGkJgXdgpOeqWWw5eCYjYiTqT8G/oGZXCJ/bQUQWmYu
	nIVLkDP8KvM516o59I4oRsDvld2DaM8uxZI0jHYbkIqR6Xt5qd41RDsq6mysG
X-Gm-Gg: ASbGncsPC8bhXox9a6ZIGW7r8Yzv7ii5QK1yz7AxJGIlS2cKbM47qJfPUAdryc7z7TX
	KjKrrUou1ZDEaVhQ0mwnCERaSlkMcp/4QhYpz245uJ1JKBjwq9Hcy1LOXt175+imdq5lwt5SZaH
	29B+W47DOtVhHHdkp6+QZWal/jqm7D8fXd4BVPTSCtNZAwcmDwBAW0NNVFyZ74kMA3cerWhMpgz
	t4uXJ60Cg1ZmWxyEXh1WSHwJ1O9qhQHXleuyJIFKetrSyyvf/K4ZHYyofzm7wQ7TGsEEzjOa3Vx
	hhBwG/tyJvuKIm6NAH5smmtojIJL4g3eSixtQFnn
X-Received: by 2002:a05:6a00:8d96:b0:736:ab49:d56 with SMTP id d2e1a72fcca58-7406f08d250mr9121695b3a.1.1746450759016;
        Mon, 05 May 2025 06:12:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqUfiCSwWdQe5qpNIiS7x7TI6ViUuKuy6cSCxgbpddLVSOvpIaIj/adAo66kYzDkz5Sxxs6Q==
X-Received: by 2002:a05:6a00:8d96:b0:736:ab49:d56 with SMTP id d2e1a72fcca58-7406f08d250mr9121657b3a.1.1746450758599;
        Mon, 05 May 2025 06:12:38 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b1fbc81a1cdsm4192894a12.60.2025.05.05.06.12.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:12:38 -0700 (PDT)
Message-ID: <b2fa60fb-3312-435c-a216-f217428ca683@oss.qualcomm.com>
Date: Mon, 5 May 2025 18:42:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 3/6] remoteproc: qcom: add hexagon based WCSS secure
 PIL driver
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-4-gokul.sriram.p@oss.qualcomm.com>
 <72f0d4f7-8d8a-4fc5-bac2-8094e971a0e3@oss.qualcomm.com>
 <538b32d1-c7b7-41b5-aa93-d285604d1f05@oss.qualcomm.com>
 <9e8c9de6-19a9-44bc-83b7-5947bb626962@oss.qualcomm.com>
Content-Language: en-US
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
In-Reply-To: <9e8c9de6-19a9-44bc-83b7-5947bb626962@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qsaq5XSS2-SlRTfM_qI0LWGqlmO_5ve0
X-Proofpoint-GUID: qsaq5XSS2-SlRTfM_qI0LWGqlmO_5ve0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyNiBTYWx0ZWRfXywx5iCo024/w
 LasQxLZSJj92HyiXU6DrpQGjE7CDgODE2rhMNI21w3YyniT0PJt2ceeLL16V0l3zwLhSG3iwvzs
 BkCjkoZWE70puUJmHSziJVTISPNuP/lkgNI/U5oSJjKj+Zu9r8ehqnoKW1NTgW2jtQb9dkBcrqU
 6KMEaR1hDp5z7vXWF/elIXUhTZEleCYPr7Q3YvQ0ycuffG1OnpXmycZzB5JkyUkL4VOeVD0at2y
 8zqNz8EjX8DuJFvLNREgrjKUVqUpXokfcZvA0Zb2/6O3DzUC0Sgn55PEaqEL41xTfxbN47G4CEm
 fIFeCD/uhZzB7Rlt8LVBmi14kzPm67LnYHuYJ1EvMwNh1qBNJ9fQxWDdXLaKcfBkDrqlE/sPQYz
 x2TZMwWoRrED+JuoBIIC4S7oYfdLrVS8BkJPumVVyqkKPk6B/8SSjKLk6wNmWDuhIxe66ffQ
X-Authority-Analysis: v=2.4 cv=AfqxH2XG c=1 sm=1 tr=0 ts=6818b948 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=HF60lDfbR_BPLWgDsHYA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=533
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050126


On 5/5/2025 6:37 PM, Konrad Dybcio wrote:
> On 5/5/25 2:30 PM, Gokul Sriram P wrote:
>> On 4/25/2025 5:17 PM, Konrad Dybcio wrote:
>>> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>>>> From: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>>>
>>>> Add support to bring up hexagon based WCSS using secure PIL. All IPQxxxx
>>>> SoCs support secure Peripheral Image Loading (PIL).
>>>>
>>>> Secure PIL image is signed firmware image which only trusted software such
>>>> as TrustZone (TZ) can authenticate and load. Linux kernel will send a
>>>> Peripheral Authentication Service (PAS) request to TZ to authenticate and
>>>> load the PIL images. This change also introduces secure firmware
>>>> authentication using Trusted Management Engine-Lite (TME-L) which is
>>>> supported on IPQ5424 SoC. This driver uses mailbox based PAS request to
>>>> TME-L for image authentication if supported, else it will fallback to use
>>>> SCM call based PAS request to TZ.
>>>>
>>>> In order to avoid overloading the existing WCSS driver or PAS driver, we
>>>> came up with this new PAS based IPQ WCSS driver.
>>>>
>>>> Signed-off-by: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>>>> ---
>>> [...]
>>>
>>>> +static int wcss_sec_start(struct rproc *rproc)
>>>> +{
>>>> +	struct wcss_sec *wcss = rproc->priv;
>>>> +	struct device *dev = wcss->dev;
>>>> +	int ret;
>>>> +
>>>> +	ret = qcom_q6v5_prepare(&wcss->q6);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	if (!IS_ERR_OR_NULL(wcss->mbox_chan)) {
>>> You abort probe if wcss->mbox_chan returns an errno, please rework
>>> this to use if (use_tmelcom) or something
>> Hi Konrad,
>>
>> do you mean to use 'use_tmelcom' variable from driver descriptor? If
>> yes, what if mbox_request_channel( ) failed?
>>
>> or based on wcss->mbox_chan, should I set 'use_tmeeiihcckgddglcom' to
>> true or false and use it?
> Add 'use_tmelcom' in match data and then make decisions based on it
> if the mailbox channel get fails and use_tmelcom is true, fail probing
> etc.

Got it. Will update.

Regards,

Gokul


