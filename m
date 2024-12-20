Return-Path: <devicetree+bounces-133020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C41169F900B
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 11:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A68A164BE8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 10:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50ED1C1F07;
	Fri, 20 Dec 2024 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DxWqrbI2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C911C3F04
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689827; cv=none; b=a9S/JDqMwalHKWb7s8DSacbQKKRgUsJaJeiENZDDnblAeHHeXFxTqCVhSeF4lkieoy97HN7jC1xbjYGj8z/kOCxfksxQBn1MAY5eh+IW0are8KKK2KspSfsI61yd/R3jwSXd0cRSUVO68bSnTkn8ap/IE9UP9OvhdH0eC4kZW9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689827; c=relaxed/simple;
	bh=dpyekRfEEuYHq+Q2cMWXC6HhUthVTFXuEzDEP9ulU2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jfqUn2DL2JYwnxlhsXJ779QGPCW1mZFb1nJckvd0LP+rWWNaG4UtAkpUf2Gedf63HvStx8uTQutwJ5nkxbbgAEKXZ/2YW3yO8q5c4zHEW4MlwmamU29OXDdpnNUjke8uoBCswg6ZBFwDmMJPjoLl3yqYAeeFS4aOX0eqT6xF59s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DxWqrbI2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK4Pafh024634
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u/mWcyc9PSpD3cCH/0Ahpmf2yDEfveb9OVwcHH2HhT0=; b=DxWqrbI20UOSakCn
	Nsv0liTSK1fHfnSQdkXO1fd7bBjvImRv3tnZQKohnMScfBYEKNfPbfYdQ1z5u4ar
	8kyNdx/Q+NRq6+UgbbokFafkHSydyTqcHxk5feA9rDrZMDCwKwa8IPXLRyevws62
	EHjz8ZL0lgTsztsBs1pAYoeFXjcjAR7Eg1mgH9jgTl4XgonV6VDdVG39NxqBUccR
	rFXuiPp5bzqWleKm8f2UzY0oxfxz+BSbJOXgw2nM3zUsgOWj4JA5Moo5IzvvSrXB
	hA43RP6wGmNE7Nwsgzc3JaMIQMrHkO9DFFFQF3tLFYDfgJNCIsUgQ/Ckp7xbR9hs
	9LYGvw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n1hx0w1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 10:17:05 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a0d7fb9fso4455381cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:17:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689824; x=1735294624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u/mWcyc9PSpD3cCH/0Ahpmf2yDEfveb9OVwcHH2HhT0=;
        b=sYmSNCNw+WkB0IWsN3M1gNECRHDsMku8DtEGda3RXbjLbrmLq1jsgweosSm4AWJs4m
         QiyGcrvSm+KNS2WjLEug9naN1vcEsMBzBQ3PnenSzG1NpLNvD8KdfPvNWLmSr95uWiv9
         dezMZ6RxnPRbAW9rtZO76x5PR8FNHQyqSaDutuKsH1AP2D36fOID+IuUoeDjqa/rw25F
         xrSgKdrIDZ6Y/QVObdb48UQ0Tgf+DHjMUfIZitt2u4O+q2Z4Q2TZiu+T/mFpC2m3bd8Z
         /CljQaVBUk5JcrL3Jzwax3C/NtIa4XM+fd/1aj/Jo4Zd5rQOlX8rynh76gqNAU4QE1ol
         Zz+w==
X-Forwarded-Encrypted: i=1; AJvYcCXRJHYedfRBY8p/RuM2usae8haESGDJuGCpvTrSODGVn80iTstsjkdMtRWrMjTsRhRuGUC7m248C2+Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2s9MiHYTOPds4gNUH+P2DxE4ogekB23YpT0TzMpLizWtNWkpo
	UveS6yuHTqskh3AYwlJOAecXc0aTzLnFh20Vjksa+W9mUcIqikATAmnblFwzXefmTAAqSbMyhPz
	VRlyP5MQqsi/YIEqIaVtX+QzQw05NK1WmoQlfEbNR87dMxOi3ga8qbMarAluH
X-Gm-Gg: ASbGncsUrkfs+FOdWV24cz54PgeOx1NuUkC9RKH8ejzbw1AxLjd9vGHGiU5nYKmUCXJ
	BRVyq/ZnI+vZsqr/G/dOb+g8+rT01t9bybjfCyTizxQa84hyoMhGF9eNeiGMPJdM3j/zlGZHD15
	LkgC+xPVdU3gTgNgEoCEevlbeC817A+HysUcF9ol49enPZyjGWRaUIm+RYTMLkYikSm1uiJZ71I
	lr6oth+lz7gaGM6W74mE6GZTM52+Xq2TPb/9BS5ZZnc3idjPkwte0MY8+1mO4T/aYH9yqvWxf8y
	aC9uHI2uZVILDMEGsCGkdBmbjCMm9V+usX4=
X-Received: by 2002:a05:622a:14d3:b0:46a:312a:54d3 with SMTP id d75a77b69052e-46a4a8cbf47mr14269571cf.4.1734689824251;
        Fri, 20 Dec 2024 02:17:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTTu/4H6/KMrUaTlWO8zj44laXUXuji5sXvxSpCA42Sd1+lO0jgLoRuunnQ5f1OzfWmVhKew==
X-Received: by 2002:a05:622a:14d3:b0:46a:312a:54d3 with SMTP id d75a77b69052e-46a4a8cbf47mr14269401cf.4.1734689823951;
        Fri, 20 Dec 2024 02:17:03 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4922sm158207866b.113.2024.12.20.02.17.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:17:03 -0800 (PST)
Message-ID: <525056b2-09b6-45ef-ae38-718af8d6b76d@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:17:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
 <20241220055239.2744024-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-7-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4v0fGP5JAANZBhddH8jJZr9O0wSMRWAR
X-Proofpoint-ORIG-GUID: 4v0fGP5JAANZBhddH8jJZr9O0wSMRWAR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=670 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200085

On 20.12.2024 6:52 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

