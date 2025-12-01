Return-Path: <devicetree+bounces-243379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F399C974E8
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F2F64E173F
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B5530BF4E;
	Mon,  1 Dec 2025 12:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LO1J/y9M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WvjXxDGE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9013054F2
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592708; cv=none; b=n0LlIc5pepiJXHXOinW/2Wv6n9q5QqFtgC4hHi1Z33UT7rXKFW7rrjy/6SZc9n55MA4AJ/X9OVyY7NqnIY4tTJi7zPkOgxCbPSmhl+hDCMSgsIjdMl+oNTxZGjJklHNFHYaksG/s4I8zhzMvUhbs1EPe7xzOdjnHDgeMK1/i+Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592708; c=relaxed/simple;
	bh=KWOuLZ6hidwbE9TypQPKFmH8VsQsNVIc9SSYi6JlIQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YMxxViaXTfNNw2x0D9ltRGVxcFZOahSAPQIJj81un40dwiqlBRohGGHudHmP7sqDHztd1X61QBv2EaizihFgQFTqDU5cW1uoeS45LpgD4md/ZZvUi1jc3U/n96YZufJlSeUj2BlOPjTI2suva8hoTe/GEiwHc2HWCOrzMxbhr6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LO1J/y9M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WvjXxDGE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1B5lhQ396873
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:38:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vf/BxP0mgWbgh9NhPSJR1YuUPlhPxjgnkQcac/3egYk=; b=LO1J/y9MQGtuPti4
	6WXEBziCHwB+6CCAeVaL5jgKRLSwJRFPr5UbtivjyMvaYXhMhvLFDouzprkbT5HK
	OyfEB8fksExcRlJe2+NPaEDLLWbbqaggqhZv5p5ZxCqUYf31X0T1brA5AblmdSRA
	37A38/AB5FeehMc+fBg7g3IFYYimO+6RccEZLru/OTb05WX1kyRjqSTXTViGKhvy
	HU8ftrbVUr/bCrkzPj2ZctoCGT9mUY64IpgkALJQ/8mpAj4dPrWQKd3+df/gKoyT
	QIuyPucUgJfM3EPmX+gw8tbWoUZLrPnOnHlP+pROuARncw0AsGMqZl2IK+dUvYd0
	I05aAQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as9ug082x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:38:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0440a771so3188181cf.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764592705; x=1765197505; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vf/BxP0mgWbgh9NhPSJR1YuUPlhPxjgnkQcac/3egYk=;
        b=WvjXxDGEvZ7pLzP89pq7/ZPcPteFrAMFF6+f8UY9owthp+NazacGDcfYQAdFVEALu/
         SisAUGgJ2+tpCXIwDF10S5v8BwDKEclQn1Jqt1NikFU9YyVlZLVWTUvYYrPjM+UkeNo4
         M3wBxLn8W1vU3eaLevw30ruzrgPI92xvy/lHAPoeWhh8OT8CyXKfgwWSp/vY84Wc4drI
         rii1l6S1pXNcEm5+NnTWzjUKEK5D1D+aItreqWVff0JvXz71mvxRbnEJS6SY8oiXcw3B
         JkgBw2YpHmfWgMYfXnXGC7OAWsAzTc5XgWQuwxlg0w0OC3Zh++8DDA6vJM3OWs+9Zf6f
         fb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764592705; x=1765197505;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vf/BxP0mgWbgh9NhPSJR1YuUPlhPxjgnkQcac/3egYk=;
        b=Qw1Sdz4ttk3cPfr/hNmTG9xnQ2fMVoVB6vRabsVtoNsnOplrCk3uOkIiwRiIL2GYTZ
         L9V6Zft/mJcdDQV8oGQNUIlsxhZZMiskCiXvDUQZNd4SYtGxve41W4IXqDAe9W6mEsWr
         aIH7r6hDIhFSYibANWzYe4npaUu+VWuGKmLbDCbqWNk7Q0Z3BZx1o3ed7Dx0qXlvrJq2
         1d+VWN4ADW/+Mhci+gulEUP3gGabtsJkUgWa828JyIn8ZTEyVAgdxBl4kCgHIJ8EENZf
         nbIRBC3aHq/TW+yCSSiIDPcsY9wDppCWuduTtlBxyp5vhj2bnrMlrha17VmeezSh/Xfl
         cmQA==
X-Forwarded-Encrypted: i=1; AJvYcCUuGXDm2467WHJ1oDTKMu4vyseZeZ2TZZovV0hMRJ/wzFTE+L6d/WkbN/eWcr5D3VKGNS8w2G3wBfcC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx24lz+VQwa6IL+8+Sqsy8Om4JssGKIwK338gsvfq8ozGDxahcP
	lw+//XX8FnXLdjGOGOjo6m3nd7qVFxZ0gbSKPWsfbsDGKDfcpUh87gb2BnV96o7FcfvOWM6jDz4
	Zz8iVw0qNRq5txorBeueh4OB1W2a/vM0YLoRZR37tcGpEmkOQc5pvVunJ4/A4nDkjB8JKNM7m
X-Gm-Gg: ASbGncv/PqBZ7YBb41N9fxzNYM48PApgOTWhNYMkhMHiJ3EiBelIKaAqMz5SenZ83OA
	lQYlxEws7v3BJj2mxz2wdsdo5brVU1fxGxwtV2jHvzHpvEXjZkLJIiPzjfui2/FRQCWGFgYoi97
	cXm78CrUIANRgK/MGdmjKlFtL0dipDayfPjtgGVwY56vJ3HZaB9z7uoAwAsjb6aQKcob4i+BLI6
	/vBgDIo4E5V9HjzaHJ20JoopvSZYtBF4xSmvRzrFG/VAUdkreYQGitOiLysLRos6twTnLaMqtpM
	48K5q8r62fAXmu+QEj2PycxjcXaJbVlDk4TpNz6q0Beevg14f34aaPgcXJIegJX6s1IqNoiqC41
	BpHfKy/YAcRMn/XGezK2auDH5ADw3lYV030JglOGh96PJA/r49e/eJy4ThBWNQA4oXLU=
X-Received: by 2002:a05:622a:1a97:b0:4ee:2408:4e36 with SMTP id d75a77b69052e-4ee5b5c972cmr438714611cf.2.1764592705141;
        Mon, 01 Dec 2025 04:38:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIktgyEHZW/1IMc0NJW4hRWI1Ul1vhVGeaHmxVXEPJ7nVkOnEm9iQUL8B66CQB9NZy4FuBZA==
X-Received: by 2002:a05:622a:1a97:b0:4ee:2408:4e36 with SMTP id d75a77b69052e-4ee5b5c972cmr438714241cf.2.1764592704693;
        Mon, 01 Dec 2025 04:38:24 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f59aecbdsm1180313966b.38.2025.12.01.04.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:38:24 -0800 (PST)
Message-ID: <09e5d84c-39b7-45a9-b7d7-9beb54fb2f3f@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:38:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/12] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-10-a5a60500b267@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-judyln-dts-v4-10-a5a60500b267@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwMyBTYWx0ZWRfX7Mwi7GH7NLFD
 XJs0Rf9Wc9JiSKZ6Wb2tVrnojQ39Ab5R6iCWmsmbE/HAyPBSnm7u8Mn80LAXfiuvNMIe4RZbC/3
 UlilGDHUuWna2BW+v6bNucRbzK7GjfRmqzahQ+pRWVtIyCfR+FBg9XnAmi9bXHkGpmCQBC92bXd
 R8OpI9e9+tEsi8+gCStfF5G1ovHEpxZwd2UVkaz2lrOX30Ihff9EBWUJ45pbY++f24qsSIj1Uij
 oYILcb2JWZ3fqegX5BiISmpZs75NOl/U8dZLy2NvP86YDXVRrP6tMotOrr5i8IZxKyASqowI6Ao
 lFzaWDFduab329nZpw769QNf66X/PZ36qHIrdNFXgK9ME6395jIEAKWrP2+bH9WKyNH42tCZ2e5
 yU4CyVTa+BeOXjSevD+Z50YfHNxyiw==
X-Proofpoint-GUID: M8wsDb2bg7HlEss40XN6UWuVn1SekKgK
X-Proofpoint-ORIG-GUID: M8wsDb2bg7HlEss40XN6UWuVn1SekKgK
X-Authority-Analysis: v=2.4 cv=EunfbCcA c=1 sm=1 tr=0 ts=692d8c41 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Gbw9aFdXAAAA:8 a=EiCcalQ1L6XHdR4pprMA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010103

On 11/25/25 9:12 AM, Paul Sajna wrote:
> These regulators are required for the LCD
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index a61f7bd65a7a..3188334d269b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -56,10 +56,27 @@ zap-shader {
>  	};
>  };
>  
> +&ibb {
> +	regulator-min-microvolt = <4600000>;
> +	regulator-max-microvolt = <6000000>;

Sorry for not responding earlier, you can retrieve the actual volt
numbers from the hardware by reading

PMI8998_IBB_REG_BASE + REG_LABIBB_VOLTAGE = 0xdc41

ibb_uV = 1.4 + .1 * val

PMI8998_LAB_REG_BASE + REG_LABIBB_VOLTAGE = 0xde41

lab_uV = 4.6 + .1 * val

Konrad

