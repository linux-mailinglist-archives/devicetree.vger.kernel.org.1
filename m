Return-Path: <devicetree+bounces-200432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 556CAB14B1E
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 11:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F7FE4E10A0
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 09:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C1C225A32;
	Tue, 29 Jul 2025 09:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fMZZvrm6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F6322539E
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 09:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753780979; cv=none; b=c9pGNibzesQia99CH0bLQS7ezNTw3uSevhErm6jKbG3rXjk1BtlHXvfSKtXowJx8g76mZV3Q3uXVqdRl66imTBfxhA7h3Z8RWmIE3rTjlIX2+olcAwPc2p/Qr3L2vpw+tWYqX/Z7pppAH/7tYDnu1wCoFLCfPPXZvYXwBTHrQhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753780979; c=relaxed/simple;
	bh=ehz0qUEuqwWutqTkbDkVk4X0c05JiJM9sCTKzsojpIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AvAXP4O1D4x2XNR8zaCTa362E4PgX9j+jMKD3N7zGWfsKMTMdqOFpVY9tIQXLk5WIbQRjIVSW+VFJZmQsZfdv54T9NnDnYkmev+KYA2CRNpuIJ0m9OoPvjm+VfKkC5blVc4cwTHoNQU8q2de4K3GBSduSTSCN4+R/y/cOS855B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fMZZvrm6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T8Gba9013712
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 09:22:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+TkgBhS7qZBU5x8NwedbTLWIGpOQEhTDibEzWNdfhYk=; b=fMZZvrm6a7ZJXgoa
	VTu8tdtZtmvhJBgXio7I3ndx0mTjkv1urlBKOe8dNYOtKho5Vqba2OSn6ryP2fdA
	dJjxNCNLeujqGjE784jrmUtI7I8/1uFceKal9A4wNxwxKgDcMtiixqaew6hIbNgN
	pdpEUfn+Nv/3bvUkA2u2PmjPt+gu5/VJkq9ufuFXMeYOjT9/Bo+OSAbV2RjxMo7N
	KGpMNoC306LFlif8EX9xow4dCFGRi3ZNAJ6CGIJm9GgUgXl1jFlpqou2nxdkM/mZ
	PCCOKUg+vG14GPslX3TCbSOX3iQEce1EM5fend7HOVK6s88Fo9akRRjSQasN9Ofq
	blLqEw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qd9ygc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 09:22:50 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7073ec538e2so10485676d6.2
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 02:22:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753780970; x=1754385770;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+TkgBhS7qZBU5x8NwedbTLWIGpOQEhTDibEzWNdfhYk=;
        b=ezW5qyto4oQyM95ebqTjtDloGfldRIOox/yg0PopdEWoeIkejQ3BbcRrjTEi17bdLG
         /hNKJmBbdU+1NGMi+LwnuVS5smGcbhEr6frph6JYsKnvwWTMrFfp+Yzp4C9go6k2dRpM
         EOlEjujK6vDe/uehRVA85bOg3wcbXneVbxFR29xfa92+vCNa2aTshRG+KkTduTyqLXY2
         Cri1VwgA8kqGjpfz1xonSY1Dvy1taxqNfuAX480ZbkC7pCgcPC+WcBtyvRxTuWbLBeFK
         HlBXoo9wvpKWl7D3UatU5fRGLu90G6Juk6HoScgXwlMs0iEHtxEHxb7r4t0o3FMJGk66
         ovfg==
X-Forwarded-Encrypted: i=1; AJvYcCX8kwj9A3GZF6/BiW4fz36AX1cplXLa5xQZ3I70auI66p4BSdcxQtcyjUstxZliL/o5dAwIF2xq+qt/@vger.kernel.org
X-Gm-Message-State: AOJu0YwDoEYvhG2/peqGB+sXbGYFmmukpg8Li0xVKsk+wB6pPTWg1ACO
	C02z2ZrJDZCvm7aXn7QFNJNkNxOM7anY+MS/mbqeRNfa4p//JZ2gdU2fS0lGN27+BrspHUGvcXB
	pNo8OGq+GPniKQITLqQqBHv4sFQJ0bGZtWg6KFaLXnhKKNPJAQzvZ9MHcZOcbnbLS
X-Gm-Gg: ASbGnct2u4jj6U7+Afjmd3nDyTBlBLPYIblKwrI7EPv+4VoShJ3RtiN7ql+1cWmC584
	d1ZsAtcCdmi/n0/V3hzLr/39Wi/72a8twnEJWoMMb8+Dnyn9P5eEHPGVkd7J4cqBM4K2Plu8RUk
	TscXk7W/lRVkcBAefnu6bCudnZnqY1h8inEl8MiIchl6QHtKbVXuWFrnu6TUxEFXWY9K8A1gfHc
	S+QotRQ4aQCUwJs+0IvrEbsHBMFz2F3fSeD1A70DrLDp3cw2GO4Rn9cjVGbVts6lO4JpseTz/dP
	bZhzz08ORSGCw6Hl/+Dq+gy0qORj/Fko3Kxc9xJ0EuXBQOQftvhIZQ+1RDmZ/+UfEFNJVp+r4UG
	bALpZHLfNfCmF1y1CRw==
X-Received: by 2002:a05:620a:284c:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e63bfc3749mr768268785a.10.1753780969989;
        Tue, 29 Jul 2025 02:22:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2CQhO85PPfopUvJi5c2iXiK4Jj+bqO8Y1flXWAwou74i1zFQ1b8NfuQV5+s9e8bQi1QB8/g==
X-Received: by 2002:a05:620a:284c:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e63bfc3749mr768267785a.10.1753780969582;
        Tue, 29 Jul 2025 02:22:49 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635aa2b2csm560836866b.96.2025.07.29.02.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 02:22:48 -0700 (PDT)
Message-ID: <2030fbb7-3e32-4901-b106-bb3c0a1d1726@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 11:22:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Enable HS eMMC timing modes
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250728093426.1413379-1-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250728093426.1413379-1-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GMvGRrzcGgHGhA2tuKYT5rJ7L3EPy87T
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688892ea cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Ni7ra-vBti6l6aYm9ioA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: GMvGRrzcGgHGhA2tuKYT5rJ7L3EPy87T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA3MiBTYWx0ZWRfX5wNd0/Qx5LfC
 gNWU4iLpwESBRJ6Vkx18KGb+CX7aFigGvD5ZEuwnd3JOOslnw6z7fKU4+rZpPLVyB5g3b6a0IEX
 t1+uXPeWj/BVoT5cQynBxrqWXqUOeYdZfbEUIdtj5pgAb7xRUq05BHXX0lyCGs3Z8tQ6LMQUChT
 L+nOAFxsQmBqPp+sJ2ZWX/isRJ5Vl5oYsMqFaBlu7oFs+MjHCJ7N8UHtxY35OSlzQa+NIgKEuN0
 hpZCy6vddCSpQ7zYnlT0l0dP5ElzUHSp/kVXEcD2pERcMxe8c9nPcOInrg+b8QtgGzWdOBWh8wU
 KSwHASoZDKczvVmM3vJfzVmSruOMAGXi+xQJvw2JpW6rFaS215oHN1Tr+8FWREoCcQVKRXTSfS3
 u0DQTeiATQrenlgwOAx86n8z6ABdaiEdXFYmOZ0niuR+mqJR+uHfuzNKbc04MADuhDTFVfQ8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=996 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507290072

On 7/28/25 11:34 AM, Loic Poulain wrote:
> The host controller supports HS200/HS400 and HS400 enhanced strobe mode.
> On RB1, this improves Linux eMMC read speed, from ~170MB/s to 300MB/s.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f49ac1c1f8a3..72503c1d0532 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -953,6 +953,11 @@ &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
>  			qcom,ddr-config = <0x80040868>;
>  			bus-width = <8>;
>  
> +			mmc-ddr-1_8v;
> +			mmc-hs200-1_8v;
> +			mmc-hs400-1_8v;
> +			mmc-hs400-enhanced-strobe;

These were always asked to be deferred to device DTs.. But it
seems like these are indeed controller properties.. I suppose
I'll submit a cleanup

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

