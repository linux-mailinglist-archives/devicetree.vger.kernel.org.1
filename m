Return-Path: <devicetree+bounces-233369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD48C218F4
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BAFF1A20581
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 17:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7CA436CDE0;
	Thu, 30 Oct 2025 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvAph+aX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aRZlJdZd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C9B36CA8F
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761846623; cv=none; b=LYVMmFe92Ju90Ahp6JudokY4Dhn9DfLsBEOfbXbaJA06YDnh2EkCqEubteTMx8ofLCWfj1p+CWw+F7JL7dLgXa+u+FlLxvM/iHEDg/YVZF+Pn8rk/uAQ/H+jmDzEpqX0+eZZ2gMYEYsb1P225O9buOC6ply2N4zxQ2TNAw5mbRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761846623; c=relaxed/simple;
	bh=BBwmYcE6lrUKjOADEk35uGUEgj3XI4g56oalPV+E+IM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mIRLcoM8eHMH3RyYW6ujgT8P6Zw6mJBa0C260zz2rVDu/tN8RNgSrYFmthQLSQ6cefGEVY3qX5amyueYcXxn3jdJM/sGEPa/jPtRKpwNSF6X+0BYSfko4Ds6gQp58rbXoXbsCnZpi0St2ks1nCBzmYaw8pNX6+V3r6eY1O2UvKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvAph+aX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aRZlJdZd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UAPdJH3281900
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:50:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7ezPQpssYxyOHH4y5fHepA/I
	5LlR8cmJLHAcThG9/RU=; b=OvAph+aXhYotPcfswPTd5BPs/pUaFw8MpFv/Z5qL
	KE0zovfq3OTWxj0yRajECWf76m9IGnPrcctKxuzP/kBIOL8FxobpRot0dgL3CLRy
	caE484UWNJTTAYOHL6WHS2pmq4isTnfcjxaS77/4C2woOhVS8PQw1mMqDy6J77hr
	nGwuJFqwPvVKg7liHtpTi3agNItRwCPP5QCJykCqS5ATIKCcPI+N8vCLG+BOQgHa
	gkQ1fDf5NyCbOeUw9CIv3AZoCzjbSGUgQBqBnZiTgR+CVEILNu9MPFTtTlxrWHzT
	CsP9ec5Jf8AdwjmNLkck6Gytnhr0V4+jFr2wE54f7y5DIg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a468kh82e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 17:50:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a43210187cso1261499b3a.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761846619; x=1762451419; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7ezPQpssYxyOHH4y5fHepA/I5LlR8cmJLHAcThG9/RU=;
        b=aRZlJdZd+lxxLJf8UZLX8jxEOpptZy6yq/mbfQ3w061Ak67AWSpS38qh29cuz80Ey/
         W5Nsg3sXoctJuFhb6ocUpU3I231DtxdQJfLM51T/hnl+xT2FG2UjrrvjnIjoWr7envrT
         c9zy6Uy8ePmYPucRN8DbZVzwWhwUMgY5Cb8CBR/BwpFvTVbh2lQ5GDGPmbeumsg2tP/S
         ffm+SB2bXRwIJ0NyiHYDcxHw5aykxTeKlayXzISQYmM6dC1hSiw7dMnKBgUO6BLCu6o6
         12hJuVuZR4WlLHz9geNS3YCcit7c+rotCxR39+V/qg40slU0XUW1ZpXIs+cn5Cof5IOB
         az2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761846619; x=1762451419;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ezPQpssYxyOHH4y5fHepA/I5LlR8cmJLHAcThG9/RU=;
        b=BLGTA7+5DQCxsKhar8ggO02uNWsk3ARK1yK8w5B36Krbf5DvGv6LkSc1ZmmP/pvKMa
         kfzvEl2+6nGFp0ZrGAZBCeKXz9XL/mOY4GesGpL6w9O4mBJOaS/BFyEPBnsrPHlHCQdp
         X+WXEQz02R3/LIuLmkCyS2QIARAYtJ4ul16f5gUmAr3xEF3TtIYtglYJgoF9YN82CYgt
         FQDWoc31PmwaeL37x2C7cW4ymBBSvmHIXG59YC0sOuIqHE45f4EsBGiJKf+OlNgIhWbV
         T3rH8KBYZ9z3X7fHynLfYaRyYjREKc8X1BTx75IofPye7fZNnEEv28wXaaF7mrowgWTg
         dA/A==
X-Forwarded-Encrypted: i=1; AJvYcCX0H6LzIdYZlLRrwpbuUOmXN9s2/5fU9pduDeHTlWvnn6IeFiczj+BtldyV2jZAj7df0+Ly9RhfYgZN@vger.kernel.org
X-Gm-Message-State: AOJu0YwvCKG2JrvVNvwQgapJw9rFps6hlDAK4RCbjyRif8DBTyVKIezX
	Ji+ermsrgL35bQfEQF2lceNS+vAOgS/Lj9DFkU7qQPniVPk0AoTUkhQ38ClcaK+PQ0JE4AVdt2q
	SQunfLFxkPZG5NGkDTN2N3nPwKe6uSKkLIMSDEo4Yap72MP6RndIcvHSt8GcGIcuhPkFGmmAD4I
	c1ThAnycvNMSb6tMN7sSSTMWosiVp3xMYIg5KtrT6BqfboKLY=
X-Gm-Gg: ASbGncu/rtblyU865NbM9nJMqifkDl+X7XA1bHTvPCw4Bgp3KLPPV9UItE6kkMSaEt7
	deVrUeaoc4ViJPs4S3JjgimBoWeeTRk0kXIPvCK9IUXAOxovn17VhCNYHwPpJBNgp7fNmiL4ssF
	kGgqzBRscCNrevjBZ0YhDtCQjaVbARCXxBY+y1dGkDZgkGhroeTT0KZ24=
X-Received: by 2002:a05:6a20:7348:b0:341:4dc7:6ac7 with SMTP id adf61e73a8af0-348caf8cab4mr681339637.17.1761846619170;
        Thu, 30 Oct 2025 10:50:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZVI06S4NV1AhlDGUGc28g3ZM86FSIkF5MLIdL5O79ZyEHgj8yschDJ9u8J8K5yPmghV3pkF3oXrKpgJ/gx8g=
X-Received: by 2002:a05:6a20:7348:b0:341:4dc7:6ac7 with SMTP id
 adf61e73a8af0-348caf8cab4mr681289637.17.1761846618570; Thu, 30 Oct 2025
 10:50:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
 <c90b917e-b3bc-42fb-a127-ab47d5154d0d@oss.qualcomm.com> <c62a7f9d-6984-41c0-88c5-1d6c40d411dd@oss.qualcomm.com>
 <weyze7a2pqmt2klt763lbwyvpezqndm5rjnitexalru7hy3xhh@tdqx6xeqp3qu>
In-Reply-To: <weyze7a2pqmt2klt763lbwyvpezqndm5rjnitexalru7hy3xhh@tdqx6xeqp3qu>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 19:50:07 +0200
X-Gm-Features: AWmQ_blhkZbCEn5LRbI2zVnuSxWh0T1Gf5fIw3eGcfqcHuAD4DHCvVBIEZ5kS9E
Message-ID: <CAO9ioeVQe5spxRWBr8sC1xHKktRD-Z9NJS1VDPSTKbWiZRirpA@mail.gmail.com>
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sc8180x: create common zap-shader node
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE0NyBTYWx0ZWRfXzItWVgp/v4rq
 kS/4mhFGPiSAhkq0NeWfiHLY6vUH9sE7juW+LWAIyLoxIfjeQeFlRBbfxcXrHReoo4HtvV/8F55
 vY1M9lc60WPo+SIdZxSiS0GIatkQ2T2s2N3LdmJADvAfwAGAgFAiRF6hmo3yJiB7As/3pp8X/LI
 sp/+dCAp//VUGHGQFFmb5uqornUz1LdJ1q5Uh+0akjox9l3oHkDdDRde7c+M7bvk1CAbSXH2N1Q
 4aGk8i+9dW/J8MogyU7ua5WBqaNKddDamZizhs6lN9K0IOuXr3/gEFupWozAPTwEu952f9h4QYq
 PPtBXSXIZgoI6TwDBz58BMAyQyDFEpNJ+oApwH9R+VHyoAbm3NhfPzRPNJ/fqGpr/qPsPhLItve
 FaWRvmsTNE3R6NrFwvEoW1zUW4Fdgw==
X-Proofpoint-ORIG-GUID: fAlx9bLa0KwT_bqH4YM5knEV6nX4wz1Z
X-Authority-Analysis: v=2.4 cv=LoWfC3dc c=1 sm=1 tr=0 ts=6903a55c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=tsDWIgHn-TVwDr9MEvwA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: fAlx9bLa0KwT_bqH4YM5knEV6nX4wz1Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300147

On Thu, 30 Oct 2025 at 19:25, Bjorn Andersson <andersson@kernel.org> wrote:
>
> On Thu, Oct 30, 2025 at 11:59:00AM +0100, Konrad Dybcio wrote:
> > On 10/30/25 11:58 AM, Konrad Dybcio wrote:
> > > On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> > >> In order to reduce duplication, move common GPU memory configuration
> > >> from individual board files to sc8180x.dtsi.
> > >>
> > >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > >> ---
> > >
> > > [...]
> > >
> > >> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> index 93de9fe918ebdadf239832db647b84ac9d5a33f6..069953dcad378448800d45e14931efe1fe1a69fc 100644
> > >> --- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> +++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> > >> @@ -14,6 +14,8 @@
> > >>  #include "sc8180x.dtsi"
> > >>  #include "sc8180x-pmics.dtsi"
> > >>
> > >> +/delete-node/ &gpu_mem;
>
> I agree with your hmm, seems this line should be dropped(?)
>
> Dmitry, please confirm and I can fix it up as I'm applying the series.
>
> Regards,
> Bjorn
>
> > >> +
> > >>  / {
> > >>    model = "Qualcomm SC8180x Primus";
> > >>    compatible = "qcom,sc8180x-primus", "qcom,sc8180x";
> > >> @@ -444,7 +446,6 @@ &gpu {
> > >>    status = "okay";
> > >>
> > >>    zap-shader {
> > >> -          memory-region = <&gpu_mem>;
> > >
> > > Hm?
> >
> > I "hm"d at the wrong line.. why are we delete-node-ing gpu_mem?

Because it's a part of the sc8180x.dtsi now. There is no need to have it here.



-- 
With best wishes
Dmitry

