Return-Path: <devicetree+bounces-213934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B83DDB47842
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 01:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B4891BC1737
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 23:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C921A284880;
	Sat,  6 Sep 2025 23:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CthncvNW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E51C32FF
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 23:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757199780; cv=none; b=Mu6i2Bc/I3XisN+968oPJV10f1n8+hf38WbodkuUQxPx3FrNnuSFrYll7ChAnV6iteBWZuyjG1zKSjDnyLljT35tIzTe/UyubSaV6S0gUacqh03jqiA/yMwtOB0RtMPcG1BGv/+yiXJTzgcxegCGpQFo2Y5t6684x7JHrZYfURI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757199780; c=relaxed/simple;
	bh=bwiYXRNGcoiajeEM+Tw5uBkd8tBUcQ8HypuC39S0bi8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nbCx8KErbdx02AGZwWLD5VHwWFequ1+AhldYwc9qIScOCrq7du7XYCmfYXfc1Q4O7g9oemjWu0Le7clhRDZakUP/pHRxNrFcya7yKX8brY6fnuGpKJQcwRXjm4MKT1SnKNkViMMAw4omJmjftdUEEYqBPxuCs5sg1enCogQLZZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CthncvNW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 586N0rRC023911
	for <devicetree@vger.kernel.org>; Sat, 6 Sep 2025 23:02:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=7tSKwHt+Ek7jPABcGiy8/Q+CLwEcgRigyVjo1Zw5A58=; b=Ct
	hncvNWlMgzrXgTeBlvJleX/TQnEv0gWDzpbuHTLcAP1F5iF8ered8rp+ZJNQgp+F
	Wg8u1JXm2yYwCSiRygdMJWhVbHaOyQs6c3kq3nnKdxg4CdDx3b1uDk+tkzyjepdu
	fYTk1kvJLA59Ndsb00fb2wiVn1yGPnNzZ5tsTw+/VXoE50Sp8TSBg/ca7g/J6tcw
	HSyiYXWFfPyCCow+9xpdSEiQjeL+Gj+nyZ8YquEZf5NkQgUjNeYtU/iJ8U83ft3E
	Ptolv2skC1Bx0R2eMs/+vKQlcKTYsZiYGvG9UhcpYhuGV8c8CyBa98fxiSS/xzyp
	NntjyvLbZ6d96tmaxeUw==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db899dv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 23:02:57 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-31962614250so5548333fac.0
        for <devicetree@vger.kernel.org>; Sat, 06 Sep 2025 16:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757199777; x=1757804577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7tSKwHt+Ek7jPABcGiy8/Q+CLwEcgRigyVjo1Zw5A58=;
        b=U+k9Yz4mxboVK68hYf0iM57gFnb1kjKS7Qb7SJylLRY4uVLhcLoen/eX4sWjvxnE4N
         K0vh54cX6aAckMG1p5zM9wBdalpVF8CoNT6VKBjNEfR1pE+hniv4GqbTJoA2MlbWMknU
         M7ULD9hfAh5BfACftxp/4IMtnutN8fFTJlw2QAx/JNX2M2w24u74lJKF+vMHBdn9NTGp
         H7/5k9B1VgC4iUpcb73l1ekTJbVXPpIFH8Nw7DVS4z6ukFEKiGz49xjzTxEuSo/Y72aP
         Ck70mzLC48ZSW9Gy3LCl/fb/JWhrK9huKzw3wKJgj4yvYFYqKoeVYXrBprZtaOS3MdZb
         4YTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgIfduSa3jQqH9h/+E9rLMAEMabr5wvFjJlxbM7q/MxiGpd/o+KHerHNsywZDGeeJPF4dI8hxu8+Fo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3bMIGRFBRD+7HK3ZuXyKKxNIaNAAR4kBlZGoDpB5LAgHBrz7E
	KLX0roGu/hqeBx6Tykz+C3LuiZyTWdTI4JIIrTplHbrAW3JunlGR0muY2cK9RlBb4JFkcxvmqaQ
	4K2RH6GPV7+U17Ps2hIC2ZC0JLftSLJwuXmrH5+4gi9aAoUcmzN51K8xSrAoQBGAN4WZZk8+AYp
	zSaPz47LBqLIs7AT7B3iInS2/qEnkEBg98E377Dlk=
X-Gm-Gg: ASbGncu2dobly778d48ZgeBNB/pByTaO7kQfRlLGFAQKaRDB5c50pVIDsDhhcR+ptCi
	DG1mWyOovD0KI53zAyU5P6hB5UlzoDaECmtjihXnQP2pxtgLcoyVV7b0mBPHu8LCXWF40lz6xG5
	vplOgoUDXBtlv1l+mupLMumXSNDSYORoq7FTZoNV0z7j7USoDazKQW
X-Received: by 2002:a05:6871:e7c3:b0:315:b768:bd1d with SMTP id 586e51a60fabf-322627465d3mr1588943fac.6.1757199776943;
        Sat, 06 Sep 2025 16:02:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGNyPtWK7XLr6Z6Y8/0D04LJKsr8cN92FCpDHkSHR8k+zYD6ZV/6YLC5AI8gQTcKpJUSvoMi6UIajR6FAY6mg=
X-Received: by 2002:a05:6871:e7c3:b0:315:b768:bd1d with SMTP id
 586e51a60fabf-322627465d3mr1588917fac.6.1757199776584; Sat, 06 Sep 2025
 16:02:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com> <exkrgx6rdotfrrsnklsd7zk4ydehsk5vaoevibpqisyq2dwbd4@sa4kgnuexlna>
 <f169be5a-faa5-4824-861e-27bd2083b9cf@oss.qualcomm.com> <t5pxum74q3fwf6wgcbaeaginjvtjfn357pkfswvafsggtmvxfv@jl5qjfhpmmow>
 <c3de911c-e80a-429d-8a5c-c693546d4abf@oss.qualcomm.com> <14b5db9f-8b31-4baa-a03d-12112425fbbe@oss.qualcomm.com>
In-Reply-To: <14b5db9f-8b31-4baa-a03d-12112425fbbe@oss.qualcomm.com>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Sat, 6 Sep 2025 16:02:45 -0700
X-Gm-Features: Ac12FXyzTpMUMaTsNWSW0MM7Xxq1e9X2ZKWgxsNm2xNI9hIOPJ9JgBv0CoKpoCY
Message-ID: <CACSVV02h8AUX8WtEuu5w-g2XnfBkfozHQQ15zGK6+LVX_w=d1g@mail.gmail.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfXxhK9Qm8C4ekc
 sJu6Tx8wNkSZYACt6K0k/GEQnUYiWUBAmfijJEtovj1twZyPyegN/QTD9zKjo6OBsw+qx9wxgn5
 XpBSZ4i6AV0xh5X1IleUWxw58mDFFNmuLrjrTuyvHEL2wem28SiT2Xr6UQ1CdHjxSxdaqObeYpB
 Rl0YGbeJDwGSsmwdAYkGBZ6uij0kGGr6lyxmZRwBgf5x3O3ebg+ksQ/iG3jhZdGqqCLNOMsbz7T
 iCNdFjReZcmVSbRRMY50lFRmwSySHO+muqoRt2Pd9VNxQCOhU+PA2y/sJCL5z3LNPGQv4HJJuPG
 zDBy3tGv9/DSXVnd2Ntf7Xknjpj/Ex5v9qK3KuiGBpaeSXnjAPqW9wMsbkz/8vQH27+jIKfO8/L
 Ce6WvhT/
X-Proofpoint-ORIG-GUID: -Q0qRrDfLipuFRUWChruVEuyFjh97JRu
X-Proofpoint-GUID: -Q0qRrDfLipuFRUWChruVEuyFjh97JRu
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68bcbda1 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=M6CliHif6jTRLK_rbtEA:9
 a=QEXdDO2ut3YA:10 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-06_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

On Sat, Sep 6, 2025 at 1:56=E2=80=AFPM Akhil P Oommen <akhilpo@oss.qualcomm=
.com> wrote:
>
> On 9/3/2025 8:44 PM, Konrad Dybcio wrote:
> > On 9/3/25 4:00 PM, Dmitry Baryshkov wrote:
> >> On Wed, Sep 03, 2025 at 03:36:34PM +0200, Konrad Dybcio wrote:
> >>> On 9/3/25 2:39 PM, Dmitry Baryshkov wrote:
> >>>> On Wed, Sep 03, 2025 at 02:26:30PM +0200, Konrad Dybcio wrote:
> >>>>> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
> >>>>>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> >>>>>>
> >>>>>> Add gpu and gmu nodes for sa8775p chipset. As of now all
> >>>>>> SKUs have the same GPU fmax, so there is no requirement of
> >>>>>> speed bin support.
> >>>>>>
> >>>>>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> >>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>>>>> ---
> >>>>>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 ++++++++++++++++++++++=
+++++++++++++
> >>>>>>  1 file changed, 116 insertions(+)
> >>>>>>
> >>>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boo=
t/dts/qcom/lemans.dtsi
> >>>>>> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db923010=
5ad93ac22287850b6b007c 100644
> >>>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> >>>>>> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
> >>>>>>                          #mbox-cells =3D <2>;
> >>>>>>                  };
> >>>>>>
> >>>>>> +                qfprom: efuse@784000 {
> >>>>>> +                        compatible =3D "qcom,sa8775p-qfprom", "qc=
om,qfprom";
> >>>>>> +                        reg =3D <0x0 0x00784000 0x0 0x2410>;
> >>>>>
> >>>>> len =3D 0x3000
> >>>>>
> >>>>> [...]
> >>>>>
> >>>>>> +                gmu: gmu@3d6a000 {
> >>>>>> +                        compatible =3D "qcom,adreno-gmu-663.0", "=
qcom,adreno-gmu";
> >>>>>> +                        reg =3D <0x0 0x03d6a000 0x0 0x34000>,
> >>>>>
> >>>>> This bleeds into GPU_CC, len should be 0x26000
> >>>>
> >>>> gpucc is in the middle of GMU, see other platforms.
> >>>
> >>> This is not the case here
> >>
> >> Why? I think GPU CC is a part of the GMU by design: GMU accesses GPU C=
C
> >> registers directly from the firmware.
> >
> > Correct, however this is only a similarly sounding argument - the DT
> > describes the hardware from the main Arm cluster POV. The GMU Cortex-M
> > core has its own address map etc.

but the firmware is part of how the hardware appears to the main arm cluste=
r

> We have been keeping GPUCC region in the GMU's reg range in all chipsets
> for the purpose of coredump.
>
> Can we leave this as is until we have a mechanism to dump these into gpu
> coredump (via gpucc driver??)? I recall you proposed something similar
> sometime back.

IMO we should keep this in the GMU range.. if in the future we have
some other mechanism to dump gpucc state, then for future platforms we
can start using that (ie. new dt but old kernel should be a thing we
at least pretend to try to keep working), but for current/past
platforms we should stick with keeping this in the GMU's range

BR,
-R

> -Akhil
>
> >
> > Konrad
>

