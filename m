Return-Path: <devicetree+bounces-228490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBFBBEE3FC
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 13:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 76A674E51D9
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 11:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ECD72E4274;
	Sun, 19 Oct 2025 11:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZG6XlRve"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BB4223323
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760874778; cv=none; b=JU9BWQT/XffhmlRhj8jPmhlc9FHMCxH6D57YohMvCxA0N59wqlD6FX1lcfdSP9w//NRGHUVR+LfHnucCi+OyGTrDKqts1C4tFmZOi4tdmLJPrRd/WdcU80X3Tj7tyK+svxeGx6w2WeAzncuhL4iQK8XlAOWHZB7NJyUJSciFKow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760874778; c=relaxed/simple;
	bh=LEr6l9kJohkM4u+rj+kOjViijIj6R9PFOf99UTe4xxU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKJwZj0NKxJBDwyyVgPnK3Y7d5oYOdlPgqIeoj8g9JlI8T4AMy7yHAypNaLi+h2vD4vxT5SSp5sXoa6q9+5Qv32h3B5vXwZ+nujijGntzH+2gCUu0Xpc3zpACfGSYMa04bwTPbsViKX1nWctafq9pHdBEeDVQ0FZc2X/W8MF5FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZG6XlRve; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J4QY1Y010503
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:52:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TN7+hMpDo5h/8U2Db7n/Ndrm
	G2ZsOSEUMs79Cs5uzu0=; b=ZG6XlRve7QWzDRwvZRk40ibakpaPla2Tq9keXomE
	hVETZk2RE2Nl7pXWDKz1+4ZwjmenUDh0h6EtOA6JfYP/lR84itPZwh9NeFycO+Eh
	Fp4vwiK+PZjNlguvBxrr4CFHXHBvDfg45enp2RG/qI2sUIfHfX9T9e0KuXao3D1U
	lPu9SrnsZXkjoTcZtX5OB/GbF0Axa6cAiOdJddtS9EGFvf20k7l3bjhVdPJFknCV
	mERaatKCy8x35whZu4M1BGP7wD8m0ZSZETNFIeMGvtZRey/5D7TnTLgiYOjeIyZI
	ZMJ1+TkZNLVf6FXKNZXcmYGrLCwdNaVBUV/80Mm0JOczIg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdtb8t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 11:52:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-88375756116so1818662585a.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 04:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760874775; x=1761479575;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN7+hMpDo5h/8U2Db7n/NdrmG2ZsOSEUMs79Cs5uzu0=;
        b=g/WAYqTezmEf5Ui3q7DMh512LfRwu30sb54pt1xWoSBRELIBCiMC40k81hG4Y0B9fc
         oiFAiPWvXqW0Q4mQHM7g6qr8tXMpjIifGtZJTH+BP0l5TF7zczKKwGTLv1AjfayWcFJG
         EOXxwWUl63y40rdqPcgUbNflL7oO49UKngSvC9VM12UM+THQsCavCcRxuNc0yYXIzBzi
         SbhZ8WoqkHB9YKy28Whc7BxlHYEKcf27NLf7ytRCuIcZb5aE4FupHFeSfAT0Gb9rg6KU
         KVUs14W4ejkW80b3Rq1GpmmSXcGkIFHDrIqik/KpAA/GYe0b+MSkI7F6ztddRSjNyc7S
         BDtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4881v/aM0tmrwrzIy6MxhGAyfpqp1REaKVJczd50TBTlqx2L+U04pvEcdE3nMNbb9XiRWPDdLzEg6@vger.kernel.org
X-Gm-Message-State: AOJu0YxCqMQHobnEmpW6yYRf1H1qufXfkiZLrItlrZAnZ7l0XitC5bbv
	kDKNLEJ1yB3P/7AyHK6IajMnkdt0Jg03CCl8lplEYIwwe8nCCuVgsU9kIjTOaNy2tOVvdxGo7lb
	fa0JxHf8i98RKYODNGrLoUnbAn5BKEbtRYSwXICC09aXyOmMirlGR6M/TG7v1LC0K
X-Gm-Gg: ASbGncuBIHzClrdx68HiyuSoXE70eG5HyJ08WHYcOjIJPZ3tZSkpDpEehdZXC9f1xWK
	mfR+kRo4Pf+UNlAfqvWpF+xvQ0p3qSn7EULl+XwmI0CS4diI7LppsZuxiCT1ZGytLVhOrl7RYjy
	GbTAPeSQ7gAQ3fxb4+zClhnB7fAiKE0BdKT9YLqPLzqaLs+twcTinqRba72Fr0cntxqOmNDHCUR
	UWZmbML/H2BSUESkKT7XyGeZ7L21C9hmet8qUHQdFOlY993YPwgaVFbmOgbBmGVrd7GNTJE5P2Q
	S5ArCuXzUZaVhS+WKMWAyBAr0IGKGVbaC+zA+5owaE8ZrK6yjb66/mX1g/jUGYysW/mf2H0zjBi
	jNkAkvgbIxxPGyhIZ6c3iILNQqOEc1CbGPQaKoFzbQ5zeqdXhn4iA75RuT83dWWjgSEfN1AJ8aq
	c9GKeT96BqxmA=
X-Received: by 2002:a05:622a:1812:b0:4e8:9402:a809 with SMTP id d75a77b69052e-4e89d263d69mr120019081cf.31.1760874775028;
        Sun, 19 Oct 2025 04:52:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPcnFN62n4rxi/er56tz0GO9JJVb5HUURvhr8kT25MVhi+bHd5RuXDHCFN4GVJs/pYXza+tQ==
X-Received: by 2002:a05:622a:1812:b0:4e8:9402:a809 with SMTP id d75a77b69052e-4e89d263d69mr120018661cf.31.1760874774327;
        Sun, 19 Oct 2025 04:52:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def28beasm1501207e87.114.2025.10.19.04.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 04:52:53 -0700 (PDT)
Date: Sun, 19 Oct 2025 14:52:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, freedreno@lists.freedesktop.org,
        dri-devel@lists.freedesktop.org, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, quic_riteshk@quicnic.com,
        quic_amitsi@quicnic.com
Subject: Re: [PATCH 3/4] arm64: dts: qcom: lemans-ride: Enable dispcc1
Message-ID: <mxim7iweydzzhetqlao54hrd4ntufdhwdsbaunblyhlovdv25z@gct5iydvzbzu>
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-4-quic_mkuntuma@quicinc.com>
 <v4b35cmwbkoosdgs3d6ftml4yvdkyh27q65ssqojplb7uyniwp@wuxbeof7cikr>
 <869d1f94-9d66-4045-abdb-6e88d504a884@oss.qualcomm.com>
 <62nvkgq4f5hoew4lbvszizplkm67t67dbpskej3ha6m55jnblx@vajuvual7lng>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62nvkgq4f5hoew4lbvszizplkm67t67dbpskej3ha6m55jnblx@vajuvual7lng>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX+kR3y03EIqnk
 dAth/9PL85wmPSobWg77eGj2vXNLj7JhZ3MV/bV9AD0/xnUezO3LevSjlGJ7HkiSODJRjMJJbLT
 f01f1pT+4xEorRTOaH/MhqrOzNp/N+7fYONMlLperc3flCXUC3JJC7UeHbl0AzdglLkZFg24Ulk
 qowT3SSv9jSnfmd5PdGmcJBkgdpvgecDy3mX1P7AKn4Y5NuQxdsttPOivGQnqpBKP+ul6l1mnbO
 WY25oTyKCHFzeUNgMWUXbV9OaiuXQw/zMeaFcpocCs2EuGOMMkOm/X76eZeYnYI8rSdSTifMZ/Y
 VGaTCmbYI1bCfM1+TS6JNuk4xlrkD2YuvIzNU3f1sdhk/frmsvOoGi0R7avGT7lo998H8DOwwxj
 2BD7k6J9TvqFDOjv699yNP+NI2dk9w==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f4d117 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8
 a=vRBcCzbY8zNoOr-dCfEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: zDPRjie9bAImSpEgAHDEncteKM3SQ_4R
X-Proofpoint-ORIG-GUID: zDPRjie9bAImSpEgAHDEncteKM3SQ_4R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Fri, Oct 17, 2025 at 03:54:09PM -0700, Bjorn Andersson wrote:
> On Wed, Oct 01, 2025 at 11:43:44AM +0200, Konrad Dybcio wrote:
> > On 9/26/25 3:53 PM, Dmitry Baryshkov wrote:
> > > On Fri, Sep 26, 2025 at 02:29:55PM +0530, Mani Chandana Ballary Kuntumalla wrote:
> > >> This change enables display1 clock controller.
> > >>
> > >> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> > >> ---
> > >>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
> > >>  1 file changed, 4 insertions(+)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> > >> index c69aa2f41ce2..d4436bc473ba 100644
> > >> --- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> > >> +++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
> > >> @@ -436,6 +436,10 @@ vreg_l8e: ldo8 {
> > >>  	};
> > >>  };
> > >>  
> > >> +&dispcc1 {
> > >> +	status = "okay";
> > > 
> > > I think this one should be enabled by default. Unless Konrad or Bjorn
> > > disagrees, please fix lemans.dtsi.
> > 
> > Of course there is no reason for clock controllers to be disabled
> > 
> 
> On SC8280XP we have the same setup (two MDSS), there the clock
> controller was left disabled because not all SKUs had that IP-block
> accessible.

Do you mean some auto platforms or something else?

> 
> Whether this is the case of not for Lemans I don't know, if it is then
> the commit message should have stated that.
> 
> Regards,
> Bjorn
> 
> > Konrad

-- 
With best wishes
Dmitry

