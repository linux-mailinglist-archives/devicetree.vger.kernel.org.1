Return-Path: <devicetree+bounces-180076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BEFAC28D6
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:36:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B8514E86DF
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:36:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E3492989BC;
	Fri, 23 May 2025 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a1D0XGP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19061298271
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021697; cv=none; b=rTCAWOkhtSHMmswrTV08G7ItpBxPWXnMrAiPhi75ULpGAHKjwEZxiqikJGXWIdN0Ngj56lfe8uO3lVDL3eHX+iGns/pmz1EwPIkmaNN3s/BFWPIvMJH3Y+bxCnBiaA08Ea6F4LKcaaYfEEawp0F+cBaplk5oiMrLoF9YTA689tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021697; c=relaxed/simple;
	bh=0xH4DNFV3bBm5zPzPQGKn1kNIjsAFK+D2Oa6FLC58X8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HOcroduSQS+3/enosNK1tfAkmXLwhGT+eU8kcrYUJ2lhP/dy3KwHCRgxV0useqpNNU3qi3nPB0C34Fq114vZkhnoWIqCF/kstOlrMlak08JQoY8JYMO/RAoKejwGkry8jknm5lfWBLvSGZpbpKzbxXc4ZzZfs56NDs57PK9bHR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a1D0XGP2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NBM3kt006792
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hpIQ2HIQmyKL9n0F1Us1KUdU
	nZl8RYntEsnVzXSr5aA=; b=a1D0XGP2KaesVBdU0VRMJ144x4SebuozMtfThx1p
	yrjweHxaMbZBkE1dqTXhokX4SdTX3z6pv6CXu8j/QdG8MsOuZpTh008cE9CHd8vV
	c5HHao2GOiqQg+pfiETGdQAKLOlqqGREb9Sc9xXp776F+wcqrSCA1t8aWT1N+8mz
	NpWnJjbf/4sbShnbJ1n7Qn9HUxswLqAk54CJfR7Kb/V9pK499XQ0jYvDn9F6FOGp
	LvP5g9AtWhHPjxxaKJxq6IXH9hK54sl2xdCJptUg4l10MGHDxpGQIh5B3TIyzcn6
	gPDBBjj1AUwikSpmUzmGFoiznUMucVhSc+Qv7tqDFTkU0A==
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf0twqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:55 +0000 (GMT)
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3db86cfe6d2so1908475ab.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:34:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021694; x=1748626494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpIQ2HIQmyKL9n0F1Us1KUdUnZl8RYntEsnVzXSr5aA=;
        b=sQ+qA0gHRtg+9+ixoO4ELIFg3sATm9I9U/cXsShNEfJL2jkmqDRqSt05COZiHiKAD7
         rOlhirKX75ejsWAsC4H5vv+rErgQnYuABe34CtPz2x+XRWmH/rmUao/UjQTuaWvxaOvw
         5QMFlmtxQjXmuXWJUxTOmqNO4pmnDNC0tD4PaUOCiAulCOZy0jqn/ajV/VwrZTE5cL2h
         WL8loVXUxdCK6Kno4UD8nQDFgXSUVt+PwOs10Max5kCYMD9QI/TgJoBUpY7/nhQqdkXs
         uR15UzvoTpUsw69aMdTI25w/6FneRcMh6cy8D0qLEZ8kgeum9XBH+WFxArdq/dbNKXKU
         SUhA==
X-Forwarded-Encrypted: i=1; AJvYcCWHz5lvdMAv0z9qcHQhnNioROctBsLfdl/TIx3lCnfcJ/oZmezJIxPGIXOPG9q4JsvdVadV2AuBSO6a@vger.kernel.org
X-Gm-Message-State: AOJu0YzxyXik7MZBHb+qKF+p4JyOXAjTUeVndfInhV5t574QQu+GrE1a
	Jz9dmqwgZ93MXwr9R6flYp74YiyKznvK3ZzW6IniFx5+IOxhj7STxLObj/+FOoJlCOVEJZnuoRe
	qcgZAxslyenlfsF6+r65Or+9Fu/9k03qV3qcUCtkjeHaFYarolYaB6zIwycLugtVMsImBva/nzL
	A=
X-Gm-Gg: ASbGnctt8wpoTyFFXWCCt/MKuDAJhmO3bo5m2maEg/AwxxPJJDdTzrdQhzEWfOz1P/U
	Dit5r8JAyMFIe4akHDUF6/k0db942zhY39u2a77YQvaetXe5TyXjvomuRuNru/2br2qx2X+o/GP
	CtmcXytrFBgnfJGat02gJa5zWmet4ZW2QspqpusCHzDztZAarrEf5T53LMJo204gawdwTS1ZtcS
	OIX/p8jcC1LP4AkL/9supCc+S2a5eCvsRIeSgajPT/aJDCQf6ZYqW4g7Pzim+PuEfLPS6gnHDvA
	jAw3Hy6U45N0uUnio4DKc6on6CD7Lczww9W+AcmaB1om2BvEZdA0pAzd+MnNfd6Viri7KMkQ3e4
	=
X-Received: by 2002:a05:6602:2d96:b0:864:a3d0:ddef with SMTP id ca18e2360f4ac-86cbb7e4951mr34776539f.6.1748021683337;
        Fri, 23 May 2025 10:34:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4mcSOTkbzzIaBttkmtFCaM96ugRwGpROWNL8PQZqldtcayekhbIB384QPkjqkoTId6vfA0A==
X-Received: by 2002:a05:6214:c6f:b0:6e8:f940:50af with SMTP id 6a1803df08f44-6fa9d2aea07mr4095916d6.44.1748021672378;
        Fri, 23 May 2025 10:34:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3280fe585cdsm35586281fa.71.2025.05.23.10.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:34:30 -0700 (PDT)
Date: Fri, 23 May 2025 20:34:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 07/10] arm64: dts: qcom: sm6350: Explicitly describe the
 IPA IMEM slice
Message-ID: <v43htdhyjujepa7xfyavyeuo22snagy62ujr6cjvqeqsfnedfw@6lyo6osjphem>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-7-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-7-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-GUID: -aeDPehxly6gb8lTlm5zwbauTUbyPUiJ
X-Authority-Analysis: v=2.4 cv=J/Sq7BnS c=1 sm=1 tr=0 ts=6830b1bf cx=c_pps
 a=i7ujPs/ZFudY1OxzqguLDw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=-1wTwS_U_3AHh5BLjrkA:9 a=CjuIK1q_8ugA:10
 a=Ti5FldxQo0BAkOmdeC3H:22
X-Proofpoint-ORIG-GUID: -aeDPehxly6gb8lTlm5zwbauTUbyPUiJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfXxC/zeeaLLfmd
 a/Z2LTr66hrzSoX/hNS4RXZIt4SAA69Ef/47vl1FUeyS/tAyyi3qOsEl2sLvGn54heL5PG2yphC
 wDynZP+lLCFpg1jztwermtH6lUHbna/UxJPiuFYM1jYBVGNoJU9EHHHKOPCOVx/2B3Eit1LibDD
 XLD+eoLDqmtiosUoVuPxqcYE048PAjXwdhRJCF+iVPCyHY+BpxgpTQ1xyz/yLBU5YZqyC1eOs/w
 LtlLBT/D5GrifBPU7x3/E66h9N8SuHcLsjVh1i07+44+OebpLsw7XNjsBm8hj7sMO6ZjirDAxmW
 KNMYhh4UIeS6FVd2l7z+K3AUSAr7mR6Dz/tYuXgx1/EesDjdkhneqlWjR+XUXQ4BTCMF7Qibv72
 2k9RepOyKunpF6AETTBbf/PYUcy1tqRzVfjE65eEhu3KnWHCVOiW7rKFzUER35rXddvEINKY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 mlxlogscore=680 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:22AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

