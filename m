Return-Path: <devicetree+bounces-230684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67724C050BF
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79CF63AD0B8
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4540F305066;
	Fri, 24 Oct 2025 08:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XN2JErJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB5A23505E
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761294505; cv=none; b=HlngzJhLrz9DCqNgtgPxhwgodYNYUbR6PfMkx44o3AsGZT/j4H/pzwETYc3mkYj8QPrNfhAr2jeO0JDCYAqPVx4AMjT7R6I3vfHRbVQK3Yg0Wq3Bdrfa1ubutDTF0clplaL63/LE/dqBLgRJa6M5p5eipr6e9s0WPah3iySW5KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761294505; c=relaxed/simple;
	bh=tYYsV6mTyIUmy9ftJ1Sf7RAebvqW7eDdmrR2fV9OabQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j3vA03YC/m0IQ3A6qtdOWQM/k8rai2cctck0fMj9mo3QLoZJjE23Wcg2oP5QIVuBZ/2emyPHzPTY56EfhYK5AfxZFmbxa+Cs5ovwcrQxkzD9lNGDqaBKK9ZtH7jaaxn0q8dIr9MS9KIVkg/G7kFcnDjQ2/g57X/bl9e4KXZ+daw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XN2JErJ0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3FKp4006154
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j6BwMGQuh4fYjTjzXXoN6FQ7oJ09CxLsz69mXHIlrUU=; b=XN2JErJ0t8PbXSdS
	FV35s137Ru11jdPa1QrTuVPHZSmWXb0syHJebyDC4UNJm3LEgwlB640BojDZiEpN
	9NKSTUlVP8WWwtZnRvn7kTU55LMPx69f63qEJ7n+iWAg+HpMrToxHoIUNJX9re13
	groBCvZ9RO3usDSrLh09RT2y6mbdbhGg6hcW+a54fmN9H+z0dLOHd6VnFq6olq6Z
	LBKhhyj/WQhShwZsbNEYbLc/6v8QBsj3K4+THf6xUyPafcoJ5ijkkMZMe1XAx8OW
	nUHbef8M1FQCmhr+o7p5SnPq2EKHwz+uqNc7hXx0II5HgKUOeyEU1yGubFx9ZSy4
	/HkwWA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v344bcu5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:28:22 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c1c70f1faso6721746d6.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761294501; x=1761899301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j6BwMGQuh4fYjTjzXXoN6FQ7oJ09CxLsz69mXHIlrUU=;
        b=WAysUxmRh1M53trq1bdUuiIIO8IO7wYeHvnOSz9eGOhm1QCHpXpAKiX2ypuHCo7dD7
         490dKhPitYX3GthFzooWt9jFB3OybpFlx2lKmor6/YSyVruxIhEFJVjuV1f6vR2/baWv
         +J/DMT6KQBnneIYzV3VVEM3ELnifzEiDepvfrN7PmuxKYEmsgSTkmXugF6tvjrVS19ML
         i8yfxEAgupAJYeu1VPIJAPQyZ/KQHoqqQbV1tNqmfDS5p+nU23Y/URjQwdRVrGn1V5eA
         +g4MC0NiEmYDb8DEfVgd3dpSeb98tYX1Dk+1mgwdneMxL5OFKsJ73VXSccRjoGYWm31R
         vxhA==
X-Forwarded-Encrypted: i=1; AJvYcCVpcyHwbom1RjeI7V/JbvkdGYF0/jRWNhXUqSqJdhcwFRnZVp0MsL48kadcFJYDxdohad23k5EDvH8u@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1NTUkC2u0dhIanWsKPLO9Jm6s1dkyvWQmoj+7qzgS/VEIBvCN
	fr/Mb2nJjfuCBAAgRVlNY7SRI/JnLoYWqScXx3oTzy5BBnvNJi1xok2BC44i4z3ZGy2XH/kX7TP
	APZP5n7+0UHVqMH08nJfWbGHs8mmNf7DsUcznsdzayKSMwlnm1KtshN1muyvtFaqf
X-Gm-Gg: ASbGncuy7xHktoTrBGEqLlL1TE8jYOc2tb55jubXnHzBiVRJHz6vkR5YH5tnjIIGIlt
	HCqbh9eGKB7kZeyQA/af4Yh6so4roYPsFflwW1YdZZy4ObYOhe9bAZFngbbDc6teQDrWcb4Qaiz
	AmQw8YeRpDjxlhsPi7vmynqCi/4/mHHLGlZqrvkKqSInPVXGi5ID29CJmxzvb+QgTGJH5ycZLKI
	s+FOzVSA5141NqywS0Ta7dQhc0KQIbPID7KY5C8q1VW4iPOGRyK9XVuBnM2uZ5YWGxcjt1T40Tn
	S93aE5cJbNnC70czVNNewGAv4sHOfsWqd0KsSnBLVIGcM2mkRYPFznlXKUWNteAQCxCE5aCmPRB
	Ka+GCm20FbO+lSqjiLKa9RcbaiOhbGFn1qHaN6NDs0QuAe2DoeTgQByYY
X-Received: by 2002:a05:6214:5001:b0:87c:13aa:b408 with SMTP id 6a1803df08f44-87de6ff172amr111258096d6.0.1761294501398;
        Fri, 24 Oct 2025 01:28:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeT9a0G26pmu3kuZNUTSDHdkV6SdMv/bFpa+lk2a30aD/Ti0Uu5aCZLttJNVboHfIaiNKZ8g==
X-Received: by 2002:a05:6214:5001:b0:87c:13aa:b408 with SMTP id 6a1803df08f44-87de6ff172amr111258006d6.0.1761294500924;
        Fri, 24 Oct 2025 01:28:20 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f316d93sm3603580a12.26.2025.10.24.01.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:28:20 -0700 (PDT)
Message-ID: <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:28:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gEEidsqC0TjBirl_KHD-Rf8QAN5hsj1q
X-Proofpoint-ORIG-GUID: gEEidsqC0TjBirl_KHD-Rf8QAN5hsj1q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX/Se1oBlWYqz9
 14oveBw36Gha2XJq5oelSvgyXCq+bbGHheOm7nHwhKVUYwkwpbWNAV+AOMcawmfuEjbcMdqD/Im
 DcdF1pf3f4rTyjN+O3nOaAWlmlucj2QYX2iHx+st8QVpoMQ4EQtLIKMGko6T9+k5/NF+fRT4Yki
 aOq0/camjqzBoFOL4mMHnLav6u4MCMLCO98h8Eip8j2q6ocTVjiJgy9zgq9NucT2kTWSAmL5hvD
 X2ZW6h0DqrD6MSlGz5h1eaCKLi27TA5D2dp6KOL2zGChkx5wdlLz2f0GR7HNh1NsMKbaegxHkpF
 gdB+wFJyyS9/B6o5oS66OtP7xe0Ir1wV+Nh7x4XtiP9C4Iuix3LunTs9x048qS+0+OZf87w8rTA
 NIW0EmhnZVispNtSRWg2wC8js46y0A==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68fb38a6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=7Oru3VZ2rc5tXTzVnmAA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On 10/23/25 9:51 PM, Nickolay Goppen wrote:
> In order to enable CDSP support for SDM660 SoC:
>  * add shared memory p2p nodes for CDSP
>  * add CDSP-specific smmu node
>  * add CDSP peripheral image loader node
> 
> Memory region for CDSP in SDM660 occupies the same spot as
> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
> cdsp_region, which is also larger in size.
> 
> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
> related nodes and add buffer_mem back.
> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---

[...]

> +			label = "turing";

"cdsp"

> +			mboxes = <&apcs_glb 29>;
> +			qcom,remote-pid = <5>;
> +
> +			fastrpc {
> +				compatible = "qcom,fastrpc";
> +				qcom,glink-channels = "fastrpcglink-apps-dsp";
> +				label = "cdsp";
> +				qcom,non-secure-domain;

This shouldn't matter, both a secure and a non-secure device is
created for CDSP

Konrad

