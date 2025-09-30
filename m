Return-Path: <devicetree+bounces-222807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAF2BAD29F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 056C81C8183
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7359E3043BA;
	Tue, 30 Sep 2025 14:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eaCz3Iom"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0A1303A0E
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242194; cv=none; b=exE4SHrGAer88qX6RaBmWPdYZdmx5jUYuKQZlhwiO/o/KFKwLqCnxZ4wUhRx7Nl6DEa9MzxHaFg6BFjS0g05DWZrbAaxnMBRHpuaVv3a5zPPKxTe+AuMLegDOFi7IXWut548uv1V6U4sf9a8jJkLDXmOrLJd4Jp/jcd5Ba4/OmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242194; c=relaxed/simple;
	bh=RVn1Y7CUJwx3eNPVEiu6A51ryxvfn843eX3o/eMwsLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BdYhfBqp1h9LUPpDKGHxwyUHpnsRcDKzb6XVG7eHdp0jRMghVithjc27xTb3kBCXsLnUO1ABUmMhgeL6ERIAWmkWXimizkwVtHUugXQWU/7vnDaRmRnTQt/mnf/d4dVeCEhg2FBhxeic3fQeD488hKhizF1S1gWhKr+d27dDTq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eaCz3Iom; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBG5f6027373
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PCoEmaeNR1CQ408nB7pwWG6+U1aaMDJRP47t2kBBg6w=; b=eaCz3Iomj0yPqZ7q
	HYjg1zD8PNOaIK0wgZo6lhdjAqEC0o6pigA90iQx1+JZYyJ6DUABNAmzd20Y9Jj8
	S7k2n9PDhQ6kTrTq2I/+7avdXa/wYyrfbPEXGGhp+Ftu2PPHtuSGfQxYV8IW+kGn
	7SFCIB5bgLJhqZ7snConY/5ltTC4vzjQkCGIj0z8pPtmrSFvRI39K0TBMhKMx2G5
	Hn9sFTgyrt7zkZiDbY9VDWed3GfvC4NNmmgl0MzbZrBE78flkm8L5vDpKP4RH405
	FlSwW5fHpy+ag2i9poKVtsWU03Ii1id7hOVf2oQA1C9uUdBP/Jldbb+a6oRnRDw/
	AfH32g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851h5m8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:23:11 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3352a336ee1so9372485a91.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242191; x=1759846991;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PCoEmaeNR1CQ408nB7pwWG6+U1aaMDJRP47t2kBBg6w=;
        b=oKjszQbkqopKfJ3o4K/fIunPrJNqNtHXG5pnajpNu3T9aHzyYCGV988O68p0lCU6rn
         enGwpvXILDtpLgPzzSn1N7Ncq52FcOv/23gld6pdPQg6ElHDH1RrY9ss8JYUYA777NpZ
         CE7szSG5KW+NgVWdJoPGjyJEU8YhQbIqwdU9zSVMJvI95qKZlmmYRnGVQpajJuowNuCM
         JjRvQLzKZGcIof6BkBNw9YMjQj7D6EY8d28iqq+bWgy1yFlr9pZn591p0BzuCF1X/E1p
         rY6DoC5Jqo5bbvVp8my2uE/XPbye+muWdeieFZteFhz5qfkH9KTHwQk4fn9pTnbQL9l4
         e/JQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdAuqLAc/vEJmk3tnof8e6FAnhHVnSxm3TSbCF7sU/vvXyiYBFZZt+Q/6E5DQL3U74GB19M/F+xLBh@vger.kernel.org
X-Gm-Message-State: AOJu0YzWlMeRfsEUCgt4gE8MvWuo4S5OOmLXEC8RIhj0H76cVMxdDtbn
	tNrMZ1eWKKiZ1xt0OP1lHHYB0EhSrx9f83wV6w46eQVUELtvYGxW5oVoEKa+UZLnIC9XEyDhJRC
	An9caZiSAJRvp2NnR+bmr+iYaqUlKite7Xt6JDp8MXpy2Mi7Y49e/I08B35IEKUnR9U7EN8lcOZ
	6/nR9e0irCV9zl4TFqC5sIPPOkQTIxb1i6GiY4uSk=
X-Gm-Gg: ASbGnctBw39/5ZuM+BSngJcalvoRuqAXyTOjJsWig2F6/f6y/Ipuxwq0wlGK99xRuO6
	Qmqrj5q/Grrp7JEeJCCK7Eh9OxT8skSMIFO2L0/fZIfIlomLAeV+yophGBEsu/YvXEGaxg6bx/e
	Mj1bFkjB//UjhGNiq6oZv/kDYoVcyuwn5c9rSYjKq4kGNytHm1ogctVjr8imE=
X-Received: by 2002:a17:90b:1347:b0:330:6edd:9cf with SMTP id 98e67ed59e1d1-3342a2b0f1fmr22671391a91.22.1759242190816;
        Tue, 30 Sep 2025 07:23:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzb25ExFEcqNL2JTIBvO7jYPWKzbGJdh+trj0QxoYd4yATaY5jEOtcnTkr/l1fj2D9IMQTydqQPESJBbvdJLc=
X-Received: by 2002:a17:90b:1347:b0:330:6edd:9cf with SMTP id
 98e67ed59e1d1-3342a2b0f1fmr22671322a91.22.1759242190186; Tue, 30 Sep 2025
 07:23:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-15-8e1533a58d2d@oss.qualcomm.com> <tsh4w4paux3g772ynjcbjx3ntz6ynqx2ucd273yz3ncscxihjk@dwwjbcqyheuo>
In-Reply-To: <tsh4w4paux3g772ynjcbjx3ntz6ynqx2ucd273yz3ncscxihjk@dwwjbcqyheuo>
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 19:52:59 +0530
X-Gm-Features: AS18NWDHg7DGICX2lVp5x-v_No7K2LhwMINF4nyiPyA8aZivXeot0lqk7bF6EQg
Message-ID: <CADhhZXY8t7fnSiq7g2dsAE+aQ3AvO5_0k0Ft2_12pMhOjoirGg@mail.gmail.com>
Subject: Re: [PATCH v2 15/24] arm64: dts: qcom: glymur: Add PMICs dtsi for CRD
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68dbe7cf cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=42uetSTeVEhJ1EzdpwsA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX7CLVnsSIinOM
 znaF1PWsDtRkt2ZQ5jRoSbuqm/pwSKxp70anlJHKYiUqc+h1yJJGxfi1niqhOy3hgdDgTF4ahbi
 3auaESkO3CSST1OoqU030ZBiLA7gpw15T2xPTdc4v5eKLOOkZSgESEDrf13Uf7/DM1g5ZyCf7cg
 MdcSmk/rYDmCG/lHWSWyVxxZy8lFOuaMmc0RRN3y00TkyPTfSSOoC4s3e1kjuY+XLbi3UNwj4bT
 UZaqiVMc68q/HmUbdR73zLzQN2buBKxtiglHmHC3aiaQ/CBjeclEY9KXYPIatlgj2ZnSB9uK/jj
 8mfKlwh04Cv/e+dg+uXEW5I6wf/wuI552ZosH9MrezD7aUOYdQ+2zLqxZcNesxvel/Qz+uyo6NC
 9RxbWERvv2mzrBges9ZmpG0l5lGhfw==
X-Proofpoint-ORIG-GUID: hAUzRzYhVESwGtepx2MSXP_GNAgaVAAO
X-Proofpoint-GUID: hAUzRzYhVESwGtepx2MSXP_GNAgaVAAO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

Hi Abel,

On Thu, Sep 25, 2025 at 1:45=E2=80=AFPM Abel Vesa <abel.vesa@linaro.org> wr=
ote:
>
> On 25-09-25 11:58:21, Pankaj Patil wrote:
> > From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >
> > Include all the PMICs present on the Glymur board into
> > the glymur CRD DTS file.
> >
> > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts    |  1 +
> >  arch/arm64/boot/dts/qcom/glymur-pmics.dtsi | 19 +++++++++++++++++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/=
dts/qcom/glymur-crd.dts
> > index e89b81dcb4f47b78307fa3ab6831657cf6491c89..97f6eedd7222368f5cbfdd0=
2e9c4d87261d7f19a 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > @@ -6,6 +6,7 @@
> >  /dts-v1/;
> >
> >  #include "glymur.dtsi"
> > +#include "glymur-pmics.dtsi"
> >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >
> >  / {
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi b/arch/arm64/bo=
ot/dts/qcom/glymur-pmics.dtsi
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..59dcfb67a203a7c57640603=
7377fc9fbdce51a97
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
> > @@ -0,0 +1,19 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +#define PMH0110_F_E0 0x5
> > +#define PMH0110_H_E0 0x7
> > +#define PMH0104_I_E0 0x8
> > +#define PMH0104_J_E0 0x9
>
> These haven't been used anywhere.
>
> Maybe you meant to define the ones suffixed with _SID, like so:
>
> #define PMH0110_F_E0_SID       5
> #define PMH0110_H_E0_SID       7
> #define PMH0104_I_E0_SID       8
> #define PMH0104_J_E0_SID       9
>
> and without the '0x' as you will get a build warning about it.
>
> > +
> > +#define PMH0110_F_E1 0x5
> > +#define PMH0104_L_E1 0xb
>
> and here is an even bigger issue. If you define it with '0x' prefix, then=
 you
> get the warning, but if you drop the '0x' prefix it will fail to build.
>
> I'm sorry to point this out, but this hasn't been properly tested.

Sorry it seems this somehow got overlooked in testing and compilation also
passed ( without _SID) so it went unnoticed. Will take care to correct this=
 in
next version. Thanks for your help in identifying this.

>
> Thanks for the patch though!

Regards,
Kamal

