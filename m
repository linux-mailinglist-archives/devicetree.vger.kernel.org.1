Return-Path: <devicetree+bounces-247361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B1CC74FD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9339A3086353
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C88D1343D84;
	Wed, 17 Dec 2025 11:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ffRi2XaI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MlORJSy5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC8A343D63
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765970064; cv=none; b=iinhC8AoTYdtTJbeQYB9lYSCguS/VrF2uEHRFNt6VpTalGx7cqgDutxP8Eue5KN7nDnPeW4cuTqmrChTsIJZ15LyNDHNu2hpk3zvgR+MeiQawf8HmuT0thRVXoFqPwxCgADNf15lY38JuduYdYrB9Kge7JA6zGWbm0pW5Uqu/zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765970064; c=relaxed/simple;
	bh=jJNrBqLbcXCuD9NuvkheDISIm9Smr08Oac6cB/MwqTk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EXmhE1IR0ibgpLyMnQP0lNgNuwwUEjNXLhlRI9XqigVKnq/R8qLWZES5UEWWl+iNq8Yu+Y6TIHwAxKOCgNc9PWYeZ0w0Aoq7nOE5uzQy3AjM/rrSXSymliSdM2J1LCJZRcTXR5L5+EuU1fYHRvTEyojOKOOaz7ve97Ww3ymQyLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ffRi2XaI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MlORJSy5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH9mEli1501259
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4e2ZqtFWUBOAn+zCPWxVaMcfcpDXuDusgMo4taKM2d0=; b=ffRi2XaIRw8BBlt4
	kpTvKijZyFt/98jMhsetvourVTv3g1+TVe/QmJ6Ws1TN6rA5+ixb4vbDDmTRC7Bo
	2XNogXULDSsI7ys0rGKhaOClD8Tt+W68rnd8aAKDQbodxDVBbB4Z7orI5zrX7hZ4
	P/RgAoTfdE//tRoGA0qSVrgek+F/CiyrstYkcfWvZgsAYguDCI4AGul4I2UZocXe
	3w6/MtStSHGBoZat/IlfamlAbJev1LrA2WD8BaJCIGKe5aZ9ymWQYK2atC+LuuMY
	EiANncygTC6m+nNwCX1lelQBsrTUO97wQUifNdM+T+YtUsB5HK3uZrGcvJnyILip
	cAqPUw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3kkesk1h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:14:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so20031301cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765970059; x=1766574859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4e2ZqtFWUBOAn+zCPWxVaMcfcpDXuDusgMo4taKM2d0=;
        b=MlORJSy5cjdCUMA3Dwed21Ti2nSt8u/Tu2nvXjZ1eCycS1+A1QNbKBr4YSk9T9uxdA
         k8QL0Bl/1UIQ8rvOHYLwMsp9INaVYudJtbWJ8QHh3jaFxxtkxoldF5m/tit43pMCRM2D
         HurIxEBOROTt0B7FWt2OprauFFxuz/1DwLoqdbQ9k9j07HCNZk3bXdTDZFS1CgG/cRSk
         6NmB2TAOfcf2nS8b6ucZ57vTdDMskUXC36NnWPwq8fpdiOLhmcDkiBLLBjrk6V9gbvC5
         xW3ccz3aGAM2QxKBBcBLnP/gyqN0AXoDefeSjWDgJ3x48/gwfR+F5xju6vFKHcTvZ6Bv
         TeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765970059; x=1766574859;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4e2ZqtFWUBOAn+zCPWxVaMcfcpDXuDusgMo4taKM2d0=;
        b=rvsvj6VVkTiMuX+qfKpOtGTsvgsEzp1/eCZuMn7vghV6/S93JlN8rH74txXr9TAl7M
         BmowyF162DaFKO+I5qbpVvexrGyudVU63XNEHTDmatYpQjCP3JYppugHz68ncHq9pWqN
         GV858VhqKYy8GtMlkvtE/94fYhkIy1IdWhEKfA8SIBuNeQKbZ8IycttqX+tOlX6NzbXA
         W4ehYbvSospe9kagXPkznwrbnBeQM4vYebvt5i35OQbpm7qCAzsk70dLdn4TDqImnJET
         bVlEXmdNjK8060akIl5TDPDhtA1pRclj0CasdSsy5GmWrUMRgotXiClKXOJ6yFacywWe
         apoA==
X-Forwarded-Encrypted: i=1; AJvYcCWRH4iXb0n1o6j0tanG8el2M0tPQyE5kU89QbPFPFfL0IIqbALPI2TKKhK/kcYpX/rgjoZA36SxZFwS@vger.kernel.org
X-Gm-Message-State: AOJu0YwbA+0uwqqjF0POYDaCmtgGZ5J9De21SD8XDUoMiArsTPsjze7a
	j6PN4YMyJMT7XLGIjIJuVFaosY6CdmpMs5ylShBSoYagPUqLifCcE72WFyW+RL1Eu+8kRb1sWV/
	aKx1INkO5JHqv4tkHxw1Sn9BTbbvHM6JlLemhXwVrRxD2XOrVq5a0kc0IFrIEYdmq
X-Gm-Gg: AY/fxX6Hdt+yhnYCydtunPFSF34beDWaD58caaoucUdGY+vJZb0hd8ysa/AMCz32RhU
	bcOEbYIb4Yje30sz7m67kxwRF11W11butlu59WEtyc8fjZRnrwmyBKEzGncf66UoXJcJ6kPxf+6
	hNsiW1Y/8nY+1Afec4Xs1mvyEPV8wnc5lsXK/6gIFLlpZxhvahVEKw8TRKpXL41xfZUIN9OcWex
	tGWeuxF7XmyLgH4TebnvngTqFwhRa4K6Yjf9Qim3gBE7fRIBHb+6luIqayzs5daPt0BnkZNXtkB
	9ThAI0SU42dlMewVVruZYF9szEeAMYRmAFeMf9Vb9p4CUbBcSU85bitCqKg2cOzamn6TniM3NvM
	zUCDXDJD9riMuY5DQ2NaxIdock1ZHjzUSa6lgzOucNwwB5PGUsRXsXYlCyJQYl1UywA==
X-Received: by 2002:a05:622a:86:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f1d0564b23mr187735231cf.4.1765970058710;
        Wed, 17 Dec 2025 03:14:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeeL3HZVOPvmf0IAL/4i2bYNx5YCSyo2xx9Dhjqf+zLDmXE2sc9O+agiSgDUlgq4sfjkUdtw==
X-Received: by 2002:a05:622a:86:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f1d0564b23mr187735081cf.4.1765970058316;
        Wed, 17 Dec 2025 03:14:18 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29beb7sm1932015866b.11.2025.12.17.03.14.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:14:17 -0800 (PST)
Message-ID: <19bf8b37-4b40-4825-a8be-a94139389c69@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:14:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/5] arm64: dts: qcom: monaco-evk: Add camera AVDD
 regulators
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251216062223.2474216-1-quic_nihalkum@quicinc.com>
 <20251216062223.2474216-5-quic_nihalkum@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251216062223.2474216-5-quic_nihalkum@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfX7swdmx3W0Kos
 RSnrW8lwgcMrI29+71lIlro5ftZFmOZTfy8N0Lw3HvQ/4JFKX2OvnpngtTAetnUdLtR7YGWaj0v
 3KnKriE8V2bn+TkwfveiBZtwNbGBE67jaF+7VCxa5febimXuaTRS0c62564aVqgXeYjvshUe7I+
 Xv18v8UdNbKy/Qmvq0Rwt9M3oKQvFqoGUsdNdPNATU5aATobnG/kmufib/H4sECYGCE5Vn7fEDC
 6VGvZESx3ZkOaFb7KkOI9HYjIMekGdTPrlfkhe4cqE9aDJwa4DflhAPowMkg3Hvpex/M3snNC7A
 o/V3DdF5V9NDIDvtdd6r8fbNN8HqhCeonArVbre5vINn9jeiBLZJ+Xz/loHIPwIAbm6djGPVHWP
 r/7KxKj0Ptequea6sycj6JMEXQI5aw==
X-Proofpoint-GUID: pBMwfu9J3FQEcyOeJxFj_DsGpIDOcyt8
X-Authority-Analysis: v=2.4 cv=Fcw6BZ+6 c=1 sm=1 tr=0 ts=6942908b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=xHf7uapYn66AqgDo174A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: pBMwfu9J3FQEcyOeJxFj_DsGpIDOcyt8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/16/25 7:22 AM, Nihal Kumar Gupta wrote:
> Define three fixed regulators for camera AVDD rails, each gpio-controlled
> with corresponding pinctrl definitions.
> 
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---

[...]

>  &tlmm {
> +	cam0_avdd_2v8_en_default: cam0-avdd-2v8-en-state {
> +		pins = "gpio73";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};

All other entries in this scope are sorted wrt the pin index..
Please take care of that and add my

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

> +
> +	cam1_avdd_2v8_en_default: cam1-avdd-2v8-en-state {
> +		pins = "gpio74";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	cam2_avdd_2v8_en_default: cam2-avdd-2v8-en-state {
> +		pins = "gpio75";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
>  	ethernet0_default: ethernet0-default-state {
>  		ethernet0_mdc: ethernet0-mdc-pins {
>  			pins = "gpio5";

