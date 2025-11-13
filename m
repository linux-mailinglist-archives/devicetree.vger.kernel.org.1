Return-Path: <devicetree+bounces-238036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DCAC569A3
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D96B4E3779
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF3429E0E5;
	Thu, 13 Nov 2025 09:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGxaz+t6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N6tQZuB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C53232785
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763025916; cv=none; b=QDFEoRrV/C4xNk6RAGvh71yU6xf7AoSoULh8O1NG2QXDDSZbhUkA6Q0aENJejyV9sRLwUJLbmqnW4D61b00YExyHXEieE0qDJD0pdEvKV0il/iQuexioLgjXkp94vwaO52DuDfI5rTMRdofOy21SQMQ5lXxcMaeCMSPD+ottJkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763025916; c=relaxed/simple;
	bh=OoScr/lvJFthXvfT1CXbfWhIiXmyfNZugSh4SiCJAKc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iwExiaKJGnHhF+dhZpb5BIIwjCIeF59O1usrsIlbDrE7TwyBSWgDi3QV/E55FFbT4qGZm1jk6n9GXkhMEu5gYKuYusDeL0/i6c4AsapYOR+oqh3yv9LD9Tnwwr7B2QL2sFQltIJF4nmR4pqSI48csvCi9qNvza9BpRdFU3LPMtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGxaz+t6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N6tQZuB/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD6qdYQ3873634
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:25:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vDDFEBq90ZrP1T+dhrcOC42sUU7oXSQNn7pBqr9sAgU=; b=kGxaz+t6XTlVqj1Q
	cpp7vqdDEj0ZTNXz8YMfu7hSXI65/qzHSbr5nRE6AKQKVQYrV5AT2wYgJzV15pfC
	AWFf4V3Dw+4jXBpghBTkS9AdxrXPlhYDy+lzmCHUB7XxI0Z51jgnoCMloEngoQXX
	hQ8I069ESzIs2YtA7cU69+/xghK3FmELpWsjPt+LObVMKkqkr449phORhQgfzko9
	NW0Gy0FwRG/gh/5UqEGNCP8nZvGj3Ylxw8i0ExPUJeU4LY791/U1C+3UaqCghOg8
	E7MF97MWA/11o0Qxu/vBUsxM6lGe608VYONG7RLHuZ7uQkWbk9eHOuHdrQKM5Ree
	2cmXHQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adaeurfau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 09:25:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8824bb12211so1897176d6.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763025913; x=1763630713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vDDFEBq90ZrP1T+dhrcOC42sUU7oXSQNn7pBqr9sAgU=;
        b=N6tQZuB/NlQD6bMYyRBG5zk9bQRImrFRbJVUKSA7B4WjesD+ZX/zzveQZlkX5g/sCv
         iGYhH1g7xVjK1c2vh/BgBC5RAoOvmPj5/oc43jEoNU5IifRM5zYm6cd4OcCV+oOiTCAb
         rwDjgvVMBcXa25DEWtCY+niciLIFWe/Lc7/pVVg2FNrIV/pzK2ICI1S06N3u4SaXPGk4
         1RZbyxke/6C5NzTrtJZbCbbN/qPP5n5C4C/nz6xVn8KgirtvKeYmybZVdwQP8asaLEv9
         XHfmVOHzY+SPSspjY3eMyS+Hyvmo0nc8FMLAqqBiIyOaiq5HhtDL+GVeI60IT4Xw81W1
         46DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763025913; x=1763630713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vDDFEBq90ZrP1T+dhrcOC42sUU7oXSQNn7pBqr9sAgU=;
        b=dqZMGYTL5YleBmauZcGGVrqlmdDkxeHvfrfLk17AUFk/WnStD5UP9ptED7KbQTn2D/
         lVxbQbwwzQWRffskCD8/p/+g8einBTag++iwrR7ttO6HDVtRrvxfhfKAm3SMhnK3ssWA
         kLIsJXThlH4zOLhBNh8J5muXoGVg8VXdtBcgm222eRkPpn2FuNJwoj06sieiekWwSQr1
         BFOCK+bM2ScciorPxXTTaNWLF4glq+zqaseoYyNxPHItHzmY10YGDMQZyv82NjkqTW4J
         FHqxlchbyUiv1nkMj+qIOgVk2JLQwK+pn1ZgOZsbUBdeJzj4nPLHRFW1QpAS5mJdofFu
         8P2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXk6oANlg7HDxH2j0IYRMAkSxpkiU+f/32rLG9+kVzBBIbR7pTw3o3GNP7Sqi3g0aiLSWjOT5V++Zb2@vger.kernel.org
X-Gm-Message-State: AOJu0YxFrZNdVP9gjzOzCtrE4L0TZdo8aZ+THFFsuIfOM/3N09HFJB00
	bBEY6//WOw8+DSGsA2WkW+Q25kGLssPdIiXFJzqtzydu5McYcRPWr3LHZTF+Qgn4zJitThT4Cbo
	2+viFTWAeDx8AIfSgARbr1460X1dg0TgNAZtLZOZuxRwtHGYL04E8kWLy+N2cl/XJ
X-Gm-Gg: ASbGncvOCqInDy01L4L7DWv3evsePKNRTM8+HYeIQw8UeI8Rcrn4egItMl158mpu0c6
	lTtih9OOsIfNmuFkO1HVACU8V21Axqn5FIXFoEGP0WJ6YKRCjj3NkfOCGTt35prBCjowB0hDE8j
	VcmvaDVUyOA0wY5O7U+vZDPgNcNknYB2CWXZ3WFFsgRbjihwAgeP5HumYQb/DN1shRImYp4n/wJ
	R6qtn8Y1IOAJaxrlWFvXslW56h27HRojHxLATCLp3SuDb8QK96/b79c9PxoTEhtFTxB2VNHN5Gs
	UfAF5ttBhLdiOd9iQBPwvSCIbCIhwDeetBGdB5DiDCgwxXvoZyBbwIpPf20tJNviDhHhiFWudWu
	ZB3TmVTnUS690jEQ04zAZbZhMOumIfDh15VxuGrNAbb21hLabHaO3yyVI
X-Received: by 2002:a05:622a:82:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4eddbc80e92mr63505381cf.3.1763025913185;
        Thu, 13 Nov 2025 01:25:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGiS6ClbvwDxaM59r7EvhMvEL75Aioc8hfQ0S7gbLkt5XCfLUoRC68WRgTYAfl76ADBEXhpaA==
X-Received: by 2002:a05:622a:82:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4eddbc80e92mr63505241cf.3.1763025912750;
        Thu, 13 Nov 2025 01:25:12 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3d87e3sm1020882a12.7.2025.11.13.01.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 01:25:12 -0800 (PST)
Message-ID: <c8584278-f771-4976-bdae-03379e1f2d03@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 10:25:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8750-mtp: Enable DisplayPort
 over USB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar
 <abhinavk@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
 <20251112-sm8750-display-dts-v2-4-d1567c583821@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112-sm8750-display-dts-v2-4-d1567c583821@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OToI6N8Ubhi77dj_GaA_iM3TcyxvcMJt
X-Proofpoint-GUID: OToI6N8Ubhi77dj_GaA_iM3TcyxvcMJt
X-Authority-Analysis: v=2.4 cv=JPI2csKb c=1 sm=1 tr=0 ts=6915a3fa cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=31XZ2xrWJyNqOSQKvoQA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA2OCBTYWx0ZWRfX2o5nO26xxGaV
 5O9d0XHLvoPfiHzV2jr1Np3etP1kd96VrbSAXJmNg3jyMI0MfpIcIxTqBm/XDaxh67zL02st89M
 NlD0VqT9Ycqi62YRolVtALRWHSbI4Sl8V23hcgmUwXGQVNrHYXA29jdj+xfbU+HykOumwyxMuFY
 AjolPMleUi9/hHAUud8ZWCMF+9nNDeQBFgjrTDz5zjFqvBUwNmnT3T8DSxhu1AepWr0TT6nD69l
 wcie3QBPm/2kUkS0Ak5MDQ4Frj7k8PLCzJbD8AbMkwp99Tx9CUUs1tV4YjX/pLGtXuO6lINe+3N
 Xc+v9rgrMsuyyRYbIIMt5vD3+FxyrZPmhL69oqxqXyRkNXvrc8TGyZ2GAB1aBU0axXLDbP89LXB
 NMrFanKYf80cM3JLNr0VxYym82dSCg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130068

On 11/12/25 4:02 PM, Krzysztof Kozlowski wrote:
> Hook up DisplayPort parts over Type-C USB on MTP8750.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
>  arch/arm64/boot/dts/qcom/sm8750.dtsi    | 2 ++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index a08bedd2987e..8d5a5d89a2ad 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -983,6 +983,10 @@ &mdss {
>  	status = "okay";
>  };
>  
> +&mdss_dp0 {
> +	status = "okay";
> +};

If you add:

&mdss_dp0_out {
        link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
};

you'll unlock HBR3 too

Konrad

