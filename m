Return-Path: <devicetree+bounces-221404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6688EB9F4FE
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 14:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1ACCF4E0432
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92CF221FC8;
	Thu, 25 Sep 2025 12:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZTiAQQir"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3581B4224
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758804246; cv=none; b=s1KNw5P5TMS6Z+xQycXXZoJqUw7e47+8cKESigxUcsm982Kb/lfEFh3DYOlKXAZn1rRUX9PbqD2GJgrOxNxyjqXQbPlUFnwlWDl43fnt4iVIf/z+0bwbWFzvhiZGqE79PJKxVv0At7J7VH/QCkLeJ1sCqvcdrHdTPq2G51Q7Bpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758804246; c=relaxed/simple;
	bh=FDZQOCz16djFlBDx5G+q/SJZvR1Nd4tnacSZ3RZpF6E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lZreGTr0SnVP4nFbkhxQljr1WfTUsU6jOJgKoJv/hYdc9mtFVu1IMlL/MDisxmiiEIV/w8ffZyaaHQhJSpd6kL4Qi4V75qZAAQaA+0UJiUSCYvRupw0o/a2pNfU99gNU50vCParR82BUrdN0Gze8h9EOHX/cY8VAIIMq+pBDv7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZTiAQQir; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P948O7022454
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:44:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J1dwgELFlCnM0xIxl3rJVZougZALziWUncte4Klhh90=; b=ZTiAQQirl4hUHOrO
	ABNQSD+zst6QwW3Mx5Htc8nHBSCq2PE+UFQiVFgJQ6MvE19n1shtl3QsK6CwWlDz
	DGY0dNYq1GxRKV1Soz4p53iJGsRt0kmJmdeWvIGWmwmrCJuDjzEirwDpgjQNwsf7
	RZFLR8OUodHYoRJO5sIyHeoIjS6ZNUPhehjQaI6gCdBPldzsxu2BuUGlWyTqClOD
	zDjJgOWupElvQwst68F4g87Vk/Ycksl6CeEx4d6HuqAINQ4aVZeL9dw5NdbfqnQ+
	sJshWOPmtEi4YWGFfgCVWXz3fYNGqaV4V3X9iTQLhY6fLOWAQ6rCNYHMnauoMfEf
	hrTSxQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budafnxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:44:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85db8cb38ccso9838985a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 05:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758804243; x=1759409043;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1dwgELFlCnM0xIxl3rJVZougZALziWUncte4Klhh90=;
        b=Oc8V/ddYHKSV3STOUlcgW/uaCvC8jO88c9E8oGf4y0rccqaPZCLmtSAsvTuCC5oQFh
         3+1Iw6yhNTIZR+eSUQPp+JXX3F94HH1lhr7WAPl0DXypAi5ik4XkLUID118vScCNLR3Q
         vD6o4PoGhF+kqUJPzYoJVDj9XHtPGZ1USWBroOitBxAH0F0XcSeZNALfQAbomT4OIuSG
         ks1frjngESUFKCfsI3uAEJkIZZtqBsXgwZZrV53LOgI7LzwBr0NZOb6NB+l1X4UkNGX6
         J++h+cTrU24nm/s85a9JUm8eXXN8y2ClFnVSE1/BlTEKhBqNlk1qwxwVeX8gOuxfA9NP
         hd2g==
X-Forwarded-Encrypted: i=1; AJvYcCUK6bLJ9JULwSDCLbgNNzLynGeKiegbBk7/uf/ShjCmTG/7ZBnsGnCdo2S1jigWkU82cxaxLcjZ9vp+@vger.kernel.org
X-Gm-Message-State: AOJu0YzkaqF+vllaHNOwMwZEvvpCVJSS33wQgsWW8zsklQT/TjOf0hIq
	HbawYCYYzcycBxAycaMBIDH16A1X0/9fpU+wSMdtwqTIF1YN4YGvsXS6oXADodN9ha5Lk8FSj3o
	akLPa2gGjweBIVsTyKWg87J3QN188v70zUMsH34vFssTw2waMe7dUR1MafjNoER+O
X-Gm-Gg: ASbGnctt5FUsIem4A0DzyCGoEkmJJRY8bPgzhFHNTeijz8LcQzr7n8lmeAFhDYBmmmE
	C283fDueZi/V/mP07AvOkylhxgkysuQsXIJh43xDq9K1RfaMW8wXiRMfF/JhjLjjpsbd335c36+
	vTcf1HyqO0VLc1Jln6zZKnsaCjMAmBYVe4ReTVZYqePuq/BDGBAYMl60jqLnvY9M5drWl8nhhpb
	HBeF8hI2fHyncxJGaQj2b6A2wIxiWD24/4vh3+hWPEhmaRebjWMqWyCVyspjIsIIM3MkUTaZ9z4
	9ReHKw3sQsCEx0FbeVN/0yIDeX19gVGpn1Ffw3lp2gpeu+psRxdDuRHS7SIfN098az6MoafefjU
	tqiVSDMizcOT4GfT8FM57UA==
X-Received: by 2002:a05:620a:4888:b0:85a:dcb:a0fc with SMTP id af79cd13be357-85aea416316mr275179785a.13.1758804243449;
        Thu, 25 Sep 2025 05:44:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTirFLDo0M0Czkw5tWy8aR4EZDdLw5DUbB9F6HAhp2U1yQ+4dTFZ34JK/WVzP/W4uKPnDE5g==
X-Received: by 2002:a05:620a:4888:b0:85a:dcb:a0fc with SMTP id af79cd13be357-85aea416316mr275176485a.13.1758804242839;
        Thu, 25 Sep 2025 05:44:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3545a9978bsm163475566b.95.2025.09.25.05.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 05:44:02 -0700 (PDT)
Message-ID: <eea3ad4e-d656-4ee4-b4fd-2414ea78669f@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:43:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: add the tlmm driver for Kaanapali
 platforms
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-tlmm-v1-0-acabb59ae48c@oss.qualcomm.com>
 <20250924-knp-tlmm-v1-2-acabb59ae48c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-tlmm-v1-2-acabb59ae48c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: RXilA2fPxrF1MsS4IXKLwaa77sssheHn
X-Proofpoint-ORIG-GUID: RXilA2fPxrF1MsS4IXKLwaa77sssheHn
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d53914 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3KcoXW5xE102B6w2v2sA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX5t7hcrQCS/ht
 A7vvPS9MlVwXCkBdY5Kk6kiesbZQOMnSS++5RdM5wGnIFPrrLuU3nv1aD2JLl/M24LRECkXYh0p
 AXwkBJGTnXaVKqOrgn75tFJzuN4W07xEkwzXBqFP1KXUV0DiHygavJOrvt+a3dnvR5UfFeEl1zE
 guSofh15glglMPMpmIlErWE0tvq8rYxVE9DFXNA7F04BowtG74TWhM1iS52/G8GcvPkSffd6E+d
 H4oxT6HXScwCnp5n0RPYK17qZHwZ0K6XM37TxWg7K2kvMfevQ+Fd0sQKB056CuIkBdu5VyP+xXw
 quogmYd4+C7ujWAjm/s8koRuH/uEJT10CQR94RnEpNLPXykqIZqSvXF/Ra2XOjPadYJ9RXN2GSK
 hseKdTqO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

On 9/25/25 1:16 AM, Jingyi Wang wrote:
> Add support for Kaanapali TLMM configuration and control via the pinctrl
> framework.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

