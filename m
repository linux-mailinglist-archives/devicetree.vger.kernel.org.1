Return-Path: <devicetree+bounces-229749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A6BFB6CD
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:34:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 689601A04BC3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1D6322C70;
	Wed, 22 Oct 2025 10:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UhmDuNmL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED0D2BCF7F
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761129285; cv=none; b=RSN9IAU2JT006+559FlZMbhfVE+3x29jWJ5LpakHvEQ5YDulDSMNkIYsC2pAiH6wi+UBEx8IuU1IhqyGqalIIjWqNCqWrI4ytgS0ByI3F43jPVG/luhDCwCPehLds9CgXCPqehLlZlL6efF9GUXsqL5yf8adnlrKH/P1jwlSR/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761129285; c=relaxed/simple;
	bh=QpMNfT7FmfE9DJjiA0JFNPgcEP1z3UGq7yfCQDkFKVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LqvQnJOroOYjvcUpe4fUVojxA8ieYdaKLke/JNu89t3+QSE5u7CjGEi8Fvyn+0Ppy+ehauOo2vBQefWfZBy5ARvSPrOe8mi1XJy5S+BYtj+oMTDYokBrx5RABhl/qERfEnbfVYHs0Ud44JoYO6ujMGig1/x07DMLRqapyvHLxO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UhmDuNmL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MAUXBi031463
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:34:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ey36IRL4isg0/uNf3V/qgF/w
	XSf+ypTyipvXiTiDYHg=; b=UhmDuNmLfkLoPHPCiTu0KGf5/uMGk6H/V+wkb8DH
	xfeaUFz97MZMEsZBsRlgiYG+wZi29raAPyU0udr8HIAkUkgZvdWJt7N+u95ZiSmx
	HDd8We4o+GwUDoRbjnSpp9wYo5D6/7oADQ6Bhklq5/qZgWPrZKo8VHQgyPVlsqsV
	K8UJ+t81txXg9EUuk5PPSLcQQw3ycYlKWQ8stgVRHq0vh8SYu7UE9q9KwehH4yHD
	aoUt7ObmnqqOU5BJeOfU1icpEyehZrwlyoXlXe9alGpVYVsOVrVVtOOkyKoczBPs
	k+5tEYHUevZZ4FQK1myt5ARguRA2lJP9iS8RJk0UO7INPg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kc3nj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:34:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e88e094a5dso42553231cf.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761129280; x=1761734080;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ey36IRL4isg0/uNf3V/qgF/wXSf+ypTyipvXiTiDYHg=;
        b=JPwTAlBDQASSiiDdkOCZcNFD5qVBoPkCFCHPMWKHWM5ER5qFTfPyQh8QkIPkgBVagZ
         80UzGT00QaojiOpP7EEJxaQM7pdznSXVkas4hlxSYOSzdqqi0emuXQw2NfT0L9hWRo0r
         PJsFg4se9TPupLUHcx/VrBMJaynkkiIEKxY69GCBjwMyxDQ63RKP/9+LPHKHB16SyVvW
         6Z9F+czZtohrWxEL/Nq8GxsapVAtD3XlVCNNAic9rkJGicNU2rZsXuy4X1h4l/N7jsOU
         xcm2PkztOkV1rG4Y1nAYncER0Uiqn8I1F+xl5UoMVK68EVfMAwNDC7WkS2OapWphy4dS
         Gayw==
X-Forwarded-Encrypted: i=1; AJvYcCWyHYIgWH0c5QxW8vJJepxBlMzeibm60qnYNC+EzaeYTTyaH87wvPP8UEVO00i/USQfdtJpN5R9x+sG@vger.kernel.org
X-Gm-Message-State: AOJu0YxOowiIFpNYyY4rFNwffsQiSzNeJ5TMeIIt9O5JwEdI+QjLDGl2
	V+WbzVgucZCdqC1gAOzulLp9U9zGBct7Kw1YPNYfkeyi4CiBmK1QiS9kd4A7B/rDbRM6ZyZoIO1
	TKBv1o8IMvZTh0tGLx7C0tlXrzPLjv87od8Lh506y3YJe+odO8JyY5h+iQNLk6hus
X-Gm-Gg: ASbGncvm1hOdoiNf2tPODuQerP3dCtgDuiI17jTelHFNRKQ6GtRl1vRXKiRLbIXlfH6
	XJhr370N0ozZC96X8BckD2Ng2iGTP9MD8gk30Zt1HjOtSsJ1TAwMugdEUG2MaoRKE34f9udIwbn
	3LlKi+Rh68oa/wh4INvDAH4L3aTFsoWoOfcEpcM1aQLm8+X9pA5VqsSuVSD49gpjHOXdGRxd6QW
	Kcx+vCX5TJCd7cp3FoZ6s4mzO+BooLSX8u30xt3mo/5bNMfLibI1iVxzSHyw76ihQ7qBT6ocCxF
	puxEHQKW3b6M71rkrKjk3qT44uh5xcqrD7i8McpDTLkHPZ9Gyg+UaF45Ep0zutxqhCYNXJK2KTm
	Mr4e8aRUHZIr0D+NzUbCfZo7ECHgDo+8FLB19MSUiuCX70GYSAXkOzOqUOYyPPmYcmFKG8hpU+o
	B2DSETyk73s3E=
X-Received: by 2002:a05:622a:3cc:b0:4e8:a8be:5857 with SMTP id d75a77b69052e-4e8a8be5e94mr171269021cf.55.1761129280270;
        Wed, 22 Oct 2025 03:34:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQLkTKu9y3Ou0mi+Djx6Gq6aJaXaybifcjUti0v+lLVcSxUR5WWEF0kxHzawkEmfJY+aBmeg==
X-Received: by 2002:a05:622a:3cc:b0:4e8:a8be:5857 with SMTP id d75a77b69052e-4e8a8be5e94mr171268571cf.55.1761129279594;
        Wed, 22 Oct 2025 03:34:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def26992sm4554093e87.103.2025.10.22.03.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 03:34:38 -0700 (PDT)
Date: Wed, 22 Oct 2025 13:34:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 2/3] ASoC: qcom: x1e80100: Add Dell XPS13 9345 support
Message-ID: <sihiwhcdra2kviuago7r6gnm6b4goqcpjgt43loen5alk4atze@mhklkp2hz5y6>
References: <20251021-dell-xps13-9345-enable-audio-v1-0-6f3f6bbd977b@linaro.org>
 <20251021-dell-xps13-9345-enable-audio-v1-2-6f3f6bbd977b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021-dell-xps13-9345-enable-audio-v1-2-6f3f6bbd977b@linaro.org>
X-Proofpoint-GUID: GqB03TlRuVsj56QIoejXFJZaHWqZ50eo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX7rtYYBHRmTuD
 61Piw+3p2WK4epq5AZv3+HKdCnuz64uAkT9do9H2ZHmNXa9qldReM0buW0T8185POTNcbo9/h8w
 rPmPl7xXu37NP5ilCMy4Jj43Kj1h+LZ+gGef1r5mq10aG2QAhfU8/FezeMFGA/s5sggLgrcxxTf
 YLBaF1LK+zGSFKKesGHqv+Lk+ILDvyTfw5gGzxnpcp93l5RzML29PEUWDNrCSfk6ve7bB4Z8n2I
 XpX3u2fPp0jA16agyvRjmoLSEgpOnSL1PBSYMJeB6x87tgJMSgPnoZ6KNWEQ+mbo3wQQ+b6yUfQ
 GYGM3B1hoxz8JeJx35NrRb0h76BLfpYokQg7mPO6EZK2xVY94OucreoqdxYCB5Wdy96V9PSUI8r
 aLeaWR2IjKPCePzO20wpjkFULJunAQ==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f8b341 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8
 a=7aqP5zvjfKpTuSzq1rEA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: GqB03TlRuVsj56QIoejXFJZaHWqZ50eo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

On Tue, Oct 21, 2025 at 04:50:45PM +0300, Abel Vesa wrote:
> On Dell XPS13 9345, the PCM channels are mapped starting with right
> hand side instead of left. So in order to support this, we need to
> hardcode the mapping and tie it up to a dedicated board compatible.
> 
> So define a match data that brings the mapping as well, for the XPS 13,
> while the rest of the boards will fallback to use the mapping based
> on number of channels.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  sound/soc/qcom/x1e80100.c | 49 ++++++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 44 insertions(+), 5 deletions(-)
> 
> diff --git a/sound/soc/qcom/x1e80100.c b/sound/soc/qcom/x1e80100.c
> index 444f2162889f7d9d4b6b06bddc980d8a15dd988b..e21cf534b2ac3875b694f381f260164acb2e3ae4 100644
> --- a/sound/soc/qcom/x1e80100.c
> +++ b/sound/soc/qcom/x1e80100.c
> @@ -15,10 +15,17 @@
>  #include "qdsp6/q6dsp-common.h"
>  #include "sdw.h"
>  
> +struct x1e80100_snd_cfg {
> +	const char *driver_name;
> +	const unsigned int *channels_map;
> +	int channels_num;
> +};
> +
>  struct x1e80100_snd_data {
>  	bool stream_prepared[AFE_PORT_MAX];
>  	struct snd_soc_card *card;
>  	struct sdw_stream_runtime *sruntime[AFE_PORT_MAX];
> +	const struct x1e80100_snd_cfg *cfg;
>  	struct snd_soc_jack jack;
>  	struct snd_soc_jack dp_jack[8];
>  	bool jack_setup;
> @@ -95,8 +102,16 @@ static int x1e80100_snd_hw_params(struct snd_pcm_substream *substream,
>  	return qcom_snd_sdw_hw_params(substream, params, &data->sruntime[cpu_dai->id]);
>  }
>  
> -static int x1e80100_snd_hw_map_channels(unsigned int *ch_map, int num)
> +static int x1e80100_snd_hw_map_channels(struct x1e80100_snd_data *data,
> +					unsigned int *ch_map, int num)
>  {
> +	if (data->cfg->channels_map) {
> +		for (int i = 0; i < data->cfg->channels_num; i++)
> +			ch_map[i] = data->cfg->channels_map[i];
> +
> +		return 0;
> +	}

Why by default the driver remaps channels depending on the usecase, but
for XPS we use a static map?

> +
>  	switch (num) {
>  	case 1:
>  		ch_map[0] = PCM_CHANNEL_FC;

-- 
With best wishes
Dmitry

