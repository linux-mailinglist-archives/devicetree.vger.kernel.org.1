Return-Path: <devicetree+bounces-212259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9D7B422DD
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 562BE1A85520
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D64D93126A7;
	Wed,  3 Sep 2025 14:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CFVGfxqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344CD3112D2
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 14:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756908050; cv=none; b=sSZATUYtSUj6W4lBdH97ZzIfXdBTQVlwMPB3dew8srSPZo+GFRzim1IBC9IQ7UMeJsldBFdo3BY9MqFWpKD8thuzEjcOEdK4w388D/HfFiE8vuIj6PMuxHsSmjC6sU401/jBVk6mzSGn0SkzQgo15kS65S7yY7E5Tv1fHdYI09A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756908050; c=relaxed/simple;
	bh=t3R4VcBPORWQP4a1txxFGFYIIPQ5pFRx1DiAIXKhZdM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AQl9yUhM4zOrIU7l4N0/N96et9g5Ce7iASzEpy0abdRmsWwYJg7iIuEadTydvLUNIowHSMJXleOsIGHcKsZbz2scVV+6jrRfPK0zD/Q47hTh6eg8Yj8eAowJ119uMN5/AuRyKPRkW2NW+A/f5mY9YPCXBU1nwHRRmXc7bDcB/2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CFVGfxqV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DxMOk006150
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 14:00:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z6pj88/J3j1NKaodwkNXmQxi
	gRcyLxr517oZ55+1nuk=; b=CFVGfxqVsPqKflGUyxNKOIe0rLvur1zSQf2LpgzV
	+ILbhpQ0vD5AoJ7+LmJFdk6AHSfrSenkwAEsCZ+DbtBU64bsBOwqQF1RWuvTY7u3
	Rbjt+M/eTERLXCzecdEpMLPFnzObwrwUvK7Fj5aBVkGAM8J1/7aeTbKPShBkyjjx
	gpCTHlt4+cUB/nfSH4McgdMVB+jIWPkLI+cvNHkQfoXjt7Y1/YAqddjpM3XlrP1W
	lyhzm7i7qMIFOSy/C+eC+4mrBSuLC8bb/IK2i9qM8pVmNe4sbKEl7TqJnvwtUwyc
	qYaXegb/3vEHbjSe9rSinT5HrTClAeeXJM96kLIjMSNXaA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s4074-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 14:00:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b2f78511e6so61064461cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756908046; x=1757512846;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6pj88/J3j1NKaodwkNXmQxigRcyLxr517oZ55+1nuk=;
        b=GmOFP6wsUu2jOIM2GiE0zWqJA0rx2NtFVf9cwMqW2u4j6q1/itP8xClF0J7c92jisx
         TWECs37nikVZaua7vg7B0Hk6QGwB5zXRV40hh2XXS1AsM0EVtTrWrH8p0ENtDSZ1J9rI
         ZB6JRSQ600d5XQmyz6SLWa+Tuu09uFfZ2RGh9C8DO/35fJhC+lQZzKBrxdfB9S6UAHb4
         Wh4bLfC7I4f23Mld7HwOwj6qzQFL5N3UHNXpR7kIO0lcdLYHijw+Jq+iQCrEabWpRiqy
         VxdeVYzNYLVASTuw3CDzKUgilATPO1xoGGHzTbzyC1OrT1PRC8Qt66mCKZyh6Sn+XIOi
         hRAA==
X-Forwarded-Encrypted: i=1; AJvYcCUkwEqYdroZjJXGGq+KVO4TmOMIt32nR4MwcYSH7qsE7zvRva1nLCRoVDFv1X+lJaEDstj7aCpMXuwg@vger.kernel.org
X-Gm-Message-State: AOJu0YxALGGshecsy1AWgwa46wFVPl7KPpSx0aSQSeUUOE0EIlgtRN6n
	QkMiNWbkkH2SLb2cpIUEJN2H/xv04nKOAFKpLl2Tnp08i/XNfGlXzow6ioEvIF9E7GYclCo0vzJ
	/UjQjuW+gacdaQQ4+EwIOgU7DRyJ9L6hCfS7C8JyJXMuuhVoPN8XGtvbi4n0SfABn
X-Gm-Gg: ASbGncvxgcmaCXgOfojx22DjQf2Ynl9TUXa8C8Y0UeJSBghEv5+C7N3mVtCCz5NMeBd
	ordujOTJOxrnFnOwtCg5Q2WIaJWRqmpCpvBLYgIXmLOP8Z6uJLLeyT+sc720rfH0inpWDmviCwP
	tmbc4RvHwULTj7svWWY98/bCdbfKTAgtRKvPHx3UUfabJPA7GbUm8EFO+bjantBeUxlQaxNI5qs
	vd8kumBARpYchyDmr2J3uTFu5c1Bet+93SJgATCp+e5WIv8mJTgyqTKqA0cStttSs/wDYThaqb0
	japLgxRMLPgaC/lukfunMuJreYCogaeFKJQtcQP5l7jbttyxO427fYH+TCjLv+8Nj8IWF9oB9WF
	8q7huzPmzIapbEMrYgZ8Y6p1L61ejikP+Tqe6cBOg3T6Ne2jTMYh/
X-Received: by 2002:ac8:5e53:0:b0:4b3:48b2:aa9f with SMTP id d75a77b69052e-4b348b2b623mr70291371cf.50.1756908045416;
        Wed, 03 Sep 2025 07:00:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnDnwIQkCmFKK18oDjQbnACoTF/d8n+oT9VNWxZl8INMw0myHrJGeaehADC9LPm5hkCdYKhA==
X-Received: by 2002:ac8:5e53:0:b0:4b3:48b2:aa9f with SMTP id d75a77b69052e-4b348b2b623mr70287801cf.50.1756908041921;
        Wed, 03 Sep 2025 07:00:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90454sm10451921fa.18.2025.09.03.07.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 07:00:39 -0700 (PDT)
Date: Wed, 3 Sep 2025 17:00:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Message-ID: <t5pxum74q3fwf6wgcbaeaginjvtjfn357pkfswvafsggtmvxfv@jl5qjfhpmmow>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
 <exkrgx6rdotfrrsnklsd7zk4ydehsk5vaoevibpqisyq2dwbd4@sa4kgnuexlna>
 <f169be5a-faa5-4824-861e-27bd2083b9cf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f169be5a-faa5-4824-861e-27bd2083b9cf@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX85kLki5I+TSd
 USEx1c8+tjq8vXqW1mmV9rjY14msfgKEC8C38yn3kXVP9UW+pm33m+TtZu8vt4AivxvChD2uV71
 /Q76tqh0zt/JENU0g0TvXeIF7SAqs6HXpGB+f9jpWBuWQe0QEtdJTsQ+UT4oJKr3gSdAoX/foZV
 5GsPqxOshij6MwjSCvGL11KwkunsYiFOJtWCTvIyqYJYqkqdxQ3vstrUwAIii+1xuF1cFavWT0S
 bn4iQMu4QTzGfAhgXrcqGbRw8dE7OK4zaeynbs592d25jAMkE1+ExSOLjGArpwfSGwi2FOPhOvX
 L676IWfiobFVkbl/lI3/lLpmIUuRuBUlmAN9G9Azq4+Pa3vQ3jBkZ4jo1WAOlbweh13bDyzjkZ4
 QRTZAftR
X-Proofpoint-GUID: fo3FqUSKINIOc42dc7obHFLUv7Py4Ryl
X-Proofpoint-ORIG-GUID: fo3FqUSKINIOc42dc7obHFLUv7Py4Ryl
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b84a0f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=I_3-zorBrfLWAkoykd4A:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Wed, Sep 03, 2025 at 03:36:34PM +0200, Konrad Dybcio wrote:
> On 9/3/25 2:39 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 03, 2025 at 02:26:30PM +0200, Konrad Dybcio wrote:
> >> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
> >>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> >>>
> >>> Add gpu and gmu nodes for sa8775p chipset. As of now all
> >>> SKUs have the same GPU fmax, so there is no requirement of
> >>> speed bin support.
> >>>
> >>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> >>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
> >>>  1 file changed, 116 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
> >>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
> >>>  			#mbox-cells = <2>;
> >>>  		};
> >>>  
> >>> +		qfprom: efuse@784000 {
> >>> +			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
> >>> +			reg = <0x0 0x00784000 0x0 0x2410>;
> >>
> >> len = 0x3000
> >>
> >> [...]
> >>
> >>> +		gmu: gmu@3d6a000 {
> >>> +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
> >>> +			reg = <0x0 0x03d6a000 0x0 0x34000>,
> >>
> >> This bleeds into GPU_CC, len should be 0x26000
> > 
> > gpucc is in the middle of GMU, see other platforms.
> 
> This is not the case here

Why? I think GPU CC is a part of the GMU by design: GMU accesses GPU CC
registers directly from the firmware.

-- 
With best wishes
Dmitry

