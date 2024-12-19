Return-Path: <devicetree+bounces-132825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 834B59F83C6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85E43188988E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F741A7255;
	Thu, 19 Dec 2024 19:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lOpUjl63"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1B1A264A
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734635245; cv=none; b=NyimoEAf6FNF040w7M3UR6oWewgcn6y4qgXHqDnb7jffnAtSc6g4QZ2FVnk5q0P8lE5pMg3QVfCMWxUM1LxYyjv+jP+yZj9fsP13h/ojCvemvhpH6HdodXPqZ9KitkxrNiEX7MRI1LBLrTKjZRSK1WwSO5UgV36hYPHEXoRDm4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734635245; c=relaxed/simple;
	bh=BXyyuqobYjU1FYVdrLm66hU1E+pekmTlprDf0Mz3zog=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fya/TtzRKD3+Rlo3gAnIBy+8uEvz13AOqp5hOwTxfEPBsHA4Fe8IHaQyjzA46T/b/25wyFqrHlJl6i7K6SBprp5Dw+FCiqXy8+xXsUCIVBCB8rK0RO5nDwip6R9Ij2vWVVOtCdyIlICsEXgltkLGDIb1U0jRdWDIhRQBXG+hiBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lOpUjl63; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJF4aSK028887
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:07:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xme2slGOLEbJocB9IGjx7rTsSbBQsnZE7uGnFV/HUcU=; b=lOpUjl63XbC7NSLu
	CZQNKN6Qvy+74280qGjzpjH5O++8tY1BbypdaBhJgO7BviWzx41v80LhQm7izMib
	kdA4vzVFHbpq37PNAldmNNPARLfdn2ndwDav/kPTYE/kdAX8UEbPRxzvdmmJSyBO
	KmOEkIWZBGyaGm0zMgESXrVQQ8YxzxTGKKRxk1X+m3jbfRZZF46yGU3vOWE8v1s6
	1Sm/HV9eEEargOUzgMTq6cPgK8tJddtVZbglK+yEe+Cvzap1nKLCV7/ruhhTMEoV
	ygo4NIGB+UdJxUkd1GQpL+Xnm3HTCEjJysGy0LiU1VE3BIuWtBTRi1PSOlpZprEs
	fc54Uw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mntf0mr9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:07:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-469059f07e2so2600101cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:07:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734635242; x=1735240042;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xme2slGOLEbJocB9IGjx7rTsSbBQsnZE7uGnFV/HUcU=;
        b=qBwJBR/5Fb3gv1r/u47+jeIifZyy4rqtAZ9VjCLB4dAuyA43v4+iGAUQV8XJ/g853o
         AMzpT4+/ffXNO2AOE5oV7/H7c+Uo3dyO+f7+iQyZGOT5c7wzxqifpLQ/EkimU/QfjQFs
         Cf4kPqt0HulIxeB4XjQKU+Z0qIZSIEeuRXYXREDKXriG+74oxtLWradmJuFF/eTaVDTM
         PeSp2A0XnkymaLcwWpNhvj2qxBEHpYVZgXih3faaMml3FK25iZbq2oXtsshPKU3LqsWo
         lnh4eBxH4A6H8zi26xJ7mJOahpMo35PCH5+Xz3FoIn8xI2deQDDP31w+xQqefhLh0MW9
         REuw==
X-Forwarded-Encrypted: i=1; AJvYcCUB/Dg4r65RbYeAk5Ru34agI44pvmKjymM7dDW3gPvikD/cb3Phq4Boz4QjXe3t7xABCySzAGycc7vw@vger.kernel.org
X-Gm-Message-State: AOJu0YxV+FNZ0bnWZNjF4cAec6sMKQpW7OHmeQRX1vLDDoql+KxuUna6
	dkxxSQHG4iEi+OeDo6ZdWDH9j0zPykTzxM4xJsE7rtSdDsOue3B5ijUXQ9a81Iicf40EY7vJjMP
	XFcJ8YGjPtGRau9KPDhzpcnsQm27I2nI8o0oyX694hKRNZY5JqRNKTIe1w0ob
X-Gm-Gg: ASbGncv6w4qKPnzGEt0EkySiekBJsmFXQBg6W+wK0/mycovmEj9EMTgTkF9VfP8dbWe
	HsHIgTpDvXL4M3YWvTXzfGS5OxDQttk1iScFI98l570Rq5e1sh+0ewYKUsaJQtyQqf1D+Sg12OR
	gvy/NC679tvzyYoxsF2LHugqo3DVfrreZdygtZxU5cB8h4S85XN0M6rXT5Xy3QVeo4A1Ui9l17h
	C6PLUEeimh1eg4VuGBf4h8jfTudrCWmC11JcnPhBPFRHPVo4I6yYAdrocCVSlFnHlhKRCw1BqAJ
	5rdzK95pSgISKC/adrwW2Pp3M05ouTYZP74=
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr959061cf.1.1734635242127;
        Thu, 19 Dec 2024 11:07:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiLwg4qpvhyo6XSbciUnY8+6IEVaUWF1WSYXCTk5jZqKx2WFc24CxCnir5+qhYN0wAyYx1/g==
X-Received: by 2002:a05:622a:1794:b0:467:5715:25c8 with SMTP id d75a77b69052e-46a4a8b81a9mr958821cf.1.1734635241755;
        Thu, 19 Dec 2024 11:07:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4917sm94313566b.121.2024.12.19.11.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:07:21 -0800 (PST)
Message-ID: <5c4c4ee0-9e2f-4ed4-9fe4-ca41d18321bf@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 20:07:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/4] arm64: dts: qcom: sc7280: Add support for camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        akapatra@quicinc.com, hariramp@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241217140656.965235-1-quic_vikramsa@quicinc.com>
 <20241217140656.965235-4-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217140656.965235-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Up8G3W1AkjToZGnWNDsJaV9o1KGr3A6j
X-Proofpoint-ORIG-GUID: Up8G3W1AkjToZGnWNDsJaV9o1KGr3A6j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 suspectscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 malwarescore=0 mlxlogscore=895
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190152

On 17.12.2024 3:06 PM, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the SC7280.
> 
> Signed-off-by: Suresh Vankadara <quic_svankada@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

