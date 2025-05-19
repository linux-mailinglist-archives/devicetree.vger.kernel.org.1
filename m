Return-Path: <devicetree+bounces-178353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3865BABB7F5
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54233188ACFE
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66866269D1F;
	Mon, 19 May 2025 08:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tg49GI5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D90619B3EC
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747644959; cv=none; b=kE7XmPcInXg5FXGi173gwcHVNbgWqMOov2HvhJuaCfLTbwmWXZSaUhkVE3IdKFZu3ikJJqUqpXESg2ep+M4A7IrvF+VEDniGHRSNF5P8w/pKlczrTjR38yFRawU3KTvPDUL5UdiLLr2/BpfRi5IVol2cwov00Iwc6k/cSRYi28Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747644959; c=relaxed/simple;
	bh=K0vti24UgOSsQ4ruq6gZQvCZo2mbAS4mzkYfBLYUldI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FOrdzFWPtgxET1i709fWYsJQ9Sl52jbnhOthAgWDY7z99xMX1rNtGWdbe0q2+Jd+ENLfiMyuN2i0NoWAi0VlP4w496Mift216fHzHcHBN9tQ9988Du7Ms05bA1C4fkP4YWeL4o85GywXIpOK1fHBIsMJogFgvxlqMhwzsXZppCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tg49GI5R; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IMUFvf027736
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AJDrsvBMltYMjK35MmAzj2BbAZsdbSWYh/aKVvhjTsY=; b=Tg49GI5RYdEpbsFT
	GUJKTFbPoaIHSIUfT+TlVxqmYhV7LLkdTxJo1v1oNHP7A7q3dZftqy7lGfIEyeEN
	duPsmDLheDz8AfsTHE/Okv9dkTqkdsI4VYFQYID3crWt/xV4tRPs2/4dMUksx/0E
	Y5aQNpFIdXcmve+D09cik8hntNtLa/wgwjH/eCzkmz2K3XDkP6XOwQYxmoe1cAQu
	4Ys5eDgq2tqYzp1uTXULGZJdEx+ockK4x3vvKYuBxppAmoVTfbezU/WMpaC7dn6C
	YTx8mnq0K7gkUkk5EcN1x43k4/otOaL3ndAx4qVYPvqWWD1r1xx/dbmL7aKoycEK
	Jhk/BQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4ur3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:55:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8cc1c047dso24576796d6.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:55:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747644954; x=1748249754;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AJDrsvBMltYMjK35MmAzj2BbAZsdbSWYh/aKVvhjTsY=;
        b=De/Aca2w7LYgIXleSbAtdp5e8atS1R8oBqQupPRPMsu//kgczgfYMlh48/jTJYYQ3J
         OqJPUisyhpB5wWMCsSLvuEvionRiE2iHo4FkI7iIGC8LiXbOGf15UhCMiYEKs50XYJ0z
         TydGjNDkgAlz9aJ06QopOvyRQ+w4yWgE+KlI5IgLXWBMvRYr1SZt3haZGh2TcGJKV9h0
         HL3/nm2qLm3YI2NEuKCCsqR3Mx6sWBeLEt98Uts0Tu+nkaSI4Q8w+tABuPbXk/3PSwIF
         W13Isx6vzw3AHUyWEL28mv0+TbxHseOHXodr5Pio/rUT83amuYmOIrzI7cx4MO5/zUt6
         dq2Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7WYeqy1hwN7RE6W+L+PbkD0jdn0vXEi4MDBtmm4JUF7qP/ALEjzGdgWy5FtAAb5VjkEcf5Tqd2VPJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+f8or7ivC3rwUsbT2/78G4b060Qo7lO0MEqaPhsVmZ3sNYU5s
	5B0UWq6z9ZpoDiEzG9knL6YBadtk9ffWDRlEsocPZLZ9oGBXJZO4SC2IYrudYuRLXnran2KG543
	+8q0vB+e4Jd/Cf9Wtxs/DfVZh9ZA21MvxCOBpX0BxrkkXuZ6HkzvFwai95n7s0pgx
X-Gm-Gg: ASbGncv/trnmqKNpm/mm58KZGl9h/f9jNqWqmi/6FUPbceDrlEOQgTWn56tFthZXODY
	eIwcT0kCPcR3qEjCTfBJ4uFfyymcz6b0bN8QBCO4ZpbgQACkafBzixRPR4c9BaFC/Y/sLN2KoHz
	X5PEtBsbJP66eclFP9yOKgo/w5Waohz3qkU+zlLE6c/SRXiyxDs85+EPwo6IAJ860lSGQYbY5P8
	MVTsjKbBEBC/7lY5sGZLzfNAZk+wxQUUZKunvkRMdM1iBJizjJpGC4YZ6+WiDa2Q4875lWgQ/ee
	u11NYmIadxHK890tP+NpA4eLA6OT0PPq59ajRQ==
X-Received: by 2002:ad4:5e8f:0:b0:6f4:c15a:62d2 with SMTP id 6a1803df08f44-6f8b0877c06mr205380596d6.20.1747644954544;
        Mon, 19 May 2025 01:55:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErzNEm9Jhf+vM6qFifeQXZGioPWFCKXVSnYAhJt7/k+6Qe2F/OgdHap1Eg9GiydsmOPQVlaw==
X-Received: by 2002:ad4:5e8f:0:b0:6f4:c15a:62d2 with SMTP id 6a1803df08f44-6f8b0877c06mr205380316d6.20.1747644954157;
        Mon, 19 May 2025 01:55:54 -0700 (PDT)
Received: from [192.168.68.115] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a367205338sm8348074f8f.98.2025.05.19.01.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 01:55:53 -0700 (PDT)
Message-ID: <9d59167e-6fd7-462c-8a5e-5781babdae02@oss.qualcomm.com>
Date: Mon, 19 May 2025 09:55:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] ASoC: qcom: sc8280xp: Add sound card support for
 QCS9100 and QCS9075
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
References: <20250519083244.4070689-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=682af21b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=JQYwrvYeIx7NCKdDp24A:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: TB_4xnpgM88swD3JMrSTuM4U3L0l2Lkb
X-Proofpoint-GUID: TB_4xnpgM88swD3JMrSTuM4U3L0l2Lkb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4NCBTYWx0ZWRfX2nCoV4rqT6wq
 8H0NAAWWGbrGiQRIBzy3RCCiDiI/59jKu7WasFxulFVgFQAidTHRzbdiuU/xYQxh8tmod5tvOII
 rPbwaNz6FgFbcAHwzR+MDNo32VIC68lEKYRIIBQjJH9mDBee/qkoKtxFy9RfzUYUft5Our8wNB3
 GUMNxtvYPLdFnYOpzThIv8O3uzUY0UcY+LSOJ2QTFl3SmLBw0FCzPtn87espGVEC1M1UnEMCSHf
 UhpHEa583uxIoXA6B/oRAAKUmEZqOV5YuQVgEkQXBlFxfRpvxR+pRSvxeNWzUDM9Xrq5XAjwlAt
 v00HhmFtMyLBnHcBQXgpxpeq95sQ5oaBd53ozp8NrMw3SpgVU/9ZusiCPige/kFA5lcRtu2BSIN
 9N7HStZ90VeIvRnc/CcSwYn62wqsH0bJBtQqdX3bKeU3tKahUobNRWXTEMxFRMhoORpP4Y7Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=936 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190084



On 5/19/25 09:32, Mohammad Rafi Shaik wrote:
> Add compatibles for sound card on Qualcomm QCS9100 and
> QCS9075 boards.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---


LGTM,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

>  sound/soc/qcom/sc8280xp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/sound/soc/qcom/sc8280xp.c b/sound/soc/qcom/sc8280xp.c
> index 311377317176..99fd34728e38 100644
> --- a/sound/soc/qcom/sc8280xp.c
> +++ b/sound/soc/qcom/sc8280xp.c
> @@ -186,6 +186,8 @@ static int sc8280xp_platform_probe(struct platform_device *pdev)
>  static const struct of_device_id snd_sc8280xp_dt_match[] = {
>  	{.compatible = "qcom,qcm6490-idp-sndcard", "qcm6490"},
>  	{.compatible = "qcom,qcs6490-rb3gen2-sndcard", "qcs6490"},
> +	{.compatible = "qcom,qcs9075-sndcard", "qcs9075"},
> +	{.compatible = "qcom,qcs9100-sndcard", "qcs9100"},
>  	{.compatible = "qcom,sc8280xp-sndcard", "sc8280xp"},
>  	{.compatible = "qcom,sm8450-sndcard", "sm8450"},
>  	{.compatible = "qcom,sm8550-sndcard", "sm8550"},


