Return-Path: <devicetree+bounces-243472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AA5C97EF2
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 15:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 785DE3A38D6
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 14:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA59931D756;
	Mon,  1 Dec 2025 14:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uy9k/Jss";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D3PtwSem"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA0031AF36
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764601136; cv=none; b=ulQjOngFZ2uFQ7GRLX/r2kvnJHVXpMSMga6q/PhJC0ha6Zp9fOpWtfdntDdC1Xdv/wB3SG8hN3w6cyjDVSR3yBEhnt90cwYeS1scgDCGPvj2ca+M615j0O/Lu3/Z8i+pOjXxaBXm2BOf73lPJH4OSugQ1cXpMq9ra9fXfPUl610=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764601136; c=relaxed/simple;
	bh=YTA9iv+6P/PzCi50PzRgWIo8HSHGzMhnxoCzPMq4MCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WpPamKbjR60X0SKDblRQdNZHkwbyJbjVAcAw7Iq4BGEJdIV3iLCDKW1JgglnaWA19HRKzdTnI+AqawCVQWK3XodCivfAdmCFemUdCyzJF75Sf3L5I6DnEUJFzfjVY1tky/CNZIXw8eYqPOr/Spy3nZD4J2NXvsHvZ2xOIhK+bfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uy9k/Jss; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D3PtwSem; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B19rG9R211933
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 14:58:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3d8sQcDwQPK78J27J6mXt8OqnGzf15lwl8xqUrKNYOA=; b=Uy9k/Jssl3Xr4sJ3
	IG3BZYTHlVsi2lV4QyO6Ko9muB0u6Hhr0+Aut0Osei+a3VLkqdMkRPxxo8L+mgWu
	yRf5hWPyv8AIrEOTLvCrfxOjlCzwmcEzYdWXG58f+YZ7jxv/IMrH591zscCqBNWP
	0CXK0iZN3g8qKnTJS30RaZVjW6IaRxIfJry79A88RoKNxr8VBVZ5XDxErimaDhr1
	4F+nvLkwn5xH+FYZI9eEdfvx2CzGlvTJ7q+VdoY4Q6qSXT94j9/kjNWc+rGh4WXG
	DzA0H61ZnqSvfbIOsc+9G4cvLJPZe3no/8nLLwFbc0yOBKOF1Wn7fTghbAt1ggy3
	fwQtxw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as8sj0suj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 14:58:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b184fa3ffbso103277185a.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 06:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764601132; x=1765205932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3d8sQcDwQPK78J27J6mXt8OqnGzf15lwl8xqUrKNYOA=;
        b=D3PtwSemsCqL6JCTF+O07cUiaDHUlTAW4UBHzQ0z47jeGmEXrOzuJ+DosKg5Q6jo0/
         s0uXjYaipwbN15S/826sOyEThwP7jsv1ruWWKd8lpI0aLTk8xOwrmrqRvf74cU/cJrZf
         YD2yE9iMFXg+VONxeKgUYLUkHPhjNkm3F05GTINauvCq4onzb2sX/J3WxpRpsNJ7zTYx
         Hv674i4Df0BbEusqMktIg9FWbZs+xljQEvE4bTwfKFo53urrAAj69HgVhK+e1Oj4AAVp
         MRyJiQy+EIsmWhnNTwE4iL2/JDXw4+R/uKUE3tJewDoCp4kh+XSJxBo8w3vY/KkyVoeQ
         zoTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764601132; x=1765205932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3d8sQcDwQPK78J27J6mXt8OqnGzf15lwl8xqUrKNYOA=;
        b=oxlbLIaXagvadBC8vJsk6SePsFJBybQWU7H776/dqEtQsdVkKz9AlVqq/B1okLTMzP
         N2zXtil38RwRS2gQ2VRxvfW4cspdzPdaQAAhoz8q0kw2nCfemMTmwkQ8QPz8bNsltV7P
         gdCgf1lh6DDKttJCFKjlYxab6KcVq08snKW+0mbmGtZ/x2ylHApcI70jYdn8ueMC+Pfu
         ixH+P8Z87Q3+X4Kol0BZcxVPldpJrmird4UesyVWmUvB4r3dc7aLQ4Nv+G6G1dnXdZw4
         y3pTpPxR6XtHtdDOjHrKkntkS6W+JJq2aZTAL4D4ImyVGEWl27E/qcJDmK6+7tnok0+e
         sOiw==
X-Forwarded-Encrypted: i=1; AJvYcCUxrZueNOCUcGfbqWRZQgLyOeQNApd/1lucSfb0jpLjUU2pmRKLNEpvsrpoTQJO9xndwneJwRKkKXI3@vger.kernel.org
X-Gm-Message-State: AOJu0YxeJUW2ihbUiLysDQjRNZX5qQLdUv1pQUpXe7hjYYQUQrhZJF79
	11dUNOHAVU5BL1O4VwlNgbp+6ohuB1fxSUpd9Yg1wJzD5HmW+TOy18A5tUM6DcvdKYTJF++kXQW
	+q1/P4dwzOdF37eBrTPqSz+jWvSdU972l29OuqVaHFebbcuLH0OtfFPVCfrI7cAiv
X-Gm-Gg: ASbGnctEsc+IH4iP3Ve7UfCXX8045+dliD661gagCUQJlDT5DtJcax2nYAdc0AyeNMv
	GKVeqdp1NsEuYeA+AwzAGD3owy0OjkQ9Hact67+RYdQQ+9pZrjmxZ2n7z1C9IjXoRI+n5sxigIN
	upMBnT918LTSfjrXfl92UHGhWl6IoPM1GrY8azhzhVYRW6Dtah218qMQbcUghBVBurLmkv+ibqj
	xlQ1qMP0/pD7IXZg/igDVUJyyfYRA3z+WggdcMlLYDkXilaYlNLWKd7+UHGVYMQH/bXgL+KpiKJ
	4VNfUQrR5S4+bplUzkqjPtU4Eeaeds8zfqcHaVWca55T+YV9xouIAHNs+UqRi4r19A/PhmlH79o
	XONTZ4Adki5m216z+DoI2TqxoJomh03JRtFgTJgxZNC8PMBp6nHeZ5v7pc0oV31LmJAs=
X-Received: by 2002:a05:620a:4609:b0:8a2:568c:a88b with SMTP id af79cd13be357-8b341d51aeamr3765909785a.11.1764601132256;
        Mon, 01 Dec 2025 06:58:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvdChHYrp4lDEpgkA9p44tKoa6280uvB4pPk0o+kOM6TSHwYl46FaoIgjnk72rNAAZxAzKbg==
X-Received: by 2002:a05:620a:4609:b0:8a2:568c:a88b with SMTP id af79cd13be357-8b341d51aeamr3765905785a.11.1764601131779;
        Mon, 01 Dec 2025 06:58:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f519e2f0sm1255891266b.21.2025.12.01.06.58.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 06:58:51 -0800 (PST)
Message-ID: <e65c9149-47c7-49a4-8076-0b8ef161997d@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 15:58:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: qcs8300: Add CCI definitions
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, nihalkum@qti.qualcomm.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>,
        Suresh Vankadara <quic_svankada@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251126081057.4191122-1-quic_vikramsa@quicinc.com>
 <20251126081057.4191122-3-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126081057.4191122-3-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IP7ve30hFEA54FzecSg7tzgKYrMH1eEo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEyMiBTYWx0ZWRfX6m4UuiafjRJM
 UZyyLO9ZhgqzPa96FXOpMDB4wnYAo92XzrewJm+wghBsdJrP+e1rknokucLmSfrOLZmc8Qt7zh4
 2uWB1Ul+miDnoFJjDR81UlsZIXgmYIPbDZN67u259rCPwkHomSepzqo/s+9QMVy1Od6XnA7YFNp
 +JxVHpQjzWOzBvhiHSuUMKDjZcbB2ba/g/GThpgmlJo/TE9VwmRuMLuAnbQjfy6mQv7oHu3G4J0
 QouDLFTt38PUUs/3AelLCl9X02h2v65NLiefjboGLlOGc8xPVO+vLvPrdYc8/aDxICF07EWlw5l
 iJ9uegaLnHdxfpy8MetzmkbKGiCBMrsKuyflOX9uZv1BOn68i7+x98HO3LH2r8vHnoSgE/upE6G
 ocAz3y712PMXd13WfKDTZBJ73Q8tXg==
X-Authority-Analysis: v=2.4 cv=Lr+fC3dc c=1 sm=1 tr=0 ts=692dad2c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=Q6ag48FyZXsM4XAYfK0A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: IP7ve30hFEA54FzecSg7tzgKYrMH1eEo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 spamscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010122

On 11/26/25 9:10 AM, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Qualcomm QCS8300 SoC contains three Camera Control Interface (CCI).
> Compared to Lemans, the key difference is in SDA/SCL GPIO assignments
> and number of CCIs.

[...]

> @@ -5071,6 +5182,240 @@ tlmm: pinctrl@f100000 {
>  			#interrupt-cells = <2>;
>  			wakeup-parent = <&pdc>;
>  
> +			cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
> +				pins = "gpio73";
> +				function = "gpio";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};

I'm not sure whether I was unclear, but my intention was to ask
you to move the MCLK pin definitions to the SoC DTSI, because that
comes from the design of the platform and doesn't vary between end
products.

GPIO_73 being related to a voltage regulator is strictly a property
of the EVK.

Konrad

