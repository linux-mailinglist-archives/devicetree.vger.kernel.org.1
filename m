Return-Path: <devicetree+bounces-224973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB933BC9540
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:36:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AF5719E01D8
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C73AD2E093A;
	Thu,  9 Oct 2025 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D1uNZLL8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A91534BA39
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760016994; cv=none; b=IxjRiQkxLUl4RxIP88cx6bwMNzMYaNEBpWyPtGxgTKwbpvvXdMrhSzhOI97AcAZlAHtnxkMkdSRIN7PZJHPOiJccN2VD4sVRm7WdVBJnD1Jv8vnO9x3aAIsuN3ooK4/KaHkXZ6Pe+mKmfSzhmHNY7UO/6Lxzzs+O0sgrpBe3NEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760016994; c=relaxed/simple;
	bh=dzVbdWVRpdCQwe44yn0+dLpxIzypbEGpFZhHd/JbGpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hj9M/EQtBa3Ef9IID3YJGUrwo30y8ZsBZ5im9rSfosJfXiFetxFPKh4ZJaa4w1E9tdaXEDQKvJe7PdOBT9ndJXlyoPuA5TFFUAij79pRQBiWYpM8C6xpTYWiZY0k74AARcUU9lXXJwh+Tt/rYeZU5xSS++ZzmuDwu6APxbo3goM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D1uNZLL8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EGE4012246
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 13:36:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yKk62FEzjFLvqKcTvlSOs87O
	G55ubXymcmIf9wF5OeU=; b=D1uNZLL8jMqNYdJNm8C62LqtYaqi902RqEIc5Thf
	wNQhMaXckERXRtoxlVNKSdDPfLPHWSWvxpjxPGW9cDVEyP7+rbKg5je3BnbmF0DD
	9Zf23kLkFxTMEBkmGQzDWcrjyi2ujaEgWtnT44zfQpllLKS27klBpIiRwI3Fxihh
	IF9ce1iVZ4wASNjWPVfAIulmMO6Xwjr0KkF7pyAHyq5eZU+KyKq3fnzyb5a+ez7v
	iMh98GUOrtyWJkuQJWqX8dFx3glwmDhI2Tn8+Ju6TT7aVE7u4ZLd7vj7tPTJ44e3
	NbMmECT7TkziSAcZbwDvm2Y984/lK6g86S2g4lFwUEcxrQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kk0by-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 13:36:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d6a82099cfso35070421cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:36:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760016991; x=1760621791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yKk62FEzjFLvqKcTvlSOs87OG55ubXymcmIf9wF5OeU=;
        b=M5fh/zMNtzuLOEpmZZPAaUiom5aUMEkq3xM1wPvLlhUSomXYzfY53RwMkB3/KSJw6F
         R4qq9DD2fxN2ZJSWG+Za6563kv8iRhqxK9+78CZYAP+f2Pg9FCOF2Oxpo0tQQJNqFR0X
         u1EmjrZ659kUAoTvXFWzQ9wlWAcA6Pdp2jn650OiBzh00eN1aoW5nFTHWXSfZSU3r8SN
         xiz5QgeEZUeNVf+9h3wzyx6h+sYm7a/+mpveIFT7J+y9keLWKv7wtkDBZ/ZWBwaz5SO8
         lqwQ150z8B0HBiut5wXDcoSMa96+AjevQ2HW7VW/VRQPhLvMDsHu5Xc0487FneDSS660
         NYoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRFPRhTeUdw52Tvb00Mj3WQnCAT/flA/E2YzhPnQOPYBPNi00XJk8D8cw50p139w2ZtNpsST0WR00L@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8GsJt0geLH27VEUpEq2WCoyeKthU5VvmfFzP7bnmcZhCrm5tf
	7rcXkIwLoXGyrPUSloS+/7hyHByjSqgB+M69aynLzXAjODtUbnZdRq5o10OsqqGsuhKbks5+xz6
	UvbbYxg3uqgTRC7NZzUPzSKlRTWME0IczNyYkI1gR+32N/PNp9+zIeK/OgJJE3mkp
X-Gm-Gg: ASbGncsPcumnXeNLXiwbx7D8QLKJPVrJJmr3Y5o61A69ImF1pduB82fVumDxTnJAeoI
	MtImxDFPmXEuWh1nmnBWfy68qbs+eMa5I6apbu+quRKuSxxqg8p9Dhl9UoimWgiJbhtBowcMmec
	myzg0YmhHiLRBRTT9Gn1j4x4etl0YMUMae3OWVeQJWYHk4h4ZK8HAkyE7mxdLkDyGgeMwD4I0eY
	j+R6J9+7lFWUAqWR4s4StHteHKFFykOo2EE+CYJPiBbRqnA0aO5rA9OWFljFpokDCr/+9BHUXdZ
	W9vWAgJlk9sWmg2IeoQxxRWnL/9UJIloGOBvf0JrAPkbviSrjiJq+pmVqjpW5CBmvdlW6Fj2Xll
	GdL0/VymMVTOWeJcavYu7KytaI3FYIVo74UfosoeuChpESwOFFrCD3ZI86w==
X-Received: by 2002:ac8:538d:0:b0:4e6:ee34:2f0d with SMTP id d75a77b69052e-4e6ee342fccmr75785361cf.76.1760016990701;
        Thu, 09 Oct 2025 06:36:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBayiHdte1PqGG8y5/gMAcwfyHqEEg07Q+fYuVHDzjQ3vhgHJi9sxsB+yLdRrcMItaI5qh3Q==
X-Received: by 2002:ac8:538d:0:b0:4e6:ee34:2f0d with SMTP id d75a77b69052e-4e6ee342fccmr75784741cf.76.1760016990084;
        Thu, 09 Oct 2025 06:36:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac02026sm1060639e87.20.2025.10.09.06.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 06:36:28 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:36:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: leqi <le.qi@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
Subject: Re: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add QCS615 compatible for
Message-ID: <6g6axenrh3bqli4epwmckzuhxrbji7c7kl3deedag2ur6ojubb@6cxo3nvtfuo5>
References: <20251009023341.27277-1-le.qi@oss.qualcomm.com>
 <20251009023341.27277-3-le.qi@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009023341.27277-3-le.qi@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e7ba60 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=ZMBecpqfj0tL_UAVglwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 0kMandLDriOhXb1c80bpEID1LEwTuAMD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXy7MlWUCCiEjC
 d8vMav0R96BMvrGDw+HTpdLIG97nfmS5T5ZeQwPRB4v3ykI+qYpamxDnvJHl5SYAJNsYG2i7IN9
 3EMZJSHXn4jah5T/2u8fvZ1e+wdGggSfoQgMgE+DegyiS6PE3Fr9yAy4huideTH+E8A/1WygjCX
 S5RpuxkRDdB/+A9pxRtnJ9McMKaJSOaALjsRPsLoLHVCyxa5SaZgKEmB2ya3Jnqh0vFgCwKOZBe
 /DpYJohXJ17BR9JEz9CyGsySsU5uQb3yf9Z7d5xxy+mRH1Y9kMjA6w0R/9Ci1So4mu48ZA+3lzX
 s6iYi3kmr3FHXmpsI4EgFexf8EBjNXnCgB21j9UPip1VSw7c0Etrx396l1737U+u898ytCE6lOi
 wMXyzOfmPOMhF5ZxKPNgGzfk6BCWHQ==
X-Proofpoint-ORIG-GUID: 0kMandLDriOhXb1c80bpEID1LEwTuAMD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 10:33:41AM +0800, leqi wrote:
> Add QCS615 compatible string to the sc8280xp sound card driver
> to enable sound card support on QCS615-based boards.
> 
> Signed-off-by: leqi <le.qi@oss.qualcomm.com>
> ---
>  sound/soc/qcom/sc8280xp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 3cf71cb1766e..1780397e68d4 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c
> @@ -192,6 +192,7 @@ static int sc8280xp_platform_probe(struct platform_device *pdev)
>  
>  static const struct of_device_id snd_sc8280xp_dt_match[] = {
>  	{.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
> +	{.compatible = "qcom,qcs615-sndcard", "qcs615"},

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

>  	{.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
>  	{.compatible = "qcom,qcs8275-sndcard", "qcs8300"},
>  	{.compatible = "qcom,qcs9075-sndcard", "qcs9075"},
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

