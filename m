Return-Path: <devicetree+bounces-187941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1062AE1DDA
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:53:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77D133ABB0D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457F62BD5A4;
	Fri, 20 Jun 2025 14:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZAJtHpAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D552D290D94
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750431165; cv=none; b=EIoKRwY3tpkLWLzFucQyAdVTJu+ePOqOPiVMxBTnpw3IWWciDUtDMUM6Jckhgsv7FCdSuvCSS2BV/7dtp2ve2ycw7yQUG60s191nDAHmNUlo7NnslsVjUL251Xs8rVCIIQyhaRmbhQ31gHHUzLomR18EZojFNZMNp1V28+0gdgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750431165; c=relaxed/simple;
	bh=+81yvo31v7QMHWZeaNt1CEAELQelIHwFryFAymk9iSY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aymW7pWbpgo0VGnrCAeYmq/46q6xWDTZOc07o2L/zT/3Qbn7Ys1Y7Y8sCttIWpP6ET8hsQQd9ULaI0ZjlT7fM4McI3WI1NJsVvHjEMO5zZ5zV4sK/TmolZELTD/JlnQhYuxBVLXn+ALgD5Hw0C2cR4gt9oxIMbshoaL+dxatyjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZAJtHpAg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KDHl5A017925
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bAvY378g9pdTybx5+IbpDJkH/ia0/TW9evSfILpWJuo=; b=ZAJtHpAg5TytFv3W
	kvuEP7MlYXk08pMf7BPEgfge3rI6e1pJiKr99ASdea9Wguhu2WqaLVwo/hjsVtL6
	3dgUGZpz/CmqkHIg007vyaJ7HlUJ6R/Bo/Df7i0zzmZgjH2LHc8yzNCo+GdNTkny
	mn0iLXTk5buYeTmE5nZpfKBmadFdmNILbOOEp8XNX3eEEd1w64JjX5vndaZrlLlV
	UQInlFPbKPV1t+Nc2WT+3Dz7TAjHCoiZpzHzR1tTtT0xetNlcDAPOxVuQG2iJGyk
	RzcHwfFAGdEqnujpE0OrkBPgJQkxfSCd49PTSZwf0l6ZaXuDRJXwaqGntp6tRXIy
	igOgSw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791hdbr46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:52:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0976a24ceso55751685a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 07:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750431162; x=1751035962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bAvY378g9pdTybx5+IbpDJkH/ia0/TW9evSfILpWJuo=;
        b=h47/yvvFJ39tEaVwbwhwpSBPb5/QGBj4tCVeKdwdFMnej9DL28SYS/9tZH1O7rj6so
         tY90cqAhqDYpJ+DgNtz6byWVXGqaofRSsk4fNdi2BoZ0EfmrREnInScr3dPST2uqPz7J
         2TNEawf4C6ElVF1X4LiLrUwgFgobP6Yt5+uYHql4RXI/A2cdEZnqs+HMvN8snwxvppT7
         lYh8quetRhJIrG4JvQw8Mjwtyanle1MRqQbOMwa79w0ptmCnDinFSDBji0rt7glRHi/5
         9ElbbkDdaDaO5Df6T2RnKTaoCOFSppo6APony5myQxF6mkeYN8zzGtrcQb7n8elFoI9V
         r5lA==
X-Forwarded-Encrypted: i=1; AJvYcCV7OTzlGzlK/MZ+FK2X0hc0DYIF9GerhFnYOS2CwsRhnHzUByodC1wiwlKbTmiWc4TKBCZGQmYs5h7Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6j8wMBN4kedjrxoMidjHbHHoBFnopBfUMdxc6zBQ+g/R+QW50
	SVRxJdS/aMS6Fbpa0Bkeo1JPE83po3vrC9cHyDoyRsJv2U8qWCYRewydKT3lOWIR05319OQp5If
	uHNMaHsZImOUiQnaDUeC48U/hv9ROtL2QvLz4ti9kFFOLPlJHSlKDbmepIHf0+Sez
X-Gm-Gg: ASbGncvzTI0zsd03EAlVWm4av3WEJIRT9T+43agMGI7RPDjWi/sXojWxA3UtBiCMXyp
	9We3xJ109ZjkSZgUzSza4Gt4eZYvSRSN261BGbsn4lCDLpM6b7QBUs8N3W4kTW9rQFTNn94qwKI
	oNC9Z5WugQLXyg7bh+tJB05/2DE84U/PoRMvKNqF1dAKnxvvPdB8SEW/CgC+IFm11AnMWh5wSf/
	CYCXsbErdNnSvH+1+e64FB+RTxtSTlMXzBKetnOcYZubhOrC5zYKgp2h9CB3RZkNwxH0m5P8tgN
	TDzf06b3U6ulmsTT4gXdlGwIgIBWIIQft/K0NSLrpMzeePCQ5aux1vXuaPMCSD2jGxfs05YBDWL
	PF0g=
X-Received: by 2002:a05:620a:448a:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d3f98d9073mr155713485a.4.1750431161610;
        Fri, 20 Jun 2025 07:52:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWSbj3zLVYKtfz8K+lKDPK0MngK/y7uQ3TDDGuLOc5VoymNZIeGKtQmf1ZbkgF7OimM7IZMA==
X-Received: by 2002:a05:620a:448a:b0:7d0:aafd:fb7a with SMTP id af79cd13be357-7d3f98d9073mr155710185a.4.1750431161098;
        Fri, 20 Jun 2025 07:52:41 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4ccbsm173800966b.70.2025.06.20.07.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 07:52:40 -0700 (PDT)
Message-ID: <e1b552c1-de9e-4c6d-9340-232427442620@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 16:52:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add GPU support to X1P42100 SoC
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
 <20250620-x1p-adreno-v3-4-56398c078c15@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250620-x1p-adreno-v3-4-56398c078c15@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEwNCBTYWx0ZWRfX+lCz9vcXMTOs
 nKtL0iWP3U5oUkpwt16CLVUODZnFsyt6mH+J08Rd075+ts0vfNLcEr7QvrBpq26YRAGX7CXxjNv
 CjzzRxLeRDYxvdJw3B2Q0z5Q50ALoEGxkgowBN4IUJdp4GFtW1xeLipa2WsxVdwFf/vwgY4wBXg
 Cy4qO2+QpzMwswEBXTbA7rECAKHuVpFDRt/1n+IGakBintPkqQeSVcaa6GHJHEvHRFRMhZyO6XQ
 dEEMUf5I1W93h3ScHXh3QOWiUehkOr7uNhoII74QXCJc8K/NEsWe6BZGpRN8g2WOnunyCuwHd/Y
 Nznv6HD3cdFCz0So9c+b7gDJ6S7el6cAJFtVPcCdHD+zfY+Ir+bgBKlTY+Dxa9s+P5oW1nefM5D
 bEpoJlrBmemJdk8vn4g3JljpMn6/Grf0JNSPAThry8yvI51xyFSWoN+hH5W1iQcpG8IrlWSA
X-Authority-Analysis: v=2.4 cv=PtaTbxM3 c=1 sm=1 tr=0 ts=685575bb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=5RVeKMBEKdVlAG-YRsMA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: G7a24R3BzgfQ105J5QCptPfNfMjW674z
X-Proofpoint-GUID: G7a24R3BzgfQ105J5QCptPfNfMjW674z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_05,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 mlxlogscore=735 suspectscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200104

On 6/20/25 8:54 AM, Akhil P Oommen wrote:
> X1P42100 SoC has a new GPU called Adreno X1-45 which is a smaller
> version of Adreno X1-85 GPU. Describe this new GPU and also add
> the secure gpu firmware path that should used for X1P42100 CRD.
> 
> Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

