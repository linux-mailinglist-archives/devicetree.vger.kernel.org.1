Return-Path: <devicetree+bounces-183450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE79DAD0AEB
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 04:09:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD910172ADD
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 02:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 901C22580F7;
	Sat,  7 Jun 2025 02:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sg/iHtzg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00425217F40
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 02:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749262131; cv=none; b=cPFF74bk6W5+KwdWTvijGmarCDPEMjDcC4oMQZV4C4GhMtudegtNRZTdqppSRDyQRkHRo00fcbopreWdPDYqTeb2bpVdEWXUUDjioIENKTmUqMoY5wpnj2MJIx8Qbyo3KAcKbYfE12E9kFOLq+bqO12dCJay/9cdwt45PEM/VFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749262131; c=relaxed/simple;
	bh=1wPBp9mn1Yt2Yh31Y1H6YFb0Bxf1nyDWQ8/uWhDjpd4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=il2PhVFPa6u2OU2AUVyxSBnhEDGJwELFBDU/B/9bk5XguDiZuVJFhC3rXyRIB3HmJgL/2oqoOiyNx42rIEnBDdB5dnmGJOq7bZpHCH9f+xgoNmraG1lRZGfnQy5eSIwODOfrO67SLF831QMJ27JnPQOsqCqh+u39Muq5Fe7eX3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sg/iHtzg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 556F9O6b024435
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 02:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4d2TUqwOZCp8hCOyVsn5//7lj8HaxFyUEfEqmF7yDXY=; b=Sg/iHtzgqBxeA4HR
	+CvW+2ghX5pOzyDtIrPBEdn/PuJCNKM3CcnuD0jHhxipR9aw9pMP8FfS1Nl8btlu
	KQTDq8YKIa9o2l4hDmpO46avS0ZibebYNS6H3eJ8fLUUjcMpNSZ9EqODTb3792DX
	jYZZ5DxxyNa83xtrRccp6jdFO1Wej/TdS43JiyGibu4VKcqE3KBDP1C1ZyJ5B2SR
	Xjz4bsGK7iIIj2heJOODS1XbHsPddzsrC7jyr88DdunJjy8/yB7V7xZQSkIPhqn1
	iBEAtsoPU6X9D8UMQ++NmngjKj+EymnjCxYcdfFeywL7m2Q1zYX/lFrbMqpRtAoC
	wfjX2A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471sfv51fe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 02:08:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d09bc05b77so425438885a.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 19:08:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749262121; x=1749866921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4d2TUqwOZCp8hCOyVsn5//7lj8HaxFyUEfEqmF7yDXY=;
        b=HZqWPbwf0hhIswm1Vpu4nNgOYkUSRcnMQDU+/hED+hkGVPJIEfTnYBG6dAnAcUzn1F
         iiWDa6DVd20b2umufXnRzyvbFHbE6hodoYvg/zYKZjOgvTRJqEuawtuUfPMdR2ZWzB5J
         khYT+cRxFqzUo2DQmbuKSo7JZ+DYwDmRBEJYtrF6PGb+LlM537+pH810F4VP6HZWkC5p
         oWF2OhdOz3C8uNE3MjQA4wwtSNbcWi81ZJ5CYXT/saMGS7PoOsK8p17mcMYggmB3m29C
         cFMKv63Y8RDFaINe0e1vnw+ZEDbBPrk/DcejmxtqCku2nxx7Ff/HxEFFlsUNShJ6LldZ
         CrxQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3IK1gXeSS/LJK2sw8lk+C+Ph1H4tIWKapVtClCjj6gD7oGdWxCIFU9Ia0a0H/VdSbyUpeI0ZP4Z5s@vger.kernel.org
X-Gm-Message-State: AOJu0YwutW+a1mgWyZgzO2bfSQn//Pyc/VObXxTr9d8wjijJ0YirhfO1
	PamFkmUXbtjw4hTKjHE2MrzU4+6HsUWLwnWaN84SNbuQzef+2QvLNpVXvR0KEHULzN7UZylgbS7
	YfQ5+7xzPK8tTmbntAdsLgNqyJyO42oAJr80tXRKy+WzLDHDvv48OcXL/qE3c+RO6
X-Gm-Gg: ASbGncut37Ffk6ixIDeQZhjw7crlSQT3a6Lbq8BY566/NDiHAdv9+okaOLdZGnqVf0R
	HrEUonly5xM0Ph+Gv411bkJ1HZm9DNDA6BFK5DUCL2dHFtpiO9qovwyAYpILW/FMr/HRDmGRfmE
	Z3U0pqwCySvj8TvQ9Bcd0OXRyqKYn9QA7S29uQ98Gv0d4WusyOv6cWET3ziYiY9Y7EvSEkHEgBP
	J3D0WGie6DN0/9f2ZLg0Kbf8Sj8szXiSvFcPPOmPS3BKSGmjysoAJ5fsqF4LfjzgVFGqCryp7A7
	ZMpNufr1CFfRaizpw/wEhcZCSxbDJVoyKalc2lOKOI2GkhvplN5AGXd0nHJMqDJ3PlZDAd3r/MW
	XwPS0zWQSvr0pQA==
X-Received: by 2002:a05:620a:2408:b0:7ce:bddd:7119 with SMTP id af79cd13be357-7d2299329bdmr812224085a.51.1749262121028;
        Fri, 06 Jun 2025 19:08:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEz7nZzHZFUC4z+SxHCj3/apQ8BIw5H1t8RfplWUNiwQy336iHPVr/nvIPtH3vtjLYLC4dchQ==
X-Received: by 2002:a05:620a:2408:b0:7ce:bddd:7119 with SMTP id af79cd13be357-7d2299329bdmr812222385a.51.1749262120660;
        Fri, 06 Jun 2025 19:08:40 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0c3:3a00::4c9? (2001-14ba-a0c3-3a00--4c9.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553677316d6sm352047e87.206.2025.06.06.19.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 19:08:38 -0700 (PDT)
Message-ID: <5d4c51b9-f4a4-46ee-a8ab-d523fa7292eb@oss.qualcomm.com>
Date: Sat, 7 Jun 2025 05:08:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] media: venus: enable venus on qcs615
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Renjiang Han <quic_renjiang@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <wmri66tkksq6i3hfyoveedq5slghnnpozjzx6gck5r3zsiwsg6@xevgh54rnlqd>
 <285cae4a-219c-4514-818f-34c8225529de@quicinc.com>
 <t6niql4jfotjnbducypwxkdjqt3or7k3rwmltvbhifmpphsiwy@er56ey4v2pzo>
 <a3bf69f3-6500-4e45-ba34-8ba24312938a@kernel.org>
 <CAO9ioeWkLu+ne18kjEST7YU7b1aBzcMBBeyfpagzis99BAeOHg@mail.gmail.com>
 <b710e357-09e3-460e-b097-28cf0c856aeb@kernel.org>
 <44b3779b-702c-4e8b-8ccd-c9c3314a511f@linaro.org>
 <3956eeef-2a60-4bfb-908e-5e3e32970b86@quicinc.com>
 <e18bdd88-3866-4aef-8873-b9b67f0cb9b7@quicinc.com>
 <85533e92-43bb-40dd-a8d5-13d19e859616@kernel.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <85533e92-43bb-40dd-a8d5-13d19e859616@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CY8I5Krl c=1 sm=1 tr=0 ts=68439f30 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=_IlkK9eLdjtuzbIfdvoA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: X-GfjKy1nKRP8_p3Y9x4r3NfD1yXdX2z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDAxNCBTYWx0ZWRfX+E/UH4QqzDnG
 LRGuPRiWt0uToQAZcKc2r/WE6BInhSBTr/FJXFCEA2YvNxifH2PVBV1KsjQdc3G8sYY3FEKMwkd
 msX8NAJ34tS+6Px05g7W9/BY8v4N2wacU1v/7iGNNF1yHZz5pwx1l65vU0KbPgTCk/PvlIoNB7E
 9Wr7GW7c5VaffHI7fwLoWJrlg9J3QmZFiMDdBI18ubgZFk4tGpm/zRlZpmfPH45LX5oX1YImuN/
 g0lDJBgrlQ1GIVu42AyYWQhaMHrn9rU+5XSMj1jaN3JJH6Z4obqQP9mzHcGvvUX8gPr8DadnJFV
 iGRgffqaxY7aXirTawnOqU5XTlayxQYIVOq8xPAy28j0bZqcD1rruUaK/JQhtCAmb5u2GPn9c9f
 Qwg20nt2sNqiWkal204AYgs62jTGpMTCxBBER8IQGwlPfXJpGArshN+2LqP4dVaThw275dhn
X-Proofpoint-GUID: X-GfjKy1nKRP8_p3Y9x4r3NfD1yXdX2z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_01,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 phishscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506070014

On 06/06/2025 08:54, Krzysztof Kozlowski wrote:
> On 06/06/2025 09:51, Renjiang Han wrote:
>>>>
>>>> Reading this thread, I don't think that is the case.
>>>>
>>>> I don't see how patches 2/3 or 3/3 depend on 1/3.
>>>>
>>>> The frequency table is a fallback in the driver and the DT changes
>>>> are completely straight forward.
>>>>
>>>> TBH, I think we are hitting an email comms/social barrier here, not a
>>>> technical one.
>>>>
>>>> @Renjiang can you please confirm that freq_table is a fallback,
>>>> qcs615 will work without OPP table and the DTS stuff doesn't depend
>>>> on the driver.
>>> yes, freq_table is a fallback. driver will use freq_table without OPP
>>> table. the DTS doesn't depend on the driver.
>> To correct my previous response:
>> For this project, the driver patch needs to be merged first. Since it
>> falls back to SC7180, but their frequencies are different which is
>> reflected in the OPP table defined in the DTS.
>>
>> The DTS patch is intended to enable video function on the QCS615 platform.
>>
>> The driver patch is to switch from using the driver freq_table to the
>> OPP table from the DTS. Without it, the driver will continue to use the
>> internal freq_table as before.
>>
>> Therefore, if the DTS patch is applied without the driver patch, the video
>> function will be enabled on the QCS615 platform, but the driver will use
>> the SC7180 frequency table, which can lead to an overclocking issue.
> 
> This means devices are not really compatible and DTS is not correct.

The devices are compatible: all programming interface is the same. 
Having the freq table in the driver is an error.


-- 
With best wishes
Dmitry

