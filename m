Return-Path: <devicetree+bounces-244680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9548DCA7C53
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 14:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8280324E837
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B008337BBC;
	Fri,  5 Dec 2025 13:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vx13eF+C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EXMZjkN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9556335568
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764941261; cv=none; b=tr1dV2tit4kl4y+LrwP14nbjPoLQCBjGRQ9EQ0QZjyK+Z5XZHeznjPCi4cfgViKfnJDGyYmWZi3jVPtuQmTiLsdk4/crzoItfdQCamMBiTXFjOFPCmTCgdCUAbqzydYjvdJcIJ08s14hn4NpLtjDuNY9s6A38O39Cb6S8I3/VtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764941261; c=relaxed/simple;
	bh=jVThZqtcyTXWu1N/qKfczl99tuecBZusvkeG3oOjl1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rQrHJSTuPPdFYVujqt9zUgLv9/o01RCN7PmuqDPul98tZLpox1mfRjvjGAMcqXzS3AKnyIa90AS9lO7ePpB1NKqeHGOw92SHxt8O8x6Rv3SVKfGJDaFCfNah1haDuGdkE1fQureDUxKPVik31SJoXTajUQgtU/SigXZT0Q6yOuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vx13eF+C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EXMZjkN5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58nfov2897828
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hCQDwAEGjTsUJbQElMMhlWhifDFPm1MUSTsyf5S3D8Y=; b=Vx13eF+Cciy0i13X
	OgxTjqqHG3sDxlpUizXl1yvksjZvVWo9Ii+tTAQvk/6+qjxMizZeY8AcM8H3VeLE
	sZ6c5U79WkSiTVel1tnV1kKGXazPvbQCh/XYIez9nVnsDbZsWZJhipkfz/E77w9q
	jHe6NOXprxiny/ZzmYxeZbF8eWBf8/C7Y/F5hLHXKIGa3wZiCgedlBmxtfwKjyrF
	mPPJtNVsNo6ba1Zgz4xRgwbPTy1D0LbfDnORsMUDLCqgm+9vt+mFEWuKV7GShdYb
	xZ3JidG/pqmRDhFr7I6DSHpUqrUIt6RWtQaPCF4b5wbE1GfIrRZhaJMxemvgNYNo
	LkYsPg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj23qr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:27:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2fdf3a190so14897585a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764941256; x=1765546056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hCQDwAEGjTsUJbQElMMhlWhifDFPm1MUSTsyf5S3D8Y=;
        b=EXMZjkN5iZquYdsoRlvRo0kAMx7D0Pj9I47FOV7kv+aQJhpT0aRxkLZvzmNiw1+ZI5
         eXYKCkK2dKmsu9I7aqWjWp/wnbHPyW2Azd0Hd2Pa/uf1aPA/O2YZrVQ4U/vlZHIzStL6
         /WksOOPfnDRXx8CtdRySlu8thKTSd/che4DeQBz0wx2enm9GAEHpy/Y4sVGBHNEKQeGB
         92AItEB/6GJfhJks03CFVs3FV/QH+OugN4S2It8CWFEiZdRrkARRJX+w6/OlyeIinOjF
         qOpgFgFLtmwpi7nMi0+pyCmLqIvLmC4U8kyL+mrAZawwano+Tyhxt0gv/BJ1hPL9mhT+
         k6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764941256; x=1765546056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hCQDwAEGjTsUJbQElMMhlWhifDFPm1MUSTsyf5S3D8Y=;
        b=o5hrXq7BehZyqelvDLc1fVE4lqS0yG5/chY1bL2RaN18DYycQSTxrhypOsHRwivy7/
         Eh7Bju6A1KB6yT5qSMVLTq6YPtrJxQWMJjR5bNJeecJxVEmwSSIVoxqBzHjtqWw6sJbT
         rn5VnSakQVVx9vs8zQLYoxrNrPYbF2idOBUJTyZQ0uKCPUNxOS4UKdLwkrUzvMF4nSPS
         rZveSYGJs40FI7sN4RQsDlUhu9gMijSvjZUOkYrBYNQhq3zVHcY/DwOFaBtchVGkk6XA
         9MOz4uVIMWiCpmLgYo9jE6G3FQPpC2TGY3GJwOiAsTu+27gav6L+EovEjBJ4YL2/NrHi
         flcg==
X-Forwarded-Encrypted: i=1; AJvYcCU+ROB4Ag6YZ604J6BoYpSTu4kyDiP9csdnYy3k3MgfbtxXgAMOsXar5BumaqpJ+cKTrNhlOJUGseAK@vger.kernel.org
X-Gm-Message-State: AOJu0YzUtxg1maJf4HX4vh7lSQtf2Nl3Dv4eHPrPTaJtqr0kXdhSR61I
	8pf9lB2OK6sgvzTYcvuRc6NHMG8/+SmMia29mrop9d6zNphpeH2UIFU5xE/yjAiIaYlA6LLC2YV
	Dbbi9JeWEu15KEXuf69GsbOkrpcsS+nNQcvPKlqRTdQJDfJn0gLsJxrGZ3fgREe4k
X-Gm-Gg: ASbGnctkEyTmdmSRmPAsHhxl6ScXTInslsS2EIoNyEb+yE9NPbuLQKY5YoAOkYHa7ju
	xu/r7VuupSxnJda63aTVcYLN+tEg2/hJij6HYYd3bGwFWMcrnwQL9yXVRg6jLFUNnxxz3NkAofH
	L/qdP+fjeqvyKYy57hObKWxypnFF7EDB8jlwCh76Zzubh2EvYgAIp8OIZRrpaxyM2vOQZW0kcz0
	LeL7py0yBOJikNZEYIpy5u6qzjZ6ehRABAYe5i+jD4gx6dfdi4TXWQYM5CxSfneKCQUY+uix559
	fWLch7wqOH4IWJffp4/NYtAh4yOLzUHcXf1HXUPvlIrTTnRmVlqj9UdIOgE4OXb1os7D5QKpZrT
	QZLD+Zk7XeZf0EA0PAgvVK0tqI7Mi8PORZscmDCdq7zNTIX9lE+G3MqdSYMkq9rZ8yg==
X-Received: by 2002:a05:620a:3708:b0:8b1:c1d3:8e7f with SMTP id af79cd13be357-8b5f8c0e8fbmr954701385a.4.1764941256072;
        Fri, 05 Dec 2025 05:27:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGI9mo5BIwftqdjJVfsHeIFBWOngs5z5y9sX8W9ISgUAEJ2cJJxx/cWbPUZJjc8uaGbKmV5wg==
X-Received: by 2002:a05:620a:3708:b0:8b1:c1d3:8e7f with SMTP id af79cd13be357-8b5f8c0e8fbmr954698085a.4.1764941255522;
        Fri, 05 Dec 2025 05:27:35 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b41219b6sm3839981a12.25.2025.12.05.05.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:27:34 -0800 (PST)
Message-ID: <2bd146fc-06a7-4f62-b542-fe24cb9150fe@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 14:27:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm845-xiaomi-beryllium: Enable
 SLPI
To: longnoserob@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
        david@ixit.cz
References: <20251205-slpi-v2-0-dfe0b106cf1a@gmail.com>
 <20251205-slpi-v2-1-dfe0b106cf1a@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251205-slpi-v2-1-dfe0b106cf1a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932ddc8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=RWXG68yAir6K0NoWbU4A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: p1kgFNbzOlAufgOiNh_RiBXPQKHKSMUG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NiBTYWx0ZWRfX3naGSA8i/xaV
 iwaSpQLxXXg7BXXUiSEgSo02s4kzQavEJaN2e+qkmP5z6bcTABj5tt14w2GvsFWbiNpLffzfKnz
 nb62N4rqFVTHKLdi79l5JkR68dW4V3HErUZ1+XXJj9gWdl5a05v44NBJpjreESc18II2hwYdzwG
 9bbH+9g8WbB1H/kniccVekAujEY1agR05yu4dJYO+BCLi8TQyPddZxDPy4T/GriG5RT5cz+OUfL
 hB0POoDE3Wysdoxjo3EQUwvMFVVFN3zV/xsqWrjMY2pjpb6oyME4otdhIqGqWvWZQ+khkuVfsUT
 rrIdb/6CgdMVyZkmz3fS3ATDDoN9BNtdOS6haSuSId3uBQ26BYajiwDlvsU1Q/p2mxNkizFiXW7
 7YOiqDhV7VOn92+khktUSmUzOTVnLA==
X-Proofpoint-GUID: p1kgFNbzOlAufgOiNh_RiBXPQKHKSMUG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050096

On 12/5/25 2:00 PM, Robert Eckelmann via B4 Relay wrote:
> From: Robert Eckelmann <longnoserob@gmail.com>
> 
> Enable the SLPI dsp on the Xiaomi Pocophone F1 with Qualcom SDM845 SoC.
> 
> Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 785006a15e97..cadddcf63ef6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -425,6 +425,12 @@ &sdhc_2 {
>  	cd-gpios = <&tlmm 126 GPIO_ACTIVE_HIGH>;
>  };
>  
> +&slpi_pas {
> +	firmware-name = "qcom/sdm845/Xiaomi/beryllium/slpi.mbn";
> +
> +	status = "okay";
> +};
> +
>  &sound {
>  	compatible = "qcom,db845c-sndcard", "qcom,sdm845-sndcard";
>  	pinctrl-0 = <&quat_mi2s_active
> @@ -637,3 +643,4 @@ &wifi {
>  	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
>  	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
>  };
> +
> 

Stray hunk?

Konrad

