Return-Path: <devicetree+bounces-214198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 033D5B485FC
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 09:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CECA34240E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 07:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB892E8E11;
	Mon,  8 Sep 2025 07:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="azhN1hsC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D5972E7BC2
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 07:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757317391; cv=none; b=tfVngqooTnb3v7DCoXI+MLB0XQhskEgXF7CG7Jt5DIv9dZ6bx0GmhQTC5lw9qxgKB0twIEjnUJT8A1//gd+Pc8OkmdpTFLTXeF0AVF5kyD6R8nR6gbwojeNM081/x/QD+Mvam5TuX15m4g2Zw4i0fJ/1zHW3t0AjI9KavW7+2Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757317391; c=relaxed/simple;
	bh=WYg45bgT0XRN0euq4QCobxp8IotvXOVZG3lh3FUmcVA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O0nQgmlFvn1WRp4mM3gxJCHTc43PYlvuKyGy7zhckucdiLWcjrS0YyPlWfIxar+FmnMXX30wxxl2uox7W375h5KS3dNQXPjs499GtOykoA273SQEdWeQyobf1bfuA9Pbc14YU+hYJjhN5Ap4mxhkBVze8XF67JJnoX3Y0dCU96w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=azhN1hsC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587NXppS014458
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 07:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1grmPgipKFGWJ92VbKgO7RBjzC/AoySVCE8pyMqTBpA=; b=azhN1hsCVGW3xN9R
	qqm2DukADn+E924Sqz/YT4jdrwM1TmQWOMC5Ve3I9HKQUqnt4uZznMwbqIp9GEWC
	A7ztNMDfXG2aR667ua+FQoVHEfwQ7TCwfalb85O3/KuGazvZXarDkIBXirZdMYw6
	EhBpVPTY0+cemuOTQxwBgPNYm8x9TXwK9dARAbaw2dGO/DHjPpbUv7w6vK1GGsvw
	ydQcZK8sgatnDoX1yCqNLOc0IjTMirkh2P8jjEp7ppwW2yS7L/ORf0GinaRrRFH7
	it0nG1ontF3vliJnH68uU8TFtmWbxiUwzCxok5kR6QrScto3geAbvjxHC7X46p5K
	GOXOTQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapbwrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 07:43:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7507804a7f7so4724936d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 00:43:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757317387; x=1757922187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1grmPgipKFGWJ92VbKgO7RBjzC/AoySVCE8pyMqTBpA=;
        b=gFjdQpzyXkLx7Gu17MrR/w/naWWNqqC6GIZgquNdCKNBnLdEpP2eMxE2SvGxroXIiD
         G7kXhsRrSI4LFKJ1MCkqsiMn3+I6dDTZPTxti0NGjnWRXWGtQNU6DsXMpKtO4Gckj6ae
         q03PwB0p5tH15WZM/gNQqIFFCMmJMHzvH3OUv7Z44EI7rVc7ORQj6eAqU3IUshIZ51MG
         2NZ2p84tEO0WYO/FuOEUgsw7TmnHHcwx3gDig/A/wZmsm+aYz1+hhKFbV7b4nbLItC0k
         2h5JlKcLdixq+JqCKK+nfRMLZF0JYfydFwFtjB8BfK/KcvsJmfpPl0JDSW4dR/TpCFW0
         4XNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAFDzoYnPACNTKj8EubhhJGIsWo/juQlzPQm1nPAXtnTchF/Euz/WkUVVanOQVa+mNSipXSE7ToEcB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw26ums57Iz6PtQjNHy8kL7K5r0tWNxQxIIUGtwmPpiFAit27y2
	04jl8lMdNY6wjJSy6eEAViyPXAQzSP0CFKRZjmse37E2PIpyehgoDOdNT9ow0Zwhc12IjhLnG2T
	Wywf6+AO4WSD3ZLl80SRcnwvF5nn4nfldolC3pz/mXeDswYlCsM9SWTU2DIl3MV+A
X-Gm-Gg: ASbGncseDi8rb6717KiTc5+2oWFzYOlwy/qBedC5NSi+kYfXliVvFrDQ+2J5r5Oy6g+
	tRyKDXzVAIKYOjNRKJ/xS/EuYuIGkiWaYzRzplPHp+GUCol7+pKW8ou9hfnkwwEbNlPr9obJv4B
	b4k6pZ6Jd/GbkVNl+C/rHqv7k4aBgr/TkA/2kVHlzLmTfGse/mDxDdu9qauFyxOLcjTx3ToL+Ty
	K57HJcqLIX77AcvN+JjKCCzk0Cbe8AN7ELfg6D6+bsEDXIFU3aIXpJBzOWdSpmcnzGU/P54/Bk7
	e8ydZfsEHcp5xQtMVVjD9QdBO1Swp5yYa4ypXQWWQ0yjYsbudBQhISVrf0t/GRaAukA=
X-Received: by 2002:a05:6214:ca6:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-72bbdcead63mr126284856d6.1.1757317387165;
        Mon, 08 Sep 2025 00:43:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgAcdbDq5zNfyipOZBWdCcXswZ41a9jDEPvBfo2g42KlKJ6RgThA5OuAMoeYELmzFt39Z6Gg==
X-Received: by 2002:a05:6214:ca6:b0:70d:f55f:ef97 with SMTP id 6a1803df08f44-72bbdcead63mr126284616d6.1.1757317386708;
        Mon, 08 Sep 2025 00:43:06 -0700 (PDT)
Received: from [192.168.68.119] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45cb61377a7sm225190345e9.13.2025.09.08.00.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 00:43:06 -0700 (PDT)
Message-ID: <9842b149-0c39-4114-88dd-2fbd4423d077@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 08:43:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add support for QCS8300
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, prasad.kumpatla@oss.qualcomm.com,
        ajay.nandam@oss.qualcomm.com
References: <20250905142647.2566951-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250905142647.2566951-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250905142647.2566951-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68be890c cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NPwD-xthdEbpHelLTGYA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 36cQ1tionecms1UDG9xU8uq4YcDOzpaG
X-Proofpoint-ORIG-GUID: 36cQ1tionecms1UDG9xU8uq4YcDOzpaG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX69ctA05qWBTA
 Ad1mQWirtI0H2+hVVsrWQOfi26e9Z5DMq8Ax0drJKGCmON+Tb99Mxb9MPqU3Kw0J4V1ZjnXymBY
 pIi7dZ0KDs7QUy2vamitYiBzq9N5YmJd5ivootwuccZSIHLc0MCn0KrIoPwQttFggcMyo3OHjn0
 1ng4ygwmwv5p4QrosghCk6I+jgDUj6OtYtzx3qzKs+/1SAakhVmPWniGfOCgGoUKi/7nSt5QhJs
 xk+QLMjccuKhI7DrHXXI0QYsDR/ePlFHFkFafsIz+0GAmD0IU1XTGpzfkpl2zpInWCABUuUzhP3
 T5W8qrjkRtpiKN+RJsvnBCoVYgjljG9U3J5geuSGC4dYlYsOF/LYOwIVmlX9L4DtU2dMzpR2nTD
 qdeoIatT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000



On 9/5/25 3:26 PM, Mohammad Rafi Shaik wrote:
> Add compatible for sound card on Qualcomm QCS8300 boards.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---

LGTM,
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>


--srini
>  sound/soc/qcom/sc8280xp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 73f9f82c4e25..c6aa62b1f66f 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c
> @@ -187,6 +187,7 @@ static const struct of_device_id snd_sc8280xp_dt_match[] = {
>  	{.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
>  	{.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
>  	{.compatible = "qcom,qcs8275-sndcard", "qcs8275"},
> +	{.compatible = "qcom,qcs8300-sndcard", "qcs8300"},
>  	{.compatible = "qcom,qcs9075-sndcard", "qcs9075"},
>  	{.compatible = "qcom,qcs9100-sndcard", "qcs9100"},
>  	{.compatible = "qcom,sc8280xp-sndcard", "sc8280xp"},


