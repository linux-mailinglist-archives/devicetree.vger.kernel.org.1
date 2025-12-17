Return-Path: <devicetree+bounces-247434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 918AACC7F3C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0F5D030636F3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBBB34A3D9;
	Wed, 17 Dec 2025 12:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DUzMzH+/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MD6EGg/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDDF33F36B
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976225; cv=none; b=g+uru1ZTDa9EYg/97laIHf6X5Z1V+AKYgyXRXLqHKsDXp8fGCJKRBwx0QtHJrHyeSNIRtqPk5oLACzlu+RYcZuJ+CC/yPi29SKoht9fmfYUUHXHRrl0T7owMj8r6x7Hj2O8Hui9QTfOTY2DpOHuk9N6ZHz4faEiRhNN+3BOI7UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976225; c=relaxed/simple;
	bh=ztH074MDFqearVN3nF0jMLfGMXFpi7sRlzEIzX/mkrk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZyAJRYEDwM6FmN9oyNB5tE0301Y7093iJE3D04ZMUqvnD2rZw/cPAYqQm1QIG0oeMjnaOaAokbOyQRuwVYHgfXs1z+DxPdFvvr4KYGghm13WVLXDzAX1F2sgYBZV5qvvq4T5FFg2EiTHU2lArk5TRvagxuGLtGay4wJbmtHow5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DUzMzH+/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MD6EGg/u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL3IL2390846
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:57:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0xDNUQP8yPoy+Z+qqy+MqMkGS3ISZvZ/gefBftMMrmc=; b=DUzMzH+/R5zDPtea
	dB1BCwyGTIFdhv4XF8viFio1qNLGCLV3Ci/7do8JPzEyUCnEpfzRhp2CiOwK53p+
	U1dqW89xFOVDpUAPSuruXACP7eJDX6qfEgSSQfsn1WRhcXiVhgtEbSEVZLmjoUqe
	5Hk5/oGwb2MUHH8RMEHneh4McYGFD2j6/KyY/wfTknGNcq6e0aACMLf5Pl7t8CRH
	CNdw8cTznA0wBMkDUeMm2i7/P9Um24XUll0SmxequFtZiAwaegOKjEvutDfPEC/q
	Qxtcaq2rPycKUAr/kVlsuFzzj+icZJ5WdCiHlgyGzVwYNtkHIaudLp3acmWRRqfx
	o4mFnA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g39cb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:57:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee23b6b6fdso13083151cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:57:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765976220; x=1766581020; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0xDNUQP8yPoy+Z+qqy+MqMkGS3ISZvZ/gefBftMMrmc=;
        b=MD6EGg/up4hCdlSZ7ZLSHrdCMP9QpPvnW4bgAb/ZmpnAVXVEEBW33MxsCl6CO+GZV+
         avcIc8hSbkv+QhqCUxDsoosxAvYuUtgMgcekyUXTYeXeY7sYX+yP29WhlImNerA7peKv
         xLnzFAYV6cSNYrUzB6g7jo50WUz+w4uA8RBpoU4YqQnl7Q428it/Y9Eg2Z1e2yW4jLdN
         rQnWNrWBmUPYeMg3Y2LZXgwXH/fgIpFciKKfBAMBasUln9dHH0FsS5SQqMrMOVPfLUaX
         7NneH5X7gG7S8oWu7po4uFsMujd+uVwU7Sef+CawdlVadWKWefb+BDhrNoCBbNasBAKm
         x2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765976220; x=1766581020;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0xDNUQP8yPoy+Z+qqy+MqMkGS3ISZvZ/gefBftMMrmc=;
        b=LwO+NMkEeXczAzB/L58HuFuQ9/DqALNj6QPYtT1IXCOceeDk1tRT5E4dYpsU+KTrvU
         i+je9INtBDvrYdPcB6UAipuAOvXgBMNoE2z2kZwMwRitOc5j9haOrOcB8BQYOXIL3u4K
         QSckFPD+ccKjJFUSV0V2b6US1oUZtqLwvTlqD+RG3EbC1ndDn4aa/e2/mpWzaoy0DtNq
         G+S2qzf6zAg5YBOGLRJpLSj178AiTaRdTmCDhkeIJr38w5+tVVfu7RzcFYDtbFOGrUhh
         aoVk/kUMAxz5R+r26eggz6wjqvp2ZVMt1cml1gQVkqw4TctJ4HrR8Yjo145Or7s2W7Ni
         Gkfw==
X-Forwarded-Encrypted: i=1; AJvYcCW4+OXMhirMYP3kqQqmD6ffeQeocnz0fMMH6S2jyR76ESlXM7CQZpeYHEHG+LkZmE2TaIEN0lew+n+j@vger.kernel.org
X-Gm-Message-State: AOJu0YwTIuG98Bk5tJTYAGLsPMfvOB9+MZOwp2LYJ6aSH+8GtOi/0506
	ZinbeIWNT0xoLsYs1PDJiAxRnRklqNn/6CEOKqzvloHOKkvtL+R/5n1dJ+jHLK3njcL+TlwEqLL
	lerD2F+aG/dFGkfXTr7kgprywQHstF2RkLsq6rKSbekbwcAnEHWWeVuDN7PhXqKzP
X-Gm-Gg: AY/fxX6yb9Tq9p2XHGR6MViHhpF3HGdDlvA4BgBciuLiKQjXLP8XX8H1Rs3v9seTS5B
	jPQo6qXaHh85IEffiH99USTetSvv/2GfKP43gsgRqAHzRwkJCRTBCxeynY4pEftM+6nGSfO+yIu
	X9c/HACsvAOLWI5hHpoWGKv531rxGjTdCessWXeHV8Df8xuN5D6pI0wRyNmn/bIEcA7ecRoHLS0
	mrjC4uUrqsJf5q2sQdt3lq+jm/tydlOmSJ0Ecftj4COH/nSTCfmP+QMlYkh2GR95qEpOhQRogWt
	z/Dwe2fcoOWSnRK21zzH/4jZ0M8oqv8dtoY76G2ucV1/FteiAjUIIuBIfWFXNptyON0NJN8Aamk
	/pAPDYvi27NmLA2jitHTtGaqeFU90HwhlJuNC1u5xV4MSEMPEcH97ZXuCXd8YEW88iw==
X-Received: by 2002:a05:622a:4b:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4f1d05fc5acmr191874281cf.9.1765976220462;
        Wed, 17 Dec 2025 04:57:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0uXhmc9jYsTPLzPNNmrw1r6UcwzVCFaVA28oMEk+IYkHnnHxKBchHiLlmSJ6qbqmVUKxOBw==
X-Received: by 2002:a05:622a:4b:b0:4ee:2638:ea2 with SMTP id d75a77b69052e-4f1d05fc5acmr191874051cf.9.1765976220078;
        Wed, 17 Dec 2025 04:57:00 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa2e6dc1sm1936263166b.17.2025.12.17.04.56.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:56:59 -0800 (PST)
Message-ID: <a07ce738-b48d-4950-a25a-89a3874c4a84@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:56:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sdm670: add camera mclk pins
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-5-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211014846.16602-5-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 3EXqju1coyDq-PpPHbpSA_EpromgLHnV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwMCBTYWx0ZWRfX7vJLIYgmiMZu
 5RqvEy31xJCbCutkNf8pMEDqnzPe9bVTcO+Sycf73f/YL7kXG/U0A031rtvUhngSA4FpGwQpJkH
 o8nCVkFGAlL2YYf8szpQSOcgc+6ZXSo0SQ8dlY6ZGILELpVMNIrKfYcqOXut/Su0/EgxtmXTuIu
 tpdMJkqtC4g+JnWXJqIn5rztb+esNvum0dOYtsAMn4JfJw/tagUC0np5BjjiRcts/uoi+KZHlQc
 WgvTesy24vH2ge73jC6+2ookU7lwx4/SzHU7hej00oJ1dPnAK+vD7A2WdHAgxicIY/yIat8hvWX
 GSBegHjzZuiI6DiFGsUkIVEV9GtELl9It30RRcdmf6mKPWgvS/VubzUsoirwNJUCMbjs/Ddln/G
 GPe1IhtQ+RMgbBGRHxlIkthXhtxEag==
X-Proofpoint-GUID: 3EXqju1coyDq-PpPHbpSA_EpromgLHnV
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=6942a89c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=3dje6nBDnuay-3FIa4wA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170100

On 12/11/25 2:48 AM, Richard Acayan wrote:
> The camera subsystem is added for the SoC common devicetree, but the
> mclk pins should also be common across the SoC. Add the mclk pins for
> the cameras.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm670.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> index c275089237e4..69e84cd8ed27 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> @@ -1190,6 +1190,27 @@ tlmm: pinctrl@3400000 {
>  			gpio-ranges = <&tlmm 0 0 151>;
>  			wakeup-parent = <&pdc>;
>  
> +			cam_mclk0_default: cam-mclk0-default-state {
> +				pins = "gpio13";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk1_default: cam-mclk1-default-state {
> +				pins = "gpio14";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk2_default: cam-mclk2-default-state {
> +				pins = "gpio15";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};

There's also mclk3 on gpio16

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

