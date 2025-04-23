Return-Path: <devicetree+bounces-169913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDC8A98A51
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD0861B674CF
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E74981749;
	Wed, 23 Apr 2025 13:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CvHBibE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC6374040
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745413375; cv=none; b=W81bHogvalYDf+E6Ielor4OUP00JKqrMvpKmP5cQqp3h25wBhQSIbkWjRcYGSxtDIEl/WXG4yUpIWSfiyVP57dLHhtqhitJ/+M01eTsh4O0Cgfdnn58m0lvJmLBEDk2tJPqBtTv1E/pqRb58yd39zFV8gcJr4S364f8o9TIqcYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745413375; c=relaxed/simple;
	bh=BnvOXO+boD8aoX/yVyEiclGZPfk5b7M+Q3WLNEqtKXE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Rn7gdaLIP8yToAue2Bz8LCjhx73bhPvopj5AWOXbfVJgs1hA+zWK4U8ueBfExenKsqnmnbBS/7GVr6w2qwlfWr1EM1TWRyZZeK3jUTd5cZTs0e+NIkgVJQLEF8QVo2LdPrE1dbZP68Lw3usMS28/vxpYZeUPlx3HfHCnkTwJQzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CvHBibE0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAF8Na008503
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:02:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zfAVF+aMaiSo/7Us8CKrNfv3JkPdUAHjwZh9PyIZpAw=; b=CvHBibE04Ca2Uz9v
	lsgtR5XjledecTmtOP1xlkizF62cGjd1jH+g7A3Yadj6RK3aVxGiXykOBBWGhaal
	+oqEAQOv7l7jkwq3+02kMK91m2MxE9dt5XMEjpVTTL6awk9nY7ivOibVfqHwhzFd
	ygEFR7YcHzzT9/2OxV/G/7/wiyB1Xv5Be2f32ord0ohi6v9Llr682/iodh6WRS5g
	UN6L2glMhMHXkkEPRIo1vBwfSky54vZ0uj8cN5oI025R6VzUCutVd8LQqIB93d/y
	bVj7JGyGpHZpF3wkhj5SkmbudItYqmvSFyWEdsQCnE3+R7WaDIggDXZobQv37qJI
	K2zi5w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5a6sy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:02:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c7789335f7so21966485a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745413371; x=1746018171;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zfAVF+aMaiSo/7Us8CKrNfv3JkPdUAHjwZh9PyIZpAw=;
        b=vDXTApYfForrMDtfoPQP9Px2uF46vlNvQO2EbFWt9JY/h8dJ4lygjU919UnCOh69U8
         JJlahbPTZIlBto3nQdLo/J26UOSzdJ2wMNHEHLmVTXgaKY44veTy8lykYXiBfEsh6Yos
         5vZjlx0rBv8K1gVdFK/7wIo3j/jWQwmJ7cYvQgSLTJ89PNQKLxp04blLIG5BpiKbMr6N
         BBjYS9eW+ztDNJzO2bTp7Nh1I+9VXXNF/Z9XVrp1BZGHqxNNlkl9gSUNKbrPTMPB41w/
         Of13pPV5i8LsCqhGih5oI0JI7TVZU8HqCS3OiBZq9Nrpg9Z2cQfhT9TpVHGTgbmAycAc
         CG6A==
X-Forwarded-Encrypted: i=1; AJvYcCVX6IWZySgbrztwgINrOXXUOs4lZo996EIAenQzhRW2JLafBnAT86ryQ/P7g6K0NswaTzgCjpsGKHK7@vger.kernel.org
X-Gm-Message-State: AOJu0YyLMoB0BsQQI0oV2vTr5n5EoFyHJ6/TMjLoz559EXtd2H5taUxp
	SeJwKS7rIWR1xf2v3GivBYcw08wKRjIu6dkIVaeYb5ShctU9yib5YWKzkaWP5zBF68u8JxIlcz8
	TGv3Z0DHOlj8ZZOYxlCspaXnxK7rbNLVn5L8HjWNEN8hjxMirAinUikk34UN6
X-Gm-Gg: ASbGncu45H60e7a3uRpdYRMtNHycc/3qoCzTKaB3s+57tqKraT436UV+7pusPx2MVO2
	k98mHaMkqjq7N/5VnOctyYlnpD7YdJVYm4lCL4Xz8rJiC8tNZzltv4sp7/dCAGmSA3AixXWJiZs
	XcyX7aPk/NLtk7s0nQjuwX+BEmkyuBoPMkriQYfwZLPL2PCaTq6SG2Id6OozgHSHhW4mWULPvys
	771ygpvzFoO2+480fIpvpugUy/0xEfl+DJOFizkG1tOGtJMoaaDPjt2Q3xz6g9uXGIud3jY5TAR
	NOoLo71HHBDlL8VgHryWoIBcNW9A55mqcgiQcjSmnb12lzaEB9xXkMSovZR4ITwTLCg=
X-Received: by 2002:a05:620a:17a1:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c94d32ec56mr169897985a.15.1745413370764;
        Wed, 23 Apr 2025 06:02:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/ovwutEM93izQp2u3D8TlzNzpz5TZzJ2ihH4iRdeWJCL9e6H4/DMIlsm5XIOUTBCuAmehFg==
X-Received: by 2002:a05:620a:17a1:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c94d32ec56mr169895285a.15.1745413370184;
        Wed, 23 Apr 2025 06:02:50 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6eefcf37sm805661966b.97.2025.04.23.06.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 06:02:49 -0700 (PDT)
Message-ID: <2dae7d88-4b3e-452f-9555-05f10b42dabc@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 15:02:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add GFX power domain to GPU
 clock controller
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        stable@vger.kernel.org
References: <20250423-x1e80100-add-gpucc-gfx-pd-v1-1-677d97f61963@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-x1e80100-add-gpucc-gfx-pd-v1-1-677d97f61963@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5MSBTYWx0ZWRfX1Uf3InWkyTsi 9weJAVMxVBn663MERLDFWAok8AMeah4LgyrXGohbTf+rIkR5g6VkSZxxXCP6SkiHFmYY1yygdZu bA7bbsRO/m+gm98K2Tz9dbDSX/KXWG92Ir066/Q5jv5NWZtOL4IDMSVzBq9O5hbtxNZnP6ovVvA
 fV+lft3vPpShxG9VXR9p473SVcNuebZceU850rxLBXhyXg4w5TTSxRBFQQJgWpoCuEC1dMIdaAH c+hM4seSVb3DBBlB6+aJqToEwPzEwLhv4yVC8L90TkFIx040yETmYVSzhgqoPKw2+R7H9QM/SWw 8bQoRhiSn+/d26grE/+wUvH4FzF7hCfKaPY0b5allzOtn4h1jDNqbCs739U+fzWGF0LgjAVCMUi
 G8uLpkkogGSqXDCUBtTxzlHTifn74/J0S9vYkrAb/AMPKk0ZiUwK+cet93dfQ8dIRPl5GMGw
X-Proofpoint-GUID: UFMD6ibVDGqe3zzazmTMCU0ttwCefn7R
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=6808e4fb cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=O4X4kKYYB9jgRp4dNnsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: UFMD6ibVDGqe3zzazmTMCU0ttwCefn7R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=994
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230091

On 4/23/25 2:58 PM, Abel Vesa wrote:
> According to documentation, the VDD_GFX is powering up the whole GPU
> subsystem. The VDD_GFX is routed through the RPMh GFX power domain.
> 
> So tie the RPMh GFX power domain to the GPU clock controller.
> 
> Cc: stable@vger.kernel.org # 6.11
> Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

You shouldn't be messing with VDD_GFX on platforms with a GMU.

Parts of the clock controller are backed by one of the MX rails,
with some logic depending on CX/GFX, but handling of the latter is
fully deferred to the GMU firmware.

Konrad

