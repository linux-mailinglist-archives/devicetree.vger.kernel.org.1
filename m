Return-Path: <devicetree+bounces-249299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1DBCDA941
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5ACA93029544
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327A235B159;
	Tue, 23 Dec 2025 20:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GC9kvNv3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cRuiG/hJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FC435B134
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521365; cv=none; b=Ts4oVTrvVYl9XebnflRsCfa/QOOnyl65ArHTmh0C2l04ABey81Zj37ntDCwGgHV8BDrbNCk2Nu4gxDOLOdfnS3HURvJ+UJ9Lcrz9g79roaiHeq3RuxLgCy4jLto0ocEkpxUc7FV+skgijW++G4jBYrmkZ/yhjOhN8nVN/W7m0Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521365; c=relaxed/simple;
	bh=RbALZPmNnhfVUUnn6kGQlrR20YZlpbJ1KzdA5EzSMgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KRiRUGDJq+GhuUPW9BsY1PdYJav5f0blnSZrAj1N2+jcGo2/6kvQho/OvjMFaWEL3V2TUVNEE3VpBsZqvxQsC5OnVhcB0S/n8eB6c0lJHpIjq/dKZsfKrH6QVex/RzTRCSyymHeZu0Q5RFrrq7F3YHvyRqpcmaKwQCbZBOkhvl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GC9kvNv3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cRuiG/hJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNFt4Oa2570004
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:22:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I+g2UeJv3MotbZDGJXhzU2IJ
	PY7RSGiVrbIq37NelSQ=; b=GC9kvNv31REf6ffUYUJc79/quYzHtco1MPPWB58Z
	hmTg+9dZbYH5gQnObDmeWpLarq5vvghSisE1d2kTJFqxKXAm0iCzy60dHqonLRVb
	Oa2AS8R2MQthRw6iVEOpnQpEQ5Pk/XR3fMcP+dI3Oyq7S4wIB+6ZJLVbC3LYEorD
	vxz+4Qg3wLi7k6Jd5lObtHuYNzCkfwVDh01077sukA8dw28v/NOWj9IjYvSu+s7T
	3Z56hO1r3GhKtW4TVcqrh30h2d1wmpYlc4Jc+PZv7Fw5K5QsFU7+fp8VH72VR7wH
	Vqx9Yj6D/G+URHgsweqEFBMrwSamNBf5xUWuOFSeZg9+Hw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b79w8mcg1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:22:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1d7ac8339so175028631cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766521361; x=1767126161; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I+g2UeJv3MotbZDGJXhzU2IJPY7RSGiVrbIq37NelSQ=;
        b=cRuiG/hJ2KiWViQ/FOAnNNHcQ4l1ueFfdxMGme38uE1ZGxcSyiC97LSYEFLPRLtf3B
         wQM+qdDGyUBtwaaPF5rFKCFwFOMYVb0gXcbwsdaeg7N1DGgkdnk3uq+M64geD1XUCOeF
         CjIKlA0nLOyf28gvJJYTIKycfYc3Ey5topCO7v66CXpPqNKvvMMEHDvu/Q9wDaNvTfla
         TOopjks270ZkyxvUClqpWKWtoiFaHUSh3odRCixbPg8e2/E/i4DVS+yO3CxnOeDeFm/j
         kSiKX9kMyl1PAIx0fJnZiVzrVw7jv93nkMWFFD/C23feikNcXQ0yH4jg/PmoF2TAfxtn
         HAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521361; x=1767126161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+g2UeJv3MotbZDGJXhzU2IJPY7RSGiVrbIq37NelSQ=;
        b=Ps1IsKFG2O8MptOVMCG4ISBQkIex9tMd7CLK8eYNmjy4HCSr0vBlZXiRixwvRN5e50
         B8K5kdYeAAcFnnA6tjjsAcLzj1+35xVO3c0oBE3/NpupCTc7iOTR8HhRXvFYsFYdEjP+
         YUKqcpCMv4XB61NqvVGDiPX6ASmvK7sUDiWhAQ3BR/KA78zcy5kUpqwW7ousNNFqB3fp
         VMeQMG7qBU5n3RQ1rRR13zsu1imhbYFIbIVzXmmFVZaYxDY0EVlMV5Dl4EbrLUBaJT0B
         Mw1M73CIHD6x9PTOzu1p4FNZnanM5ywaKqeP013lFkV/E4Ne1fG6DBGKi+x++X6RWRK4
         rcrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbZWlJ0wKt7yJQeVZ3nS2qi00ThZID9UDqTJt9LuznqLNAfMm8xHKyu5+Wo+cnNVwCV8EoviVbE1zL@vger.kernel.org
X-Gm-Message-State: AOJu0YwNi7SfaoOX6FxRxAaOWc0jhByLaKKW98THfo9f8kdm1XkcGxo7
	8yyRL8rw+IrNEK55+vA1rVxa/l02wSxUeYzzrQODIyHhBePrl4G8azJBv8Oq1UjQHxoigGnhPeA
	T407IAqxwQqArMgkOSWWkUBAvq/KtlitJywB7KSBSDe5Q64ckZNPw+q1ZeX0U8Rp7
X-Gm-Gg: AY/fxX7I6e9BqTVZaLAilNdcqozqyQ+pmArUzX/AoCnmp8BZOWppjvOOH9YYEZGmgzp
	voNhLOKhM+rIHxtSTzsU3iduScP147p5fCJHUOMmE7PUGWC53FibnKE6lyHtJ/LYuUpOeDbu7Ss
	WphgAcfUa2dCxvwUM6hvQpj3Nw3bgG3KMN4PkfSSXgfJfYbcWnFxf9kPdgE6izqJNk+/IunSu1E
	xs4Qv+2zGkUpKv0MDvrqhpWf282rmTYEtW9RUAprcPbumpw/q8uYev+wTv4V8swnHadpYFL7qv3
	MMxb+gPPZtzkFCasxtK03Vk9PpJwWInUmE/s1oWSSqIniq1BJTzlYq7X1RN4rlVgVyUlrcBE8Rg
	oes1YtfI0ebwKQmKtdY5UY6CA9FW0l6WDvPvcrLaxFPrqLjYOv0iMIeKSeVp7InBQ2SUCBVpfmN
	IjQfS1Fgy/wyit7v/qS7dPZK8=
X-Received: by 2002:a05:622a:a0d:b0:4ee:ccd:7215 with SMTP id d75a77b69052e-4f4abbc303amr236203301cf.0.1766521361000;
        Tue, 23 Dec 2025 12:22:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiG3iSJRt5SZ9p4EZGe+QBjzN/m2LB7T7Pydnc06brAZusGTv8OZWbCc1FPDCVjM0d9/YT5g==
X-Received: by 2002:a05:622a:a0d:b0:4ee:ccd:7215 with SMTP id d75a77b69052e-4f4abbc303amr236202981cf.0.1766521360586;
        Tue, 23 Dec 2025 12:22:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd849sm4491335e87.35.2025.12.23.12.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:22:39 -0800 (PST)
Date: Tue, 23 Dec 2025 22:22:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add QCrypto node
Message-ID: <advjg46yjja356zosb3qamuvlsoandllvgh74xj4dfjxtd76at@ak4mwxafihxg>
References: <20251223-enable-qualcomm-crypto-engine-for-lemans-v1-1-f2c8f8e4f3cd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223-enable-qualcomm-crypto-engine-for-lemans-v1-1-f2c8f8e4f3cd@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE3MCBTYWx0ZWRfX4dvzc2nfO1AK
 QwzakCBsN738BO8QcsBbw340YevN7gItUDAfMKGn33PF4PVEiD/Ckq2BANL3j+j2Rim3TEeAGQZ
 A81L0gS16Msu8SJK+pXzgHGOhMi067kFWwLUzQPzitW5dcDyZ9Fm3Y660eBDd4DrP4ohEsNGVXc
 kgKV244DuRioWWckAsVYEAd2yqBbLQ3kLYYWW8TSzglQMwpWYGehaO0KHX+KrxmWCZmjbX5XQ59
 EMhlgWNxT12bqg7LEAXnCNm3Y0QPDv0Ly6NJpjt0/PD6hrZSKPN6IPQqtnl1FpyzlO4dIqQl18N
 0mUFG9SmR0szbMLNQ9PjCH0YsHJ17/oWE9VUq7gS3U3kgnV20tvHA9eWENJwuYjwzkMOGOVJ2VE
 8TyWfuBquT9O6Xc0lQpMk9AFO5iYk7cjaC26pg1zkS5rBjNMC1GcQEvx9ona/JQQs8i0Qo2pHbR
 Grp0bZQhj8nxptZG7gQ==
X-Proofpoint-GUID: L9-8U18LxOnIWlUMR98JRn1SaEiZPOKW
X-Proofpoint-ORIG-GUID: L9-8U18LxOnIWlUMR98JRn1SaEiZPOKW
X-Authority-Analysis: v=2.4 cv=T/eBjvKQ c=1 sm=1 tr=0 ts=694afa11 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=amjzsnJ4ma74pxkQl9cA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230170

On Tue, Dec 23, 2025 at 02:24:20PM +0530, Abhinaba Rakshit wrote:
> Add Qualcomm Crypto Engine device node for LeMans platform.
> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---
> QCE and Crypto DMA nodes patch was applied as part of the
> commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add QCrypto nodes"),
> however was partially reverted by commit 92979f12a201 ("arm64: dts:
> qcom: sa8775p: Partially revert "arm64: dts: qcom: sa8775p: add
> QCrypto nodes"") due to compatible-string being miss-matched
> against schema.
> 
> Resubmitting the enablement of QCE device node for lemans platform
> with compatible-string being aligned with qcom-qce schema.
> 
> Bindings and Crypto DMA nodes for the same platform is already
> present in the tree.
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

