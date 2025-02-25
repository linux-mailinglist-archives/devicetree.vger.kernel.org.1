Return-Path: <devicetree+bounces-150887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69007A43CF9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B10B919C4F8C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EADE8268FCE;
	Tue, 25 Feb 2025 11:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QWr6hurJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476DE268FD9
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740481611; cv=none; b=NAjq/IzslhYoaJ5aa7FVWBPg9+GXWO5Rr7m5jeOwqj164Ek+PfONWPUvs8gcQAbAM8gETkwbVDixSB49WPBx0CIqjrjSnergrib355MsFso0ByWX5m9v8kq+A7TeMs83qKPyvEChEoflU38Tpl1xVBeVrmO3nwcMUggVcmcvoQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740481611; c=relaxed/simple;
	bh=XkYGmuqddTj8oK8dZdu+4fdiwObTc32dreqIG6VgV+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HNctNbrtI/y3yEHfzyd2Nej1Y0Cm6MG/O/6OiyTmGORbm39hxTbVNtpSLQuk97ohAhrXbQfTo16eTX57V6vMYPPa7Vk+fTEM26neVT59xX2606PvRKrcfQjG3NniaMZjjDK1dAlu7kFZlNK0gLEJ0xDDQYWhpn+koHD6szoHvbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QWr6hurJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51PAk1un023821
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:06:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vmr3+jNBVikraxFllbzAvshxw5rAgQsiv8Obg2rHUPk=; b=QWr6hurJNwqzWRwI
	XaIRMvmFWUTXnrxp+r0bAIMTGeiXKQdkDEPOQo9CUVeHFyFcwhVEdfvhXygbrH2b
	veOp6DCBQe99ImpwO6h9IqA7FPKpL3MKZyOTMhYxE1SsunHDDEnCorPBGRfLshgG
	TWpVXSwAjMllqiJqjXkNqnu6hBC42gWrt9DyetYViANSyHpDWrinQjPRq5In+nV6
	vaempD08q3SSvgsLEzVCg9byQrWP+qmITZcVqb3dwlnnnJ2P+j0P6Cn/3IZ/WoIR
	isY0mRs6p/NtY+qfoTZx8jCRiCQH9a47rmyl6G8/eUFMTY73Er2nY7/8IdDg1+q+
	nhKYIw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y65y0m3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:06:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e66ba99599so10354276d6.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:06:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740481608; x=1741086408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vmr3+jNBVikraxFllbzAvshxw5rAgQsiv8Obg2rHUPk=;
        b=gjT2eTMya4p3CAh1lSebRLGk79iqC3GPRyGcRFZ7aOlsw3vhCZBFOXUbsAXkD8u9iG
         sLU8LHaCFKl37YYPjg1vrfvXDNP8eCAhrKpUnm+Urta1RMIarxIBeCTp1SJ5pK3N5ELJ
         P717VCq15jeO+xmAS6zWb+l8hnvROymmWAWGSvPVPc1luvzv2k1z2I4bKEUptEc5RsPZ
         Si2U6jm6khy5FilISKRzASAoDd5sKp1jrjLAt3BzPCusFU/0ZmHe63+TkJbDA2GelU7A
         8loe11zLO5evDrajexWb0ohhjoFZiFpYCvEmBHVT5zp3lwM27y4+En/j/eHXf1IbkuGE
         mvcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUau/l6LwzOlFe4IsZZ4n8//pBw3QI3ed1F9s/G7yxxQdmhnFfiKOUJPCJOKt2FxVYVuKnN505vdw6H@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6jXO6TfNX4l6Hw4dtB07hGjM/LL9grHCDwKWeRTna5A5a4eCI
	XGzzpCWEVHo/Lk0FSTiiZjF7dkxBdCZw6FxYMpkKlTRaRWm/w5c+3125aKx7WctxkGWGrUDurSF
	8p+TIzom61ZBTHZQZ59M2MTJmFLtC/0GhUjWe3Kj+QtJyQXTHN4uuyYUmEVsx
X-Gm-Gg: ASbGncvwnHVsP69m5gfOBcih/JS4KOwhvpXxC2c+yZf8T5KxyU7EvxKa6S+i9I1J7E2
	AlReRhabrGzh6GjI2mkFQvJSZIuV/EkbtvTuiyixocc9VV1ssKkcBcfMYKhBlXl/LQ7IpMuxPLi
	vRNf9nVCV28ig2tdJd6nM4lAIgQR2dEFvea2Ug3zwjWy85JG1VVaJ5lw0rbYzd/OSMg1OL33qbC
	8Q5RfY1ljOW41dus95GoNd/NOmm9An4ELSXgM+s9ZMcGZaTkB/ufXWB//JBgEYMWbKMlyrG5s9X
	sL360GRdGO2LgEY2Clc//Y31QaXHqJ1Qtfn8WGZ7fNGEo6uNddSjxzrH3PQ+G5ppXYmp+Q==
X-Received: by 2002:a05:6214:262d:b0:6e6:6a6c:79fb with SMTP id 6a1803df08f44-6e6ae5ff006mr84483226d6.0.1740481608163;
        Tue, 25 Feb 2025 03:06:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpCizjt+FZyk8bw+ARjsYXsPjZ8AeU9m/iRlA2SHZyfGOnxjBSvYobvw7U/JUAWrjEvCtKuA==
X-Received: by 2002:a05:6214:262d:b0:6e6:6a6c:79fb with SMTP id 6a1803df08f44-6e6ae5ff006mr84482986d6.0.1740481607816;
        Tue, 25 Feb 2025 03:06:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2053ec9sm122476066b.137.2025.02.25.03.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 03:06:47 -0800 (PST)
Message-ID: <253c497f-5c52-4f02-a477-478aa3ee35ac@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 12:06:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add RPMh sleep stats
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_lsrao@quicinc.com
References: <20250218-sm8750_stats-v1-1-8902e213f82d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250218-sm8750_stats-v1-1-8902e213f82d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zhG5gBH7s_EPQl4d3JUhViXfmG_kTp35
X-Proofpoint-ORIG-GUID: zhG5gBH7s_EPQl4d3JUhViXfmG_kTp35
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-25_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 mlxlogscore=894 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250078

On 18.02.2025 6:51 AM, Maulik Shah wrote:
> Add RPMh stats to read low power statistics for various subsystem
> and SoC sleep modes.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # 8750 QRD

Konrad

