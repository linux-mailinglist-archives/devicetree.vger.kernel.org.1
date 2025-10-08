Return-Path: <devicetree+bounces-224632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BF974BC667C
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 21:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 21C6A34F87C
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 19:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1DD62C0F96;
	Wed,  8 Oct 2025 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MCl5f/mB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDE12857F2
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 19:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759950293; cv=none; b=RJ4S5M7fYWK6PvYMlyu4T4okLV9Dl/FI7Sz4A8uKl3vHZpIUH0CT1rPl1hL/74Ndr1D1zwbFulhwhfpjZ7TBBEOwPPsJszaVx7ymcdW0buZJXsyyKF87RAPRqwkKB4Jk3VZAzJtzu5T5XU9+1eHp9jeyzFMYN+DqlnpO0Dykurk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759950293; c=relaxed/simple;
	bh=F5j7+pfFJ0zioBtIlqjIf0yKgyL15Xepcs2kVFSkMS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rha7jxZZxQut92Xp8SxHui7THImZTCs0AHXzhsGmqNxhNnnznJH45Qef9el7rbNfKaUwfQVGCGXqq1LE9ee2ZxIeBX6egoqnhulw98rsFSpWNI9NBrThXEciWJUBCWEWp5h+yOwv7Jz6tkLybqDwTn06VLuo8cgoF3mIW4E60dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MCl5f/mB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5K8Z004535
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 19:04:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vLkdhzU4dB9t0lL881Qj037K
	WlsULwSrkxUDXDtfwCk=; b=MCl5f/mBtxOaP84V9D8JhUqzwD1cuKxkagK9splk
	nvmkRPGFWmTr0Z4wzbI8f3xvF9SK4y7wrfb6JZD8aYLLhBycL/B8pQk5fhFghrGI
	THLnkeIXjLMrVm6Z0LFRsAxGw8l30/iKQBZuZvSANz1OXU+tz56st/6I0ckX9B6M
	VclFPJo5wlpSLgXPQ4YXK3kSgMLUkpYxs7snAhSEg7YqCVjRENoyjhOaYNweUIWq
	Nq14eVIGkbbECmCL/4xkHnWoZAlPwMNVAHun7srRs5IN6e0FGQE654AkhRDyNn4+
	iHxDvtcymMrc/7LXY+42yk28hIOxwYh8rG/DeVynvbRTQw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kra4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:04:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dbd8484abbso2908351cf.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759950290; x=1760555090;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLkdhzU4dB9t0lL881Qj037KWlsULwSrkxUDXDtfwCk=;
        b=cDrgame9/mKibKJnpxns4WtCHyedCWabnmLYS1qNnZcU+C9iZqQ5xuMtb7+aawJavK
         8/h9oN+WcIPFge559PeMGxTcNuKv3kSouhcZ4Z6IJAHfMHOqLBHZChxkMVCsMoG4WVch
         0cr7RmuMVjuyhck7Mb0ZdIkwjBbKleMC29YIUiv6q6Xzg0xtqnS+hw6DjoIBDHahX/cV
         O90TZf4AL1zYpn2VxljnuLXDX9TvJvy3rINOieAdnS+CyQ6oognQwg+vnvfW6nZTuP3X
         f268nryDxWYpbEYD5rDxt/tkas2qb4khrqm6Agq6pJjr4sA8bfEvd3yxUw8D639tTOkW
         fE4A==
X-Forwarded-Encrypted: i=1; AJvYcCWK0iQJnAC9+L9yBLDXwsT8Xo/MQ6Rk/on5hj448uVl2LKUMjYNAZUcTZ1/jVND1oMZRnR4wQlAmXG7@vger.kernel.org
X-Gm-Message-State: AOJu0YwBVSP6wd3mosK/ggzMn0EOSv4XoxcH8ja7r5Gr8SNDuMVDYG5V
	qYTPJfC1HiFUtC2+pShc/D3YhaBhC3b6bGMJzo3Pii+i+DXhtm4r7sx4BsaTnJ3aatAgrVZzUFp
	CXnCfzciA2gDQYzJd0Imotjbz73lVbJirdPjVrMMP2ErM1+hnJc1U3TtlyEP26705+vsFg2iI
X-Gm-Gg: ASbGncs2+l3sKRjWrlVCNLg7DLnUsV43CT0HsMpO4gukGi6VidKOUFOSeNOkohXQp1q
	XpKJP3nf62/6pvk050T5LknXbtOd0sNF4V2GtR1Px63dcyBxvqmeTMzGh3f7QznbIyVi6+C4obQ
	hza0e8if14UzPlBygerd5IioVYkDONerbstyP58ib0pNxGCr4scYlwoQSOb2IPFcl/gE5pt960H
	ZMHVNF7MVBjWPfqc5R4JnhpIyj95JYFkatzvvG0h7yg4GjUxKWGLVb+U3GaZK3dJonazx2tRoPM
	RzLAKELcW7/kv9nbkx8D/sSkAWrfxkUQobiqXt8gH4sMAMsraqf+jbUR5pGEv8lDr1XXCfGpv6R
	I/MCsmsNTHWxiGyAENnUg6Zmio4Ly5bp0U2rkfDjXK5105snz6hU9vT5DTw==
X-Received: by 2002:a05:622a:4814:b0:4b7:9c98:aed6 with SMTP id d75a77b69052e-4e6ead58053mr70078181cf.41.1759950289319;
        Wed, 08 Oct 2025 12:04:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFWF/s5ht/T1nn9ZhhX03tqHdiImT9nJZ78m+w7Uds+CFfUB96ert6VvJukBJuf2++atRTiA==
X-Received: by 2002:a05:622a:4814:b0:4b7:9c98:aed6 with SMTP id d75a77b69052e-4e6ead58053mr70077361cf.41.1759950288698;
        Wed, 08 Oct 2025 12:04:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39d50b2sm22349511fa.9.2025.10.08.12.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 12:04:47 -0700 (PDT)
Date: Wed, 8 Oct 2025 22:04:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 04/20] arm64: dts: qcom: kaanapali: Add support for PCIe0
 on Kaanapali
Message-ID: <cydoo3odr5nh2i2grhx5pnvntt7yxvy7wzf62hf63krweeqyyp@kjwjiugjmfa3>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-4-3fdbc4b9e1b1@oss.qualcomm.com>
 <68fbfa0a-605c-4b6f-8ef6-33ebeea8909a@kernel.org>
 <noonr5lrw3ig373pi4c7efakil34vsaej6cshs52us35n2bbmd@7xmq35w6wetc>
 <f16508fd-05e9-477c-92d9-26f4f04bc056@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f16508fd-05e9-477c-92d9-26f4f04bc056@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX0mrl41rGqjH1
 LtwD9N/fzRAQ2+6POh3hCKLloynemPIeEBm0w+BkW/+Q22x6qF5Rm492upT7PTcBYq1dTp1bq0E
 aAOxW4+Fvmar5SOB1j6dQ1zuENFoExkPxJoBHk40TdWwPSqkTI6ItIpfKh6QPKsl6YrfXwkBqRI
 k3rJPXYSylXH+01CioyBDU4CUHwjZAk+l5wgrlJNtUw8pSacjLP/t0cVTcYotc/MjrrV76FbtS8
 nY7ZoEmt0tdPrgc6ZtNfxyA1WLi+x1eTs86dIeP9I286rvw7BAwvxPV6/pcZFKoviA1IX7WR9AV
 x/yoE/ddrpE7OOP9Y74UME5gn/xpgRabwghHoa5wEbDFK513QgGKyrI5nlxzR+kVc2Eb4xnOuZf
 qyw4ec4pgS6UFpYxaRHi7GR78/wrZQ==
X-Proofpoint-GUID: PvX4q9lvoSC1rmshkQm9bfLbQ5Og0a36
X-Proofpoint-ORIG-GUID: PvX4q9lvoSC1rmshkQm9bfLbQ5Og0a36
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e6b5d3 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=LsMgGdHZQkRXl9bu1foA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Tue, Oct 07, 2025 at 10:46:29AM +0900, Krzysztof Kozlowski wrote:
> On 07/10/2025 10:24, Dmitry Baryshkov wrote:
> > On Mon, Oct 06, 2025 at 11:23:23PM +0900, Krzysztof Kozlowski wrote:
> >> On 25/09/2025 09:17, Jingyi Wang wrote:
> >>> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>>
> >>> Describe PCIe0 controller and PHY. Also add required system resources like
> >>> regulators, clocks, interrupts and registers configuration for PCIe0.
> >>>
> >>> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>> ---
> >>>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 182 +++++++++++++++++++++++++++++++-
> >>>  1 file changed, 181 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> >>> index b385b4642883..07dc112065d1 100644
> >>> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> >>> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> >>> @@ -452,7 +452,7 @@ gcc: clock-controller@100000 {
> >>>  			clocks = <&bi_tcxo_div2>,
> >>>  				 <0>,
> >>>  				 <&sleep_clk>,
> >>> -				 <0>,
> >>
> >>
> >> Why are you removing lines which you just added? What sort of buggy
> >> patch was before?
> > 
> > Weirdly enough, it's correct: this patch adds clock provider, which gets
> > used by the GCC. You might argue about the split, but there is no bug
> > here.
> 
> 
> Yes, I argue about the split. This is new SoC, so any patch removing
> something from previous patches means split was done wrongly.

I agree that the split is weird. But it's not buggy. Anyway, let's wait
for the next iteration, which will hopefully sort out everything.

> It's just confusing and previous patch (the one with lines removed here)
> just shows incomplete picture.

-- 
With best wishes
Dmitry

