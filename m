Return-Path: <devicetree+bounces-156578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C836CA5CABC
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 17:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05F22177C6D
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 16:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540C725FA35;
	Tue, 11 Mar 2025 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kDKKUUoc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9403925F96B
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 16:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741710263; cv=none; b=XsGcl4hqFAx399TrLB+p25UeTQ2Mw9K9W7x1dWPlr3ljbs4myLlXd++HrxMIE4sBlVEh7MrnzvNHGb3L1d26tvJbQC0P1PBaz46NFJKfSYeQpfNFboIeMwkPwOd7p/yvSx4/NCAlgSX5VvyzTkVp9Qa1a7D/Wc8N0Nvw2B+iozI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741710263; c=relaxed/simple;
	bh=qgrBqQHmYtPZiDw3T63rb/+wAIHYgCe4MJOzvqt9Bak=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qZ1luNHYnT+fp7yl/KDY6QdqQ6Xf4x/ZTqvj0mtXb8Bctwh2T5arzfQEZp09WWHqMHDQbvGXM6mh1COnGrEoroFIviQxeBYKKfjN4DZcN58vNRstq+jrzUzZ+kIi/enLhlJeh8GygYaBt7A3ZZesLwMM7GYvb7bp9Yh0nl3yFjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kDKKUUoc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B8KHWC012249
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 16:24:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxMkImD4XvCHFtK9LMGsOV/QwiwfWxTZdEB/IERfs4I=; b=kDKKUUocqn0ZCwsK
	+k2WIcc2pnWkHDsXwnvD7AK1R5kCHNgGbJD+ytIsxqXDIrg/FwhxBj+JOb8CQEuP
	+3rdO139ZQCiaRMPfe0tm1fP9ykw3zsYcDHTKBq9NJ2S/tK2bZD5RL6qQ03jN005
	gJtP6TXwKiKHn68OljPDUxEnzwKYFguVNVbNRx83LnkdrFHdXG8UdZhB5Ks3TbbW
	FauK++oetBi4RlrON3dLA+DPGkAInhY2akP0szs/t4ikeeNwEFlm141dZahuxrXS
	I07JIFR/lCQvWeY5k5bZOeZ3SyVEcyC18BICyZ07tCvF/We9p1lwzZjEVJJdHToq
	rDNUHg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyuh91t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 16:24:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7be6f20f0a4so148764185a.0
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 09:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741710259; x=1742315059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uxMkImD4XvCHFtK9LMGsOV/QwiwfWxTZdEB/IERfs4I=;
        b=rqkJ4yFYAmpjgW/FjchiRIcG0EER4gkwNMkvi6eePuZd2HdpH6cUzXiJA+Bioy7S2s
         q0KPjv8P1Jj4yhsbuY7LXwa+O6y5bT6/hV9uqGYQ/IWyPMEV9h2e2PaVcrEf144gLtz4
         TR7QK8pFSiWdJuOia05P/C86RwtezTg0n5Z/mF8yXvSg513ZGUW6Ox5UblB3qNeA5Ks1
         fE3z7eUqcZVBp9pBufnYmheynP69luCeRKFoIlPDy4GOdcx1umXch25o1r2TQSBGkRna
         hUxLfECoSfxatrNmwuM2QWhk27uh4yIvV2CZcSMVerNdqpTUizN4Rr0qjYRjAw3RMfdI
         dePg==
X-Forwarded-Encrypted: i=1; AJvYcCUMZYeWAEzQ08zQZ5I83fod5+hX04S/mBDLWxId5SI+tWrcA+OHJtWH3GEcnkPrPSNjhlL5EYfbIaK7@vger.kernel.org
X-Gm-Message-State: AOJu0YwJqUmqJ//r/uWJiE7JlElWIzqLWmMWCa9cqq7LFi6fCS08FyjL
	0ivFgKsPbNBSpn9nZ6ve5yaMXG2eDSa4nCNuIecArlATF/PL2nSSBJWxb156FQCi8Vmbyyp9px3
	F/Gg348e7b1irPpReA8RukOg6usfW/9NU2cKllAXKU4vdu3f1W1NbIhSIIdRl
X-Gm-Gg: ASbGncvvSmXpBbmRjFXSMCReD5s0v2uMEQDHv5jHRq6d6L1NUOq2Bj/GHVkig5wTvVr
	x2IMzTKnm6OZK/duHO9x3s38uwPos/dEHhKibDotH3heJ4ZeVUSWvWOj5lLqbe/8TucTPED/qDf
	qEz4F6tnRFtmE2YNJnOpr5T05J8L9LsfENIC0bY21pSTZ/hn/20vW0GlPrjKX+giOxxn6l0FuG2
	HhWkP9NWvq+oH0KAOgSNEPqlxxB+eXw6VJTYy7MZ2LMLBc+6w9/zlkHV+OF2NBt0D1idt6d4MXK
	ZUJOBYOQd/Jg7iAIySefxxA1hRzmk1toWmmIu2lPdq07P0b0hT/a1GzXOvizY2xbrF9g8Q==
X-Received: by 2002:a05:620a:1999:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7c53e1f1620mr660772485a.15.1741710259513;
        Tue, 11 Mar 2025 09:24:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFb/06oUsi5cu5h2BkX286HoUPd6spRXGBxkQEsEQoidWXTYp1CgE5/YUcHWXT5T4IA3c6k/g==
X-Received: by 2002:a05:620a:1999:b0:7c3:bcb2:f450 with SMTP id af79cd13be357-7c53e1f1620mr660770685a.15.1741710259107;
        Tue, 11 Mar 2025 09:24:19 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c733f8aasm8501795a12.5.2025.03.11.09.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 09:24:18 -0700 (PDT)
Message-ID: <10564e08-f8fb-4db6-b613-d01bc2a62899@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 17:24:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: media: qcom,sm8550-iris: update power
 domain name
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250311-dtbinding-v1-0-5c807d33f7ae@quicinc.com>
 <20250311-dtbinding-v1-1-5c807d33f7ae@quicinc.com>
 <7yjj2eemvvvnsgv67d7tueid4h3n3onuou6ammx36am4qhfsal@xam3iamk4er3>
 <c0430086-675d-b58c-4ef9-1bd9ee51d3db@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c0430086-675d-b58c-4ef9-1bd9ee51d3db@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cbIormDM c=1 sm=1 tr=0 ts=67d063b4 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=Sbx8LK-abD1ORSsONcEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: tEBUetXG-lE8DoamGFBMu9fIL-fCxFwC
X-Proofpoint-GUID: tEBUetXG-lE8DoamGFBMu9fIL-fCxFwC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110103

On 3/11/25 4:11 PM, Vikash Garodia wrote:
> 
> On 3/11/2025 8:37 PM, Dmitry Baryshkov wrote:
>> On Tue, Mar 11, 2025 at 05:33:53PM +0530, Vikash Garodia wrote:
>>> Not all platforms has a collapsible mx, so use the more generic naming
>>> of mx in the binding.
>>
>> I guess, it wasn't even tested...
> Not sure what made you guess so, let me check why my binding checker did not
> catch the bot reported warning.

You probably checked the compiled DTBs (make dtbs_check / CHECK_DTBS=1), but you
also need to test the YAML (make dt_binding_check)

This change can't be accepted as-is, because there are already expectations
about the naming (and order) of the entries.

Because there's a difference, you would normally be expected to add a whole new
list, but maybe the dt-bindings maintainers will agree to Dmitry's solution of
adding a sneaky enum inside the list

Konrad

