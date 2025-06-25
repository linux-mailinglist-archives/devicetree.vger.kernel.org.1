Return-Path: <devicetree+bounces-189522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ED9AE8185
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:39:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC6DD188D6CB
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C55925D8E0;
	Wed, 25 Jun 2025 11:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pglZHMNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B36825C83D
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750851421; cv=none; b=SL4B5i5nWSi5GXPfr3DfaZWLAlDbfcJngu6ttZoaY3vqS/whoIoax0t2M0gHNSZO8m+tYDpm2/pHwoSljPvqx7DtRBgf+lTHUoPu+XPG4pqZc821xVuCHpS2G1NNz1KHQNn3gwodc75gsyzJIYdoIRny6wICJ0NyJlD02jrA7AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750851421; c=relaxed/simple;
	bh=3G/GhvP9CCG6uuuKkuhD3JuQieFN6BszJVp1oTAvZLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MIcWd7JMxP6YJqQp9XsZ9SRQSvH7wAW19DAMu4lwPeCtd+9xqrvpSEi/kqjoQzWTtj2NWbH1/0Df8cGSp3Mrdhg6+r+j80hYpspJYCjCLXfzwSwGJw+pFGg/9NuvTcv//iIR1LidM8D3Pb56VDJ/IYuoyHjriSfEDO8H3XIUKXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pglZHMNI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P5Ntur032017
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:36:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z0ZqMF2d605Wbo0XGZMg22hb
	R4jx82qoLb+yqyotR18=; b=pglZHMNIrsejUr3Im4fsTAi4rkmddbRlSEXsk1Rp
	CrW7ME+ITJASBFJOZ9xnPicrFfTACBCspC8krJCXrYwaEewCEI1wQymsUHSOfTBb
	RNyNp5IepTPyP+8i2VRwHyR0rCxqIIbW7gi+d5WbKIf/629BnMhOyTZAjmwTUg0R
	gUYZlJZe2gMqBqdyImnlmocMWD091w7yp2aj+SJenDn4rMtTnOq5/kZWjgpTx3jg
	yCrQoufrnbhiok5ro4I4O31NrGe3NOdSI8i3+zHbenaQH9SwJ2Bdn6cc/jhjlbf9
	Ww8USOwP9DMS+8Ysri0uJQX6Ybl6NVNOu7FmeecU2hLULQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4rwx3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:36:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09ed509aaso224597385a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:36:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851417; x=1751456217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0ZqMF2d605Wbo0XGZMg22hbR4jx82qoLb+yqyotR18=;
        b=VImhbGDDQZwIpIzt4ecmsDmmMOilVGmi8WxjRjyfo/cRB5AbFtmYpOP8vyFV+sOFa9
         wYlHBfdNqmXC/QO6ay1WvoX1iX37eV66lJzJD5rZN2VJDLKOMtqEHxgbOGjCEX27apaX
         19pxQH+xwBzTaeVJIpbp2hRWoBeig9PvAP1ZA1cjU3CkLgcGyNblJdwnszhTuaLUcQ1c
         rldCtXnWkPc8Bhpp8A0sjce1iyQBjwinCVkIyJcW2WiOgMcKHTM+RUqR4gwTRbjiNQOX
         /AIdtVGBWfNBfZCsUEc6vCTBCkfVPhC6uxZm/K6q74q0emapqmzMJSgzcvn+0Bw9EXxM
         9dfA==
X-Forwarded-Encrypted: i=1; AJvYcCWq4sRXfdYPc5vLMplNN3Pva2Vo/BuFSwH/nAtZt6tANe2lu+T+6BE0zV8SqHB8Ke3DjiRGrNYXnefa@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3Hwf2zMyGiG98sR7FxvloRx4aoKrD5heMAEd8HGZlbrOSU+M1
	pGh2TZvBFCQmHy92E200uQR1cPalDGy4rHh77cGRz2RFonq4DIytjUgvDavmz7nMvr5QfMeHzJM
	aAaSnkqiu8lccMcFewxtVQuG8wJel1+EPNXGBj1ie/hU9IANhvJEMm1JoFISXlgl0
X-Gm-Gg: ASbGnctWCVamdjJCjUwZpGAy9McyWNCb2zfxDPi28gOhztUMRy75wjDmPTBQhe+wrQi
	3R021HiUrraBMX23tSoNz6m9dk0EBgDtbzncLpy2sNefOlfRSv/GEmP+y76PklePN99CztFVj/I
	Bu3J/S+FQ0JllciSjK7pHYuOx2/SoLWIMn9ghKh0vx4eaLOW5D8LMUKlQByzZRxkhZHqxpTLgHA
	6k1/pM2mKTYJMLbPE7SyZ8f93SRfy6I0EeNR03hxuxqvS1tCXt5lhTYWQGKU+JsL+KBXD7axsIt
	HiP0+yFcjVc68qp5AwkU9zr+sZXkjXnbcbgU6KVlxbqBirFPV8csFQqEevvdZvaOUiAkzdMtLXO
	g94fOrdeTGyx25naD5PVJsrO6tVFvO2Yel1Y=
X-Received: by 2002:a05:620a:45a2:b0:7d0:9782:9b05 with SMTP id af79cd13be357-7d4296d72bbmr363649085a.25.1750851417042;
        Wed, 25 Jun 2025 04:36:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOfZlbSBvtazR55cWZRcy1/iEICqUADtznvjbtKccudKrNWAEvLrQQjTBY9oFp1Z0U0SCKHA==
X-Received: by 2002:a05:620a:45a2:b0:7d0:9782:9b05 with SMTP id af79cd13be357-7d4296d72bbmr363644885a.25.1750851416606;
        Wed, 25 Jun 2025 04:36:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ca8f46153sm11902241fa.63.2025.06.25.04.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 04:36:55 -0700 (PDT)
Date: Wed, 25 Jun 2025 14:36:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
Message-ID: <xkvn3r7yphlccurdqzncz5qegs7xc254xc2ou2dzuilatk5f5j@eq5ynce4aepg>
References: <20250625-qcs615-mm-cpu-dt-v4-v4-0-9ca880c53560@quicinc.com>
 <20250625-qcs615-mm-cpu-dt-v4-v4-2-9ca880c53560@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-qcs615-mm-cpu-dt-v4-v4-2-9ca880c53560@quicinc.com>
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685bdf5a cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=A1pg4z-Cax2pQkPbWCoA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 5K51Ep_Izk8zubMqvomhuuJ8oP-Gci0M
X-Proofpoint-ORIG-GUID: 5K51Ep_Izk8zubMqvomhuuJ8oP-Gci0M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA4NyBTYWx0ZWRfX6v7QNAKW0v2e
 UDeCyEpAwuIEdyiDJ0YdnZ6OvjMedyDebWCwS0bGYNI9HfD8zNaXMiryLRehgj9h7QVasDGJbv0
 MsD6MYj3R3+Y1H243Wt+lu/+otmcEUHiF07gPPkiNu4Ejc4IiYHAXCjuHtlF3qp1Shh1p6pNoKf
 3BZk98NfaqHisL2IKV/6PObm+Ddb9+ScyH0WyNW3izVYALku1WtNKaSlyZsj6veSGFglw2lq4y/
 Hfr1DvKRNZuzQ246/K4BAiW1Vz9PUWdRjiNIDvoBI7YJ3vJhMqjnfCAxe53IwU37unBsGAq+YYY
 jqr1PkdRWzasrgRcBAw5uphV5pfGdT2ljvfRxeiv/t+Ea7xz59BAN5slzgaW7wSsQwyeY+qn0T7
 Ob++JVGM4dfwVXobJh83aUbq4HrKTFKZqhTpZ0a1opKRijk6cAibg6BZUQ0NQHs51LFy3Nrm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_03,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=826
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250087

On Wed, Jun 25, 2025 at 04:44:01PM +0530, Taniya Das wrote:
> Add cpufreq-hw node to support CPU frequency scaling.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> @@ -3891,6 +3907,19 @@ glink_edge: glink-edge {
>  				qcom,remote-pid = <2>;
>  			};
>  		};
> +
> +		cpufreq_hw: cpufreq@18323000 {
> +			compatible = "qcom,sc7180-cpufreq-hw", "qcom,cpufreq-hw";

Why? Other platforms use a true SoC as the first entry.

> +			reg = <0 0x18323000 0 0x1400>, <0 0x18325800 0 0x1400>;
> +			reg-names = "freq-domain0", "freq-domain1";
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
> +			clock-names = "xo", "alternate";
> +
> +			#freq-domain-cells = <1>;
> +			#clock-cells = <1>;
> +		};
> +
>  	};
>  
>  	arch_timer: timer {
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

