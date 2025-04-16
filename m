Return-Path: <devicetree+bounces-167730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5770EA8B7A8
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 13:26:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12BB47A6615
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401C723D291;
	Wed, 16 Apr 2025 11:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KnWNCoDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC09F236431
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744802791; cv=none; b=cVc/rjkO4osFKlxXmX/DG2qXxovb8e5UYJMZWiJxi8ca6CPczML7u7/a4T3yiY379IJmnFgqI1MpBrOhO7DlQn7tJr8Z6xos7uYWe8qxfgB7T4Otd/SgbQYWPRwLHisCGjBKQDTdmd76qNeM8YXzXtc5wPrEHmxDvzPRAJDNvvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744802791; c=relaxed/simple;
	bh=RW+Mb1eJdxcJ/AlzsBlGVolmGwaH/qEdv08dieAtp9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a8dQqjuHV6HTcYIkMIIs4UF3pn4V7ofMcWDF+sEvN72tgY3jp6T8T5+5cfdi2K57D/FrEDAOQpwwOWRw43JIOr6X+Vqm1wVaWJE4C6bT7rdNU98a/xFuxoCz6987cb7pK/Nsi7JKU6Z3YogfdAOSS0WQzoks8N/Punba0uKG8+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KnWNCoDc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mIcT003628
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:26:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FqTH2FmMp+zgfaiUJyffxmO7+0JUHiAh63pGoR0ZBzI=; b=KnWNCoDcrQ6/MQRv
	0j93hcM7iFRb3ckw9qz4xB777VvGv72/CASUSVhm4YmvloHftV049uEUYmgniitA
	gkSv9jqCHpOF/nnE53a7GfErs5NOUqeLwr37Jui366IcL0GHfau2Edhp8GoxOvSQ
	uzagArSASeRGap0Xd/CFcz2WxH55w+Sgo+UE296TDQaEHmxDvI0/DabG5XjPjtN/
	Ez3NgW5BVp43quyzGbXSg9fNvCwnUR16dXagvSbOktk9OzxEKnMiOdSV+tEp985a
	NJC1tQH8rbryujHhozITfObPKgJfd6sCV1PQPDOyRYoXAANKYSGHz+zssi+na21Q
	nZaRAg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4628rv8hg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:26:28 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8f3766737so14866256d6.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 04:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744802787; x=1745407587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FqTH2FmMp+zgfaiUJyffxmO7+0JUHiAh63pGoR0ZBzI=;
        b=aMc+c0/B969MrNe5GHXgwEoYS2jX4c1/oosFV0e/1gh33RXokIq0WdmwWk1MwqXpOV
         dzHZFK/qcxd0XFVP8tjqVuQp86Fi0cyH/0F65l1RyFb/Awxa01Z+fEwmJv8BcYGd4q65
         9PpK8s0OTDT2nrh44DwotnVTf1BYKstpufSMxGr5zWOvxPi6fwGjUp5n6iCJXvPfMR+h
         y3ziir4MkSbLTy+2VfTA6Ck7LSbewE4L5X2XgwRf4ke0Af+ErhnZPKnZsvZFp76XMCDm
         x5R5xWlACqZ7UxutitBDaAVxajFHbdrwKITG7AkKKA9/lBWDW0p55P/ws+Neprvztb4B
         LWIw==
X-Forwarded-Encrypted: i=1; AJvYcCXltptxhXOkEbO6QPhkn/0dSZ8KwUxmRM72eUCqdi41qpTjMJfna6Pk47Fgu0J5j8KtOBtpm3eIWxiY@vger.kernel.org
X-Gm-Message-State: AOJu0YxMz+x/8QtfPZq9AiXsU+jRxoYaYuY95KfAX+PL6BcnxWYbcqzK
	HTf8ZrEoYXtT4vb79b721H7kmF0LxChzfq4kT0POMAWh/4dagvn5+myAbGBmmz/+9GnXUl12Ad0
	tvhuyN4/nrgYHh5ONXQmvHY86yTuZNT95zIp3PgCd9URsk5wUjGdKdlBsTG0L
X-Gm-Gg: ASbGncthkypgydpxzhoU9N5u9gc3cmuVZ8ImFiY+CLCmWHdZz2j/xjoZ7nYzdincR6+
	+S1P2jwax4CjXvxSWW5EXbkxoetPVxjiYOLHlsZPVUYnQHnpL7yPgKzKnnddDspy7Rw8TmblVEi
	qiIVnQXYgjWcmgCjdLLAeZiOkv8BXCWZsYomdNWE+vvOntlGsV4vQrLzwv5bg/Yq264qVotZ9Ss
	X8vnRh0hGh+WB+X0BY3mIKZ7tvSolsiX1Xl+XbzIlg0+1VydiwsiBogb0CGjHBH3BisU9KzriqO
	0Ibfb+7vg41xsktNbNW+2kUDVCZ0QGhdVHwaKR5+dgXcPn9F6Rmgg/A4y+gQU1Sd/ow=
X-Received: by 2002:a05:6214:29e7:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6f2b3029573mr6577376d6.6.1744802787482;
        Wed, 16 Apr 2025 04:26:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcrmSm0usm0wco2TpWbMcvSJ5K5tNtnZEKjdDwDdoLwijVwSIullMrchHTd7gxBedW6lEDpQ==
X-Received: by 2002:a05:6214:29e7:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6f2b3029573mr6577236d6.6.1744802787153;
        Wed, 16 Apr 2025 04:26:27 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cde06f8sm111502066b.61.2025.04.16.04.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 04:26:26 -0700 (PDT)
Message-ID: <d2a60897-c35f-4ad5-ae68-cec245b28e0f@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 13:26:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-hp-omnibook-x14: Remove
 invalid bt-en-sleep node
To: juerg.haefliger@canonical.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250416-fix-omnibook-dts-v1-1-2409220a7c6f@canonical.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416-fix-omnibook-dts-v1-1-2409220a7c6f@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Tf_yWw7ctVx3ZKOzcWg1A0LwI_IQXi93
X-Authority-Analysis: v=2.4 cv=RbSQC0tv c=1 sm=1 tr=0 ts=67ff93e4 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=DfNHnWVPAAAA:8 a=EUspDBNiAAAA:8 a=PzLb5ZeHJKIu3IZmtdEA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=sptkURWiP4Gy88Gu7hUp:22 a=rjTVMONInIDnV1a_A2c_:22
X-Proofpoint-GUID: Tf_yWw7ctVx3ZKOzcWg1A0LwI_IQXi93
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=784
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160094

On 4/16/25 11:13 AM, Juerg Haefliger via B4 Relay wrote:
> From: Juerg Haefliger <juerg.haefliger@canonical.com>
> 
> Remove the invalid bt-en-sleep node. Not sure how it came into existence
> but it seems the functionality is covered by the wcn-wlan-bt-en-state node:
> 
> 	wcn_wlan_bt_en: wcn-wlan-bt-en-state {
> 		pins = "gpio116", "gpio117";
> 		function = "gpio";
> 		drive-strength = <2>;
> 		bias-disable;
> 	};
> 
> This fixes the following warning:
> 
> arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dtb: pinctrl@f100000: Unevaluated properties are not allowed ('bt-en-sleep' was unexpected)
>         from schema $id: http://devicetree.org/schemas/pinctrl/qcom,x1e80100-tlmm.yaml#
> 
> Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

