Return-Path: <devicetree+bounces-182015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D791AAC9C45
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 20:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90C6116B431
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 18:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AACC19994F;
	Sat, 31 May 2025 18:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LOt1W4ok"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C300719C553
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748716069; cv=none; b=bhisE2VPW7GWIMLhMORLgDTWj0cX2GZg6zWAV4ElgeLEtnBaKpecvZfcUXFXuibfKhrL4kDsaf1Rs4x/bj2/jPehcTsgiXCuhHnZgoWZRvb3HaWnDhweMWIoo0v6cODDQ3L/pmPKot84ZqCaO/yJ5Wyacc4nvx83RSSMixSpjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748716069; c=relaxed/simple;
	bh=QVyTy39kGa7O/ePiyt+9nmFnLXJK/m+e+8pa1txDyEI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bP9EklFd0AqqG/myD1VZZ5XsecFD17ndIqSBNlrXLRcOPGW5GRkO64piz8sBEaopmMOqlCIHXTdTS/hbdfPhlbpdENEiXc48vNiIsD/pTVwoZCazaY3SEPrT7BNGK8rzMBdsOtk5/k+3VFIjP6gyvu93oQXg684sJXw1Tbt5V74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LOt1W4ok; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54VINaSO016680
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:27:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dNLoxJaeNa7H9bgjtofmrjyfeoUO0fEK6F2yize1zNw=; b=LOt1W4okxakbYLOA
	+Wk4LRUaEH5afMT2rxrcAR0ehLnk0BQmTiKh3x3YqPwgqnsXSToeEzfR9wHASoHp
	KUgabv5mkXnIK/LodEMYUssWg/PgXv7ceS9crjh/KoeMdFFCIZ9UcA7YL6tjUoU6
	92YSDS76VRgKVeUlgZ1CPNtd8z/EUGR4lWACPptAgMZb5L75eJsRw13FI7GhaRyx
	oz8kITxX6ysSpQPFfXBnRra0rXELn3rs3ia53CKwu03mo1QxEMSAf8OfkmqIpMzc
	DyTWrnfQUGOOgIXDlXX3uIZPmEpaj54KaGnxUB0OPuDyc2R+/R/aYVFON+8zAO6+
	9mBQKw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytm6967c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 18:27:39 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a43228ba19so9352401cf.2
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:27:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748716059; x=1749320859;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dNLoxJaeNa7H9bgjtofmrjyfeoUO0fEK6F2yize1zNw=;
        b=hcfjPLVU9a7nWLbmCuLNPTGxjEZX8jLOVGpjwo/WXURmLPgRmkU93gTajqNITXWkzw
         AhjwepmRBqz0xwQhxNi9p/Hj7w2HkaGIBcqbcB9enpiKoajZeEvwDTZnS9fhapUQPqJX
         pPWDhHUoUoSa8XuQYPoEmWbLewV0J/8gzuLR5H429TeYtPT6RZ0M7HLuzKQwHKoGUUH5
         Z+v1Q0uPY+sy4COG9GPCNyyRLu+MhhIqM6EqfYbKDKh2jXP0HnGMY59WTYMR/U1VLHgB
         F776BrJiIvOeK0FPhyjU5mDmvMKkZY3uW78NHr/eQ1BeCsLAgZ+zE1bvls+LigeB/GNK
         Mm+g==
X-Forwarded-Encrypted: i=1; AJvYcCVOFBpG2tsWO1b0kUzhwodPU0Oio0Lv6/s29zSJnmoJ8wIprWtWe9dX8OIT/a/M9zCXvd5597DNPr61@vger.kernel.org
X-Gm-Message-State: AOJu0YxnB+ESlZpkCsnTQOXoM2yK7W0Abzw7oxgVuC4k5LBBMkYErqri
	h6WUrFHWaphq67CAENPts5b/gh3TVOi5erPIsLOkwdZuMTpfU9FyAxz7MH8PREjNmtuZhH/kwLb
	uuP4hGnxMXLpYCBbdIfftGeFYxh+N8kbnZcpI5sPft8iwkdkFIH7AexWUXpslrvPU
X-Gm-Gg: ASbGncsJxWWvqdi23DpthQPcGDUl6LX7mG8M+hWAmPPk+aKs05WRGmKXwi7t0ZLGysQ
	UQf1mo+pysit6VCIPWeeLcndH0gn60X34TnqfVTObhEYoOOT4dcik+qL2Mzw1Pc1f5s3HaTC6mL
	VlPoY8CoKNynVgbpPOSRWFT/h4eEx7qODlnydX3LQmhC2SvOU96b00cKoLFZ2V6dsull+Ynjk0Z
	Wl3LymvOECmdiJFoCIvG3ddix1zTHrIT5Q8en8TTgaay91Bh1owGgNh7/1ssPozuQZGc+4YkEVv
	L6ZK8sMfrN77KTRbqMsVhxcswcSG1S+9m7DxFbFeklXgJNzQ88c7I/dpnD7LfGDIlA==
X-Received: by 2002:a05:620a:298c:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d0a3d775a0mr413428985a.2.1748716059003;
        Sat, 31 May 2025 11:27:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4okjwDO7D+IbmXbi6WJ92L36mIWN1ZbbjDie9mCBjaikBKTLN4+hEu+tJwMEbwza5FLtwWA==
X-Received: by 2002:a05:620a:298c:b0:7c0:cc94:46c4 with SMTP id af79cd13be357-7d0a3d775a0mr413428085a.2.1748716058574;
        Sat, 31 May 2025 11:27:38 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7fef7dsm530456866b.6.2025.05.31.11.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 11:27:37 -0700 (PDT)
Message-ID: <d3ee0492-afca-471f-9dc3-456a94bfa355@oss.qualcomm.com>
Date: Sat, 31 May 2025 20:27:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] arm64: dts: qcom: qcs6490-audioreach: Modify LPASS
 macros clock settings for audioreach
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <20250527111227.2318021-5-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527111227.2318021-5-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDE2OCBTYWx0ZWRfX/2OfZ7xBJBAw
 eY9Knpp8o5Dr8DQrvw9qSIdiMetq3jMj3/Yj+yj6MnUJ53rO4v7lsYphN4pLaZ7m8utRQq2w5O9
 A9BL6UiDRmtJV2L7qwyjlwOLsh35h1JlO8Rm2dgBEDYl4fC1ug3FmauDgm9E8WiluF0F75eDZiC
 v3M+dnCX+ulKdPqKtqqeYVpDHTlfklXMlUWf1JGFhtPNravuLcU3eDzT2CqFDT0xla791keEaLw
 zzqQQRhxoLyISOd48G7fNCO4ZWCLZ79/XkMwqROjdxyjaORb3HezzxCsehHHEnzkDklz+FJHZkw
 u5ekyQXM1SeJgGt4V2fv/tpy+w0ZNNmOdKPo/A16VZe8j2uZNZ0JEZcOl7OVple4I8hvmia3QUN
 rknyhUFaF5Sy8lKZR2SvWmWM36xkDhuySvFDmXUZRc4j/Tvyg10Uk4eEQaiq8bG8og0IRuLv
X-Authority-Analysis: v=2.4 cv=EOIG00ZC c=1 sm=1 tr=0 ts=683b4a1b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=IZQIRLw8iM99TnyeTF4A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: eEEXqUgvSIEuNmXfXJoQqoEE4GEgJlX-
X-Proofpoint-ORIG-GUID: eEEXqUgvSIEuNmXfXJoQqoEE4GEgJlX-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=871 adultscore=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505310168

On 5/27/25 1:12 PM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Modify and enable WSA, VA, RX and TX lpass macros and lpass_tlmm clock
> settings. For audioreach solution mclk, npl and fsgen clocks are enabled
> through the q6prm clock driver.
> 
> For qcs6490 RX drives clk from TX CORE which is mandated from DSP side,
> Unlike dedicated core clocks. Core TX clk is used for both RX and
> WSA as per DSP recommendations.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

