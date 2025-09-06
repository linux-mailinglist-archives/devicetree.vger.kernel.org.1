Return-Path: <devicetree+bounces-213914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EF4B476E4
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 21:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EA721B20B0B
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 19:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EC928851F;
	Sat,  6 Sep 2025 19:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U+erZqKT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BFF27E05A
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 19:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757186790; cv=none; b=RunS8XkXOQugqadblULZ6Fu4GzK1+JZc5OYhn8+gKCLDCD2UXRbFWu18ut3qhYymLZjotpgHstEGUhGaI/bqAs+sg/A/i+t8TxMPl2bvNJu1zzDdsaJv04jTv5eZ0k9kmIICDiM9S0P3RSXmCxUO8CM20Jmwoq1nzyS8fUvnfkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757186790; c=relaxed/simple;
	bh=IHMOXEjqSixhpDLaICEPJqievMBFyBTpM+jra29ECiY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eGo77IC3pP8IKHXhraaIKvIMCaiVKHbHXVV6b5cyIow7A7kbhGcHB2y0KFfXYlX4uDr/0O+UEFZDEpPjOaATO9DLRPTDZsAw8O/SPtEiWonUSJIa3BK6wkWygzsIpGNRscDjMrYo8xnyIxGJC8RL3UX+dU4RUma+U6Vh5wEPz0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U+erZqKT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586JOQwj011596
	for <devicetree@vger.kernel.org>; Sat, 6 Sep 2025 19:26:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ILS4/z5vnuC+p1hrEpuyvRN3
	HDybTR9q3aBLGYadh7k=; b=U+erZqKT2rqzlj0pOKK3+a53V6cAIfry+GjyRVnx
	N4HcCVe/OVyAyA06kmOl41E/cFcOcP3tdl7mVcZxkP9C/LdZZ2G+/Knk5cMJ8cz/
	yGq3iANEHMNACQTtm2UnpxwzAA1SjC1odMJdCmmZlrYsD79g3rltndLCcrEr/k6w
	Fv5BH5yHvR/XOkNMSodD9b1A7XUy4p+jnZih+sLwCcrB2nl/gtPh3uIr7Wp3+IPb
	do6yGniJOfGVOxbLKRvWo3DJt0EaHgz+VzkERyyYpNg0iOQ35ypcTlG2BDZSqNkF
	kI3wPFz86GKFZ8QMpgcxilWKfkaN9KZ9qkvcucXrViaXvA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfs1a5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 19:26:28 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7222232866aso80859616d6.0
        for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 12:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757186787; x=1757791587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILS4/z5vnuC+p1hrEpuyvRN3HDybTR9q3aBLGYadh7k=;
        b=k9UF3FRSAnE/SYbyqvcYLtRy+ZLsPZvLNKvnin66eNds5CAJSNTaBbt2+WaOunWgVb
         he7ojh+qVly+n0yw1dEd5qjb/Di/xVXwWQ1PJQhnpAinjcaS+ccH++TshVmWZlYIMeYE
         AfzwlxvFXzGN5W/00CQyA5TgVebXakhnYFNCwcFN/SRfH9gO/OBpZQMo2sWz375dmFbo
         dqfVkZJkvux5vcn9RgCup+/flZK3KD1QbytzHPs7v/hSOrN8hT1RVhRZJhAKiAOA5dmm
         YJb7LtE+yjeryAQE585Vr+5oX9CgClVMPVrOd1sgWc5Kpp3u/SVrmXLE8nb1xd+S+uq2
         BePw==
X-Forwarded-Encrypted: i=1; AJvYcCX0XFXUEdYGEQGXJm7K94L8jKQSoKRroUq+t+9Z7DPPf2n9shOXsBPmtaTdQ9drwP04iQTy/dO0WotT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/AC52AXt9nrzHt5aXuLeowWZwA+j27pzk9RQinIh9GBvxzXGZ
	VNiOtNE+EhKw27QFDeNdRPQ34Q+23kWirZp4IztspGW7b6f1B3skL18dkWhF29HkUtLDQOlKVka
	4eEt2pYFOvmZCRFtEaJMTgEDD6fWPTg6+BwrSV3nkYfyFIIdYqgh5vOs7VAe95n2HSVkviZI5
X-Gm-Gg: ASbGnctkCBCYn17hiqcboz015ml93UBWxLN/KxuJ1RcJULrdJh9cGI8Q/zMSM5NCpu5
	ePpUB/FB83Ws2SA9jga41RR/XqNwwQzWmywYr/wXacmMaNMgBjxsA21Ycy6vElfmJ9TiFm+I7K3
	2woSTEINOsTe7tl27/0rPJyTz2M6FImJyA4nfYtYRMCCAseKqQZ8lMjnpV1rgH+8l1UE7xzzXbr
	T5LyCTZ8Hc+NBOiWwU8RlK2O36iZBVBFQs1bpA6blTXeY5jggaOPHanyv6RU2c8MSFA3OlXu2qy
	CWI0BK5R3i1xIyIeDDIdtB82W4ROt5iTfGSiWPBUAxr/zmBG7Exa9b0/4J9Evz/Js8gxllbyHv6
	QguXwrFfiMmBNJIVPeF7B8Wy1lNKMWGa/KQWorNdHjDNFDxV49W1T
X-Received: by 2002:a05:6214:1c0a:b0:729:8394:706f with SMTP id 6a1803df08f44-72bbdceb1ccmr88352336d6.2.1757186787111;
        Sat, 06 Sep 2025 12:26:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+DslGJnZJAU4p/sCwayK1mvD5P5ektTJ03hT8qtHIEvDCqtPanmGJlv7QtR75Xy66NIJyyA==
X-Received: by 2002:a05:6214:1c0a:b0:729:8394:706f with SMTP id 6a1803df08f44-72bbdceb1ccmr88352106d6.2.1757186786684;
        Sat, 06 Sep 2025 12:26:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad11f25sm2435654e87.115.2025.09.06.12.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Sep 2025 12:26:25 -0700 (PDT)
Date: Sat, 6 Sep 2025 22:26:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: monaco-evk: Add sound card
Message-ID: <7bzlof2wyqqorhh4xck46wd43zlehm4vhej2oaxajo4dxn5p7p@oc3vikzxcwke>
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
 <20250905192350.1223812-5-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250905192350.1223812-5-umang.chheda@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: LUIxYY6DUolaiziP1sFuCD2ge8loH_yW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX/UxO4hzb8lIf
 rmcJZTlZ69mE3wqMHWYgFynqnCZj/maihWG8TD6adpuOSDPdf0YQfvZHq7GWcTAwg98euXpT7wK
 LADXB8J0Z88gItPJxLBnrEIF37Zi9IeffYkbAE5JBhykdcQaN+h3tMSFdKVksNbw/e41B6/rC1n
 wd1f0YFxCsniI3BBVJXGPnOGLPQtO5iNX7uryDkW2hD9uGR5aXXCgcERWN0PBVoRdWZM6KPw932
 nflvMr2YTOMmCM8jrwvh4Kp9rvmMkW1gw9/oR2zpEXQgv9IpYahNATR3A/0wFDfyRWKPNMQN/ik
 Y65kDtmdT5kXBbuo151f3YQ1PWfP1G0w+2qWyTqWpSHBKO2wcr1eQr4xd2daidd6oZrky+Ob4oW
 4H7OlQHi
X-Proofpoint-GUID: LUIxYY6DUolaiziP1sFuCD2ge8loH_yW
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bc8ae4 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3jghqQMflu6n8rLTHt0A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On Sat, Sep 06, 2025 at 12:53:50AM +0530, Umang Chheda wrote:
> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> 
> Add the sound card for monaco-evk board and verified playback
> functionality using the max98357a I2S speaker amplifier and I2S
> microphones. The max98357a speaker amplifier is connected via
> High-Speed MI2S HS0 interface, while the microphones utilize the
> Secondary MI2S interface and also enable required pin controller
> gpios for audio.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 52 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi   | 37 ++++++++++++++++++
>  2 files changed, 89 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> index 93e9e5322a39..f3c5d363921e 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
> 
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> 
>  #include "qcs8300.dtsi"
> @@ -24,6 +25,57 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	dmic: audio-codec-0 {
> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <1>;
> +	};
> +
> +	max98357a: audio-codec-1 {
> +		compatible = "maxim,max98357a";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	sound {
> +		compatible = "qcom,qcs8275-sndcard";

qcs8300

> +		model = "MONACO-EVK";
> +

-- 
With best wishes
Dmitry

