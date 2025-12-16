Return-Path: <devicetree+bounces-247066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D07FCC3A2B
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 15:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 855EE30E4E26
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A5033A9CF;
	Tue, 16 Dec 2025 14:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HDAS2T41";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bLV4nS/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 814E73101AD
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765895375; cv=none; b=Ub1xbCtbU3hN9wadMVotNk+F9snW6U6Gtpm76CRfasMoT5mSpoRfPLTsMJF6bMZRQ14lanCYTdfdFT3tiWXz/X7FdrDL/Dvk4xDtRomKZxvufhQ7O0xcL6GRfJQJPeZawGkfOWMHGVY9Fodi3KKokOVafypUYxROpGxM5wGdqQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765895375; c=relaxed/simple;
	bh=c3FEfOYe/jyAQH1PXJwhUM2FL/6IdIKpvjQ70OBnrDE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Za7PVqx3Kr0X15XbXxJb39NtR4kfYi+1ZHfDNgmdq9cWD4F/XrlusYnE14CxVyqRQEHrWKeMCmn/UwNXk606jh2vaPBA6CMCnDWzddxzqY6fLlpa5HZGVIM03zNz4ZPiiCTlH8mauZVaqUT5N8Wd+sg3+vM78PzekhBaW32TcdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HDAS2T41; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bLV4nS/j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG9ZpFK3349304
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:29:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bag5kecA822pF0WQ+X7N4mbPAn0hI861/+few71vJvA=; b=HDAS2T41W7zgbG91
	dQ4ATQkoDUOO2IEohYE//NGAlpGSldqu9Q/zy7/nzFuYa2A8a2le17sr5uK8oQWb
	vvg3ia5z48m6+ARCafmbfOBq7eEtBdtEmULanmGRR56fXBlY5rPYEIRibuP9hxsb
	WrJ6wLkELPi+zuEjuH6y8g7Un+DZyH3KWnVS2p+lWHqznSAK1LtDQhMjJ6ZA69bA
	eVw+AnbdES+CT0aBzyXViAgqAovQWP1KzrgNMpHoLiH6ph/4GmMU6wc7GBArWv2H
	6yjL+v8WT2ENJ3qHKoUS3MAdraBCHDub6+sHQqRDvjBSyWyESE6xU0dI0injBTJG
	Qp+8ZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b34xd12wa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 14:29:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee409f1880so9343071cf.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 06:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765895373; x=1766500173; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bag5kecA822pF0WQ+X7N4mbPAn0hI861/+few71vJvA=;
        b=bLV4nS/j1JtQXecfkEX0uz4lNJaEfjWhsiTUEmJjpzSUBkrgta3HhHaap2YpreOvVM
         ZN1uTk6U+oxMgP3Bfsbstr2TdSqQKVfto6/88tYmefG39ojPYzop+12c/23Sx0g7r2OU
         g/cJqThXh+CBgQLr+P/TPr6LIyg6B/EJi205j44k6OuHMq2oTqlNvej2gIY7aMcvy9x6
         JUpA89wJJiygEIshuc0gbYrDzI8KriEv0dNyGBvSWL7YrVq9vTWynXcDXppwcIC3mFLC
         MGy7xfqaGZZ7GaLxeweSoNUKCMMwlskp98zs5v4/9eozebx6pucAMI3y+ThJVoZAmyJu
         qWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765895373; x=1766500173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bag5kecA822pF0WQ+X7N4mbPAn0hI861/+few71vJvA=;
        b=am+OkHBiG19eiKGN10tDl3zX16fwaLBzCpf+tw03vqvh+1ZnB111sv51aXMKeWFQ/V
         bcQpGKexgBeJ8CHAiFHF76B3kj+mJ8e688Sv7KIJjk7Te1xAyFTg4a+/IIoKBWBqvMdm
         jm6Ov+ngtoUlq44UzCZTtbfjTu69JZIaGcUIS7y8LrcL2w9tLM4DSmBHZ8MDkBF0ZNUj
         zv4zerz0fkxY8gKDc5llVTiSjkEmhel4VAA5uxFsy6wPqczYRPiTPbPsTe+mBd94eSPa
         o5rjT8+5tftBqFY6WunACFSLZZcn+t3Dq96dKzeUrBGbYwVKA7lCSJKOm9GBpYLFvYM3
         ui/Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4++0DaLusfaaAK7jKHJzlWaz4DKOjcGASV6smde+HtjziV0vBOD7Tl1wukjNnhVXYpKy9yyflZRjL@vger.kernel.org
X-Gm-Message-State: AOJu0YxmyVmjcZXGQFiHyS+ZdPq1WDId/dJVqjduTtVE1fE7CYaAYM5y
	urzgCFBTn5t2kBImZt5QXJf9xuRV0tf8IcSBBf/avp2tGzz+tDMxVEECQJZoUXBUoivtPpTlQmC
	tzGzOPSXWr7TJkP6c3f5gZ1pgbl/j0if0MBeV8q8JigkJah9dvDKZ2SpEcLYRkUfx
X-Gm-Gg: AY/fxX6wtWhEdaNADkpcTkLrIFWVAPcPmekC3TqH5UPS8dArb/LYAX3Nyr22vR/Hgzk
	dqSggmRSMResurVwks802XllYQZEVYkinzI2Ug2A2vX8SIUdGrm0HWN/KQWi+am55/QfhBt2FHY
	L1W8f9wxdmUuXKM8AqQdU3VTQPy6A1iuMxWmpSMIuNfajUs2EypeKIomsxqx+8+t+W0ZJhFwBa2
	POV72wvuP7NH0jwnx2e5ZtGMEa6qG4oNx2kywZj7wsZxjmFnFRLT+SgmqLfkM3Ur3eGRZB9ovZg
	yRv+fdZHLg1kQysuIfdLIu5r99TwjNXkmxgoQLwP4YAifPEYxCmWX30OUx27hhRzGVgQgjpM3Bo
	mxgDifCKs81puX6LCpruyFnOjAQnbspmoXgr2lGX+I0dQlQrnKtm+CP+t0wMJP2asXw==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr153856951cf.7.1765895372673;
        Tue, 16 Dec 2025 06:29:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGg56N2UhBn4mvoaYcl46OObNBBIdYEYFZMhI5Bwj0doC0rLQakzOzQraWA3NwtVCK5EegdxQ==
X-Received: by 2002:ac8:584a:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4f1d05c4201mr153856631cf.7.1765895372166;
        Tue, 16 Dec 2025 06:29:32 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29e079sm1771071266b.3.2025.12.16.06.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 06:29:31 -0800 (PST)
Message-ID: <a6c2236e-a7cd-405c-89a3-6124a588f450@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 15:29:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] mmc: sdhci-msm: Add Device tree parsing logic for
 DLL settings
To: Ram Prakash Gupta <quic_rampraka@quicinc.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com,
        Sachin Gupta <quic_sachgupt@quicinc.com>
References: <20251215120009.3877889-1-quic_rampraka@quicinc.com>
 <20251215120009.3877889-5-quic_rampraka@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251215120009.3877889-5-quic_rampraka@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEyNCBTYWx0ZWRfXxOOhVFRdUFj8
 TArtT2uAniq+IeYEJfdpEA6Ub1flXk9dx/oVL/OFuIJvDghNZHTeuYNciPINoJ1bGPsbXU+OsFw
 99DAhFHgIcUBaxCUBOaaM3f0zS5yO2Yw00YXhgxn130ZKwRcfjAyZRdjH+b1ls5gwAcSm1+IVYR
 Ma3sJsxfpFDXctPw6J+4kzfGtDzDhLSxVM1bn6sn8Rpf+uX6Gex4MK9iZpY1Iv1KomJpCOcdmb9
 mO/e82OxZteWD8VuUd22YVf7TOmkV9c6WcKoiGZ4eJQA97jtoK2o6G3lqLZIxterRQa73sMUv/f
 DLCzvIfu4bbrawlxxS4oOaFojeOxNVyR1D87TXI4nbe3eipj2fSGDJkt0RT8THrLKFH29W90qA8
 7Y54/tpMTgqxVLJ4zGkOZBWknW74CQ==
X-Proofpoint-GUID: gvFXorXnT8OvfJj8u6ptISc1rPoHIrTd
X-Proofpoint-ORIG-GUID: gvFXorXnT8OvfJj8u6ptISc1rPoHIrTd
X-Authority-Analysis: v=2.4 cv=T7mBjvKQ c=1 sm=1 tr=0 ts=69416ccd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=kELM9RU7RCUoAihQJIwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 clxscore=1015 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160124

On 12/15/25 1:00 PM, Ram Prakash Gupta wrote:
> From: Sachin Gupta <quic_sachgupt@quicinc.com>
> 
> This update introduces the capability to configure HS200
> and HS400 DLL settings via the device tree and parsing it.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> Signed-off-by: Ram Prakash Gupta <quic_rampraka@quicinc.com>
> ---

[...]

> +#define DLL_SIZE 10
> +static int sdhci_msm_dt_parse_dll_info(struct device *dev, struct sdhci_msm_host *msm_host)
> +{
> +	u32 *dll_table = &msm_host->dll[0].dll_config;
> +	int ret;
> +
> +	msm_host->artanis_dll = false;
> +
> +	ret = of_property_read_variable_u32_array(dev->of_node,
> +						  "qcom,dll-presets",
> +						  dll_table, DLL_SIZE, DLL_SIZE);
> +	if (ret == DLL_SIZE)
> +		msm_host->artanis_dll = true;

This feels backwards.. can we first somehow determine whether this
platform has the artanis_dll (whatever that is since you didn't explain)
and then make decisions on what to retrieve from the DT & how to
interpret it?

> +	return ret;
> +}
> +
>  static int sdhci_msm_probe(struct platform_device *pdev)
>  {
>  	struct sdhci_host *host;
> @@ -2580,6 +2612,15 @@ static int sdhci_msm_probe(struct platform_device *pdev)
>  
>  	msm_host->saved_tuning_phase = INVALID_TUNING_PHASE;
>  
> +	/*
> +	 * Parse HSR dll only when property is present in DT.
> +	 */

/* Parse ... */, it's short enough

Probably also "DLL"

Konrad

