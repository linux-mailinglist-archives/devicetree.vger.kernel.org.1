Return-Path: <devicetree+bounces-127631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9997D9E5D41
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:35:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41E451880295
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06236225781;
	Thu,  5 Dec 2024 17:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="maNOdNK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4DE221465
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420119; cv=none; b=gGlrmTxsYTGVuq7mPzkLD5jA/E3bZ/TZVckThUOQmSvx5asoAOUN6UMdzM/rEXU8JFkc+NNG2zlQIwg+jtHjns0KYFLKjIuCaXfi3ZztCL5z8dNo9ms28SW/j7Hn3hIwYrul9CL9Ai/dIQJqKZ268685jW1NQhA3+wfgyD57GuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420119; c=relaxed/simple;
	bh=c2l5AZImwi0kJvk1E3IDHHPuiWUV/EiTKKgH2uIeSZg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=egCzcGxmIJfHh2m4rt8VnGDipsNKBgfbSIQy6kMXHyMFYMU4MWqwawG2R6HHHIGyZ58BAiDH+jlpJuDSiJp2NY4SpuJcgzaGXhYkoikL6idbPzgFxmejtn0i5xgtEgtzQCG9h7/6tyjUjVRJ5SrysspHCfEBUCgktLge1ub5w9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=maNOdNK1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HVmPh021353
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/hf1V9zdRIw6pH/APZ/I9hBl32oTaCEJ+E39AFJsx4c=; b=maNOdNK1ISfzg10e
	GMU17NkJFPRdYxgfGziOdLOpmrZT/m+WfBTONiOw7cB3lrE8EW1d5KyoIHDOGnw6
	jDE9ukkoFn+asRS+aumNTke9iAGFx3kY9Ei2RRPVBrJriYq8plbW45Ps871pgV5g
	5V233092Zv9jQgOlkOYB7kHl8J439L5MzcVSt+z7ZK6dEytLBU2/0uMCgaqzpLnA
	HZj5WqVheXENMhVmPAaHjGhq7Y3pjjFIOS3Fuu5XqoDpdoZioFUMUGqwUjrRtCH3
	k55/Prl5p81iMBsc4A/9QcJOK6a+Tui7QXPEZGiXIg2yfx3WsMSLGuwNVwS73SHM
	ULivmQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43be170hmb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:35:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6846a9b6cso2614585a.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:35:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420116; x=1734024916;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/hf1V9zdRIw6pH/APZ/I9hBl32oTaCEJ+E39AFJsx4c=;
        b=C0RQiDwZftXMlYGPXwE8knF1ygStf8Zt8lAGFSbcW95ljKzjcXHi+leNdDMXsHSmgy
         mKTRnzRmYxPqWMNlVckrmXEqRpcVe7Wx3DQnwpbun9+chD5gt8+d73FStzHPAjvvQ9jz
         BkqA+HUJ+iCsYUHvjw7JOpd7d+fYZsV1JRPvvjwu9J7v++X18zDEfdC7y90qOA1kobzA
         XQ+upAFcVZiZh/OVbOVXL6gLitR4FIe1XMncBOzA4x4jaSqJ8HqUoY/Tc+KEe0a3l4WH
         58070G82N0SOMNucylIk510+Xa/hfMD9uaZRsEgftRJfRXKsS5ycmF6ogiKT7FpyUQjd
         /EkA==
X-Forwarded-Encrypted: i=1; AJvYcCW1r128iYfMef8HteHdJ23ZqZtUXfvkFZQ7noL7KaeDlHGU47XcqxO4tCig/XL7ZyZ0UYjqzfrXGghs@vger.kernel.org
X-Gm-Message-State: AOJu0YzGmlltWyjw6Vuckku+IO112Tt1Ob+MjDxGNaeEh30A9POgbOPd
	pLA71TvJ0ybGbIZUDdFwdPqN7KCvIeJC888BzsukJT/Ubb9hUf2bldaUPmjQZyH6my+2xttBVLu
	YkHZMQvPqNFuX5bnTPSfOCUYEXGVw/6f3wWMDLJAQwP9dyoo2fXBATlkfLukR
X-Gm-Gg: ASbGncupct8E/vRbBPBzFGZSl4Oiw97+DJl/boHy14Dswq41TDF6dyBLJJ1+1N4QOEp
	6kxrDQHK4a5lFGDTobzGsKvRo9UXi4ptXP3ifoQl89wcANpdiyh0abw2VGpUCVCzcDgw39pXM3J
	nekZshCiKg6bxU0Uj6Evy5E/lizNXBbdNQgC1Hml+T5gSNScZTch70Wick90PCcqJbeg9yW6Jhu
	QRhlw+xsY7D6pz4wNja3iPaQ3sCDnzDPbtJrrmoGvlNKYralkg7EiC92xYNgjHqx83i9pmow6xv
	E9KyCZWPxDOyCMTS+C84JyCoEWbT3Sg=
X-Received: by 2002:a05:620a:472b:b0:7b1:b216:f5a with SMTP id af79cd13be357-7b6bcaca6acmr3099385a.3.1733420116619;
        Thu, 05 Dec 2024 09:35:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpJItac86niVhaF/4cNgJUrecH7V+GglPqLR994cq+wXutGXaPED7cVUuFPk/R/mKQ7V9KVQ==
X-Received: by 2002:a05:620a:472b:b0:7b1:b216:f5a with SMTP id af79cd13be357-7b6bcaca6acmr3097285a.3.1733420116273;
        Thu, 05 Dec 2024 09:35:16 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e58dffsm119321166b.13.2024.12.05.09.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:35:15 -0800 (PST)
Message-ID: <b4173f94-1cec-49b6-a882-d07b10ebbddc@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:35:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8750-qrd: Enable CDSP and mention
 MPSS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-4-9a69a889d1b7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241122-b4-sm8750-cdsp-v1-4-9a69a889d1b7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: aI3dLKpe-c2wXsYCVjaGohm2SBLZrUwP
X-Proofpoint-ORIG-GUID: aI3dLKpe-c2wXsYCVjaGohm2SBLZrUwP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 bulkscore=0 priorityscore=1501 mlxscore=0
 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=585 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050128

On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
> Enable the CDSP and MPSS (modem) on QRD8750 board.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Not tested on QRD hardware.

Not great given the status = "fail" on MTP..

Konrad

