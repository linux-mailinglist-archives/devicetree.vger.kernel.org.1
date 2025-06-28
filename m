Return-Path: <devicetree+bounces-190627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72030AEC3F8
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 708EF1BC5551
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 01:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812501E520F;
	Sat, 28 Jun 2025 01:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a2HEW8b7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389231D63F0
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751075868; cv=none; b=LKi2EutdafdjysB4Zc8PH45Sr82R27h7kGYUOndVQftw2aYTiDeLnDSIP4Tu6M6ndshTF1PBMHQ+60oCIQ2vNVo38HZoj8gI566oHfnnw2sXtw4mqL3Bn4KxB+FOFAHEdXGXNsMoFMKW4uM9bg0rjwLvGuTLk8YhuFvzVkv2M84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751075868; c=relaxed/simple;
	bh=eB2h+WWGUWxTIdXYzQWwwYrg0DgFAVeaboMVJ48OFSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LCjz5Rdmr5z5yzWdTxqzMmtq40Y47S6f2jcGlr6gvAWgcDPGQcvFR4yew72jwK1Ff8YilxfdlE5Pgs9gDe6tuWc1mawEibiDdqdi9vBhDhmHKfAy/0dRrIfhKRklw/23iGOMk2zU71T7pwNe5Ne9+3QF8KIGeqPHjssCCO96u4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a2HEW8b7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S0DDcb012149
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C1cLAjsBclJ0QBWDw60ZW2kU
	AMy0clXSWHYg54xP/7I=; b=a2HEW8b7NwtvWqvduqwrtvZYP2KmDBQihQJw9qF+
	t6OrJ5fyQpJpC+49AyB0QMlth9sZoUNjNPz5hDM894auBz0LGAC91rYKbzOOUM3n
	+zeqEtjULScwi6lMxT4rHy6Y6qFuSfafVD+5j4gydEvOis/VRxO3nPqQ5ExEDsLT
	heF6ksAC/Iul0c8CjaH/XEI2hidAVHG03MTKIom7Gtc9aoaeYnQG0Z7ohTABPlmM
	U3OPmV0y5lP1lsfPV1Cukb94IX6NBlhnqKrldPf5aPCqnhxkDgSPiJpUdgFKpTD3
	nDYmnqjb7TokykvNX3obqz2wS5L9Hl52tlfBvrIWojgn9Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc61jr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:57:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7cf6c53390eso25013285a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 18:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751075864; x=1751680664;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1cLAjsBclJ0QBWDw60ZW2kUAMy0clXSWHYg54xP/7I=;
        b=A/XK8RyGxXacpjz/Fnky0C7H0a/F5sufYQnxA1BtDOaYveV7yyvYWZztHbBfQk51pV
         Svy8wVDac2lfcLqfnrvGWZjwwibm0n84eLtC3qI3pdBSiF18Dch60/DuBMX460C3B7w4
         JsSCTv5IrnR2MZZbtdh2lj+WRQl02I/sfK2HYlDWPob+36ajTff4FveduPu9tLZgeIUS
         Rc5XsZ2AsZtwtHWWaodX/1YBomBbhsWTxwPsDi0oHud6Px8E25yQv+mIqHg97g+kYiu0
         eXA2CEIbbljBCyItJAlqFhKi9MYHGie+7Nis3SvbLRaANgXIPkxx1O8/9rYL6QcWQil8
         dRHA==
X-Forwarded-Encrypted: i=1; AJvYcCWQ3awYNf7wpgTUrw4UytXYdvNhMRFdSMhWmE3za9OcRLpXX1Jnz68ySXhH/NtmM6ZS2A221FuuWGkb@vger.kernel.org
X-Gm-Message-State: AOJu0YzxNWitzABxuLDjcWy+2r6IzA1JbCUDhG+P3v2W2tiM86lb641k
	RRQexOrBfvoyKC5473k2Fsn+qKzUUSgyFG6OdF7QQ7JTHcazzE8/5GzqanHcpbgiDwSgAxTNDB+
	y0tiASLUoqgfIwYXDtyCkp3+ptItoCXUFQVRsjaOV2hMlwwj/x+8tJded30jWqXd9
X-Gm-Gg: ASbGncu6w9v+q8NAgcqeAwv99JmssSmpMOi504R1oiqedge1o+fMHMzTy/pEK1jfcau
	xqm7SX+PeDjqH2vGziHa7fS6Ph8hLrNWtXnFQiGc/Y4qLlSFfZ9z4NjM1SXW1bbOtoAyeYLc5K4
	rfq7rB1JQKNNZoJ9r1MQHBc03o0bhFCf1YfS4lnjPD/Uo1iFAm1Cg0btPFq+kv8C0t2+wELDkPq
	/EsIKPsxJGxUTr33c4hCDFXS/QeI5EilqFuUDMwnDrRPMW20Az+91rNqhw+IqezWm6cywLQsdq8
	To9vp1Bs5gwIjNBGz2NMsozavQZkMB3JVlPXCBr3lr9+zqu4YriVyhYen0RV681ZDo4FoGdXGYb
	vhrywxIu1Xa4UEiaRMurGtQ9TCxIXiNMS+XM=
X-Received: by 2002:a05:620a:aa19:b0:7d4:4b0e:eb1b with SMTP id af79cd13be357-7d44b0eec28mr241536985a.45.1751075863749;
        Fri, 27 Jun 2025 18:57:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4Hltdir3SyFuBpeLJoJ4afHk65Pi5pMb3NzWsxG3FHxbeZRywpOH7wvixrcleSdr649yHIQ==
X-Received: by 2002:a05:620a:aa19:b0:7d4:4b0e:eb1b with SMTP id af79cd13be357-7d44b0eec28mr241535185a.45.1751075863298;
        Fri, 27 Jun 2025 18:57:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2f01ac0sm6638601fa.101.2025.06.27.18.57.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 18:57:41 -0700 (PDT)
Date: Sat, 28 Jun 2025 04:57:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/4] interconnect: qcom: qcs615: Drop IP0 interconnects
Message-ID: <3edj53e2tlwqg265udg7gjk5lfmlwz6higfm6roq6z65qye3o3@wjbjsjq77wjh>
References: <20250627-topic-qcs615_icc_ipa-v1-0-dc47596cde69@oss.qualcomm.com>
 <20250627-topic-qcs615_icc_ipa-v1-2-dc47596cde69@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-topic-qcs615_icc_ipa-v1-2-dc47596cde69@oss.qualcomm.com>
X-Proofpoint-GUID: IKhL2jm-QnsdT-e9D9-OOUEW1mJSig2N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDAxMyBTYWx0ZWRfX0cAWkhxlvr27
 S1ao+5KMQG3dTsZMouAyGOYfC+gXvNnu/DPhAfRBgCSfexwOh4tWxCRnIchQwZzl/v2+zgqQcLb
 BKkbQBwhibd2qmSHey/1vn5VgbpdnA+H85kYsxa5VSxABUTBoQSf2nDzqKQpBGKdiHY6uh6zpTy
 EawyEV8pfSKdHt2eDq4f5lmq8h5ASlBgkRdNNndA2etRYWvv4nBtN/siYPKYIrIsSaxbz+ZKWTD
 uWj8VuxFrSAz0hYeZ6II0sDu3ZdhvjhxpUCRCqvcklFFFFMkavWPZfvKghP0VWsfonyA8HlpOa1
 5cwNoIIMBkK4ygZh9QhhyiCTUZ0VWPhvBG5AtOMJbXp5F58uXpghIyxfJBKXIea69JdBNq6wEKM
 NVwh8aCBQOfu6Zc6sgrXJrlZlZorEOvHtaWmmAnhX9+wxtfSWCFC4x2j42mXy46H+7ngbzhB
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685f4c19 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=wxkdqnHnqkY9PcZr0RYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: IKhL2jm-QnsdT-e9D9-OOUEW1mJSig2N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=772 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280013

On Fri, Jun 27, 2025 at 09:37:56PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> In the same spirit as e.g. Commit b136d257ee0b ("interconnect: qcom:
> sc8280xp: Drop IP0 interconnects"), drop the resources that should be
> taken care of through the clk-rpmh driver.
> 
> Fixes: 77d79677b04b ("interconnect: qcom: add QCS615 interconnect provider driver")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs615.c | 42 --------------------------------------
>  1 file changed, 42 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

