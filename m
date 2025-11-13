Return-Path: <devicetree+bounces-237912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3093C559DA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 05:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AFEF3A4DD7
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5B7E29993E;
	Thu, 13 Nov 2025 04:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jVviftTT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OCxA2pPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EA8274B23
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763006553; cv=none; b=s3zNyhNBhZYzydZO1HZ96ikEiluL6MN1BxyV5ZNxCxX0TjAy9bsQ39nlYgeyVHaYI/LIQgXsLD/vqEpaD8JV1qLXaroKo4DZW8TpR+B6157ly9ESWMGSYKKbNjdkyscatcys0HA/Yfwh9FSPfnbkC8U/vmUSnmczSuqOOJOSUzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763006553; c=relaxed/simple;
	bh=A/m0/FYLjfLNq6z5gNH679fumCbGSnZF6Srx+ScvTPU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYLDtdk9LskT7o0o9XgwqmxrAHtNTOs6L24qx0QBODV0BUBSbe/+H51ewaqyPkTGGtqkFoE3wB4ieVOxxrnbh50DDosrPDjJQo8IAri+Rbi0QmORjw/kIJODwLp620a3zB+tD+bON/SKXW2BwiD0DBwoOBZS4aAhzC8J+XOpoFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jVviftTT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OCxA2pPS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11GqF2869290
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Hi8IiFCLCvZ0hFXdpnFxUR4S
	e2upawT7/hvUE46ZnHo=; b=jVviftTT/GmA/TmXdMbgxwRY2FNowNynqg/2oI96
	J5g0vnhSB2LhPGSFIp2u+20H1QgDKBOUOF97Ct6V6dapUZymCi98QSKrowNKn4dW
	jVXS/H+XHcGcKjKr7PJ2GXvsL5BCeIC+lDphpqSjytAWfwyDb47e331y+Kz0JaOR
	hwPVdaCFPTd8TmDq4WPU6u3YiaByvrkOpELlUZbhb4or2VI/tUJIKqKEgUsbJ3mZ
	9Wnw9CI5VjkptjUCKOoi5fzRSpnHlB35PlhMZy6UHrEvLY+F70Uvkzcc1EsijZjO
	93cuYduLco7R7cLvid/dM0/4uGmZKC2YqnVvPozB66g+Fw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqurb3xh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:02:31 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ede679393aso12315361cf.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 20:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763006550; x=1763611350; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hi8IiFCLCvZ0hFXdpnFxUR4Se2upawT7/hvUE46ZnHo=;
        b=OCxA2pPSgUPUhS7+OcoHiySfa+016uUhHAbQha2CMnHz1umWX5h+Ghwb60mcxWhjvV
         bYeEhXTTfmHKN9nQl/PCeJez/TQki4sFZiNMrfnsQIn7VTPjie+WN9uulmXT5yu6+YRp
         REuyqlU3rrXwwjSNAfqzVwODSA/wTm7dTMH/A185Y0p604moQ7sqq+WMoRKmQrfQR4HI
         vy8zlBb5HKtzruSflzsMYZTV/hdHG8JR9Y2HneFBVkGovZbNH/slJ/W9eui+Yy3dCjMy
         v4ulr4vVYue46q19qzWhsUOTFbZOYea5KQckeIOg5rcLQoNB1qRTgsUdMa5uuBETteW1
         xDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763006550; x=1763611350;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hi8IiFCLCvZ0hFXdpnFxUR4Se2upawT7/hvUE46ZnHo=;
        b=LoRNEIOf/X5YkmHdVmZbReYVYratR8zCRjnL6iSJ3Y08jbR+DJ0lhQ/56Daz7z2gNu
         Bagp/RDHOTz2JAHkCQLgYEzzr+R3cZip90UtiGJA3pcjz9j/uqcJeVbki5DjTnIhTqjZ
         0KI7umasLP9WwaOx2W9LyEAQcmUZMVR/vmr5j9jOvhtgNazH8sYwEl/x2h2h9HSlVd34
         dLK4FwVMW6GIfnVGYHEdM2aWQTa2eabpa3stQkC/ZpEQ0UaJbrY2kOeROgcCBN6rMiqZ
         bWeuDibJY9UYhmqYLokqsUPlgeRLcvi9dGxgrGXKsRwqm5InycklaVBQPHemVFTilNjy
         lejg==
X-Forwarded-Encrypted: i=1; AJvYcCVFxjLE4p8ebMlgv2EmLx+bT746x+8mlCnCUsbmrj9GynutrCIijE1QkF9IrkylWD03BMLoW+Pu9ID9@vger.kernel.org
X-Gm-Message-State: AOJu0YwQhgpwm4dNBpOXF7SlZFf9E50Xwk64ShOTiA2q28jKZVxe53QW
	9Dmab8hWSokkQ94hG+oBMK+mTPQ6bpYAgUusLQ5926SKPA3e9sUQZDRaD0F7nG5OY74pTVnKosm
	MWNNrNf3HDoVNtNMqFPFO0aSVsX/97K3OvI3qfsDlewp5oXlyW6HgnT/NaEGae6gZxo3jpaPu
X-Gm-Gg: ASbGnctXTgxnn8TKBFlT6wO6+c//yfgRElqc8zT+/ZqqKu1Pneo2QYkmv7vlrfKnZlJ
	JBudRysm7KBwFq4bZsdj1f/YEBBpr28+2VSGaGnZipczUnskk2vXpjD5TFZIFcT7dcGVauq9d73
	HwOorV7v/k0QIQR9Bgh+T/OJ39j/Ut9zxu0hLtnFvAXOQU7j1HKW6SA41AWvTwyk/6ZJ0hPJAmQ
	LLpPh7JVulWnKHlU2ScQ4JDrGwY2nKcLiTGfBUrkURUh6MRPA7jOkZTDa1iTgNVt6Az/uaobM7+
	E03dOuovjHK6GJrsUWLJG5GZnz50ZtSt4BfuKV88w8Wr2fgdoEYhrUxUNWb2vrh/aS2G9fUX5ic
	dTb7MMDQNArYCfX4tPyE3UJ/gp+umtr99ufi+A7TygDfZtdlKd1tHYBVSqho7rVSxYOM1SLr+xW
	U6ai5Gk5qN4ZX8
X-Received: by 2002:ac8:7d83:0:b0:4b7:ad88:45f9 with SMTP id d75a77b69052e-4eddbc94278mr65929391cf.7.1763006550419;
        Wed, 12 Nov 2025 20:02:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCK74efI64XGELNruqg0Zx61FzCrWVUqnFTqsoVUSyfP4S1zawIWKlMONFdDbuIMNbZEMTSg==
X-Received: by 2002:ac8:7d83:0:b0:4b7:ad88:45f9 with SMTP id d75a77b69052e-4eddbc94278mr65929051cf.7.1763006549900;
        Wed, 12 Nov 2025 20:02:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803acabbsm135266e87.1.2025.11.12.20.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 20:02:29 -0800 (PST)
Date: Thu, 13 Nov 2025 06:02:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB headset
 and Type-C altmode
Message-ID: <3a3kmtjsj3utq3atkjtyjvokircys2qc2dthsc7ip6pb5zpl7o@eo4wfpbldkpp>
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
 <20251112-sm8750-display-dts-v2-3-d1567c583821@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-sm8750-display-dts-v2-3-d1567c583821@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyNCBTYWx0ZWRfXyeOgoICpfyuo
 epalNcgwhkprLK4SUAikBHrpPXv6GUo6M6niySrEsigTOY3TrGlY9sGAM7b6sKS7/5IKLrmpxej
 k5pg6GIO65ptJ9RhdssvJcBbH/i2lVShztsG3ma5USWayqlJJz/vV+WIjJwQ4G6ByRGgmIOwxj2
 x6CrhhAWrY7sbW5NPW2+UG6odepE9sajusp6kOj07nlSXb/Jm4nFF5T+a+y0o4v1mKUVLFQwiAj
 /aMQkDzXbSL8C8XvCP2zk2ZjC3bspgI/HdORESWWr1zQQhjEyDgxWhg9wGfjI/Zd8A8/pAd5whu
 ly4TCfKohGSM/iigv1zJBh/Co3ubAKTYuJHarooJOGtkzX5atIBVORtw6pNMiruwG0SygvnrohM
 w481Wu1GsuK5USUC8WTRjZ6qL1bjIw==
X-Proofpoint-GUID: Cc96GxAXC49qYs67KmB4Cw8PbBJPKWfW
X-Authority-Analysis: v=2.4 cv=bbBmkePB c=1 sm=1 tr=0 ts=69155857 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Rm511Lm4PB0MII4DX8MA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Cc96GxAXC49qYs67KmB4Cw8PbBJPKWfW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130024

On Wed, Nov 12, 2025 at 04:02:40PM +0100, Krzysztof Kozlowski wrote:
> MTP8750 does not have audio jack connected and relies on USB mux
> (WCD9395).  Add necessary nodes for proper audio headset support along
> with USB Type-C altmode and orientation.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 51 +++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

