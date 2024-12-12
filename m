Return-Path: <devicetree+bounces-130436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EADE9EFBDB
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0928228DA15
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6153B1B0F32;
	Thu, 12 Dec 2024 18:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J2wP3XjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76DE17E016
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029680; cv=none; b=uevGPklTB59JfWFfsux5El/Upp1TBvx2jXlx/CprN0HgDrTiXHRkAio8Dt+dPFXPvobBToxj683b08cUTostQeY6IzoUzGk/Bnn8Ujf6R0PPUt0/DyWLoih44R3yvvbkuFpXBmHcIhch6A2d7WbO+M6YV5OOMeCXI3MJjmyUi78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029680; c=relaxed/simple;
	bh=RmXyiVL2gB4+cgIVwfgUVwfRgDhLYp0nJxmaXMtvid0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BZxgOfavmpvhxX6/ylkLHflNhOsYq/2UN0DifM6Vo70M8KqeGiGfx4jWXmxUEg5hdqyWDuLYxoyv1aYvBFpMXrxxDSmv1wIltH5ZQI0rxUabmHL8GObAQC9Rz9nDR2vdz4/KbFrNAhMb7rtTVKrgrGTyTB/cqRM0vuIFCcqbJWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J2wP3XjL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGHZQn015003
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:54:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kzMpNq0v4Z6hfHUf0We/9rKNd/zRTNyQt85n0NuDHVE=; b=J2wP3XjLZj7GtWKU
	OaL+yvEUY1IpgwnLyug1qZtFXCsKEIfwaaPpcZSX1Em/xx4gStCzSlviNekHRS5p
	LZl0j17h+lBhBM9Orszj2NpWk/b76BTfdl3uXURO4Mvh20QYU3lrQJkIlZp0PeTF
	IykCoQ3T9ZDh7vSaCK7/1HNVGuPOG61kowQRznyRSQhf27LkTeXTK80ktmPS61UC
	Y+tcqvXTg3H7pnoyGQI2US1K9ASDa4TQfEf+Q5YXlMTIZvXLs9ftjm9Yb//T0HDG
	rroGKrmk8wfzrcxk8zVChWNK6f4IEqeenxVyal2ah6zPXyMJSjnEGZoP+LrPodDn
	E/Z6+A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f7dpn7n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:54:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679ef4565aso1385021cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:54:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029677; x=1734634477;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kzMpNq0v4Z6hfHUf0We/9rKNd/zRTNyQt85n0NuDHVE=;
        b=nDjYYZAvb28Oyeo8j2reH6hvlNOmbEFGOgupmTAQkJTNo4kg/9n9lkrAhZWuXIJXr5
         zsy3dSzlYEuHYFT2itUYzDO16+C4vPlXrlfUGwm3pK7goGklJGZA+SxKKjy/W7Z09oDn
         Jj3Qjn2UENwAbgQ96YR8/+Xr3j3Un+ubd4+OS4KuzmDA1cfbeM8G1q3ZeUz123U5Pldz
         Zz11pnC20I6t1h8NzXMmH7ypedhfLglV7oilavtxZUD/vYNquGejdOSWfDuwc3yNgMUV
         rsizSl8WYsCkMNkDXQoikpnQ47NuXzaYpouyfHSPu+0E/kaUqWF8pT7NkpRun6qyH/4/
         QBJw==
X-Forwarded-Encrypted: i=1; AJvYcCXemhn0TxrD0x3tYVNYbazVuENnrxUh9XWdC7NReXheCndehZdcZb33gcgsMiknvmfYvtNUCTKBFXV8@vger.kernel.org
X-Gm-Message-State: AOJu0YzsOkg1NQeyluJMLB7ZL5DDYPJuJc2uiik5HoPcx730J1fcQj8T
	mKl4MSkuXYbPfTdfac9AJQE3nWo66HeReUzJSAzSkTVvAcvz/Qh1e6H4Bo6tfTE0ILNaTqXtDyI
	9e9ZmcqfqwgH8Esg7YGjPkJDO/pYE4hHamObOluCSiU/VojkV/n4f16hjZnK2
X-Gm-Gg: ASbGncvZ74JOFw2Bp1kd3Jmk7ZoPkdzdvM7vLfACYPJL2n3o5b72z9Sx8fM/VGZbWYV
	5KfY8nLIHFMg8i4CnBEz7ZQO1YkTdjltmCYeTptkMP4unF2mgDX2xEd0ClLNrOs0d7zEzwd1b4N
	2Gm6u1SKCNaPs4dhn5IGKC8/rRIjgXhLz5GBAGUVGMlv5qMnFKTn9g68FQtX2yUpyLi6qvDXeVB
	zP+bVfbDZ8wQEinr92FLubjgCzdo+xLW2eVrdfxEtztyWp2dJAzE+9CWP5O8NVOcXTFeJlUrlUH
	MhCiBFoKez1TOTQIBfn7gZdCQ1QuGfdfWc90zQ==
X-Received: by 2002:a05:622a:13d2:b0:467:825e:133b with SMTP id d75a77b69052e-467a16855e0mr9628601cf.13.1734029676911;
        Thu, 12 Dec 2024 10:54:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGI6VguhI+v9cKhgNt6yZ71Pr372DR8LUkozPpPnorzMrgM6BVciw0/SqysoC+t7mA7t7ldZw==
X-Received: by 2002:a05:622a:13d2:b0:467:825e:133b with SMTP id d75a77b69052e-467a16855e0mr9628481cf.13.1734029676567;
        Thu, 12 Dec 2024 10:54:36 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6a263efc1sm424052366b.68.2024.12.12.10.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:54:36 -0800 (PST)
Message-ID: <46f8e038-110b-4213-a9c0-4670ba8fb6bd@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:54:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/19] arm64: dts: qcom: x1e80100: Fix ADSP memory base
 and length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-13-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-13-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sJ7P6WGK1RtGDDQp0H9WipotkMpfUGCa
X-Proofpoint-ORIG-GUID: sJ7P6WGK1RtGDDQp0H9WipotkMpfUGCa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015
 mlxlogscore=866 mlxscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in ADSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.
> 
> 0x3000_0000, value used so far, is the main region of CDSP and was
> simply copied from other/older DTS.
> 
> Correct the base address and length, which also moves the node to
> different place to keep things sorted by unit address.  The diff looks
> big, but only the unit address and "reg" property were changed.  This
> should have no functional impact on Linux users, because PAS loader does
> not use this address space at all.
> 
> Fixes: 5f2a9cd4b104 ("arm64: dts: qcom: x1e80100: Add ADSP/CDSP remoteproc nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

