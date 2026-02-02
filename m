Return-Path: <devicetree+bounces-261679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPy8NidVgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:41:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69EC9432
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:41:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DF4F30038F0
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD45A29617D;
	Mon,  2 Feb 2026 07:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SZhxtvRI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IgQ0/BrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854BC2874E9
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017828; cv=none; b=QiRSx+FApJVzNAPUbHgorliUz7fbxEZFxErtPgT4DLZQtNLaeZe/t01eKPL1eXJNRSFzUlDArOCO6xl0+kTRZnJrIUbzY+HXL1jDHSuwmJeajWAiZsV3/DbXEQhGsv0xCfAbXfY2DT6m5jmA0S7kjCu0apjtjeMc2ZLUSSlUK08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017828; c=relaxed/simple;
	bh=JchN1HTfWKzcSZkNmVlOJxj6OoEKbRDmLsShWIFsexI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OdqxDlfpJNm0TO7GjfeuZKOnoAtT1uW0xJZOIQaM53tHGGU/0tkX+M+CYVe8qW+PxzzygH4yzF4o9ATF/Mxb750XOfvaMt865ju6wCaDsGLzv1KXFilIUQDNbhwJxXHqTgiuEd97wqB+wGBu/4mrGfpW64ymj0qoWwQyTWzrEXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SZhxtvRI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IgQ0/BrY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611NUQhT682629
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:37:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rD0/krDKTbOy3n4rVKSe8Spt
	la74b0imf2GFeN1Mx7A=; b=SZhxtvRI9+mVLdalOyxOhNZ0XHQ2gB+zdjuPZtWw
	ZJo8vInAVqdrNSwO7ah5He4Gl5AsXZtIbPJbLu5iouv6eAqf5Ik5PuC7sGyJqdEb
	RvmQwu78db8o7BElQBmiGH7ux8UD5spI2D+MaWAqw5z7+YHWbpqyLSnRXP0jdPA9
	fVy+FWKYrLXR1jkrXFBD0g9XrfuJtP1raYMWCia08cC/8ylMwirCBXntkpSiuOFO
	Fw7kitmr5HzyRyV6YQZb270kZpXaMpRCTGc6Sc+nxAgrnIabu8/aeltnFCre4QBI
	xPZwg6nCKzmb8F7snS3Ik9ccXLPlawSy2JknivrrRDSMbw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1b17vdgf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:37:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34ec823527eso7717427a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017826; x=1770622626; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rD0/krDKTbOy3n4rVKSe8Sptla74b0imf2GFeN1Mx7A=;
        b=IgQ0/BrYCElB+bSF4AbUtYmIge65tQMSnUNDe/T0rgVro66mUABH/gE+0Sa2dfb2nf
         LGP4pcj2VlmHNZ8UzoFv4nRWIBNbHDnXekKH7jWDJKMtM4YZZJfiZdOqAD4e9DGhN/mw
         Z4wvdOHMHPyYJJCxmZbYxCTe/8UCzP6/vwwaEaWMuiO0wbW1U5MJlGiU//cTuDRkK7X2
         gm+0QlCXDEKb1vaR8q8DREkddZrVzB2I9ZtxnWkmGVCNx5vohxEdWMLbpJt8o2Em/EVA
         dMCCG9DuS3lqPKUsgC1lXRQE6s4RJbkYCm9k2LD5hv2QeMJ8egO16iTfPaKX6W63ksFG
         x4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017826; x=1770622626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rD0/krDKTbOy3n4rVKSe8Sptla74b0imf2GFeN1Mx7A=;
        b=QvB4JBHwtcqtDDqmB35C7aMKnPO27faAHo0n0VDdBFuswR37VhniQwrdOFjV/+aS6h
         DJYyf65BtXIUv/HYUnfn1jlG+mqFf+aM1K+yngh9FdssbaUoXqX9ggR2FghYHefpWSb5
         Cnk6chFXsfKxsHg8HEKljhOkliFU5zj4gJ3C9PodZnJPdVFO1F/8ALx8Li67Lu+yyO1N
         X9kzZQbJrykWLR3EAvUdHAtLaGgpURvwFPU6h9jwoArVISOXgdI+aKdWd4aklKJW08U/
         M/r2Qn6fMj4Cb6WnBvSS612PLVIp/HDUatt+rWRyI/Wo8gPIEc2/Et6l1zxfiRnvmSp1
         NpZA==
X-Forwarded-Encrypted: i=1; AJvYcCUB88Lu7uVWJLr3rklmYIfbeC7Z0t/3h1/qLybuy5Jgo4GqS3wbX4VFVzEU1Sf9RLcWZjIZJVKNfQ6r@vger.kernel.org
X-Gm-Message-State: AOJu0YwQP2EsFIIfKipOZBrHOg3LNHln4L6TZ6++GgS0PsMWtQme9XTU
	m+2t3OB9X+BeAVsIFV+hm6bjUfYrCZb4ZfrxI1KPjLbrB/36eFUKz+yzppZG64X3UhgSpVfq4Rj
	5kQbqh/fYJ+4XJCLfkzU6xhYmh8rYt82a791R0dU2OPrzIaW5wYahytrP13e0V6Csbb2O/pdP
X-Gm-Gg: AZuq6aJTMA/O9ZEtBE9WF+gV9x6CSiMGEFwwMqS2AtVGDQ0nOHHYB7GruFbRqtdUZGR
	t5o3tewecVRPcQdq9wUtNiVQx0harkHDGhHQoaCTwwIxAgBIDGFrVbLf/HURE3ss5kVFsfF1V+v
	bjA3u1FjtnQyqayAKGYlT8oHX5+rcibYmTBPNRnXQ1UdCoILLwOwBaGuGmy7DunRIiAPXrvDm+9
	GwHd5E1gGRRAj/4jZHqiyWtB6rKB9x3zCsW0D9b88Wp6/cpnmLkdga7Tqw8ZAN4RKElbMltFH08
	mhsmLGLTbMP7dmdqV2MCOvxwT/RHyADqDi0rBXnd3C5CtrzAqMDWFbfHnE5Yxe5reuK6OtHQYSr
	y12PTQPth9z7yvuAHDP8U+ZnGqXmD3L16iEqvQmu9ioPK73chWzcav8tPfloUDzW6/c7BTFbAfm
	YJVbyETOzqehySy9qVUbC5kq1lZb41ukzb+uPF9Ag=
X-Received: by 2002:a17:90b:1e02:b0:340:ad5e:cb with SMTP id 98e67ed59e1d1-3543b2dc6cbmr9558965a91.8.1770017826119;
        Sun, 01 Feb 2026 23:37:06 -0800 (PST)
X-Received: by 2002:a17:90b:1e02:b0:340:ad5e:cb with SMTP id 98e67ed59e1d1-3543b2dc6cbmr9558949a91.8.1770017825669;
        Sun, 01 Feb 2026 23:37:05 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c64276efd8asm13744067a12.7.2026.02.01.23.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:37:05 -0800 (PST)
Date: Mon, 2 Feb 2026 13:06:59 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: ipq9574: Enable eMMC variant
Message-ID: <aYBUG7ixvuTAUJW5@hu-varada-blr.qualcomm.com>
References: <20260129062825.666457-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260129062825.666457-5-varadarajan.narayanan@oss.qualcomm.com>
 <f5af2b4f-e2dc-4aec-99c1-f06ef0eaa000@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f5af2b4f-e2dc-4aec-99c1-f06ef0eaa000@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=69805422 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Vhrj7KzolLSZUphf82AA:9 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: h4p2dYqlqjWjaPl6J9iWyaeeu9ActU0O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2NCBTYWx0ZWRfX/25vveCH58sG
 aB3cjUB2R8cao3RuN8V1ZtatmpYnn3QlR+v9Hx2eOqPtJqo63kTRzkkw0XG9ArQtcxQbEjF32OD
 i4hsoFZEGxLtj9xoN+FIuNWJhJ962nhf3X1Z5KW8CLKlYafrO6VwPWh3k/6CEFcTqtHobEDIaJ2
 Ciymh8EkjRtb+R4Uw+wNLdHXXemrElj6NPj65lorGoUDQwlZh+47XB/GcEakZbewz1m5k+8hSJm
 M1TJ5Cx+2cfoYXuFL2oONgCqncQLBLMpJpu0hvnVxynGyIcAXGJ3WPIffi/Fb2mwI2j9E4d/SXd
 Jj/b1nz9MGJojkAfcUCqSgRvuqZFc84Xz9/S9W7nPSntCNK9qoqsT3p2wJCk6wOIvr2NGbsnUsl
 1tiYA7lU8Cxl60dk1vXIRNjFjrVCk21RkXyV5Mwn7KTjrTqbGvMMMYZxMVfO+3DcFY/XqRix4KV
 OtEsMaLkUrPKMdVMpZQ==
X-Proofpoint-GUID: h4p2dYqlqjWjaPl6J9iWyaeeu9ActU0O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261679-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C69EC9432
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 01:25:44PM +0100, Konrad Dybcio wrote:
> On 1/29/26 7:28 AM, Varadarajan Narayanan wrote:
> > RDP433 can have NAND or eMMC based on a board level rework. Since the
> > same GPIOS are used for both the interfaces, only one of them can be
> > used. Add a new DTS file to disable NAND and enable eMMC.
> >
> > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > ---
> > v3: As qpic_nand is disabled in ipq9574-rdp-common.dtsi, no need to disable
> >     it here. Just enable eMMC.
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile             |  2 +-
> >  .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 29 +++++++++++++++++++
> >  2 files changed, 30 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index 6f34d5ed331c..d5fe12ef4300 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -26,7 +26,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp418.dtb
> > -dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb ipq9574-rdp433-emmc.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> > new file mode 100644
> > index 000000000000..249b8e07db8f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> > @@ -0,0 +1,29 @@
> > +// SPDX-License-Identifier: BSD-3-Clause-Clear
> > +/*
> > + * IPQ9574 RDP433 (eMMC variant) board device tree source
> > + *
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "ipq9574-rdp-common.dtsi"
> > +#include "ipq9574-rdp433-common.dtsi"
> > +
> > +/ {
> > +	model = "Qualcomm Technologies, Inc. IPQ9574/AP-AL02-C7 (eMMC)";
> > +	compatible = "qcom,ipq9574-ap-al02-c7-emmc", "qcom,ipq9574";
> > +};
> > +
> > +&sdhc_1 {
> > +	pinctrl-0 = <&sdc_default_state>;
> > +	pinctrl-names = "default";
> > +	mmc-ddr-1_8v;
> > +	mmc-hs200-1_8v;
> > +	mmc-hs400-1_8v;
> > +	mmc-hs400-enhanced-strobe;
> > +	max-frequency = <384000000>;
>
> These are all properties of the controller, which the mmc core
> later validates against the properties of the card, please move them
> to the SoC DTSI
>
> > +	bus-width = <8>;
>
> This is arguably a property of the board, but in reality it's so
> common that it may as well reside in the SoC dtsi too
>
> I'm a little surprised to see no power supplies, are they always-on?

Checked with the board person. He confirmed that they are always-on.

Have posted v4 [1] addressing the above comments. Please take a look.

Thanks

1 - https://lore.kernel.org/linux-arm-msm/20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com/

