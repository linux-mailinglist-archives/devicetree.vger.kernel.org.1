Return-Path: <devicetree+bounces-247791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDCDCCB81F
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 11:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C9913055780
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 10:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 541CE3314B8;
	Thu, 18 Dec 2025 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BaMvMObl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SYShmxd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B02FF148
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766055262; cv=none; b=kSyd1CvA5a34EZEk4BzNabX6WM8NnUCgV8aOKnwbHHRmhgAAk3E22QGr2wQQXujK95/n105vAAexTjiYFySBcomcOm9N9ACM13LcZy2qfUKzPYXdYSFTqCkiZ8fz67lyBOI9a7oIgRaYqhczwiSurvedglCmOtOsLxuLt2K8gcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766055262; c=relaxed/simple;
	bh=wolOtR5gbMuHGYPn7isX6pVe+I4UdjJqr+mzUnQuzN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OEBU/O44CdMA/wZRVtNKek2muKhT0TFeiS+cWaea3a8+hAGp1AlfsIpblUY2+e9qWbxdZtn3Bn5br4sinX8UkTx75MkVQpx2WFf8ywxMhXlc/U3uMlOQZTMuR1SRbtsMvtMth+2AExPAOsDUPiDqBdjFIZXDu1H5h6Z0xgv+tlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BaMvMObl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SYShmxd0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI8OGc9527628
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:54:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ULiMr+jjQf2IPNeanbk3DLBorGWRLoXxf7JiGDZ0X0I=; b=BaMvMObltxpjlJX2
	hDi1lnh+3LRntbDrAOg4JzxnEtNIasX/GHrqSFO+6PEWprty46vErmrdjMQ+0R+d
	PB6dMSyhsXsOkkIbRyZN5NF2qNh1XM0D9CleCOljN15BesCsdrMWuoPmygi2uKmr
	Ft7+V5RzUDdGWtmok/tlpi00lFdyIc58mdQug/iwF4CS9X0UaOjuIB4sQQ3xWjCb
	Gy+qX89KVMfYKr4/GHEFEhTBP9LlIxbD5MafnUxG5e1BWN4PNk2oKuSPL7hydyiy
	u2DEGsYL8IcAXZC+RoFjU+IH52kpMAsyPMwvvOcppYFYD1UasINp/jkJoSIw90ZB
	1oZrXg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb2aqk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 10:54:17 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bbb6031cfdso15193685a.1
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 02:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766055257; x=1766660057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ULiMr+jjQf2IPNeanbk3DLBorGWRLoXxf7JiGDZ0X0I=;
        b=SYShmxd0AQryYG17CrlT+w4uBYw0j1sqT0T4l2hgwrnCT+IAWqwgbu/wkrJDHpR/Ya
         yafOkWwEVPD84uyflDEEqflSE8AYlvL2zo6SY5g0RaRY1SHlsX2kXP1jKUrV9JFc3JyR
         0PpRiV/OIZiOzaNbip7y/TzNcs+hWYkDYnwZms1z5vn/W8jE6djhIQZoJzjnmiIsQo++
         TdWNi0MHaJoeJS8WbjbFNDdo8QfEfB75myExKLqhp8ZnevHg7yuCyq+2F/JosFFMCuWi
         atTdyBAUKAMj3P6qd1H3TqPMEjfZ2lepfo/XoA7EPxKKZabOMWIqoIJQiE5R1DZZAutF
         I+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766055257; x=1766660057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ULiMr+jjQf2IPNeanbk3DLBorGWRLoXxf7JiGDZ0X0I=;
        b=N4NJPUEry04Ju0C/oYvBUFdeaS53Z3U/+xWTgtJPl/WTQXwn5aZv4jqTGo6nH75Ktc
         MInbxhSM4JMn591XUAY/751fF/HF0DVsR0bIH8HnNrsS5+Sc68v1n1pelw/FhY6HDlEg
         vcniMhU7HbgN5pvLA/zL7V1gqOM6LfHJLCtqGMWXIq3+RHDVp1pNV4/Atu1v0Po0tuix
         mckoOFbDaUXlOVSbGfoADtq3q1zTk19UOTbN5LqgcIcn7Zqd6HqDYhlO/Gpv2Q1BtcHv
         pqME+T9s+9A2lFZBLiRR91aW7zqvsmYE0/g4ZSiNu/Eu56NnS0wCz/fShYwzAhjQVaJ7
         1ULw==
X-Forwarded-Encrypted: i=1; AJvYcCX3xCzLMfB+FTkWtcCvjxFws0F6kVZ+MJYt04oFNZ3TTZGw1dJcjEduto/eTEShzezTFYM21yKb6tZU@vger.kernel.org
X-Gm-Message-State: AOJu0YycK5nsu8Lt1PuL8GfvrSZ8yiy11BgdEJo9/QwPQ0LEoqH1ogRw
	2hsGCFIqtRpnbO3RRGAx5YwK2Tkkg56IYEbe0sYYVZL2Lm2xPeKhR3ezkJ20TPWlliZ9a8Ad+44
	BWlaa/nt9FGL33SL5Sg3zZfsN6p9PlbXqbW5KdSHYJRMbfy5lyMZIRAbt+iRK+fYa
X-Gm-Gg: AY/fxX4AH/qrf4vEXteFc1vwWxC4NDLaaIFAe0LDrKvwv8iCLvw/DWCiFU1EopZEZ1q
	ZkNutjX0w4PGlFb8f+2DxmNxZSl23OdwfSx6+qgU/QaNOF4Y174q6sqrwbTJejlPQ+pm+wvsd6J
	MdF45AqJBWdcTy26AtEaDvcuC+Zsoxp1L5v3BDw72dV+0KITgfkXoL9TJRqrfuglEa9En5Wznt+
	/WmN0fqz5FNOTS0Vh7YZb/rIoALB4vWaqHZoxdbMRWTSH9DezFf9xasQ9VM3RBMuuj7dzLLhtxG
	LhBXgIYR614ifAKUns90EIdO9GjysSNbbxpCBoTK86uoXBhYi1PAuB2QEHiw+olDCtS6EuurvNd
	bdyUz305V22W08dNOj7NFby2jUbXTtPvS04bsBSE7WYWpiQKbzdcueYKMdv1Pn0kKOA==
X-Received: by 2002:a05:620a:4441:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8bef2b6ad2fmr173838685a.9.1766055257303;
        Thu, 18 Dec 2025 02:54:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFg6rD4FG+ZdEpLvSxXB7VPKfet2cJMu4WCkxjwUL9ypB7KXsrgvhhdJxlHfMC+UTosSE+weA==
X-Received: by 2002:a05:620a:4441:b0:8b2:e177:fb18 with SMTP id af79cd13be357-8bef2b6ad2fmr173836085a.9.1766055256861;
        Thu, 18 Dec 2025 02:54:16 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b585b52bbsm2367565a12.6.2025.12.18.02.54.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 02:54:16 -0800 (PST)
Message-ID: <4491e009-0071-4130-9e1a-29145314e349@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 11:54:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: Add support for Surface Pro 11
To: jerome.debretagne@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        platform-driver-x86@vger.kernel.org, ath12k@lists.infradead.org,
        Dale Whinham <daleyo@gmail.com>
References: <20251218-surface-sp11-for-next-v3-0-875afc7bd3b7@gmail.com>
 <20251218-surface-sp11-for-next-v3-5-875afc7bd3b7@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251218-surface-sp11-for-next-v3-5-875afc7bd3b7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 6iCgKlRYnfQ_pg89aMT5KHqb3EvTsLuC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA4OSBTYWx0ZWRfX+NvPxYnfCl37
 Ak7ntufG68TjuS1kQLUoB9UDgmryLyKrzvfakIdBcrXuGb06Fla9MYggAEQLopa7lnfsdZUTc/z
 h5PPiu33y6fo33XRDXVeZ6sQhrGyloaN8R19z1syRN+qA/mQYn7JMfSVKZ/PFtoZB3oQ4kE34Xu
 qwRrd+YM0k2QkzkkxUM3RI7dqgnUFmIgtE5FQK5UcIE+xF/FtVfmPSQriw7ymbGozUuUxs1O5ex
 xHyQ0MQ4/2ekCCvEKW7Xcbj08Qmynk2CrDlr5fk5A2+RgNQs2u9nTFaGqC0QCLkmrDMZYLfcAUM
 HjYNE8l1X+FNiqStxE5FitPWcCNNIfPGaClDslWkZQHRPsiea8bKN1VKJNfW5KMveV0vtv3uUKP
 QjJ8TQfie4q9rZi3M1lfCb2B2xBx+Q==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6943dd59 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=T6QFUigfjUT3ERtuJAUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 6iCgKlRYnfQ_pg89aMT5KHqb3EvTsLuC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180089

On 12/18/25 12:56 AM, Jérôme de Bretagne via B4 Relay wrote:
> From: Dale Whinham <daleyo@gmail.com>
> 
> Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
> Pro 11 machines (codenamed 'Denali').
> 
> This device is very similar to the Surface Laptop 7 ('Romulus').
> 
> Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can create
> x1e and x1p-specific flavors of the device tree without too much code
> duplication.
> 
> Hardware support is similar to other X1 machines. The most notable
> missing features are:
> 
> - Touchscreen and pen
> - Cameras (and status LEDs)
> 
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> Tested-by: Dale Whinham <daleyo@gmail.com>
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> ---

[...]

> +&i2c4 {
> +	clock-frequency = <400000>;
> +
> +	status = "disabled";
> +};
> +
> +&i2c5 {
> +	clock-frequency = <400000>;
> +
> +	status = "disabled";
> +};

A little bit odd to leave them explicitly disabled. If they're useful,
enabling them makes sense. If not, removing the reference seems to be the
way to go.

With that taken care of, one way or the other:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

