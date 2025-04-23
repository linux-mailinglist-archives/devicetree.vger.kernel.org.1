Return-Path: <devicetree+bounces-169829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3740BA98552
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:23:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A234189E6A8
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659C6223DCD;
	Wed, 23 Apr 2025 09:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLNSx3tr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9FE1FBCBE
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745400217; cv=none; b=BOqSmrEjqmtd8hCuwsP8j/oHmhfC/CsTBNkhUqN140nkPSqG8VHK2/CY+MnZGxZByZ3M54puI+ovWBbw1DD6jkYWRWiDewKYb2CReZrZOANcTPFRG+Vp4k/w99dUjmcW+msWxDonpmvZkBQeH8DVKLlFo1zcKL3o1h62WfZFf5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745400217; c=relaxed/simple;
	bh=iH7DP9dZpJanqirxLyNRUGOtbtByGYbxW/ZmYSEtK5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yrz+TrxejAU3Sx3n6JFbhLtYxJ48BxKyvVYAz6nPssPpxZu3G0pg29eq0LMleTnQJEqsEXH+/vznv6/TRLQXV15zCUPSBmdFzXqt4uAva2MyYjcY/FnNIY8Rz19VUD9b/e9Y3DS3cHXp/SFXn7+AN+YoLd57k03z+bwAl8KfeTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLNSx3tr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0iAiJ013399
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:23:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S0DX7BSBUwn7p1lpR4izdME50aVoNbeF1btAoXSr/gE=; b=cLNSx3trTKgV1bGH
	HDNGFYlvI6zlZmH81gTnu3ifVUibeKviSphb87i6r4abHOvQo+Mv9tK7YlAw0yt1
	TGv1o6eJLKXjeKJxIbqDN8ZScBrhP1qs0KkpceR8cQlpW5B5LzrDTyXeo4AZLiwV
	hHk6izwJHIayeYlKdbXNb/r+weE5b1FQ6bcVkJNNkFCuoYySIDJ84oYyt8G/0VC5
	RO7FIXwgfdPrCuqq5LBsMsGV07DfmtjO5k+t1x8OP11OezWQOcP0KmytYLrkF6wX
	spRXoLIuEvpUrrIT2TwIaWLpV8Vo2IwK8GLylwNzhxj+emf03NqJjUIppXWZvqvw
	zwIhmw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh39jnx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:23:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4766654b0c3so11924861cf.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:23:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745400214; x=1746005014;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S0DX7BSBUwn7p1lpR4izdME50aVoNbeF1btAoXSr/gE=;
        b=gytgrxMHpHuRcpt6zbUdOPXSVIoIAsiLyogM45EWsyBMsAimcZPyXhFGyN/O7fVa50
         jZdiIJ23J4NI2du5skP5dhob3VlRTpZzVgMN0gCTUndzArD2nUO1p2Yf3vFJE5fwQRXO
         QUbZOIHKhqRImpr7Q7MQdhfLUQ6/z5EZ0w0h5tfKUEkv6grDEvX4m/T/4TA1dsaAJXwT
         BrR1c7vH/bkIfAXXxtcQVjDh4/zEajq4EXEaoG1j8a/xe7hVpnwGTSwwyTmXhJtakf1X
         rmN9BqqNu1JV2yU4NEidZGOi0Jhlf7SBrOTeb2ClPR5Tt69CtU0Bnbp7GRwv+jP7mneg
         jZng==
X-Forwarded-Encrypted: i=1; AJvYcCUvcoQozbFihVOn8gPDRXv/5YM9tzc/hAXA0AxdLKmnP3UuajEMxp1TNwva1aZI0ArpiSuh1F1jHkAw@vger.kernel.org
X-Gm-Message-State: AOJu0YxcLep6GFB8USHWBQcis/5x74HsX2/WOrQM6dMIqXJXuR/uGdhL
	H1GNlbcHfhcNVLTH/wNy3VO74PssEyizN0AKVlTDlrAzZbP6dcJQlPIEi+Q1Xj9fd4DSe4RAMfs
	Pgl6+X0XLiYGgKvnbgIVC87xnNHOi96GVdpljTx5msf8tW64aYgUY5PGeh6yL
X-Gm-Gg: ASbGncsiF5aNJ5J5twsQcmR2PzC72aYfrEbp4K9ljW0kOGnWL37WvCctEcyZDQLkTMc
	9H0Ole807Di3pFCslV8Vvuh9zC4oCUjpW0oDjGsCPiSKnpWJdcI2Z+A+SAyyHjVEJhQXCz6Bdru
	lqJAHWHm30FzY07YxnRqlPEv0Jkl+Bn7UvseGyJRf0wkmfLqQFthx8XMRcSAcc8IsTNZpzLGusV
	ucvpgKDCpjFT4fmruAV9wovKsTlA8lsqGrDGtdw0+pvWU7Qj69uqe6rWTwmJaJPRXLNXXeEXGyJ
	tB+KH4BZCdG5LMMAzdjAOdrA82jRnJbHr7BlC4pgw2zt7tBktIUyMc8nbtF7H0kwU0s=
X-Received: by 2002:a05:622a:251:b0:47b:3a2:1fc6 with SMTP id d75a77b69052e-47d1b89d080mr14326011cf.3.1745400213841;
        Wed, 23 Apr 2025 02:23:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+/gytjr9+nrsN7/CXGcHCsAwkAGihF5yThYOCu+thvEtbYV2hsJ75B2fDDgPRi8cI1jlxPg==
X-Received: by 2002:a05:622a:251:b0:47b:3a2:1fc6 with SMTP id d75a77b69052e-47d1b89d080mr14325861cf.3.1745400213476;
        Wed, 23 Apr 2025 02:23:33 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec4f6c8sm790669066b.64.2025.04.23.02.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 02:23:32 -0700 (PDT)
Message-ID: <4dbf93f0-5df4-4c4b-b7e4-32cb4b99cc6d@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 11:23:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, bryan.odonoghue@linaro.org,
        rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-7-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423072044.234024-7-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2MyBTYWx0ZWRfX88MNwzP4qncH LY8iMo6PymdZ/6jO7kZHreGi8CVx+e9biZ+jP/CJLl3TYQ68AEBzVYsUBcE9YS2R4mWPp/Y8O4z ydr0q2BmEzPnUHCYiCOaHa2v0IRqlhSof6nri27YthfThLigiJ/QpNtUfj7OhqAmQrCkDgU0Sqo
 g7IZi16qUOnZOZqviwEEF50LG4Yajv5WYyipdEv/GmNvwcix7un+B88JE+juT93ygw62X1EHv73 7r1WNBrBBnx2NsfZy7G6DVGqElYgOvnRHS8hgteNNaf2mlWrq5OKKZjoTU2+lYcxFmi5BjsHCHt 1FwFcdNlFLKfytsdsHIU6pGrpbzsBgK/AoCFUSsyRMD/s5Pr44iXqO7MXJhGOCAEpR9u2poTbS/
 4GuDPodK8haEu71nb7vRpgxIBD30b87AeaOcWSO7FOzDjD/GvohZkXzL+dN91D36D8t0UStd
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808b197 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: EduAHu4cgkpm3TJQiK_mhd9j_ssgw_nP
X-Proofpoint-GUID: EduAHu4cgkpm3TJQiK_mhd9j_ssgw_nP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=737 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230063

On 4/23/25 9:20 AM, Loic Poulain wrote:
> Add node for the QCM2290 camera subsystem.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

