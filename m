Return-Path: <devicetree+bounces-201788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9D0B1AD86
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 07:15:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 166F47A5560
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 05:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8235713EFE3;
	Tue,  5 Aug 2025 05:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="baA0J8r2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7B22904
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 05:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754370937; cv=none; b=HUfjuxNA7SJ1gJ1srNW57kXPGt0a2sc3EdGQw3WOD6/KugwdHG/8SrYxy8jfzY7PvGM6iGNeJWagjZDuuTPePkJ+Ilp4aHdrqpgKrN7exuNmKH45DVxPf6REA3oToPrtvPagrtRIDNV1QeDlBH1fkN9idhlKfEgQaYtigwtNxNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754370937; c=relaxed/simple;
	bh=wjWPVEQVFZH230PUynTxXakrHuUMMPWileMNY1rTqkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pyoHY8x80oVeGSoHACy3r1QFGRmQ7eeWOJknBve1/705gLNhuKqx+Q7dy/uROTWcE6ltWLGBdP/ZoHRnmlttRPODU8HdsHMVA/7Yuzl/ZZHNWM6DlzJXYrtkoJ8NuulNYdaHGTOYTXhxlSo7pGONrDPs0UzSQ1nD+m9Z8/X28OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=baA0J8r2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574KP9N4019987
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 05:15:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HP1R6UQtTJklflHIs9qA1dV+ZvZoti44o4EW9fLG/tI=; b=baA0J8r2LNsloklP
	PWLydaN/t/oaqUXWfP7Wu3Y5lrTdLLtBcW9pR42aX9bpvZ62uxHRrAw+EDEBtJrX
	DrkJx5wjNxn+dXBCdmoFq22hit0nGStTXmvAJltOpFW/uDJmeClv3xezvWyhVHM/
	nj9iD0mHorNgP3stprGK4dxJo2ZchEDR1UHyrK+X+oEq/E4H6dDOuh6YMbITLwk2
	8vXhN08cvgDrIkn/LUSplAZ4t36cqFB0j2hELjPFYfWYeKxsAZnVSKsy0duI/CZs
	oXsYiq9XL+18b9bOlHAmbS/8tQLCtXly7rZbuNdtl1fUWhSAfMuAMDgbMoWrRp4v
	vwua6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ak5a40pb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 05:15:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b06a73b580so21367501cf.1
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 22:15:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754370934; x=1754975734;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HP1R6UQtTJklflHIs9qA1dV+ZvZoti44o4EW9fLG/tI=;
        b=m4eYJUubyVmNAcudRCjhUX3fImDGX+ucsFmfanLfTv0TFIiLpfqeLESsmtx9uZYSu3
         8yAP+EUJT5Y7PEY4lf8zERM/1FrCX3rOJePxAV83hPYmDSukI2cgV5A9dAG2kNy1OL4v
         OEe9Yt/hjzrE6iXY2h4xympcHkQaB/SVRNqIxFLgW+TNQj+ryaQS93b962H0cETiccyy
         RpvKiV3iTO94858ObHbAEQlllmqEkAkCDuLaa7D/y1OMX9YA20S4bkkF/VpBJz4To51Q
         EDwPv0JZu7NIV+PLLA0LP7vNCnJEslrlbaJYgRbVxhukURZ4nsA1MAJcF6mvF40TpGaD
         GzLg==
X-Forwarded-Encrypted: i=1; AJvYcCUay9vtijRbdqvaJ+I2vrONLwGQTH2figvSmkCt3gJJCi06mGOj2MDWNHMZ2EW9Uc3bD6D0D+r0VMSs@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ6hu43k60nmN2vJtFRP7UNYb3JjKrCLZI//PrUmaeDvl1aPl8
	RiuvCDJhXv4Oa+aRm9JfNGNYqW76QYmBfWXfDAQSI9WmBD9ghYdQMuw9ZWB83uP4lvM48IyG4XT
	ERCT8LXK9TFjxQgYG0wV9EhJi9o6qH51mhdM0plAU1T4EdGupLkIJ2Lhsj59e1RNs
X-Gm-Gg: ASbGnctH/Kc8qvEnzb1m31hgrdpihxGLZR0rfY7FTW7yhcGJ3ZpAeKBOeMDf1Kg3bhT
	bWN5BTA4lo0puakk3kCh52+VB6umFJGx3q3KhZG5d3QF27A30tT/nMh89/6uuNPoC+8pafO1rby
	ypVNjy8tyW/Ka+9qoqb6nDiC0t3j0TbuOQUUa6QPcNLAjfgaEuyZ2s0TEPKGFrng6DjXvcnFSut
	6LkfpfQgGYB3nq0N1uJrGgPgtxBa04/3KJGCCWLZDzfaQLD0xlNNrr3F37oLeFl8Bx17CfUEPmb
	X/faXSnoxMoNKk8uU5HdCRfTOk3YpfCyIaekPkd46dlmAdlEpBrwNzVh5DDuI2LF8Qt/khzsPuE
	gOKEvd61kwB7QlkHVEMrOKaWP+PVEW9UAecoeTTetvG2VKhwRlK65
X-Received: by 2002:a05:622a:44c:b0:4ab:6101:51e2 with SMTP id d75a77b69052e-4b07f8549acmr34729861cf.9.1754370933840;
        Mon, 04 Aug 2025 22:15:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn8NqfyNZvDo9yJ0/LJzzcdRNxdw37tulPD039EauxUbhzyua3sD8DSiQHyDvNmhaamczAUw==
X-Received: by 2002:a05:622a:44c:b0:4ab:6101:51e2 with SMTP id d75a77b69052e-4b07f8549acmr34729691cf.9.1754370933459;
        Mon, 04 Aug 2025 22:15:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c98ba2sm1873842e87.105.2025.08.04.22.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 22:15:31 -0700 (PDT)
Date: Tue, 5 Aug 2025 08:15:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
Message-ID: <mj6hqitpp5nsmixo7udhbe7pbcr4qctbebhyvqtmamevq7zm5s@q7tpzaggabhn>
References: <20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com>
 <20250730-dts_qcs8300-v4-1-5e2dd12ddf6d@quicinc.com>
 <f3aeacf5-f178-4e61-b34a-60353f89daae@oss.qualcomm.com>
 <d6559256-81e7-475f-b91f-04ae237a92f1@quicinc.com>
 <a4b2a06c-31c5-427c-a618-1f1c3704781f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a4b2a06c-31c5-427c-a618-1f1c3704781f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDAzNCBTYWx0ZWRfXz9QB8g1XfyAy
 P00OrrEW+buHjnExW7AZgxoFVu9UYQPTVcjIcSqOVjg6HfvF9Q2ky3q9XtL00NuHEaTWhGhGeBN
 I4Q7EtrVMMiHdiZGc06yXdOIwKqsKtjSnslvbr89SZzP3peAgsRmnuPLduxzEAqRvYNtcWG/i9l
 ZfFkGnUn/Bk2jtsc9PQ1u5/dpTzXkcP4QB2ZUAVfm9MYB4oqWsSWUtXd5FhYdQa1k7EbzpODgZC
 xlaucq+3ghxWKcKkmI6YIHiauARPFsrBDe1xGJavm8VZay9OataBuwZZty00GtH1s1+db8dlshi
 DwOekkdW00/LsKeRSq/l1GigwLtzWrw4oWTHJWB9bGVK5+zL58HAC856JzQ4bIfYBf+tBH/7Mjd
 TIT61lm3+R1vAJ+vYpxEsS6ElJBTvozC+RkBZpHAimjNptoAy+w9R18ZYqmGya8urMhT4Dgk
X-Proofpoint-GUID: qosl51u9zSiLuQVfzi32hPbj7qH0-GRD
X-Authority-Analysis: v=2.4 cv=LP1mQIW9 c=1 sm=1 tr=0 ts=68919376 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=Mko9LIN2Xu0qCnxzmLgA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: qosl51u9zSiLuQVfzi32hPbj7qH0-GRD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_01,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=744 suspectscore=0 spamscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050034

On Mon, Aug 04, 2025 at 02:34:56PM +0200, Konrad Dybcio wrote:
> On 8/4/25 6:39 AM, Yongxing Mou wrote:
> > 
> > 
> > On 2025/7/30 18:25, Konrad Dybcio wrote:
> >> On 7/30/25 11:49 AM, Yongxing Mou wrote:
> >>> Add devicetree changes to enable MDSS display-subsystem,
> >>> display-controller(DPU), DisplayPort controller and eDP PHY for
> >>> Qualcomm QCS8300 platform.
> >>>
> >>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> +
> >>> +                assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> >>> +                assigned-clock-rates = <19200000>;
> >>
> >> is this necessary?
> >>
> > Emm, i try to remove assigned-clocks and assigned-clock-rates here, device can still work.. here we just want to keep consistent with sa8775p.
> 
> Dmitry, do you remember whether this is some relic of the past that
> was required at one point?

I think it was necessary for old platforms (MSM8916, MSM8939, MSM8953,
APQ8084, MSM8974, MSM8992/94, MSM8996, MSM8998, SDM630/660), which can
source vsync_clk_src either from the XO or from the GPLL / MMPLL.

> 
> The driver lists 19.2 as the only possible frequency for the source
> of this branch

-- 
With best wishes
Dmitry

