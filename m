Return-Path: <devicetree+bounces-224195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4100BC18D6
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:44:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35DAC3E0E8A
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17852E11C6;
	Tue,  7 Oct 2025 13:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TQhY+riM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B692E1C4E
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844676; cv=none; b=Z2xBCw8exUa+uhblMXpbTqyiny05lTlbOCl12XwxNJMiosK1fld+QwzbrmdEz7ysVOKucvooqY3mxWLjJaUX4OAjkymxHWassC0CPuEecNKvC/WtKW0wJ5D769W8MTCVPaiG0YIEQxL7iRN6duVVWe6k47qZRlh7nIy9N1ohGic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844676; c=relaxed/simple;
	bh=RzC5tectGEIyc8XxwlPTI5vbHB+9S4bqXZf7cveYE/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PyOhU16q1RtkU79+tTMilwr5NFAMhrI5Di9LOlZcUGx0A70TPvO1yPIUmygYC3GQYCS8T2C+U2KcZUDW3Iac4ChltEx87UIvcHSx/R8nnrsiVdjxpZmWYyT9QO6ItNgNNFMXl/r6Skhj9MrFX8Kaq3WWtN/57MhQnfQr06H2Y+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TQhY+riM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597BWnfR020172
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:44:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1JMHoyMsE7HxNwaf3O4ncQVvQFojmL8uHi3mQasDHEY=; b=TQhY+riM3+3DtFvH
	nsog7XPbnYl0EE7YDsSEsARjskw+WJYDIzLEy4NKY/Hsp7jt0eLC5nr6A5jWkyQq
	8zwQRlXJfTdX2+0nBdCAT3COSC8WGwcwdL4+onnATRAcpThkWAG1w4ZDpqMAB6kH
	6Vtj3EjKE31zSuZWI7SAtCi0LVVqWOA84ZQsS4dlgZ1KKBxAjMimb6K8VFPCqR3i
	LEemf1J0nt3l7h5TEhS/wh7lPcHnbA/ILq/xovfIInMU7FvFrdTNX2G6roVlhqoA
	zjEl7DJddkJl8CePyS2hnNnRSGfOoTTuvN3y2SfKlPEDcZk/VyxO3qIEpQ6UhF8p
	wQmJ8A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9dygvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:44:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8643fb24cafso128777185a.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759844672; x=1760449472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1JMHoyMsE7HxNwaf3O4ncQVvQFojmL8uHi3mQasDHEY=;
        b=ToPtrrgi1hKdDbb9iKZ82yc8sqlz2dvSi8Er9t7pvAcki/bzNu58OFz31jNe/6uAa2
         fkDGFqx5ResRqqA/XrRhbOEGKSPSLEQASypnEDtX5zdArx4oTiB0qtrYbB2vwoIeJ/jo
         pU5t2DE83WBXFCWPz2yE0qxXU6mA3cUY2Ze13zSq3eLD+LlNX/OLPqvUkIl0Xq0HWecf
         QwRxfn4EOKNoCW+qD8uPiHdZWl3pyX73ccLgOGqDdX03iD1eAKB8hRHss3G8zRPtU66J
         c2pjcA/7FW8gC8XqsaD2YMARxKXpRsAwX40JFX/FTEw0bxDGt7SnK/EMu/fQmSNcuQ/0
         8rNQ==
X-Forwarded-Encrypted: i=1; AJvYcCULKFWFiu1fMXxBiFd3sdb2uozwpR8VcvD0VPKAI7Y69OMvb/yPfcw0mKCgQHVukrx6j5BVsKom0Cdx@vger.kernel.org
X-Gm-Message-State: AOJu0YzErxMmi+Y0kLNp5p+e+vk8QrCqi82+TzMdoIremZEIuRuKUAn+
	tg26PcTBn05HCX544Qz7h+JAb6Csg2ht8CSULoQ9kEe8ulGwlATrm4D8KIky78vR19T/as0bvzi
	M2w+t6dPWonv24T6gegWh3bs0CNhbmy96lQqxtO7ZXfKQybXBeq1bzEQ+Cjh0mZiu
X-Gm-Gg: ASbGncvEtKGPTb8q2ANkxMWentw2mpAAey8WVzZCprzZ3quYWn6oAkiAk94t9oshHsf
	5MAiGnHOGrBKWVoo3iUMT6NoRKGvkLtcQfqtT9PgBbKPRR+2owJcpA6NR8zIkfQXug1E0u3p4DQ
	uR58xKVxH/CLGBj7m0M0VyLShYlYBos9ovVg6Ja0Nev5Yf4bQTGJ10E45Ejb+dfXhLWOnE4/tjP
	td2ULCKksQ/vFSlaDXGo2cLyPOK22mziyNUwq0JSHSm/xqh61YQsYzKtCjlpC1Ta5hY9De0xQMp
	M2H2a2zjcifzIMZsex9dmMfcQaVljJ3/ZHE3HNNWLMxftqzZfh0xYq4Hx7CgINz0DsUWokiFIcy
	SqbS21ysDOk5IEkMhyQsnQ8vMvwI=
X-Received: by 2002:a05:622a:20c:b0:4b7:94af:2998 with SMTP id d75a77b69052e-4e576a81e8emr140344361cf.6.1759844672468;
        Tue, 07 Oct 2025 06:44:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrrZPf0l8ij/9YleMlzi9UQn/coW3h1uLIhDGnK4sj9h9CmyHm2gOyOc7btpiEJZzuV7ogqw==
X-Received: by 2002:a05:622a:20c:b0:4b7:94af:2998 with SMTP id d75a77b69052e-4e576a81e8emr140343811cf.6.1759844671680;
        Tue, 07 Oct 2025 06:44:31 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6394ba637fasm10117255a12.33.2025.10.07.06.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:44:31 -0700 (PDT)
Message-ID: <0e6ec1d8-a823-4e17-8efe-27e2b22b5081@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:44:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: qcom: llcc-qcom: Add support for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-llcc-v1-0-ae6a016e5138@oss.qualcomm.com>
 <20250924-knp-llcc-v1-2-ae6a016e5138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-llcc-v1-2-ae6a016e5138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e51941 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=9J9bQqhuhIfmgtcBUKkA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: YgSrdNt5rW96Cq6N5JgRNny_cJe03ziW
X-Proofpoint-ORIG-GUID: YgSrdNt5rW96Cq6N5JgRNny_cJe03ziW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX3KXxi1ATpGo9
 VCuxTV784FfZIArMmO4FHwhrVFLTQTOTYBl9h81rPzWT0Lt7BKknEKL5bzqFXSV+3juaVN/I5Ze
 3a8mQaJU2WZZenMkbC7crzIs401Tc8PeWugjzF6ctmC/zVz5SdkOpM64ggIq1mwmSN2b91nRHdv
 I8zOrBo+pabX72DdFdkPdqkYZHMoO8kn8WGussugv4n43YThWTY0BIXVeJmxw+K0fT3inRYaeIF
 0+ROQshpRwBYwIx9N4h8wnMgltzNH6DT5ec1bog+m5hXAaLjtZ74R2ELFHLdybXI4cWfsnZlIi+
 P8jX8flKYdyDlnNgKlv2S0zkrpJXqz8ygRGQNaZZZUougFPV2ehX1XnTEaCp7H9L6WoexR+c+wl
 qlJ7t3YuVI89494SLKMdgKc0Cgh2Fw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 9/25/25 1:24 AM, Jingyi Wang wrote:
> Add system cache table and configs for Kaanapali SoC.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

I spot-checked some of these and it looks alright

[...]

> index 7a69210a250c..0287f9182c4d 100644
> --- a/include/linux/soc/qcom/llcc-qcom.h
> +++ b/include/linux/soc/qcom/llcc-qcom.h
> @@ -74,7 +74,14 @@
>  #define LLCC_CAMSRTIP	 73
>  #define LLCC_CAMRTRF	 74
>  #define LLCC_CAMSRTRF	 75
> +#define LLCC_VIDEO_APV	 83
> +#define LLCC_COMPUTE1	 87
> +#define LLCC_CPUSS_OPP	 88
>  #define LLCC_CPUSSMPAM	 89
> +#define LLCC_CAM_IPE_STROV	 92
> +#define LLCC_CAM_OFE_STROV	 93
> +#define LLCC_CPUSS_HEU	 94
> +#define LLCC_MDM_PNG_FIXED	 100

Can we de-obfuscate these names?

Either way:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

