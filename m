Return-Path: <devicetree+bounces-175754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9E8AB1B44
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 19:06:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8D12A085CD
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A23E23958C;
	Fri,  9 May 2025 17:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fa8OpSNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFFA23536B
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746810357; cv=none; b=EfjKutxbeaoZ87omhMZ8PJ67zbiFzEGgMz1/sQKEgzjGYZulHHD8qwaZO6W6SEsnaonYWXVaPEqIXDWATnJuKfomki+MoBJui5+Sr0eTbAE08klisIxvvHIMX4pUpwtQXroLCCofIDofYOawU02nK/7efXnpxpMcyB06FW0c9Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746810357; c=relaxed/simple;
	bh=r0m0UW+PEU5BgL2NqVdok8cHtVoDL41wqAjRR1VyHgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QqS+1gGELJVaIhJ2J1S9mrCHYFUb66WrgP8AQdD0JdxC4JaBTq8lW6mA7qbdcYFQ7/Jaj8yxy9RdCQCHA8D1BRBAcMpKlLfFE8m+1DKL9Zw+jdwgo3a8WqMkj+VPVQJCJDwzJkLmhD3h2z1XZi4pQLdFgKY4WLKaBA+uedXrAfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fa8OpSNk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 549CVM6m009174
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 17:05:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bYZFtTpQ2K5+1pV5SB83yilhOw8IrH8U9j0WoHmd6qg=; b=fa8OpSNk2ZXlXsKe
	XASyk+9t77O0nPWWfpPX3oIH7QD4tWzx26SShdjm5jDHdirNDGKgzJqmfEr3Isiy
	Vo87v3AxkR2wmD1BbYTEuiktxnDvYUgWXgBRV1PwvKAQPyxHm4hypCLiVYqkHJb6
	fQnt/jEAwyp4+RFheRMt1ILP/TMGXv3MADpwe+pPYtmMpmBHc0pzNmu4S7FkZeiY
	vv971hbuON/33iCIixZ4nFFrfomtPm8nHtfYdP+hftVFWELlHR4d9H2knvSCF3zb
	akgC3CkRgqn49bAEh2RRmujymXT3k1iHaDrLR6eMyOCBxFCSxL1WaG9JFGMjrXP6
	fy61Mg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnpew7aw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 17:05:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5841ae28eso53914185a.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 10:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746810352; x=1747415152;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bYZFtTpQ2K5+1pV5SB83yilhOw8IrH8U9j0WoHmd6qg=;
        b=L6qA0aiy7dPcZQTn9OTKQV7LrxbXWvHG9aQSQkWg2+UW0XHK2oHLU6rgcmaCpboUEM
         qjy8m9IUimc7iaDayqhnDo+VGT0uB/wDeH5bnEEYSnWDYBYGd+6J5dHg5njSOGEVcZ0Y
         vc5vy9En3ghCU41A/jsWzdUqHe02zzTvEjvfjsaxLNRvkatDGn2FJcTJP3eyzXLjzXVr
         jqjweCcpxNtfh7XDk5l0DH9VQLEzV4wcu/GFLt11x00OSxCdACJSUUHQ0e5Io1zAdb9e
         S7fRlOBKjsv25+zkGlAuaElyIdQah5GG7EulVPoAaJSDv3tfDlkSnn0umgFSI/Urc41n
         ZkWA==
X-Forwarded-Encrypted: i=1; AJvYcCV1eszQOfnspDyHifQo4awTpjp1H2M/rg/2DYTYVQ8bqTvaEJVqePDrc+I+bs5B43y8OMrc07vdf0NO@vger.kernel.org
X-Gm-Message-State: AOJu0YzBXm1Rh25xX8UHQkRzNAzwxwQQvp3V4kJYtlz8+buaGa9gjzkk
	X/n7ZI0Ymq1G9LRCIl0hbsi53b/nSO4DKrz5t/8lnLoo0etZ36vgSqHGSA1Gkk65ha12WmLiltB
	Aiuf0B47TFHTjh4+JTvnXvapmG/PX/z29Rj3PiERMzkUQKRFdMUmp1UEqJK0H
X-Gm-Gg: ASbGncs0XC/q+BFMJsFAVmoW1EV6MaM2T512y3aeNKW6mA/8CDSA2Jy0J0vrNlfwwjA
	gPVEo2cgcfy9ptjIxOHafWjgW8pWp3ug1FIlm3p5HQCXah0U3Rt1ggzGJkORMB8ODV/VTIOLnSk
	j8S/5S2kBs/PZuxNAozbH89ze5AE+lnSciVx94wrP7nn1PlxYC0yzJYCj/bqzIF4vNLF9DY4FAG
	761JnRc3d2EVjqfgYgQC5aQsoO6vwlwZokLf2tPle9hK7Og5Qp7vMiuHxndC4pI0b49yDmUPa5E
	0iJVyd2j4wTtD2vjIoEVhWTMgdXoUZ0L8Sfo0+dIwJkWomUETA5GZwOF9P3DXzYEgBM=
X-Received: by 2002:a05:620a:318e:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7cd01138c43mr237840185a.0.1746810352553;
        Fri, 09 May 2025 10:05:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbRp4cqQeIx22c94yzN7HcBSLTFgM40PIl1UVIm+gxSUeSDFOZOAzyxFmgxbh2fxCrwm5SDQ==
X-Received: by 2002:a05:620a:318e:b0:7c0:9dc9:754b with SMTP id af79cd13be357-7cd01138c43mr237836785a.0.1746810351945;
        Fri, 09 May 2025 10:05:51 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2192c8ac2sm176736566b.27.2025.05.09.10.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 10:05:50 -0700 (PDT)
Message-ID: <249fa3ea-4b0d-475d-8851-5a31795f3b11@oss.qualcomm.com>
Date: Fri, 9 May 2025 19:05:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/7] drm/msm/a6xx: Increase HFI response timeout
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Anthony Ruhier <aruhier@mailbox.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250503-gpu-acd-v6-0-ab1b52866c64@quicinc.com>
 <20250503-gpu-acd-v6-2-ab1b52866c64@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250503-gpu-acd-v6-2-ab1b52866c64@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE2OSBTYWx0ZWRfX974FNeH83zYS
 hzRxS1R86KJhMKIJmSE4zH7th55Jqd1CUsyZe92TjZCCdRhdFPApfyt1uCTGm4Wk/xZGx2ypQLO
 V7HqWlApblVI0IJFDeVdd1zNitlziq7PvPJUiX95bGTZKfxpTbGUlpH4Kn2UFSTD0hxQqKowaGa
 yHvK2sWoadbIbrgoWA4PZbaHg1eaL3a3yLagc24wVavA8Sp6fQv9PtUeV4hA9xLhcgwLw5rl/7Q
 5bXBlf2bIFOEBjUfS6yq0oZ+lYMGdjRzVkfemXwD3ziRw9lQOXj10bv3L/gzBjy9HB+c+ZBBbF+
 U3YUAFzVNBmDFvxDnX/Mhn7pcOTODatPool6k7pxcfh/1EmdXVakhuluyg3wqjZm5qmEs6zFi4R
 U1ryB6jNf7pFQ3k+rJSIAKkkM3bLp0mwi2m5oMrRljTw4acP0buN7s6ejGoZBHB7/R3rjnAB
X-Proofpoint-ORIG-GUID: bbqJWQ6Wio7fjzEnFECYPfFQcew11jRo
X-Proofpoint-GUID: bbqJWQ6Wio7fjzEnFECYPfFQcew11jRo
X-Authority-Analysis: v=2.4 cv=Yt4PR5YX c=1 sm=1 tr=0 ts=681e35f1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=pGLkceISAAAA:8 a=b3CbU_ItAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=qaMJGrL2tkxVvb42h3kA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Rv2g8BkzVjQTVhhssdqe:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 adultscore=0 spamscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=950 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090169

On 5/3/25 9:03 AM, Akhil P Oommen wrote:
> When ACD feature is enabled, it triggers some internal calibrations
> which result in a pretty long delay during the first HFI perf vote.
> So, increase the HFI response timeout to match the downstream driver.
> 
> Tested-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

