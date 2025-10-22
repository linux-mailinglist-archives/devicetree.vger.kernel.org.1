Return-Path: <devicetree+bounces-229881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6F3BFD4F1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24D2E188E5D3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A91D35A120;
	Wed, 22 Oct 2025 16:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ExFBEa56"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A515E2FD664
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761150538; cv=none; b=CqchB5Z7xqAavgpLabkuhuPR0ygrsQ9c2GXQF+1f8x3f9wPRzoQ5thhaBK6eWTxnEKsI9T8omh7LAHs8DlqU7QYlTXzkr7PUJmpHQzQkZ/15oUcpPuxZRgrdtKnOiUhBv1D4XtFITDFZr56kfYTM/RccAFzHHo3EvOT492F0q+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761150538; c=relaxed/simple;
	bh=gnYSeDQF9A0l9V1yfEhZWeQeVljEZJwDS8hyZnA8a8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sTrzxId39iJP4Pd/VJV2LRlhtr4Hc5t8DYfi04qQ8iPbwT/iXpMUQfOkxJkPzuotVPoEK3MuNvsWI8oM+/g8eUBgC1h9zAGTrVgBGqaH2eWi41W0j7M4sfiVUrJBDAcgplQT/1nngam7xzbITLCZcGoiFPD40HjdC1ppqSm8M1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ExFBEa56; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MBe5Zi029822
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q1jLNGTOlSGGQO46A4daF1PWlbiRuH+dyUe66KEnmxI=; b=ExFBEa56mge8uk+V
	+CJLI+jZIHwDXJrL+phLYqFdD79kE0LukmSVvDbNE4Di0BuB2LLTfoyheCDkEbNp
	7QqkPThxhvxm3HVc5hP6FG5w7CZWjj8r4muWYgoXLJS1o9cVVctogpmDqf5Vr5I3
	zsMzmG3MZGUmOflouet+PO5yAmtdLw+adUF11CeLOKEVocMD2X5SazR3NIlR+lBn
	9k4vnpFEfqmAVpVCFNezpHvzmMYNiNgjDRhFivu+dRBVIeVDrCi9Nki7R/I/68C+
	p2w8QyYeoRfGtYh52NRFzHtr6LSYsIXFo0GLa+Jvr58ctAGhnMnozDc4ZWHbuUg9
	GdvNgQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge5ag6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:28:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e887bef16aso4252321cf.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761150534; x=1761755334;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1jLNGTOlSGGQO46A4daF1PWlbiRuH+dyUe66KEnmxI=;
        b=C4U9RSnqt5C0X3GaWy9eZCQ4VHY6/4ptZFooyFq4TH+8TYgi1dW7bhdpb1BdrWUtoP
         bX5mDAA9inBLuFioNgp1mhipr7yIaEucuiNAvaUA2qBcyFhWBx0WX/df2RzwFyg+TI6Z
         TozyMImd09bzWbP5ECNnq4b/AThH/2N9lxFZ4y/v6VwVTPPbeFoHQCDNObIPQVimk/ht
         wL5tLh1N1d2cn+nBNTs3bO2CWtmRQ/8VV6cvM4pc7TrVR9UEfCoMplaV6FUOVH1AvIol
         oiA6GaKdDltmX0FL1wcn9OTaGbKimnH0NlftvxCKhH98IvkLqtkDNXbyU8tK3gdk0vO8
         MiWw==
X-Forwarded-Encrypted: i=1; AJvYcCWIJNNldHAKr76PvSmSKGuPLHTJ/Xj24p4AuZ4S+s9FEYqNoEL8Lh9Yd913d8/asBrah9Fg3Mtrx7OB@vger.kernel.org
X-Gm-Message-State: AOJu0YwwJ+ox6xwxwLPWnoMaCxNBd2KeVmU3ie5jBKcFoGUAYtB2BqIY
	2QGB6iyGKU7TCrakjLEEOwsG+iMdTYW5UFUq3mxu+oX+P2MePaefGKpyRVeUyo6ipXl1invPMzw
	LRaniKa+9BPcdCRVsVfpSC86j4UbunIfLy5stYBW/XpVAYza1JTDH7gGBEioqUw5V
X-Gm-Gg: ASbGncsvGq8ac9i4bq+sRwL5/wCmYrmsjgyYc3ZratGFLds1uY/9ZR52VJs9YonNk7+
	ZwR8+sXMLtcUWA00P9cfK+7gvp7PhSmOaTr5R6ubj86hflOthvJc7aj8QII1R5aPXGtDY3MjGZM
	pq25oWZSFRjStWs81PoqKp9ZIA3dxW9Ej6NTLLopuAsXcx5GX14UEaxxz7RPgYlSsNI8VFV77SI
	IdT2X6sjrog9VLX2i+so7qnAAmXxMIf5cdk7Wtdo799vDV8egt55omzkRTCMCGjXOn4sGAQGh4H
	LbaqAGAWYRX6p5OHyU+h1LsMAg78v+ncaFvMmm7ZxfksiUCTKqATOkIcy8Zl/IndLEclfplxjfJ
	eKPCI2asKGP9QHcgllJD4qzNNbyYRyXvmWsy7Yh2fswxt01YTL20bgJ7Q
X-Received: by 2002:ac8:5f92:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ea116854c9mr63132061cf.2.1761150534423;
        Wed, 22 Oct 2025 09:28:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4oJ9oXYk26oTyLnsc4HCl+yoXOudlAJ18eVcGWTDYAU+63VcV76YKqc3oyp7E8vwvDJPtcQ==
X-Received: by 2002:ac8:5f92:0:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ea116854c9mr63131831cf.2.1761150533950;
        Wed, 22 Oct 2025 09:28:53 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4945f1ffsm12526984a12.31.2025.10.22.09.28.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:28:53 -0700 (PDT)
Message-ID: <4d69e9ba-caa4-49bc-a66a-d085edfead4a@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:28:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e80100-dell-xps13-9345: Add
 Left/Right Speakers and Tweeter
To: Abel Vesa <abel.vesa@linaro.org>, Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
 <20251021-dell-xps13-9345-enable-audio-v1-3-6f3f6bbd977b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251021-dell-xps13-9345-enable-audio-v1-3-6f3f6bbd977b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXxgv3hRm+jmkF
 PPux/znRmwW83e36ZIZ0yZ0JvEydoHFnPe0nRK4zxLFip7b9BkE38G7iMLQkGH5/bL0kFfyCiWL
 UtuMAGixqGP7//P1Fee6t8q0kEgoeZKzWujnE0BkaGkk9atcJzc/ywHAheKF3ZqDb7fXTfh8xKG
 aVn99lmaUknQmwN7y3Nt3BmcklaHgLZIYYeBHy9IPPGFxdoB8X8sjC97jMbifO3dPEiKute1e9o
 yqNbQMco3fX4w3S8KRhiu9Z7KNYZ91Ajxdjvmn+FhoD6Lu1JpkLEqMvUJ/qvAV5N1QWz8TUjzmq
 aav2ATgX0ZajOHJ9wEP3IdK3eX6I+2WuLJoal/cdpCnyg09SxfZrdARwT5HUXG95xnh+xK05UBT
 g3gpMq7mRhUTlHcvUrtfEKhYnsgC5w==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f90647 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=bOTh6ypEQCZma0slNj4A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: KopdaOLBbgL_wmDhpDJVXvpwEuVRo9OP
X-Proofpoint-ORIG-GUID: KopdaOLBbgL_wmDhpDJVXvpwEuVRo9OP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 10/21/25 3:50 PM, Abel Vesa wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Enable left and right speakers/tweeters on the X1E80100 Dell XPS13 9345.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]

> +&lpass_tlmm {
> +	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
> +		pins = "gpio12";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-disable;
> +		output-low;
> +	};
> +
> +	spkr_23_sd_n_active: spkr-23-sd-n-active-state {
> +		pins = "gpio13";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-disable;
> +		output-low;

Drop output-low in both definitions

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

