Return-Path: <devicetree+bounces-248996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2B6CD84E0
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 07:58:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 572253015855
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0143043C8;
	Tue, 23 Dec 2025 06:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hxW4FzKz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DHaH45g+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFEA2FBDFD
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766473091; cv=none; b=EAAre7x7+9fPiJvsVatGjuCk6T7+UOLzIRoI98Gl1uA5RPuBeqtXBfbNw/oT0CaBWkkfZzwW2uU3tmUyOOZaRxM0wCmYCjfnIA10u7yqYpwaANvjG+wqu/1WW3UsD6xqV0Kpddjdb6zpk+S2lAEKnZhYjUt/ueRHzO2rc/enI9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766473091; c=relaxed/simple;
	bh=+NEjT4mYvRIgheEhvbVKnLb/qmekRgP0yYJbZD+HuV8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eP/q3O3F4sZ2Q09C+aqEJE490Hqx3PpWBHC1nIq9+sxtswo2eQmdut7zp4sWIR5iOUIIbvzZ8n7p+GR0ZIp+KWbqRsIJ+DpGcH06lw1CyyfA85DotQ310Uoak0LMnO5WjipXGNofw/O1yd3CYYMGNDsZRTPkhpJay5zRo/vfraY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hxW4FzKz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DHaH45g+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMKEChs4044367
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:58:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BzPdUWow8eBkjp3by//W5rwk
	q6StKJlp+bBgZ4rbBMk=; b=hxW4FzKzjgDHUzm4i20UQgfVH7SnvzhB+5BxTGgc
	mGvhfJIR1sO+3125yNzilyatALbWsXMduFGIkd17CIEgre6jLyqtvJmBToWPPspH
	KY7DG8o21XI2zGj5UnBYrgG2bGDf00drIysSePaeb9NJ5HCOGiFXVsuSsBuQBksz
	yIyWk/4SjUi/4fCBVt84Laf37pPiJriXyKe3toQWzSlzraKh3a2+ebqjQdm9Cm0X
	tsxCYY31qOU87z+mtVMOSpYUxAtm2Le1cYqd1MtaDlBIjWtQJqEnHtrclgjQ+Rde
	k7KL2xQFNmo7UQWR9ZmDrxIPn1n7EXGdA4Z/eyAp/Ip0yA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuh9kfj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:58:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a089575ab3so62041605ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 22:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766473089; x=1767077889; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BzPdUWow8eBkjp3by//W5rwkq6StKJlp+bBgZ4rbBMk=;
        b=DHaH45g+ai+FdvqY6CULJ+FwlJ3qLY9wdAdh8rjwR/eiTiIrqh8eqPAgFW3945D+e6
         5x14w3jNFRxWuw52tGmXzj9akQFFpV7IHhVKi8ZsEWRJHjweMwaXmgLDBlniNSe41MLf
         vYvngoWjz9v29I72mk+lMlfNEQo+w3Cc4mpFCOPhFN+ncntD12AzP8qqyjRbczLMhGLR
         r1Nq7Ai9g8m4vWz/Rb8EfChq1484lPxiZ3UtOllPgwOuhm7jfmNGa0tvk6NrSvRIdLvI
         cm3eUlTE8M6LdBrKVsrraSSN+S95aYx/7c5dVqQ6kitCxfX7Z78CSwT5IgULRkjsyQdV
         p1fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766473089; x=1767077889;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BzPdUWow8eBkjp3by//W5rwkq6StKJlp+bBgZ4rbBMk=;
        b=NqMkeYr81/UDKhboC/HbuevP3ahQWbdII2kxvUiCtEQLbGnDP3VGkZap6QuW9MrRE6
         cTkEmE4ZYPs6GWL64dKDa8RXnHSDb7K2saXlydRc8B9DzbmUr3QvVDyzn67r0lqOQGL5
         MyhIzLCKwbwljbTT/8yl58GK/PE2jXbFDDjw+sJ9V/HoiU03GBhAw3hKrgxpWuHNG7tq
         MTWIKFpYzSSxaX0d3SVY1j2F3uKTgdwjFtUbb+Ib9SH6FIwKpiFGNT8Xdft/9Q3WknsZ
         ZQxFGk/47AAz6LKuZyrEJaS4WqqITD9Frg+DUH6haB78tbQyLmWa8+mysScV03DvUsqt
         lD7A==
X-Forwarded-Encrypted: i=1; AJvYcCVC6o0pzC/y7wmf4NK2PUReF88KacQ92NTNyhZsLD/b2bWw+FJnung+h9PBp9+eyoztXCQgusXQVUAj@vger.kernel.org
X-Gm-Message-State: AOJu0YzShip6rJVPy10ZATHQsarl4/autqJF2hiNqIuQvprFsP4bidKG
	mc11zfCfKo6kxVkbE7O2eu4Qv34DXMbsKk0GSk7985wre2vZHr0vNzx6oe/LDliaAIjLTOzjhTU
	BBXFKndYwAkjh8YqIeAJ8YG9ZZpyFCZ4MlVbPkCmnQbJo3q0cnlBW6kSOT9ear04bVBJuDxRR
X-Gm-Gg: AY/fxX5FKvOtpXeo1Wf3RA+qro3NIvhkamLmYhZsAAnlNRAOq4AwTyNmzkh+3XjBP0p
	f0q5YYYONPYqRemRhnzr7U5uzd8Wl3ijTYuFKiCxv8jq4QBtBJvDl/o1hffkQm41GSnmN6e1tU4
	tLNKJhijuvvQ6vBcsIC2YRckWWQpqM3J42FIgJxEGVNpkLvGdFFBs18M8a0sPNCHcG7FTY4vkjj
	Fl+rgbpNwAe/OilMWFIg0evsKFfmHc9MvWLIw7nStDaAPdUEOQSETw1oMJftrh0E+pvd0dKI5MJ
	BibZCTXkFHTiob2YyID0S7NomIJ4EL0K5mRj4a7SevsXjEam8pI3PXuGV+eEEb4KDJFNQMOIsxc
	R6492cCcae/ZiELj5SkBYW6cN01cP0gRuXCXT8qoWZj8B8S0=
X-Received: by 2002:a17:903:4b30:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a2f28375dfmr137605655ad.40.1766473088507;
        Mon, 22 Dec 2025 22:58:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxu9Zu4goXqxQKm8Ie54Fu/x6r+vSKPiohxo/3PR78dJCjmzDgIRMQ8Jv8FV8ic0cWQuvO7g==
X-Received: by 2002:a17:903:4b30:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a2f28375dfmr137605325ad.40.1766473088009;
        Mon, 22 Dec 2025 22:58:08 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4d858sm118676475ad.57.2025.12.22.22.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 22:58:07 -0800 (PST)
Date: Tue, 23 Dec 2025 12:28:02 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <aUo9eiAQ+XMF6zwn@hu-arakshit-hyd.qualcomm.com>
References: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
 <76fcf840-e0ce-4647-bff7-4d2f6ac09777@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <76fcf840-e0ce-4647-bff7-4d2f6ac09777@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 5815c7LEmwT0set4rcyFrPOLPQbH09W_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA1NyBTYWx0ZWRfX8cto/Xy+fTgE
 BOQyWQDoEOHutXuO0FFpKoYmqhlhOLBwzuZY1dopPthGxR145cVieNPhhSjWPhJQ9LfcsfWC0+W
 sN+tZyJaI8JZbdXx88kKVheIRVcbNyQYmGhjrdOeVhcCI5Y5J084NRESpHZ4QQOo91kP0WugQLH
 PHPuvGPAp7OUnZ60wUH1t4ZS/c9+8O5+5NXTj0fpHBq0p8YRJCAcCs3inaaLlXSzrii6Il2l9w7
 uGdtE6J5i2kbKBjlDUYFZVHfhGGxXqHkC2vLc7BtlJM44eT+WzN4R2f1+jPBZkURGDt8Vq/FynE
 j386QUJAswCYdnL68K4pyheuzjn2WluXT9YLKwPTt24Em9E5d1ZGCex0XUczV3ZcG2UlQZ4AWzx
 dBvnhD2tna4Fm9/CkwLpHJu2SG/62HFArrB26drQDnCY916RkWPrJdKvDdza0GC6PiuhsSOJLjq
 /NFC7pqgAhrx5iAUIjw==
X-Proofpoint-GUID: 5815c7LEmwT0set4rcyFrPOLPQbH09W_
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694a3d81 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N-RZRtAeA9jCEb56goQA:9
 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230057

On Mon, Dec 22, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
> On 12/22/25 8:30 AM, Abhinaba Rakshit wrote:
> > Add Qualcomm Crypto Engine device node for Monaco platform.
> > Bindings and Crypto DMA nodes for the same platform is already
> > present in the tree.
> > 
> > QCE and Crypto DMA nodes patch was applied as part of the
> > commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> > however was reverted due to compatible string being miss-matched
> > against schema.
> > 
> > Resubmitting the enablement of QCE device node for monaco platform
> > with compatible-string being aligned with qcom-qce schema.
> > 
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
> > index 816fa2af8a9a663b8ad176f93d2f18284a08c3d1..dd0b9ea27fe1cdfbf6aba07e98183871be7ee889 100644
> > --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> > @@ -2350,6 +2350,18 @@ ice: crypto@1d88000 {
> >  			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> >  		};
> >  
> > +		crypto: crypto@1dfa000 {
> > +			compatible = "qcom,qcs8300-qce", "qcom,sm8150-qce", "qcom,qce";
> > +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> > +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> > +			dma-names = "rx", "tx";
> > +			iommus = <&apps_smmu 0x480 0x00>,
> 
> "0x00" makes no sense - "0x0" is the concise way to write it and
> "0x0000" would be pedantic with the width of the SMR mask field in mind.
> 
> Please switch to the former
> 

Sure, will update this in patchset v2.

Abhinaba Rakshit

