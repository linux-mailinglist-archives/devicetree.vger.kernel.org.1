Return-Path: <devicetree+bounces-199984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 015CDB13059
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FA3F1752D2
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:19:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806AE21B1BC;
	Sun, 27 Jul 2025 16:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IDf2+nCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A22EEC3
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633171; cv=none; b=MMPjAj9i1i0ij1EajiEn8hs33KWC4GUhSXSQZtsBoYDY0ZZamKN1r2EJWZUs55jWI1mUQ3kqAeD7JpD3tukZP8YAhIq7SnNRA9UL6fDBJxK1vEI4dugM8912X/phGX9B/QdIVfLkBOvSOzNVEXl6NPOIWOTIKCmIA2KLptoWqBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633171; c=relaxed/simple;
	bh=zk0/momZBJ22XiQ3Zdbe51H83JVBUxT1l++e5D0cni4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M/4iKflFh0+5ADh+vwZxK46/3uw133pNIUHACWJZvWjELcNb8h48fwnTXEpDdFqZPKoEb1ns3j04/q0CJKslShr0UbU346lm6Krg2eG+anfEYLeVH313MIaPYsKFa3DiTEIbf8NRnVlmdftSC7biLkq0o5MLxb/zSE6AjBL2toE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IDf2+nCl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RG013G007354
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:19:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xog9pMwnTfyyxDALiAzNjbCD
	9BofGhoxhGYWP0UmMU8=; b=IDf2+nCl7wRx54VmXRaUeNB9EC2WlJjSQrpf1jZJ
	vQvLRYJfrlwn1T/+I4BCQukjzL7+C/aQFQOSnL8ATryk9cj23SqtNQGYWs6rVjre
	vyl8ady4KuFv9cU2kw5eyFz0yknPYABPiQrF6HChvTbYQW6itf9xJvVoOP00v3FE
	iAY1KgzlzLqEuPbrJppMdAj2ZOfDjsLUEzJXzqHMiREG8LG6tvic5+N4vBP9GZMw
	I4B/IYsUiF2mo/znvqjv3/7nBqjclX00Ekqk0sJ3aUyNQz4Vext546iJKKzl63DC
	aqLrCvIS3JEUMhS0OpIxE38J8F7OWEieRDPYVzlapROg1Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484nyttf7k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:19:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7073d7fbfe6so13099456d6.3
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753633168; x=1754237968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xog9pMwnTfyyxDALiAzNjbCD9BofGhoxhGYWP0UmMU8=;
        b=TPtGI00MQC1LgBJ8fLo7VSaoe8Y0E0McGkj91Dhatb9UQjChwb2LkvTPKE+4SxqBd4
         pbOTCt54MjJKyrH3YNciNTklLZH/IjWmUQB8vhE2DrFnR+ndV3nqzvvkR3d3sPY1uw49
         lknmr+baeXqRx1xhwMOhZCVBNupCMmN7fLBDftkWhXB18PVnJ9SVFihsrZZvgnuGt67H
         MBolkM+SkHtrgSQI61ofq5XVm5w3hmX9+m241jJEuZytYuyhWZRL2h+0LRpb399DSQVR
         Se8dqMYp2Hcjf8Mkn9XMViSOFm/mhuLsadeWl5jqUozWVnecfbA3HgTl7OeSJ8JcUmjH
         zRXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXga3eKpb67sVoUA4wfarQqrgoTQ9Xz17MMkshBwmRUQX6wiv/3DCo0+H4OaGjd4QDdDiLcsY3METaV@vger.kernel.org
X-Gm-Message-State: AOJu0YwT9MP6uCRgJqN8H5kNLrHTdx+J4/P4yLUrXkfvSpZx1thxYcv4
	BlgW8Qx2T27xH4I+yqMsoJ60WIehPeUY1Sw3OYc004R5Rm1fRNTSsM0U75Q09DpyAfck7cGY/Zi
	/0x9HdojqMZ01M/ddYxmpw8F43sJYr9WqGQEJZFL0VgX8aZiIJPbFDxB0RCYK4tTD
X-Gm-Gg: ASbGnct9MOE2isbXPalG8vXucAZl80UjPBgJ352Kqm15/jZmUOVK80WQOS6NEyVF9Ev
	TctCxHpi7HzuiTNlQKiW1T+5Mwh4D64UThEJ7tBDIewpeib2SjSjrHO8MS31ZmD7fceQ5lcB421
	Wkec/UOofXmCybad3b5MeGM8IidSAfBj7hhIAIo5RuK4IbReB4V1UfpDx9BqjzOwW/OAu6ELPmy
	XsqUnf0Ego3PYFIOB35xT+cS4INHJTZWnfrcWJTuVT8psF6BzFZeLtBvxy3WReXyWQXD1Gqx5Pq
	F3G4fu2b4TrnP45fAlnebREJUvNxylmS6S2cKO6BA7l5EQ5rfL1Z5lsWrSmu3nnSGRapjXo0oko
	YWDTPzcA2ZuFJi7EcVqEV6LIX/fNsNCBGKl6SR4eAANEsiIGDReUO
X-Received: by 2002:a05:6214:240f:b0:707:92b:477b with SMTP id 6a1803df08f44-707205d64dfmr97744896d6.44.1753633168080;
        Sun, 27 Jul 2025 09:19:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2TnT3REp55fBcuDgbNxcPR6JFi4lJ3WbDg8RfzzK6v8g//TLZH0w+iEyl3THFdkppmKDF0Q==
X-Received: by 2002:a05:6214:240f:b0:707:92b:477b with SMTP id 6a1803df08f44-707205d64dfmr97744576d6.44.1753633167592;
        Sun, 27 Jul 2025 09:19:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f40a2f3esm9079341fa.34.2025.07.27.09.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:19:26 -0700 (PDT)
Date: Sun, 27 Jul 2025 19:19:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: qcs615-ride: Enable WiFi/BT
 nodes
Message-ID: <vgjnrsy2x7mkgfanmyhkfdq63n5kyyll7voa5ttfekn3wqokip@4kdsaa3hqfkx>
References: <20250727-615-v7-0-2adb6233bbb9@oss.qualcomm.com>
 <20250727-615-v7-2-2adb6233bbb9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250727-615-v7-2-2adb6233bbb9@oss.qualcomm.com>
X-Proofpoint-GUID: 832gErdZ90afeOjU2JKb3Bx-d8K4Zkic
X-Proofpoint-ORIG-GUID: 832gErdZ90afeOjU2JKb3Bx-d8K4Zkic
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NCBTYWx0ZWRfXxVC6V4aVOUzk
 xdkwOaHy2oWdmmU5kHJZL9lny517Ko1fBGHdt0O0+2YAH4GAS7jkCiKl7hI+PbdtNmThwk1MiPh
 zMJwkdjcNsGxdondJKaXMeBIkz4HKtxSjwI3YwTwLb0KIsJe5yvGQPyFvQGYlDT9fsvElneszlZ
 MK4mJzHhsVr0fILAEPLjQPNWCgXIjZPmnEjnpjQIdyEviNcM52bfgbytciviG+/pmEOpXAO4CUt
 0HZmaZiz6qC/W3xS/iKtd/lhjwstLmW2T3OcgqCbMle93ISh0kz5uQScaJK1EnckItTr/52tyLx
 n2Is1sJPf6woJISwy0JsaIv9XIOXJK/XbH0ObZ7/LhdxN1yn1Vns/mKDHXzNlpgfFeknTQy91j4
 xGt7Q28zUKWlK0vCm8uJJ653B0DFVBYUZ1pqJMnh9D6b9TFYuHV5UEEFIcjO3ivKR3Oqu1IT
X-Authority-Analysis: v=2.4 cv=CLoqXQrD c=1 sm=1 tr=0 ts=68865191 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=lazYHay8Bcf_2JzIvrUA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 adultscore=0 suspectscore=0 mlxlogscore=629 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270144

On Sun, Jul 27, 2025 at 06:22:37PM +0800, Yu Zhang(Yuriy) wrote:
> Enable WiFi/BT on qcs615-ride by adding a node for the PMU module of the
> WCN6855 and assigning its LDO power outputs to the existing WiFi/BT
> module.
> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

