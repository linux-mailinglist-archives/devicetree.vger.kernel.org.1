Return-Path: <devicetree+bounces-145327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25087A30EB4
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 797AE166CD1
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8332E2512D4;
	Tue, 11 Feb 2025 14:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNu4mvq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A214250BFA
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739285129; cv=none; b=O1mGEHOdp1r15n0MbjmIFarRxkaFc5a7AgLPKjMeCT3sOJ4pUx3DOJZM7MEQokSKq9+KhFUB54cAg6phs1lPNkfhFja1HkajVOGGPr/XB+CNlLqzHV7OzTd7zrsjxoXcpbK/DOdAvtgYxboTcuKGi6AdhJRwysydhniF/4i1JjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739285129; c=relaxed/simple;
	bh=0kVKqk5IG8JfqeSpFKJ8BTtJxmpzxliMEVgSL/PtQ/k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WyUKyVjk7nzJFvLM8Zl0NS5Zf6OVD3ftUL1kt1m1/cnCsbRYqOuWNLysbCOESl/ZPrbvglyva0U6wInssY1wo1UhYqjx1GZPoVmFV1yf+XIDy3oF9KBYyLpUrlkV+ShwiaNNPGi8tDWjFPKNmR7ZO9TadDnSKGgod4ZAdn0kEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNu4mvq8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51B8gGF4008278
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C5ZlX1YetlmrIHMSkZ7v4IVR+ij3Aa6gQsqhWVYajoY=; b=NNu4mvq8Bibvup0q
	emXXlq3IMFDCVOSvu3WyMYVa8m4UjZpgX0w3jf39xpGgp2RJYoxBwqUO2LfRKrP5
	hqTxnROGq/o1SUOGLrrjEhkBjzq43sEhPndizH1kD/jMHE7PcgpLodHOBUcSEr8u
	FHVf+1W4Zm+MCUqXWMcDid+4F3J56qThuP41CBhnuyOe1YgiBe88LBHhsrCYR9tO
	iFH3PN1CYJFwW96hWdzXPw3Kbv4BZwaFKy5Ub/Dv9+TWtOqV9XUeGnyFVfHBUoPg
	jB8ykGcsm6sLTkdGCVlWKG5U5rRCQaPhK6mIx3jnwvQ8hJZ7nvGUv8mJoSvMVyDD
	K+1J8g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qewh4d0c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:45:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46e4842dbd0so15420051cf.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 06:45:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739285125; x=1739889925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C5ZlX1YetlmrIHMSkZ7v4IVR+ij3Aa6gQsqhWVYajoY=;
        b=MsETBcXhdkhvfc9dn4M5zGgbPFjEeEFKNCFytIhomJDBujpnt05lV9ajgIgCAS6QoM
         9q5+XpF2kTd1HTu/C66IVs3e/xCw10OdssIhrER8AZvLEUbjQbkKj5JJunXUbcxcdRAS
         zA13EDUaDQDYZ2GVExOcUSOGCZUrWYsrLGE+LavzrZmDgUwcitDTmEQ+/CZtr+kVBkP7
         aHyiRGev0zFXwwyPuMtDutfXs7tGAiSEjnIwI3H1JB+TyFayaKdDMhLcYptUVO4Jh0Rl
         7kHsMkYRoVY/IF/oHjOHdLpaaAZ5dfhVVxaZBSlxUV7yTix2R0bHCHgoIgwMs0dhl7gL
         Ba4g==
X-Forwarded-Encrypted: i=1; AJvYcCXrAg181F67tGijDcwIVmWZquAM+VIQSYc3uHckVRz8zIOjyyoilbrStQ41tOQg+vYfzyrWR51NF1/v@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3jpvINb2N46GYlY65zp8OlX/G7vmrh2cLgpkSXIAb2aS+oBYS
	pFa3G8DEon+pTcUZG4fZPb3SuGWpIKyX1wzRyt6OzX1ttGgRqmbNsL4BbqnBBACw7IoSSsgL2Pf
	dNtnu0tdtOJcpwzmY1IVwMA+ZcOg6LCK91jM7vbuQjtPNAUSqI6kjQbMnWJlG
X-Gm-Gg: ASbGncsCHsbpJthcnxbco1iZe8AvTidyLG+pX9DIfm29jghcRP6PtMqtCvw9Ccrj9vh
	qvzD/5WSZZaAkHDTgr77DMS4xwG2j0mzFVwsXH7TXlIbO8GmlDIV0uwRgyUzRvmu7tMdoQAgR8E
	+UsHROg1/9WSRiTHNhiVeB2+DTBTRnjawjOdqOTdEC7bxteDdZsG3K8X2RnaZnlL6ePZHiAzBub
	5DiB5Z9af0po6Gh2eZTrtucR8QPHAT6A9hgMlNmbQQxo6XS4APJ0cvPW1aRm86LMLKyhVZZzN0P
	fmoPaIc+EuPXjOvwu3sZa7P/EM9uzD04Sxe/xel3CJ9G5dGFNJ+FvHv5ciA=
X-Received: by 2002:a05:622a:130b:b0:471:89e5:5154 with SMTP id d75a77b69052e-471a3e0db5fmr12104551cf.12.1739285125036;
        Tue, 11 Feb 2025 06:45:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZMSc6eujUP6gA+rQWjF9sJt0YkUCD00xhY+fNjYpiy1BMcxtRBCV1dPRg4/gTMVtVYU5GQQ==
X-Received: by 2002:a05:622a:130b:b0:471:89e5:5154 with SMTP id d75a77b69052e-471a3e0db5fmr12104271cf.12.1739285124385;
        Tue, 11 Feb 2025 06:45:24 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7bf1d8aa5sm439955066b.62.2025.02.11.06.45.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 06:45:23 -0800 (PST)
Message-ID: <fc8483e2-b149-4f7c-b62a-9e7d0f6e2c65@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 15:45:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2] arm64: dts: qcs6490-rb3gen2: Add vadc and adc-tm
 channels
To: Rakesh Kota <quic_kotarake@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_kamalw@quicinc.com, quic_jprakash@quicinc.com
References: <20250129115226.2964465-1-quic_kotarake@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250129115226.2964465-1-quic_kotarake@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: bH1lEgYvO2xJJHgGBYHsdFbnb73ck1LE
X-Proofpoint-GUID: bH1lEgYvO2xJJHgGBYHsdFbnb73ck1LE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 mlxlogscore=902 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110099

On 29.01.2025 12:52 PM, Rakesh Kota wrote:
> Add support for vadc and adc-tm channels which are used for
> monitoring thermistors present on the platform.
> 
> - Add the necessary includes for qcom,spmi-adc7-pm7325 and
>   qcom,spmi-adc7-pmk8350.
> - Add thermal zones for quiet-thermal, sdm-skin-thermal, and
>   xo-thermal, and define their polling delays and thermal sensors.
> - Configure the pm7325_temp_alarm node to use the pmk8350_vadc
>   channel for thermal monitoring.
> - Configure the pmk8350_adc_tm node to enable its thermal sensors
>   and define their registers and settings.
> - Configure the pmk8350_vadc node to define its channels and settings
> 
> Signed-off-by: Rakesh Kota <quic_kotarake@quicinc.com>
> ---
> Changes from V1:
>  - Update the Die temp name to Channel as per Documentation.
>  - As per Konrad Dybcio’s suggestion, I have sorted the pmk8350_adc_tm
>    channels by unit address instead of alphabetically.
> --- 
> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 114 +++++++++++++++++++
>  1 file changed, 114 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 7a36c90ad4ec..54ad11d33b38 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -9,6 +9,8 @@
>  #define PM7250B_SID 8
>  #define PM7250B_SID1 9
>  
> +#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> @@ -212,6 +214,50 @@ pmic_glink_sbu_in: endpoint {
>  		};
>  	};
>  
> +	thermal-zones {
> +		sdm-skin-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;

0 is the default value, please drop these properties across the board

Looks good otherwise

Konrad

