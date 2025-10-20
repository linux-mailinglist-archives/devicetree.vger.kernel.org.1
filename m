Return-Path: <devicetree+bounces-228760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2833BF0815
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C62C43AD0B7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A642FAC1E;
	Mon, 20 Oct 2025 10:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jrb4O64c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF2D2F9DA7
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760955399; cv=none; b=SB77VecqwUqMc7rjXbGWIcLoT5ZbZZQVsp4SgxyS3/iAS/t//JGgr8hIrLx1T0lFMA5cywF+ZNDcwcdDZcu82AAmv13AQPnsXYNX6mBewlSrE34H77fi9i8pmB83lEnzvrR57RaW6MmFON2PepI0zwOjuimeeciB0qDJPqFk5Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760955399; c=relaxed/simple;
	bh=mdpf1Oy2ydcWXpHDNlNXheRGi6wp8wV18k/D4DoO4KU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G1M9JUAjOgB1l3h4JmU4PjpOMQeJNx3mA+9xEwnfLF0y7MUUpcj29zwcUAcUUFYkSaihtqRtIJDETAN4qR0l/YBgM8GfmFhgy0U0R1F31gBjB+OVsBDn7jWoss0iXEb7lM23ubWl0zmm19rYQN/zk5+VPIS1398Py/pMaJmrX+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jrb4O64c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JJu9Q1020413
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X7GiakkB7w+XPBZzGT+5+Y1LK2gVzD7OqWO9cWs4zks=; b=Jrb4O64cZk/y8r1s
	bWyhZfULLMdw5Z9HLly+yFfaQ87+YeOkBvk3+CCRzbqg8oE6EbnggIq5kcPp6f2t
	lL6b/DkvT8SS0bFfOcnIqtRm+RAJZqLZ2BwdulCVr4ZVJ/bINKJtwsfXbxePSyTH
	r0saGmA+H9JLKuybf/I+lCvAiOstOIzs0Jad8iosDZDcTxtRs7vmJt46DPp5oEUU
	bk3yzjOIwnXcN88ifd3bx9CorjR9X26ZZneBy0MyKVcVf5eoBczoZue3+kGC14J6
	cxssThapAVbxbHQTA01y2IJD0o7Oaxk21Xi4mcLzFBssdFmBUIGSj474kg2TQe3x
	r40VwQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7vg53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 10:16:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-88e965f2bbfso187953685a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760955396; x=1761560196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X7GiakkB7w+XPBZzGT+5+Y1LK2gVzD7OqWO9cWs4zks=;
        b=MVjP3yNM/UvlH1mGhyFeg5zWD0vcxMX8871+6NUiq8K9Gk6nrppj1CuIfieqXiX2GZ
         j3TzrWsr79CNIojV323ehPOq0e8B6EMmtL2nEu4gzd0+eonNORL1oCc1hMLWj2VDdp37
         OERnnKJd5U21kzVA/DM4/FvAm5pjIwBJAJ2k2Pg1Il8SMz47FV9aGJkE6sTCHs3vq/kF
         NWFz9dwxKHP8G2kF7iNHXqAOhDxX4RcWovxDsEVYS25H/Kvg3fr1oXTkl/yA65ssc0jE
         J2Mv3uK9y9tLstUfFDR+4oYeIA5fl0PcFQUdWnhxeultko2IXXNI34SxOPNgiLSjwHBA
         lrqg==
X-Forwarded-Encrypted: i=1; AJvYcCVXiOyYjj0QAaeqMMieQ6VrjZFy2xtCaCTMU87r2o+ZHFystv0wdKIkAvPAUaeA/c5pBADpHEP/4N/r@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+hGIF7qZNoum1P5ELwB7NJNsDjqRshlWt7UxsCmUU9JzKoxJx
	Ux/XVa1/cK1bpZZDK/xgAI8fZjB81DuGFLwjJUR7XRdWS7xIBo5lMjwMC9mbFQNyVzNAa02sLUf
	Hken9W9bjKi4oD/OhF7pgK5GrzeQl6/5Q6tm3JbZx1MPgFFWkrh2LkAqh8AJEevTQ
X-Gm-Gg: ASbGnctTvqMrmEQ5PuwAKoq92nYKTRW4nEOK1+JcRg36HQFMXOVlz87UOh6KQvRE7rZ
	MGrUAVy2VV183ppXpJuh8WLKvxZJx6V3dqhe+OHvHnl/KjANrsmrTKafxWbx+tGAy/+F7zrFdZq
	fsjLsP+iEt/uFAsiiief1IJ6x1dMU/i7In55+iA9ZUkuFCgMnmuhX7dh9TFxvdZlhNrTdVsXKeg
	Y4pdxJLdxmOYrF3CxnwAT2JrSIhfWWMwG3OfWcVLzFjmDZtM3xbb/pnhrGkI509Az1Rvd38UOIa
	00T5ziWKHnOL+MdHs1ReVuWANBAkj4li8TkzJO/5alx5lBp02dd1PR7ZhwIqxAH4yp3yrmIKfDc
	gxa1pjjrzfg7EPLA+IHEn1gkC1Z2b8RKRJVX9NMSsMHSIKNNSz6uN+KZB
X-Received: by 2002:a05:622a:164b:b0:4e8:9126:31d2 with SMTP id d75a77b69052e-4e8c1ab2c0dmr24082471cf.5.1760955395818;
        Mon, 20 Oct 2025 03:16:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFS3mAY5bftHTOOPGyd0UuN914pq2mMKSAA/PCsiHWYAXoa3iQZKyBuxtJgaJglQpUr7gc+jw==
X-Received: by 2002:a05:622a:164b:b0:4e8:9126:31d2 with SMTP id d75a77b69052e-4e8c1ab2c0dmr24082251cf.5.1760955395353;
        Mon, 20 Oct 2025 03:16:35 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da3412sm750511666b.3.2025.10.20.03.16.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 03:16:34 -0700 (PDT)
Message-ID: <c754eaa1-555b-4ec7-8539-b98a037bc2c0@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 12:16:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-shift-axolotl: Move address and
 size cells upwards
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251020-shift6mq-dt-v1-1-8714087118b8@sigxcpu.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251020-shift6mq-dt-v1-1-8714087118b8@sigxcpu.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX3g+9Djf068UX
 PJeMYciKUlGsCSrNwTwniZ7YZhL1dyGOR/5UwLIjSPlpcLswCIXKncTFQiUwTSZ38hW9QI6Ud8z
 ewtgwDWnEmbWWn9gUkIInqHRVYafPoj4QBVq3vQ1PW+YrJcRXmIrEvZ7ov5ewBlIez641Jnqs8C
 pfixRpnh8URKYNv5lo97/yfvwexOtoRZBYAI0XPbW7Hn+uIDtFD9fPsmVovE8iDoCPfs3fH9rfa
 k88veyNrg7ekC54Tiir74k1La1/gZiEW6HlzDl6z+FIsbuSdcbuSYSjHsa550zkOM+kLUHcIUeN
 kll8eexSbgyT9Dg1UiJr0gy3/qpIARuFd/y4A6ditdE1dHVTNlAwsJ3l2+2Ho/LS7g95/AtWXFV
 hf9yM/0AKgnN3ljw4pizi+pImBMABg==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f60c04 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=ze386MxoAAAA:8 a=_PUjjehnJBWPTTrYcrMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=iBZjaW-pnkserzjvUTHh:22
X-Proofpoint-GUID: jkaI_lp-UrM34cPW9M8mELTw-gZriwp7
X-Proofpoint-ORIG-GUID: jkaI_lp-UrM34cPW9M8mELTw-gZriwp7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/20/25 9:55 AM, Guido Günther wrote:
> They're used in the parent to describe the panel's reg property.
> 
> Fixes the
> 
> linux/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dtb: panel@0 (visionox,rm69299-shift): '#address-cells', '#size-cells' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> warning.
> 
> Signed-off-by: Guido Günther <agx@sigxcpu.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> index 89260fce6513..44e7b5015d26 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> @@ -472,6 +472,9 @@ &mdss_dsi0 {
>  	status = "okay";
>  	vdda-supply = <&vdda_mipi_dsi0_1p2>;
>  
> +	#address-cells = <1>;
> +	#size-cells = <0>;

These are already defined in sdm845. you can simply delete the lines
below

Konrad

> +
>  	panel@0 {
>  		compatible = "visionox,rm69299-shift";
>  		status = "okay";
> @@ -479,9 +482,6 @@ panel@0 {
>  		vdda-supply = <&vreg_l14a_1p88>;
>  		vdd3p3-supply = <&vreg_l28a_3p0>;
>  
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
>  		reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
>  
>  		pinctrl-names = "default", "sleep";
> 
> ---
> base-commit: f406055cb18c6e299c4a783fc1effeb16be41803
> change-id: 20251019-shift6mq-dt-e4b9e7dc7169
> 
> Best regards,

