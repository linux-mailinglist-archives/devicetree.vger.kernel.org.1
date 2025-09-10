Return-Path: <devicetree+bounces-215435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E19B516D2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B5E144061B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 12:25:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1354319867;
	Wed, 10 Sep 2025 12:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YGSMO8cs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A483191C8
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757507138; cv=none; b=oI9GHztrLn5VkUf2qi2yeZHbppywjHQ4Jn2UjldkRK7HCe6QSZLjkvZGiP2rJBeL226lxB4ug5jfrQXQ/5vuN7sYkpM/tVnFWJlo4fnnZqXS+TQmhZN4LLDdhb4bY4bOwIQSsdoj6QxHGf7ap1XHIEytSa6lzijkr3QwcxsKdHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757507138; c=relaxed/simple;
	bh=I939lIKXR/P65iimR2JYCNDGh3a24yNGf+7dxgbMuWQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SRr/TfyxcYvavwOCSj1LMg1minAN/8rhrdHZeVDb4fhOXyeMXC5BEl5P0gjqS9bCpbEQDcLnW0IRsi4vDImaCEKavFsgwiDXO+mMY7/ODbdRuFHfgegKzwflwgQwd0nXyXJxDFBncoSn5Q8YVbAGwoyMuID2IfMexebxrenjlz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YGSMO8cs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFPJQ032198
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:25:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xhCtGHB0DkBobVlK7MICfsktcm5yyzHhvJCYtnxxZbw=; b=YGSMO8cs/IX7VOGl
	qYARYWX5lqqlY6xLJWPFYVq6YnEyTXTsbJzzhU8t0lUDFh5WbZb09BEZzKi2NMvw
	pdw9VOhyBIYEZNu2ZuY5Cx2E+REObTSN3O6KUpW8qy/YeUk1LWX7dQhK6IJXuuoR
	N0HLJVkN9lNf5aI1SlZrhL/SPNu0OUeKDPfmEgYkhCarS2eD322RQdHD741xiRWJ
	4ci3fPWRl918MOQuDdI0rGpGUTf3ZWrEXgtTsawcA+gGbZXxrpQezzOLdsvywWDk
	DhFseYpyh9HUOYx2U+GdASX35h4aMfA7F6Wap4VNeS620R3+vh6X0vFO4/QRoIqZ
	JcdkCQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m3nse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 12:25:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8186ffbcd7cso116965385a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 05:25:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757507135; x=1758111935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xhCtGHB0DkBobVlK7MICfsktcm5yyzHhvJCYtnxxZbw=;
        b=grWOTKzeGJeElqq61GvlApOP3AwjSywpuUpYEU2ihsMhzYYsIcxbOabpLpFCL2Thpk
         z3WBFwySR55SyejNp2/x0OeigzV8NtOB4INTyaD+fd4irAv9CeSgOaWlM0az7b+WSJLb
         egH45EzaJ8bqUtWF3tJCH87CLvP/L7uYJE75/7IM74WPwIkL8RGOgxDmkqDk0Q+HcKx4
         KFgDSN5EO16tOMRoacwVrv6l7pM39m1sqtvgyC5YWOM9ufQBXmGSxUmd5oYODyFd5ZPm
         dpMdnY30NQaDq93UnPH8E0o8UZPUSj+/2EjoW/GQTyMAlJ+qGSIm0YzGxaRRaVTk8NXf
         m/Xg==
X-Forwarded-Encrypted: i=1; AJvYcCXUWPnXa39XKjMpKLSwn/P5Y3VJePOGsd7MOHPA6dy0jKr5kQZGcx2+Ozzfp/5F5DrPaONI16dCLOm6@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo/cYqpHxutTsB60zpYtsgcnO5Mdr6uCAiiaT2ch+6GoJf32m4
	GSDszr2v80h37xAbDkYf7ROXHL2HT3fez2qdVPjxFNNLFpOtQGAvkO1apuIm0f9Sn6r6faYBpY9
	5WOcEqGHq5lcYQJlDLLjVFIVf9eyVR+nY0X4IkyEFa657e7CZb4msuYPi0PWulYt1
X-Gm-Gg: ASbGncvM2HMMH1ouGE6eKNZOm0o0uR1b0hg1TXDEuZ1y/jWMoFjdJbbkRrXbLvxRxTQ
	wxeOQAMrdRDWUSrmKu83oHk6YHnDpNPS0I9UKdYlL+vetNAl3dl+f8faG4LN6uXFGRGZNvAfKSd
	gBYqkAj39PR3Asyr0CDZgDfyRlHMKhlPoAvQCM8QKVTi/k56DJcD7Mf0+dx3l7+usxN4elcx1R5
	bke9ckBm+ZdLCu9EHMD9WGQPWIu68sl8/HOwiOm7f+clZFrwGhzHngAQkwttzMusA06iOPgJ3cN
	sBR7FfU9XcivmLuRsje58I+hEVFLyLfEdjfWnBOZu+hYuCsb+8v5f96Bl1MzpT/XuYD/XQv/sFU
	NOQJDvayE8SYpYr21Z99bZA==
X-Received: by 2002:a05:622a:190f:b0:4b5:f4c0:5fd with SMTP id d75a77b69052e-4b5f8531717mr107906271cf.8.1757507134751;
        Wed, 10 Sep 2025 05:25:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE27NK31Io4E+jeD+4VIvXuMgeiu+Md8ls94UaGm36iHEowM6oGp7UQf+Mw0cZqlAH0Hlx3cQ==
X-Received: by 2002:a05:622a:190f:b0:4b5:f4c0:5fd with SMTP id d75a77b69052e-4b5f8531717mr107905721cf.8.1757507134155;
        Wed, 10 Sep 2025 05:25:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b078334b0desm158265166b.66.2025.09.10.05.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 05:25:33 -0700 (PDT)
Message-ID: <2a7bd0cd-a6c4-47c3-a6ca-f9d94c9b65ec@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 14:25:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3.1] media: dt-bindings: Add qcom,qcs8300-camss
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
References: <20250813053724.232494-2-quic_vikramsa@quicinc.com>
 <20250910104915.1444669-1-quic_vikramsa@quicinc.com>
 <5a087d08-273e-4740-b47d-fc25be952ebd@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5a087d08-273e-4740-b47d-fc25be952ebd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXzKZVJ4TxkQ0N
 33+ubWh49MqMsDR033zrzsyuODxZXyKW2a3Jnt7LT4xPihyDBb8g17NjWzTmX0Ybf3yssORm4mg
 DZTvt251okDI++MgbixBDKu/GVY5vaKfr8+pDB79h3wi8FvH0EOt0Grkfr9UZHm98k+OzwGVXv7
 UkLbbYpCbzgm+q2MP59FddnES9zdg27Vpfx6AVZA+PjQJHprSUcPtMCotORTFd8N/ewwsQA1S8j
 qSFMriWvMK1x/K2LbE4f1rg7pzlL9CNtniRqInLyl0U/VEMWy2o0lLBEJEnTaYvhTVD7pHyp/nF
 3ofqZNmRJg7b5XmxULTVr4rTuR93HYdDNAN7hWTathSNyZBJ8I0fsh/gG+CHlaXqwezRDOZI/MW
 Dh2PnYjX
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c16e40 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=P-IC7800AAAA:8 a=COk6AnOGAAAA:8
 a=Ttb-WI7uj3phwydCKpUA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 6MWkaDTrUhg3c_g3FF02rafdV0esDQ3r
X-Proofpoint-ORIG-GUID: 6MWkaDTrUhg3c_g3FF02rafdV0esDQ3r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On 9/10/25 1:38 PM, Krzysztof Kozlowski wrote:
> On 10/09/2025 12:49, Vikram Sharma wrote:
>> Add the compatible string "qcom,qcs8300-camss" to support the
>> Camera Subsystem (CAMSS) on the Qualcomm QCS8300 platform.
>>
>> The QCS8300 platform provides:
>> - 2 x VFE (version 690), each with 3 RDI
>> - 5 x VFE Lite (version 690), each with 6 RDI
>> - 2 x CSID (version 690)
>> - 5 x CSID Lite (version 690)
>> - 3 x CSIPHY (version 690)
>> - 3 x TPG
>>
>> Co-developed-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets. See also:
> https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830
> 
> Please version your patches correctly, e.g. use b4 or git format-patch
> -vX, and add changelog in cover letter or under '---' of individual
> patches describing changes from previous version.
> 
> What is v3.1? How to compare it? Try yourself:

This is a weird invention that some media maintainers seem to promote..

As a b4 user, I would also like it to stop, as doing anything other than
v(integer) will open the door for unlimited craziness

Konrad

