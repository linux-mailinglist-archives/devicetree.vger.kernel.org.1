Return-Path: <devicetree+bounces-177441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B35AB77D5
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFCD31B66D63
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632BF296719;
	Wed, 14 May 2025 21:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lLAB6yeN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD63229616D
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257804; cv=none; b=WNW94UsTMVvRiDTABKKIBLQhsfQfOBTHoEUBaRCmVCDmq+OqK4xTWSyKmX9NimXnizb5DrTRnYsDcowe+Pi+X4VrZW6nUtEcm+do7KJ0Jhs3aD6xPaScm/HNWs5iK0yDpDXzxUbo/h2KMbiLcFRU6gvsrj6Lqth8ccDOF996iwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257804; c=relaxed/simple;
	bh=EyFHYmawDsHmKWz0s03ImTnfgsZtZdH/tEJm1DPqlrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OYbe2nUOOf52fDvn4hhUU5/Tgm9ylnr/ZXjVvPxUQinoNw+u0qMn5eEFAXtk4Y8cxQ9czAhq52erDIPFDOHLDfyoWHao7VDVTVLs0TZY7ficwbpYRMoYutw01nXjG4rDI+i2Q5mH80wHWiXWijSnnKSJ3cvqzVDZsIyblr0dmjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lLAB6yeN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EJbMJi004703
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mj/Qz1xUZrhHvcNTBOii7qww
	2wIfBNbFUlMQ73vGEn0=; b=lLAB6yeN31GjnivygSuhKjuA7cozJw2fT8ch/M5j
	KprWIGx+InHADt0gskFhP4MKJp6xhi36Dv+6SSquYpnZTVcAIrVbOtRXtdkLLike
	0GvC+KG7OsVNEhJkbownjuuKjUQ5QBjdLpHghcCjEimZDnDUFnPQnN0FHIXhm4sv
	etfIkUB9eYQwo1vwWflE5t0B4Gl9X5C9wD0yAa3h3+gLXVQLWFJPThrQJEaRo/ls
	QQX5+iCqbcdHi8ao1xVulzAfWqTYpd/KyaZLPdKV2wb8HFnvdfRKaoqMz2WNQvQH
	UzsWGK5q0wXcFNh6bbV5T6+SbaEw3aTOcvooVQTSRLmo+Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcnv4gp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e28d0cc0so37781385a.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:23:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257801; x=1747862601;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mj/Qz1xUZrhHvcNTBOii7qww2wIfBNbFUlMQ73vGEn0=;
        b=G4SWPAcE18TmX8p3x/GdRGVFtx+kQJrLcOc1f5PK8R/rp7h79d19kVlVZBDYsT8B8Y
         TRW9CQYhOkJITbdiv0UNwvm6Hw6aiCaCkBiP6ZZGPf0v2zvf76GhzPKcPX0YA/b7g0+p
         C4PW6WtoSWVCafGMXNAO+Q0iTDFnC6+XyhU0L8Fbsnl+qOKc4NZgFwM79A35PoPBJq2s
         O8YXIlvrX+GUnOJAAEr5KZgAe8Qn9N5kBUG0UF3souj581fvfIiMR5bvKI0vVozBaWrm
         nEMFGJuZBHbHFeKjdWBQdir8Uq+EZUH3DC/4wHPd0iVK68hcef8y+foW++6F+Vc22m9G
         v+2g==
X-Forwarded-Encrypted: i=1; AJvYcCWPAj+Q9hfwk68PgtBteIv6jUnvcRYH8AwEMNSl5zyhhuvPGxI/Aqjt1I9+daxGLPBMgp5UaIYncIG7@vger.kernel.org
X-Gm-Message-State: AOJu0YxplWarxecnzhM7Z67X4BY2vYeuuxr+TN8CIQxmhzTSVmodKSJ3
	0OUPED0t3elkBx3nAqB7XTr+xFPeOAO0xzEbt+6v8Mc+Wf8ZYAf81y2cjkTuDTk8eXhJkYnsEba
	cLE2KmcCsHuJaU9bxGF8YVrlSJ+/wCe3It2HNwzlbKr+3wNKcxDBT66BVRyZh
X-Gm-Gg: ASbGncuobO2jme6E/hRiz3k5eZKX9UVx8vSN2w7ronk9D9qcJmpB4TwY2OTFVR3qCgV
	/l6JcaDOHsiit0P8SVzgbv2D4A27R0NMYwNVUJhLJiecZfjBxJLHeZMUyIunz1Hv94F62IJMUrE
	GIGJl006sk8CR9boczz86cKP+GRL2xCeI6abRN4tDgl2D4FacfiXxcrNN2BkfCX4snGApeuxNRZ
	aonCduIwdg9j8fQaUunxgQRXwJjOBdxYjo4Ti7yf913+E5KTInarVGYEekz8edZd/oKZa6SgBL5
	QS+5/tzyjes+r3f3ktJb8SWMCUyGl3feu9Zw1KD+Vyf+SKqnAKchj5jVikjz+n2HonizadiD16E
	=
X-Received: by 2002:a05:620a:1a0a:b0:7c5:aec7:7ecc with SMTP id af79cd13be357-7cd287e10ccmr787436685a.13.1747257800851;
        Wed, 14 May 2025 14:23:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmG7Ith2nDW7+gN5BCXeJ40qkWZAYm0kLVgIJGyOikn/H+ldKhixf9JhMX4xvT40wy57vdvg==
X-Received: by 2002:a05:620a:1a0a:b0:7c5:aec7:7ecc with SMTP id af79cd13be357-7cd287e10ccmr787433785a.13.1747257800520;
        Wed, 14 May 2025 14:23:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550d8aa7039sm314977e87.43.2025.05.14.14.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:23:19 -0700 (PDT)
Date: Thu, 15 May 2025 00:23:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 16/18] arm64: dts: qcom: sm8450: Additionally manage
 MXC power domain in camcc
Message-ID: <5zbpbn3f5snf5dbsbp3vfbahnjtreoqdalg2n6ddqxfocnjtpw@6khojzihn2mn>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-16-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-16-571c63297d01@quicinc.com>
X-Proofpoint-GUID: QP2j9KJ-Y6otwEQ39ARH4aAiPvAe9vTF
X-Proofpoint-ORIG-GUID: QP2j9KJ-Y6otwEQ39ARH4aAiPvAe9vTF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5OCBTYWx0ZWRfX3awGSSqoWF/J
 lfwCJwziCf9AwSlO9SuxpFEgnQdvOlaYBWm3afjN8TJaYjV/voQfs1MHXdkbwLINB9k3ynPQL7o
 bh6vHpjFt58D+UsSv845OJbRWSbv6i/cbuiFZepJoI3b6sl5UXgXnZZfHLP9tsTkohHl+k/USEZ
 qW24yjDqpL7KxR8BBZ4vNhJQvV9xK4IWYFsLU+TPBAtPihmPiS8P1a+hyISqYol1tSIDt1zBH7k
 NQ9m7XmoHm/AH23+OQiCDglhbQZ8QA7/YEvpS20fKQOP5ApwFsvegqKH1OvCtbo9dY4/Dxk69FB
 3e1AzseRTetNev5ybq+ccV1IK8JP4lbnpLXgSH5+/63DwTNqUo7STZl598Zm0WolId1k7geFSyD
 vvTjARWIZo38GZm7YEXoLhe5SanJTk77UF3z6bFUu+KJin/Oj2EYQR5tC9Ah9cwbSfXpcZ/E
X-Authority-Analysis: v=2.4 cv=Gp9C+l1C c=1 sm=1 tr=0 ts=682509c9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=9_CkSsT5FSWxdIVEpLUA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 mlxlogscore=597 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140198

On Thu, May 15, 2025 at 12:39:01AM +0530, Jagadeesh Kona wrote:
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8450 platform. Hence add MXC power domain to
> camcc node on SM8450.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

