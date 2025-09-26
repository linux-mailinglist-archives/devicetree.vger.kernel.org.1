Return-Path: <devicetree+bounces-221911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FAEBA3FA1
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A63993A2CD4
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA522FD1C1;
	Fri, 26 Sep 2025 13:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hg2wO8C+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F6E2FCC19
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894793; cv=none; b=LAoUUda9gWWnlIplvj2Tcd1sWSpjqY8zbCIvZ489imjZysihQMpkyUAOpcN2fw8D32JoteN6WmIi1o9rt+sOk4b8qTdP3vpjPrPVGF889gTc9LdTd82n3YCNQik1Ja5ut3Bedfwrhi3Oq2QaT8XixJ3AYj+DaGRoEkd/UwEJWYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894793; c=relaxed/simple;
	bh=cyvgMnnP3LY2SVnviOoMKhwzZV0UGO0ZVHTIbpXE9RY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SlBaQQV4xGBbLavYlnIqm1LF9fjqc+9rJzdFqUV4qca/hntkhNq3yTMgZnJ7fzEBOSCSD8Q5jrFC+SJgX7/hs6h8XyMtGugHvGNGu7xUPNrxedEqnAlnd82GpQrd5/HIbgfTqk+iaEtgWgZsBOEsLldgfmf4cPcD84Qqg2+0FyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hg2wO8C+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vaQK030527
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Nj2RnivyVd0n/WCOVEL7yqPG
	a2Dwqhx2efpqU1IBZH0=; b=hg2wO8C+R0urRtBfZxtj2aG7BOq4ov0hngmLSsaO
	X5KuzdguO8iTvI1k6mXqGMiRPYJhwB94qyXgwQWNc541Kz9d66RpEXEz0bjCYVXT
	0GO4tHcML2p8xnAtjveHkOLeCRCbY/FFYtvoNPnggr3izeH0iDy8t2Iumh6RbF7Z
	f+jLphKHo8upBAAeyGYNhpDo565cesigtjO92ZjDLPYo6Ty0WTGD8Q+uePLX0jVh
	ZWCSJmRKCMrSHOMcC+cFW8ZleEqi7inzPWqClG4zSHQZmI0YUPF87j0ciz/qN+qH
	vyYAXw2tlmrzlvWE1AbAXFTf1CEqoRPvQRhuba1yuwBANw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u30vj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:53:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de4fb840abso10042901cf.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894790; x=1759499590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nj2RnivyVd0n/WCOVEL7yqPGa2Dwqhx2efpqU1IBZH0=;
        b=G2NU402vE5fmIVh673w6P+I2QaYziR0ggXitHadskV7zEwsQlgWOUu35/RGI8+vRVi
         crLisjyiq/n4CwVxbAOlOLBGbd/wibF83ukVu9zS9hW1s5xK77D+nlGZCYyzIb348qq/
         3dQ8s1de349iCFFIDuRlZujtAOcjCNme3NAaGDdXzZ867otnanNG2CptZ1i+Mgco1guh
         c2EpEFk4H6RfJJAYbrczJ36qP0oKS5VeR01kUDet+vmkwUMJ2tPuSDpTPxOnbJzO1f49
         ebXyO1A38h7mt9DrTj9OlHyegAmjR8C3th1aAn1E3z4X+K9nsarwB+03gX8ckkkukm0o
         xQ6g==
X-Forwarded-Encrypted: i=1; AJvYcCX7GBGruZmDCr6lAz5cGOCMTwLbOolzIwWfeaFzxefeb1avr0s9Kuzj7MS14jaucRCPMoDrPSvDm4qI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/afYQkGrN6BjenYV1fbGXRpjcuO/nrz3GanojPW4Kd+kZjTm+
	VZrrLu8C1ijOtB/R5vAXaI01U7GtgYm2al8YGcPAWFwUuiSDndlThI8HgGyMMUV97YdkYwoviVB
	ku7zo8eT03tNLNpB/lUaEV9rsPRlpFsiaehifL//Lb8OD80WhwyWkK+hCQjp3VWrI
X-Gm-Gg: ASbGnctUaZBILHr1iUHSxuvBwSxAaYSDyHbNTokLh3sRp+gYXXuSwwKpsgoo2viE0mx
	HAUOWtbw33nhYpiO+s2Bx/zFVV3qemsW+o3bIidGNjgX0C1fdodqHxrieajyPJSycYa98MIqzcg
	tHYujW+67QP4TDL6JBS/kpxFvoFRmRQMzJCqS3+j8l7d15SjSRiJZGoFM9u/9mMbiBlaCTTVISF
	rsV7S0RNZ76nyT94wMxvQbb0fr2IRcisofPqVyB+lrwPp21k7814EwkvoewGWyRuziqxJnmLL0k
	pCLg8NwT90pm7ZQBJHpKw0eQWA5GX9lS+zEOSG8BTTjEIX+eOSoJCYFykx9a+wA3iGy1UMvNUAX
	PS8eo5xFU3cNuELMCSTcZa/YM2JuA10UQh9VyDRds/555oAMY4+zn
X-Received: by 2002:a05:622a:1389:b0:4b7:a1b6:cf29 with SMTP id d75a77b69052e-4dace86b1e7mr81075771cf.41.1758894789465;
        Fri, 26 Sep 2025 06:53:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMoJDS8aWtbyVs7IfWYIbTpQ5DxMdjd7gKuy6V247TUGZ3bJClP3qwuMmbDr8kW0U3F2DuOg==
X-Received: by 2002:a05:622a:1389:b0:4b7:a1b6:cf29 with SMTP id d75a77b69052e-4dace86b1e7mr81075101cf.41.1758894788737;
        Fri, 26 Sep 2025 06:53:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff55acsm1846590e87.129.2025.09.26.06.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:53:07 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:53:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
Subject: Re: [PATCH 2/4] arm64: dts: qcom: lemans: add mdss1 displayPort
 device nodes
Message-ID: <kxy6p3fj656utoubj37ujzycmmszebmwb4c4u7zkb7t46ddwuk@xwg3xht5elj4>
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926085956.2346179-3-quic_mkuntuma@quicinc.com>
X-Proofpoint-ORIG-GUID: hxxATpBU-vrRjPs8cMo7D2JcKp4LhnTR
X-Proofpoint-GUID: hxxATpBU-vrRjPs8cMo7D2JcKp4LhnTR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXzAVwaoylVnwp
 u19PUmlbsLPgu6RmqDhMGHi+1QTdS2+Ft0jFi8cfhzl1F6vk6MwrXhJI3sGv4orcvLLjPdcheVY
 7e0fAjFxOlIO1/RGxFjU1oDTAYXAwgF0fcqJywQaSNyJM9uzr6V8LD4ZssdwHRDWCZWjkDbvkrV
 GUsdk7OQahoPgXpAKJpGqmuMEIR7BJ8611aYTHgALD7eYlg+Inxa4HmBxr9WFfboyJVCCyeYMch
 SLpnlopmI1+IE2sdzy7MmKNWPMZnI1nWJiUKMuqQxdUPJ1oURvgcew37veLFCapFWDui9kYqKRL
 JVsgE2YMSSi4gtsPa7Sp86xYJfiUva/qvH9uMzfNzSBNzXi0U868DxHxJq7eqNdaGNmTrDowjBt
 /RohfIdS09a4mknkkHQWpVr20LXXWA==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d69ac6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=jz6_z25kcqxLI5rURXQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Fri, Sep 26, 2025 at 02:29:54PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> Add device tree nodes for the mdss1 DPTX0 and DPTX1 controllers
> with their corresponding PHYs.
> 
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 245 +++++++++++++++++++++++++++
>  1 file changed, 245 insertions(+)
> 

Squash together with the series adding mdss1. There should be exactly
three patches: fix for DP, addition of mdss1 to the lemans.dtsi,
addition of mdss1 to lemans-ride.dtsi.

-- 
With best wishes
Dmitry

