Return-Path: <devicetree+bounces-254677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBB6D1ABC4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CA9B302A39A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6849838F258;
	Tue, 13 Jan 2026 17:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ea8KCsDd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GpjCuary"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086B721C16E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326656; cv=none; b=dsNOfUswfvIayP/Z+HxDY1jZYi/bqK6F/ZeOhHg5HHhOT5baV11YncdUrjDovXpJK2/5czFUOLmls7O0cBsE8LQ3l477Gcq9zRZEuxqkWkNvO4Se4PVCZybMepYvyj93nu4JJTz+r+WCAUE8cZSfairmDN4zZqF1pSQXsmHwn7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326656; c=relaxed/simple;
	bh=ZXH0T84umdfNTTuYP+C3ZdMkYZlSA7aD+zTERAEMBQU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kWvjtCExVbDXX1hFqjicFLhYoD3gIPmOne60EngNZt/9UVByvsR9XpvRjjafNQ/R6vrf9evapxq/5LMLivCt5Clb7YMcPcGQhZtA4d+wFl5KrI3oBaf3dPi0JeihBupkmv70dCvxC72yImemhhwibXRo5eBAAF+WnT7yx+uSRYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ea8KCsDd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GpjCuary; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DDR6iE3868705
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:50:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+nx1JdmlmHKfLHOTytgyRX/URrhFuUnuW3QKi0a/REM=; b=Ea8KCsDdOUOyivvw
	b7BHqx5cs7m3geyGy8TfFEl3Wtz1jbeyQw99ZptpClYsW7IQY+KkKdW5w+f0TGBV
	LY8pHJ91SBy2kYLAi/ZB4celQKh323YYxv9/bWZKYrw9x94cRu+XxY2eQ2+Zq37l
	fV2iVlXcOrOssyypyzS9zOw/oLq5UWZIVN1RGHaIZWxsefg2nk94pN3GHW9c2BkC
	5sf/dk4nBebszvYON5XT8qQesTZceru6bONeq7oweKtSfNKj7YFswSSPmnIEB46s
	/aNUQnlEW9gHQa0VAvlVBf4sLnEtikCBeXrBkcN31KiwqfxYan5Jk+wFtdsTYeXv
	BBOO9w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxkabmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:50:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52c67f65cso178519585a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768326653; x=1768931453; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+nx1JdmlmHKfLHOTytgyRX/URrhFuUnuW3QKi0a/REM=;
        b=GpjCuary/FY9v8MEic7ZEdiTD00YsRXH7iutrKrRARYNIxdMJhgRm4Wa0ph7ebDsex
         l3NPyrcBXdbu0zP/Bm2Yzv0gDaSd7DPx1slSWoiMySpO3LTz+gH1oeNleecok2glMpwm
         TCBKNpQCNReJrp9gOko8gTFXHJEH5H1SqTD7Pgrx6d4Ramqw4ZXugZ5YAr/yY4v+ki58
         otv1d93C1hZImaKsgNN3MjQDZ0F+TYaONG4+ulpxGA+hHx0xDXkwZXfWKA0hnNbmPYSf
         T188iHcyrQJI3RCMz+tJ/LrDlBCivaZ4BJCXJIRBQ6n0s3KsFRlm+Wn378xcIgOsHk8x
         1Z0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326653; x=1768931453;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+nx1JdmlmHKfLHOTytgyRX/URrhFuUnuW3QKi0a/REM=;
        b=U2eBo6nq76PzBsINJS0on5eul3dal9ba4asb9nCSySGXKrjvmN92rZn2jZ7hDchHs4
         mOgQnXy+YDaGoeg04kDOPByoBHjop6XiLAxfZWuhQAZQZsLFM6TPCpaVDoYbsx1zU6+v
         fxS+p6WMuzr9eGph+ghlhY+T7/cJM/z+rzRMrHHEMl4eHGz5weKdETIisUVlcjOXbGmE
         rmv90BkWtgnoOBHlT7Asrz+RcIManLrD2+1zwqcAS2GnEbLSeFa8B85a8H1DH/HdjPpL
         1GxAXsIuFfQXZquu13icXq/Oy3AA3pB/EJ73CHSir4e5fOwlB504gPE9U+gIgFPY1she
         gyEA==
X-Forwarded-Encrypted: i=1; AJvYcCWH2UJmz2DXynTBXFl7S+ygZgPz3EogFuHKJcljYY7rl9a7Pl+8Uzlba24bB8gJSS7DXwnJ1ItSdQeg@vger.kernel.org
X-Gm-Message-State: AOJu0YzekevOuftc39zCvptfZqBjHYanTsGHbbmY/W51b+TUacT06zIa
	z5C1XyRq2Yx0XMtWhkj+0z1c5y449jgjq2cG+es6JyLpZu0pEAFbnTWtp9pFfPm2gsvVSEJCoXr
	3iZnDuTrbeUaqNpD1A0vV9X1thUn1n4mRleVoLx8yY3d//aKHJ48waujMEkjKRpit
X-Gm-Gg: AY/fxX5ZX+p7f5XTx97a+edBWXQKIbsRZhvnnlWGnw3LnxGSeXieq/sSNn2s+yzAiQq
	no+5x1USicymDv5jxCx1iFtZoxUzzX0bmnj9RhLe9QOLWqjZ7dYAdfgChLfiSamxfinfwTp7n1q
	IqaGazrvK+Df8CXE+qRtuhhIENkGV38IG+Gc5Z5MgedpJktZd3kz05p6ZTreeyZxIsEXaZ65nh7
	6ZUq8zESlcNStoe5aow/b5XYOq23vFCqr6hQz3P/aszBqwBTOIbm1izz10ha7OyOj5zcweXbOm0
	LtESdi6AXZapTmjIRNJRoE6C8aOOu81YElKoRWg8au4ChNX+5CwG8y52dEmAKDZgOD/UJNNXA0L
	ofSTPWm06RVSaZvinYZBmWOLWSAveXAsJNq/6eSc8XGz+wcXa7aVLZ2/hHZ5XTHDbcBz3yHha4V
	KLMbulAnIwHmdXtIcOFl3oeDs=
X-Received: by 2002:a05:620a:458c:b0:8ba:419f:c79e with SMTP id af79cd13be357-8c52fbe2692mr4954385a.55.1768326653369;
        Tue, 13 Jan 2026 09:50:53 -0800 (PST)
X-Received: by 2002:a05:620a:458c:b0:8ba:419f:c79e with SMTP id af79cd13be357-8c52fbe2692mr4950085a.55.1768326652878;
        Tue, 13 Jan 2026 09:50:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b7c2dda17sm3781105e87.15.2026.01.13.09.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:50:52 -0800 (PST)
Date: Tue, 13 Jan 2026 19:50:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: YijieYang <yijie.yang@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Message-ID: <cjp7sppitjxu4utsag3dqn4k3hvfsczcnv3h32uwjotwidklin@xmxbe3jqmovs>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
 <nfhjbfqflsrye7hqbtgwr5hwkwdtq5z4tbvnta7lk7p7jtvhl4@zbttn6coc7br>
 <7050d5e6-ddcc-4ccf-99b6-0888318c5d7f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7050d5e6-ddcc-4ccf-99b6-0888318c5d7f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: xc3jR8V4LyDCIuszojF0pdzi2B0Ma1dl
X-Proofpoint-GUID: xc3jR8V4LyDCIuszojF0pdzi2B0Ma1dl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE0OSBTYWx0ZWRfX+0nLWa+ZLFHE
 3kn+BP841TFyS7eC2O8AuuatMP4Ho0LfcKS4WfnPoEL7bsYn2ksgHZtQdxpbImCeaQ4Mmop7Rab
 /pHoXGKqube0tiutdFfHxjKAP4I5lNtVd5+xIkg5eS/wHgxkn9lCNk+5xNOBNz2iqOZu9Yg3H3T
 Lh4IaViEnotSCZL2MryKW5AEfccIlJiomnlmeCAwgJASQpCWuI/8P9HRCcoi5jO16Vml+vZkezO
 +bFt83U20FG+z/NKq9eBZDuhz9tCYwlan9fBvdTwxGbogE6xcNF7c1JNIkrOoKu1r0CV8GOp2K3
 sop9rqDwM7p/Lk5BFvX69dA3R7mrYr3XvWivDAN3ICiis5jGP+iGDXk5Ew9UJx3aPaN/hmel6RQ
 e9HzTe9AxuM3gUNm/Mky34tmfmYuPoMr4LSzFi2Xmf8eDNgZiTcej4e/3bdeyvjUx2f9qhBtGGt
 wWnDYSx4E+M7JVcjzKA==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=696685fd cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=SL0Ma1YKNNxVB4j_2zQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130149

On Tue, Jan 13, 2026 at 12:29:43PM +0100, Konrad Dybcio wrote:
> On 1/13/26 11:47 AM, Dmitry Baryshkov wrote:
> > On Tue, Jan 13, 2026 at 06:28:15PM +0800, YijieYang wrote:
> >> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >>
> >> The PURWA-IOT-SOM is a compact computing module that integrates a System
> >> on Chip (SoC) — specifically the x1p42100 — along with essential
> >> components optimized for IoT applications. It is designed to be mounted on
> >> carrier boards, enabling the development of complete embedded systems.
> >>
> >> Make the following peripherals on the SOM enabled:
> >> - Regulators on the SOM
> >> - Reserved memory regions
> >> - PCIe3, PCIe4, PCIe5, PCIe6a
> >> - USB0 through USB6 and their PHYs
> >> - ADSP, CDSP
> >> - Graphic
> >>
> >> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >> ---
> >>  .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
> >>  1 file changed, 5 insertions(+), 6 deletions(-)
> >>  copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> >> similarity index 99%
> >> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> >> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> >> index b8e3e04a6fbd..fb90beb1096f 100644
> >> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> >> @@ -3,11 +3,14 @@
> >>   * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >>   */
> >>  
> >> -#include "hamoa.dtsi"
> >> +#include "purwa.dtsi"
> >>  #include "hamoa-pmics.dtsi"
> >>  #include <dt-bindings/gpio/gpio.h>
> >>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >>  
> >> +/delete-node/ &pmc8380_6;
> >> +/delete-node/ &pmc8380_6_thermal;
> >> +
> >>  / {
> >>  	reserved-memory {
> >>  		linux,cma {
> >> @@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
> >>  	};
> >>  };
> >>  
> >> -&iris {
> >> -	status = "okay";
> >> -};
> > 
> > Why?
> 
> Purwa has a slightly different Iris hw version (8.1.2 on Hamoa, 8.1.11 on Purwa)
> which I would assume is slighly weaker, plus there's probably a freqtbl change
> 
> Let's take this as-is and enable it later

=> commit message, please.

> 
> +Vikash, Dikshita this seems like a really low-hanging fruit, could you take
> a look at Purwa support in Iris?
> 
> Konrad

-- 
With best wishes
Dmitry

