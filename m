Return-Path: <devicetree+bounces-264564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLJoLNzfi2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:48:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4ED120838
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08585305BBE3
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96C582BEFEF;
	Wed, 11 Feb 2026 01:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="clF4rIun";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G7eSU19r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C7F207A32
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770774459; cv=pass; b=CaeDHfXd1SX+F7uz1mXGvUAA8TNKy8fkJC8BLYpOJwoIWNIfWXYE5rJkt1Zo2qvDZwuZHM52JyVOTw8IgFey9e0g+aRMoqMl2otoTAmc7MChx4yYRzMRXFNrhZuNiRSS/uKs5gMoRH6cR/Csmdk/KgfvjrlTy9p5FYyXkNHdTDY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770774459; c=relaxed/simple;
	bh=4eG6wLmOM6flgSHRCDz4vsd/5YGlPakWzpl+iKk0s6c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZANtj4JANog1v/hmULqrcXp3BTMpAjacPDCCUffaFfpDXslBpIOuJ8ATo/iIjrYW5pzYHwlRpzH+4WQzeO+q6pUiDP5rtYpROyMMyZGQ8iCCFFGgkuboYPgxguvkjt7VOwCSMsy0SxgLguHI6eKf17lI/fLvTSAQ1qIPIvNwc0k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=clF4rIun; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G7eSU19r; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AHTcni3203731
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:47:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r2DmDlrXlI7BEL++7DUl1rOw6pprf0Rvnb1aZwqREnY=; b=clF4rIunueDKO8NK
	Rz6PXVSMo+PVbJyyGIN4qCOel8daEfzn+NF4XS/El3nEt0Pi/VLqwveriS17rrrU
	yT/tS6QGXbEowHlOueLOPgFvseRityaDxrSkB3PJF7afCH/4Vsujy8wteMzdKVs0
	rESA9FEbWIPHtKHJVr5cecK9ukXU9ud5nZI20zOQU6Xni2Ij/BQ3ZQvK7cDwOxNH
	TUZaLZzxKHfw+KzR+dyUma+e5Wlf6gGbGH+n06FmN5n2Eoa6Weg+77Gv4tk0MnF6
	ffzU0wMKopt406lXzWzscn7mwlo1JJ3RKDrabRh6BCMT4g9rwzVtvt0JiSB8b0Fs
	w2wEvw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c894g1e81-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:47:37 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b6097ca315bso13601632a12.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 17:47:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770774456; cv=none;
        d=google.com; s=arc-20240605;
        b=k1qjyvG9asqF3b2QQlHlIJ2g/DAMUBtqESP9djv8K4mcLmSJ4qIvseiL7LT0S8I46l
         WPkEbJBo3CpnpARGmcD04UkfywPCpL3asX8tGatzTGcBh3QXR4LskuL3X6c3Oiof7jqS
         OIGFqwx8Cu06VOlZ9HnPI2bLg2GpIm5EguhLJM5LdHlI2MEz6hKBtN9ygmZDysymNtll
         Lp+utahYu1bMqqc+dUbqJOVvK+8d4L7AvTy1Nqspz0dDFELV537yzRRsSZ8cztHxcY1c
         3CiNjsl63x7jGwhwT+U/vVOqKLuhE9osZdkv9LzlS4Gg6i+nhKu+zt+CUg1Y0nmuY/Nh
         zBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=r2DmDlrXlI7BEL++7DUl1rOw6pprf0Rvnb1aZwqREnY=;
        fh=Kmhn/Lf+Ve6srHtxygc0j1bIRTHlpLD+v07E9b57ADY=;
        b=bL+Z2ylbvNVqDdWa0hTUbiS+VHEsR87wVOyXxMuqTnNbfYIomKR25dauXrxlkgtxhW
         QhhFpLkE4u1Kli1+RsDYy1jgFQBCYyQjeuwwswGhec0FgRcrCe4RmN6sWsyiMNTS4npf
         tupUS1PuhyrWzl8/yovL9jqxy4TX8yxiUtw3xpbMYUPKTke9XXcBBOk+0PEHwEH4Nr+9
         a4e3Eqy4z5LpDADTEovUvpYbtQ3ot/v9kWRuTFM+CyVZfWJP01x655r0MydIo1tfJ2w6
         5vRqnEFOi4skziAuVHlHKZWaQtKvUpwPbujboZMKK1Y62YDM9u06vdvo6gHHhR8Nf5o3
         +CBw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770774456; x=1771379256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r2DmDlrXlI7BEL++7DUl1rOw6pprf0Rvnb1aZwqREnY=;
        b=G7eSU19rCNOgY2VnavcSd/9kYxizXrEkMHzPhQo9mwKrR/SBysPmyI4MtsbJ6Belcw
         hsgVofVuw9OKJMb42muvgu58f1hunvTB4wPT3p6/0FVGFe/FFqg+rHG2MfHHFz+sjQUL
         8jyESB1x97pmP17pVEkbvDLSISJzdHN5cxmx5BwAh9sHbALVxCJERZjpiR68phzhcLZJ
         GiMKeNs/z+fcU+roTZZTp25i6EUzWIdwe+0fYffIYq+dKAG6m7fxe5TJp+1Mt+l4SHQF
         bsUGRUEJHcL2viWo6GOMtyk0/2st4XXthedUVUsNFa4j/hnF93zM7R6b1KGrjBbE+tmk
         kZ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770774456; x=1771379256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=r2DmDlrXlI7BEL++7DUl1rOw6pprf0Rvnb1aZwqREnY=;
        b=LOFh1dtEECnZXxIr26RrTDDOObd8A1MpaJU7brJ/os4ry3pgtSTqIoB7502X/5xxOb
         Alq8T/7F5Md9mnEZSfGJmP4xQa59qE5XXER84exuxcSNEesyu/veVj9nwbVc/M96DhVt
         FHa8IUFb/7U/MtckJAwfaPEOVhRIQ/p5muyUXTmMMicnbiffZweuoE4ZNBO9I6JwfQb7
         4yEwvgtyh+gnGGv9BReeLAGFX9asTFKVcgMDa8U1DE04GPTbV0WhB4nPqjoDkHYx8T9y
         DNNhk/9XRCmiTY8eCVSRjnop6y+VeYh/nhSKlGM0krpYdZbfo+Az64y9clfYAZcJSDJA
         Ritw==
X-Forwarded-Encrypted: i=1; AJvYcCUyI7WZ9eVw1j7mdQmOeceNGT1vHYmMAP6h7hNyzvTiDstNhTGnxdKTfC2cXN/wkjHzA0b6/iaI9YUz@vger.kernel.org
X-Gm-Message-State: AOJu0YzOyKVTEYn23GrLyoS1tWLT2dvycfbO0+1NPzRPujnEuXI/KkXl
	KUfZzn8GHlbFzLg/qdnmK7E04FY++qarzlfM5v+R8nC71OVRlQgK7/5Y+G6XsozwXa3Ja+lw7J1
	OFdKo2fi4BgrK01OU02wSz5uIvxTHctnoHXOg0YGR+mw8nxL27P03Uem25z3ycefZ0Lyq7BF6q1
	HL9zKIBmJgFxF+/NTnPsuyu0OOEzJDgDGlEPt67Ug=
X-Gm-Gg: AZuq6aI3JXmuxhpGBnEJuAzV8hCwFcAOnoVT5MYlTZ3CqavbBK5jNph+/gOBSaRUW4Q
	ygvqyNHdTC367POaMPQY+HCPj7KiqYbxNPUz9hD6KcII5zrip0R/6jsXCS0+WVXjqSIEQGwZi3A
	N/p6/+0upFoA2DqTe1IVTIfLc72hMCiijyGmThm9T1x12XXfiuwvw/SpNl16C5klfMVKPGErPOf
	Z/W
X-Received: by 2002:a05:6a20:2585:b0:366:14ac:e1ef with SMTP id adf61e73a8af0-394324a82c3mr474060637.65.1770774456085;
        Tue, 10 Feb 2026 17:47:36 -0800 (PST)
X-Received: by 2002:a05:6a20:2585:b0:366:14ac:e1ef with SMTP id
 adf61e73a8af0-394324a82c3mr474040637.65.1770774455593; Tue, 10 Feb 2026
 17:47:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com> <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
 <CAHz4bYsqkJfdeMD41gNf11suJBj+4zhoy==mWdEqtZ-B2S_6Lw@mail.gmail.com>
 <b2cbejqrxttssho6j5d62u7mhkc5mn7vybfqlhbs2oeca3oq27@w6ws3ogfuwsg> <CAEiyvpre9_C0KgJEGmmxDznxfAJLA6zkK9BU15tODX5nESc9Vg@mail.gmail.com>
In-Reply-To: <CAEiyvpre9_C0KgJEGmmxDznxfAJLA6zkK9BU15tODX5nESc9Vg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 03:47:25 +0200
X-Gm-Features: AZwV_QjFn0OdzEYmt8OePqaXaRvlXZzSUr8PRYbYeRpKM-rxcaN0O-lOFNr-Lys
Message-ID: <CAO9ioeU-8zzj0Rps-qq3s432kHOLVjZRnz_7zXgn7JR019d26w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
To: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Cc: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAxMyBTYWx0ZWRfX85jbJPOFeLWN
 ICgALM9z4sovNRLYnKRo3xKgQMLnnR/WQUwaWonm5iLK7nd6YAwyHesvdoRqaM9Kb8l8SmjA+W/
 XJuGKQOSMsCaChEtxrE0lB83aecGLoYTPcYVt0l+VHI7QQcgK3kmvrnEpE/K5sfEaQK53BRT0WY
 rewoIaPFyboygOqiGL0Lpg1GDxBNdQ04nw1w7bXeQkK2cp5LwGsStppu4b/56fMhBGmfzg7YG5E
 9kOXGDlI+zSxt7cdEpdN7oVUrHZf2tuNW5186NmKxm4BxjmEF8JoybbdM22Dqz9dCEjANVv22S1
 WjN4jksvc1Uc4aSl5bWs0lKHYbtacXSxFuZxrM45UC6q77n0QVykANDjBjh/e4Jtjs/6s1a3PIN
 qes1gPbkIUuzxvxvj7QcOHCl0ns07fsD6emtiz1EwNap5YKYjeob6Oiw+S5hR4h/9E2/mnZvc2/
 I2Cfuc7cNU9pPQ1EKUQ==
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=698bdfb9 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=5cnOFmeSEoT83ppDvU0A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: ISuH7bMLyrWdb61KVFuPBvN5CZpJaqQB
X-Proofpoint-ORIG-GUID: ISuH7bMLyrWdb61KVFuPBvN5CZpJaqQB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110013
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a400000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264564-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: 1F4ED120838
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 at 02:23, Krishna Kurapati PSSNV
<krishna.kurapati@oss.qualcomm.com> wrote:
>
> On Wed, Feb 11, 2026 at 2:39=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Tue, Feb 10, 2026 at 08:29:50PM +0530, Swati Agarwal wrote:
> > > On Fri, Feb 6, 2026 at 5:44=E2=80=AFPM Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > >
> > > > On Fri, Feb 06, 2026 at 04:16:42PM +0530, Swati Agarwal wrote:
> > > > > Enable the tertiary usb controller connected to micro usb port in=
 OTG mode
> > > > > on Lemans EVK platform.
> > > > >
> > > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++=
++++++
> > > > >  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
> > > > >  2 files changed, 60 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/bo=
ot/dts/qcom/lemans.dtsi
> > > > > index 808827b83553..2710927c9172 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > > > @@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
> > > > >                       snps,dis-u1-entry-quirk;
> > > > >                       snps,dis-u2-entry-quirk;
> > > > >
> > > > > +                     usb-role-switch;
> > > > >                       status =3D "disabled";
> > > > > +
> > > > > +                     port {
> > > > > +                             usb_2_dwc3_hs: endpoint {
> > > > > +                             };
> > > >
> > > > Is it USB-2 only? If not, please define both ports.
> > > Hi Dmitry,
> > > USB-2 is micro USB having only HS-PHY so only one port is needed.
> >
> > micro USB is on the connector side. Here you are describing the USB
> > controller. Is it also HS-only? If the controller supports HS and SS,
> > you need to have two ports here.
> >
>
>
> Yes. Tertiary controller on lemans is HS only controller.

Great! Is it written in the commit message? No.

>
> Regards,
> Krishna,



--=20
With best wishes
Dmitry

