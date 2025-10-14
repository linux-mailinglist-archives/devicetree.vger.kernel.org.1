Return-Path: <devicetree+bounces-226449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8955DBD8BCD
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BE7344F94B0
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779DF2F6164;
	Tue, 14 Oct 2025 10:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VRSU2J++"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DAD2E3B03
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760437388; cv=none; b=eIJCkwZpTgyfdgrlSlWYsBNmqprDLb4nyKan3iNgf2mEw7QSZHKxjyaAdcGB22qHcOF6Njt1TW+5+iUzxSv3vaNj7wEZE5XF+KORMP170JRGT9PAgdGynQc79eF6fYn3+b8fS6MXJgQN0mtUzF+QnS2SnoYCicDtjDAalnlEc24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760437388; c=relaxed/simple;
	bh=z2WdTcRaPaqI49kofZEevWYMKxOmtfhm/A5grF0PpaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKbf8xAgtnDvaHdl5kIzCBKvhVJNGcWbk2bAUeyk1LL4iea9MTHH+eP10HYfwqj2M6nfUdW6OsVZ6F78VwbUFk1VOtj68ASJjqKhqA1lIW6s++6c9BEu7Nq9nAx2TDA64FD350a/wTvJDEOye26mpFfbKAOupo1+ZAim8qar34s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VRSU2J++; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87I3u017785
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7Uj/7ATN4u+TUQSCAcK5UK3n
	NiApttHLG6ztUMcWXEg=; b=VRSU2J++mFCvHkkvlPobpzEbjhkwJV0p7WGrp0r+
	UjH3mQUV13vruv4FO2uxwDRPrADDOInLQv2JnjQyDNUP7Lkong/krzOmlPwmCOy8
	ZNqs2ZWM2LNxKkUhBExih9/bDjHRuQuw1WBHEImnX21c/MESQE0dg/5i4AgVnIf5
	KmS9K8ZjJtXkJq5b1oqVodMmXczMx0WlJOiAAMNrFJ/tk3QUSuQyT5w2kTXEAlCU
	PpKLs5Sj51AMed4iEmIkoLOCupi4gaG+ed0bm+O2hSpE20UFf/jFYLNIDYDUNtpP
	wPIU3PEQNjN3wbGf3fS0QUkKN8ekqfNAm4NgzSCMaF1N8A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1acdpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:23:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8544316ef6aso1020054085a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437383; x=1761042183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Uj/7ATN4u+TUQSCAcK5UK3nNiApttHLG6ztUMcWXEg=;
        b=DYroeJ4diLO8VMrcBBkQFe3uxi4v+r18IkLhfe6ssF5q/h818N6DuqXWsr8rePjcMt
         kvPppWhOLOjTx2irS4mvvMLJ5pjmwOK349VNYi0dU+N7cNvT64Igo09MqE8q9wFmzgBa
         3ZGTmtu+9LDxrVT4k2Wz7fS0bPt5LyhdlsSodT7/LwBpI5eAvn1UlnGPLZieY+lZov3+
         M3KIM4m2AhnufLh35gi5vYyE1SrJTUywGTg53AdFCj7aU+nJ7JgARb6L9g0DkdK4l+X7
         wbAb6yVmNZYhLrR7MAA02FE/IiVS1f0aUfWYEYhafh2NnLPcaZ6/082FcuNbwpunRjyi
         FCTg==
X-Forwarded-Encrypted: i=1; AJvYcCVF8F8iVvqERX8SCyifDOfY1+w64SSV+cl0atI2KMsa/OcVmnMLo0U+/5ZwIta6OsFyesiOTlNbT0bH@vger.kernel.org
X-Gm-Message-State: AOJu0YzCi7r7MFC35Rr7/EPWq0+FvvHgXbPTBs+RMLNyZ+r5TCGxPZ5l
	ethqJAPvI0cWxOpnUGJlalh+F35qz3XGFEQ7MWsG6u7IH69jYGb9WR4L7ZjtOSkmQz5UBO6xRbc
	s9yqN9SGWDUSfYSkAYosLs4e9I3sMC24q/sICpVxCBTZm2qZx13io0nrd2NRVQcBR
X-Gm-Gg: ASbGncuFNYDTFG4Wy37wxX1CcaJvjYzlxMtfUUFRMmcdY/nomZNcMHWksBoibZ58N06
	c1BkRWX0f3kfMbwqn4UJMPMcueOvm5oDRGgz4M3ngPUAkE4BphW49MMGOVtyH1B8s6n95VGVSL/
	SjMN/V65DPQ3jxFnefGWsUPzB10rCgNGGkxzsqm72Qnh63M2FhCtbUfTWJ9JjB3czPcseVMzNNv
	WN0yOGrmuiEv3S5n0cZfTdGVzQmDLGAtUnk16e88oiPagab8Vag5aSbphRoLxwl8tAYdzkKyIXS
	HG99rqCrJwhRyBM1Fr4Pm9V1yaUEb8ZdAHqWE3daMSPdMXyMH3iAsQS2jQOrbf1hIpw7AtUZQ3c
	V5s+dMVgpW0aZCDIzW3tTuw3F+fyot+/HN4In63wyHxZbv+Zdkv+h
X-Received: by 2002:a05:620a:440a:b0:82b:3775:666e with SMTP id af79cd13be357-88352ab09d7mr2876978985a.36.1760437383483;
        Tue, 14 Oct 2025 03:23:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpI9b1UGkdarxfxY2my6QGIRQFNyBFabsw/h2nYcLI4je0hd8JsX+xtryHXf3lrxskF2pXZQ==
X-Received: by 2002:a05:620a:440a:b0:82b:3775:666e with SMTP id af79cd13be357-88352ab09d7mr2876976985a.36.1760437383043;
        Tue, 14 Oct 2025 03:23:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088585765sm5122059e87.127.2025.10.14.03.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:23:02 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:23:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH RESEND v3 2/3] phy: qcom: edp: Make the number of clocks
 flexible
Message-ID: <cjwmyljscgxozzbfdprb43mryoaz66mbqd2ihqdz4fbzzusyon@e4h2qfaeqxux>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
 <20251014-phy-qcom-edp-add-missing-refclk-v3-2-078be041d06f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-2-078be041d06f@linaro.org>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ee2488 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=77Gn-jvO4NWksBu-1S8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QrPgoVSNbjYZxjIY120ekiguxoCfAADu
X-Proofpoint-ORIG-GUID: QrPgoVSNbjYZxjIY120ekiguxoCfAADu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXxlhQS7FZNHNZ
 8ERarEYLBOgnLulvxMm5/9ksaW6hZrjOGGZKHv5quBNKLRRkPWrRmZPS4QGvh7dlTmCAyqGMsRm
 gh+i2+pUS1x9Jb7dUp8OEZZWitFh9iKLCEXYRP0z9fMQGEisJe66CD0oNS4StzSn9LpuFBOOouc
 AyPWGI4vRQucdy1u64Ooaa3BNeokmpNmNVZhDtQ1h5WW6v7bOX+zgCWmq2okUZ5dnCctjt9Z+8H
 dQ1LLBo1eHD2mV+FhOgVFJvhGlD9ftEpcn2VXQhGCWOIfsYtxEGBNM9C1COwUlgN9YeuiyeZM2H
 Cu0w6tDBnr/wkrxTu+T4GuR3/nlpvjIqhCPf4fBAIk2z+zUIyvK/JsLvEagUpbkCHS6FaZSzUmi
 pWY4xNY+1XdaX+lVWKstR2PevmLdng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

On Tue, Oct 14, 2025 at 12:46:04PM +0300, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

