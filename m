Return-Path: <devicetree+bounces-264454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBiiAPpHi2lSTwAAu9opvQ
	(envelope-from <devicetree+bounces-264454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:00:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F1011C2DE
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:00:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4B6D83007227
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C233803E4;
	Tue, 10 Feb 2026 15:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pMaf8aob";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EdkGorU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB8D3803C3
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770735605; cv=pass; b=LQWq/OTA+gG13IsS4XVE2U2g7G+jW6bNFeKSZ4/USQuD84c5/ZEtsllD/xhkly5JXKbaKhrY35p3KqHTbdC5mfOgJgrPGKUJuCHJIEfi/W2350aVGv+WAezOpC5SPFAjm29imvy5yPfKi3iBjmbvupLgfqGdpdCQT2TeswjZXmU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770735605; c=relaxed/simple;
	bh=D9gI3vSkKn22fgH2zlEa3oUG0lrdV82zEBEk6tAPTtc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WcdEqqAjpbH8uOfMzmgdpN4yPdlRZ4brePFkOZTXAeLsYdOoYryfzmxks6crPMuLkirQjRKVIEdaK0KDiyQNcvf/zLbMhDhvaUOqviSAuZmgIc/NKugxVEgnnpNRctaFeZQ3/+yMpSMF5jeXnT4oAuqRlpSKUYAXCtzMp+NjJI4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pMaf8aob; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EdkGorU8; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AE76Dp441443
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:00:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KS/vnHBQuixhcFd52GZKFvwjsMD4QZiqnePysVX07pM=; b=pMaf8aobj3ISc3uW
	MqK5zYvG8gSqdJvAAQklTDmUsz+yOkfDImmeZRxGLBEzqB54erbrk1C5XEG/cf+f
	+bbbOkaPON7KP63utck4dKQrlEc4wciVJ3OzaMWLuMNQj7YXUqAlKGUsOr07L3VD
	nrGsK1Pchd6cUPS1AKubKncR787amdKTRw8amCxccvsDZ/yCqojDFcOquKMkJ/vx
	oOkAPfc5yQfZinN41DaJg449evdQVSEUje4tWT0ICJr1WxL46X3Vlb9ZgwcS5C/u
	vI7kqe0v5FT8x26Cng4rfOuai1B+KVoCrqnD29Hg4j7HpesCgbF6j3N5vCaJ+VrA
	iZ8u+Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7qp9k0u9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:00:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8954803bd74so10486286d6.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770735602; cv=none;
        d=google.com; s=arc-20240605;
        b=S0JDS7BfUmont1gd9erTrj/+SP9Jhdkfm2hAeMlZ1pCzYemOdhiDzHNlnJXkZ8D/AV
         9mDhTkla2mO6SukCq9yttIPbT5ws5D6D3ZsacIGqlz5XKRN1u6WZArv5jOxw28lb/UWw
         eE6ORFUzsgM0MtRv8LIaO1YTovEVH98rb+LGnk97DguFP4LuPOVEM4K2VK2gEiaITImi
         GFe44sHI0vk9AF5kR8Gk3wBD0FAloDStZ/Q4YbJ3IJscs1ug6Gq0/YoDLKFqgmjEXdLJ
         1WnNR9mgwT6Ug2u7p6MZ59jILx2l3EB9hbXjRncPLRcUiNtG1CFp9Cx24LDdz8zgrOH3
         W4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KS/vnHBQuixhcFd52GZKFvwjsMD4QZiqnePysVX07pM=;
        fh=Afxi9rp0Yis7AFVS1k4UBsL+zoua0yv8k6VWVBbi09Q=;
        b=RGJXVqrLJZjD5EfvdwOkCQ7bGnhm/WgB9AXJeGAPgm2+b5ZN/+PCu62tSw1YQEmiHD
         sB2UePzQt+4H9WaCIfDntXAii2LyKiMk8fKxINbv+nzndwPDgxuco7tIH5g4AXLz7C5i
         YhAtmzAaG/QSBsS6AKw4VtSxqAPgJ97tO2nuymex2ZmYhMQ572E+E2nXC2/XhLmciqY7
         zRy6Xz+Ckq4Z77hf4Y7jmWNWfL6iwModNtTQjyGoT6IeCYr83lZWGhCx74Cl1+/HTP+8
         kwFsUao4pDLqhsudTFEJFeUeorZwqTXV53Va8gFc1SlhL0i9Ohcm/YV9//23ZnyRYVBN
         7SnA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770735602; x=1771340402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KS/vnHBQuixhcFd52GZKFvwjsMD4QZiqnePysVX07pM=;
        b=EdkGorU87+tQ8h9kQehpGJcQAfop3w3f1gUMQbcFyd9rVIhDxjyifeYrCJBSGQxJqn
         nmqEh2QpyAe6MbEPmb5wY5mXKxPoTTnlyzaUtKWDIqmNdDN1RqqFd2yFUA9VcltTxXG9
         MasG9c22ox8wSw79peWKZFgqVaN7U3NesKSs/LDa9r/lqOE++NlZGWwqmOUOzOpMQ/ut
         Q1az3KpqlQaD0/heqOI5x/Megl4G0WURVpDH2RW809zxk/5OWO8MzOhAC6uJmRE9P6Mu
         Oi64leSAytN26lJsZTHVsjyP0d5c1SbQeUNofnxPS3VQB7vd47s4qiAxonZPJLguZNNK
         U0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770735602; x=1771340402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KS/vnHBQuixhcFd52GZKFvwjsMD4QZiqnePysVX07pM=;
        b=dzVoLhPRImCqKW+wjkrM+RFuV7DaId1xmg3d+AZWVuOmnJnxiqbGGqekb9aTiNJDbV
         fAoQN7mWJnblEAc90KIqqDDnVlShg028ahtU+RS693EU7bwRLdgo01fm6IhPBm4oJb2B
         GU0Su5PcB/UgPTJh4p/8kdZGeXcgrFrWRS6wsSoDgYkly6pIvtS1ZOQpWyrHHlyAcd4B
         FQWRYvfrU3Lrs1RiVuHRsDhRXkXpR5Vn/a9jh9g5mVY+ZbzFSBgDys2dOW4+XiucSjiv
         wlfgevdCTAE/LvEZW8SiGdpzl7HXMbdkSRRE3JzUQJCJzYi60nf21bxtASxJyD3B/Hba
         /Wdg==
X-Forwarded-Encrypted: i=1; AJvYcCVXXpfUNjNtq3NGu9E4KG1XDCYhPVonyWKN0jVeKgnxmmPxSHqiLcKk/wBd0m4fEUwsLjLl6uLT1NN+@vger.kernel.org
X-Gm-Message-State: AOJu0YzrHsVCGmG4yyvkca2Y2py+qVLbRSiWzwAdkaL9HL7cEp1l0Z96
	6CFmlQttIu0Djx9VvogGvkPG7SXuM/N8AgJPQv159WkdaiTl/1F6w/NZRrIm7RWSnj3I9y/tBDA
	SCiMlDAzA+ewQsrumnOsqZ1MEejZ2V2bKmPo5MrWkhSGbnY5AVKjpgtDgYQoa9aAZyPTH9IjFdB
	Sf4etU1PVOgpp6YDI/khfmHo7ucS/I3Ld7w+yuS+E=
X-Gm-Gg: AZuq6aIP8z4Pu0LKOSu3SF7SuH4GH1fGzOiamgrdW6B6Z+LhFIY/NNE9r+il4RCI5Md
	yqD6Go5jFeoz3eoFsTaJ1+kRFVZk6RG/MVg5367TQ2YQBs57I4v9eaYJMzHXVlYH4vStty2wPK8
	zKMFjfJF/Kep4pqm4IspgajqunQ2RZ2cA1wrZE9gmDw2elbWjpOwJ+s0+IzSsJQZEXtDYlDB/m3
	xwUNYU=
X-Received: by 2002:a05:6214:2602:b0:897:277:d04b with SMTP id 6a1803df08f44-8970277e17cmr88406236d6.57.1770735602179;
        Tue, 10 Feb 2026 07:00:02 -0800 (PST)
X-Received: by 2002:a05:6214:2602:b0:897:277:d04b with SMTP id
 6a1803df08f44-8970277e17cmr88405466d6.57.1770735601513; Tue, 10 Feb 2026
 07:00:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com> <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
In-Reply-To: <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 20:29:50 +0530
X-Gm-Features: AZwV_Qhgjq0boPXu0xwU7HW2fAWTgeiH8-9zr2yGDjBZQoUDn_G_FfRF9CxJLcM
Message-ID: <CAHz4bYsqkJfdeMD41gNf11suJBj+4zhoy==mWdEqtZ-B2S_6Lw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: 6RMaIUHr7p_OAZLQ3BawJWtgUhDSC_61
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEyNiBTYWx0ZWRfX+Y44pffe3UVY
 +hnWhupgyg8xXm8+wX4R0C4L3aRyYGloIwR+XoZdKyl/RExaR12XKax81XtmCiclDELR9HQjrDU
 nZmO9bQ1BMnihadN/udW7W1X4MQAqMOmlga17rsmyDxOeHptQ+6s/eDVO/obHRopDvnMuZ91h+U
 RkBnhe54w14eDX0QPWL0lTBqryqdJpUJFHvTFGsTdxh2shw35qXbDo/rQyecBlSy1rjYgy8W0JG
 XgL/0D2mM/2nw11TVV+eP8I4xSl7MLpCjlaY3wIB1WiDFzSMtTMcUBOsieAuxkQ50QCVrsbm66D
 ogL3bzmB2vbNO9c0KiWllJdEXMcqcaN7nnJSYhj93B1x3R9uHiViUgpLeOQINiKyD+sk3Q0P8MS
 b+QsRdk2uUTvcADWtJed+ExE+DuXJtxuH31gmj29AarK85hMC5wClb7gT41gMYGGq0mCu4QB9xf
 9zzjyVPCpE7iwt7v0/Q==
X-Authority-Analysis: v=2.4 cv=dP2rWeZb c=1 sm=1 tr=0 ts=698b47f3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=nlazdkki0YCUCd2hNbEA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 6RMaIUHr7p_OAZLQ3BawJWtgUhDSC_61
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,mail.gmail.com:mid,a400000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264454-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: 14F1011C2DE
X-Rspamd-Action: no action

On Fri, Feb 6, 2026 at 5:44=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Fri, Feb 06, 2026 at 04:16:42PM +0530, Swati Agarwal wrote:
> > Enable the tertiary usb controller connected to micro usb port in OTG m=
ode
> > on Lemans EVK platform.
> >
> > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
> >  2 files changed, 60 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts=
/qcom/lemans.dtsi
> > index 808827b83553..2710927c9172 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > @@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
> >                       snps,dis-u1-entry-quirk;
> >                       snps,dis-u2-entry-quirk;
> >
> > +                     usb-role-switch;
> >                       status =3D "disabled";
> > +
> > +                     port {
> > +                             usb_2_dwc3_hs: endpoint {
> > +                             };
>
> Is it USB-2 only? If not, please define both ports.
Hi Dmitry,
USB-2 is micro USB having only HS-PHY so only one port is needed.

Regards,
Swati
>
> > +                     };
> > +
> >               };
> >
> >               tcsr_mutex: hwlock@1f40000 {
> > --
> > 2.34.1
> >
>
> --
> With best wishes
> Dmitry

