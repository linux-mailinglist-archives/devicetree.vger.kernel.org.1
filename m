Return-Path: <devicetree+bounces-182612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A3AACD7DF
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B66A177B77
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 06:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C7761DF258;
	Wed,  4 Jun 2025 06:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OYwo9iGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8022D1A4F12
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 06:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749018889; cv=none; b=nE6Us8zHcjsrIHja9FJvwYiaESvbFYjlZdMeO0kDBGFCSe/e3HBlXiHG6yA/uwIJ+8MmPJ4EPr2wrKGY4WWC6ooVs4CqMBHaB7smZM/0ASCDFSzupUZ7Ko05adP00myLhSkn/AIw1//VoaKs3HtjP9ztSh2jBlGz/i3sfcybnuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749018889; c=relaxed/simple;
	bh=T9079cpPJMqy1lXX9Kc7OWLUoMW9Z59kC59hAowCd8E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EQfZA2KF3bg/yBwCeBSmcInm6rZd0nTKT7pnYs35F7/REI0N7dcx+FB17g1iAC33ysodlSSyYEB2nN4BqIAGvbQQL9LlncP+yCOdneAjhCAhOPxtt6+uCrYv1/tx6ofTfe+Yk95dNUFQKEW1VmEhdQuhaW4Qew2XPmcnl2yWQBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OYwo9iGN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5540G0rp014378
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 06:34:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T9079cpPJMqy1lXX9Kc7OWLUoMW9Z59kC59hAowCd8E=; b=OYwo9iGNbz8rlG/f
	Zn8yg9Zbi+SZtqFfEkFy7SOpk0YH5F6VTtbtzD9NdA6Em3959IMxHbF/YxI8mr4s
	6bcSRPOdjpC8k9+Y4qRgqemf66HPvktkC3uhIjxzCk6ApfQiyrXpy8MqfZ9jGHhd
	YXz4gqfAW5YWQT4VT2mIJCqEt/7aaCu5hQm/6gef25+SZTaXUp5MmWVXzSLsWjUT
	YG4gjqYAfv+Ze5U7c+IFp3rNL4PR6Ou6WSKe4FQ12XcWStxIb9r1lqyBRfGDnXQj
	nn0Anetm0k5cgLqrxClXbMFCL+e2eY49AOyIp//MY7IHs7fYwiQSrr72bKOTg5R7
	hSK0Jg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 472be80sc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:34:47 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311f4f2e6baso6258092a91.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 23:34:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018887; x=1749623687;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9079cpPJMqy1lXX9Kc7OWLUoMW9Z59kC59hAowCd8E=;
        b=gka5dkhc/9ANeIPb48mJ+VVq0XcSlJQkUyMvVb6RBbnVN3ejWyY1Fj0SkaoEWAOtCb
         XZiJ7QHPN9TgS990fhwBJhikvl8DzrjtZsE1TSTMMlXgtE4cRIfcHKUOc7J08oP21rC2
         Ovqy4GpvDAdHN4eWFKeeWG/olfFsmllIHEmiztZTFgQrb8PTUnjzo3Zlco6gJDL8FBPn
         gEn/Ggb9ajEzzF2SYkjAWoYpm9M/e8228Ocx+6/lFF5H/fLMvBQaOn9/nOoorsw1KrHi
         MU64ESSuwvdMa9YR5II/zRsgoEdpvD4E7jFlBt/XwfRgdk2Z823W4hCy33/ksHxXhUyf
         mdlw==
X-Forwarded-Encrypted: i=1; AJvYcCX4738FBewYfxUKt6k/iB5QyxCSK+s7I/jQ0mfEhc/p8gLzsIKTytJXE2TJvgpk4BBEryQO1nJXwr8v@vger.kernel.org
X-Gm-Message-State: AOJu0YybiZEZg5SebJSFgd2VlB5XLGxwfgiqxMaw9sJG0jxrRJ2YA3iK
	yuaUNW7x56oNP4AD1w2qPNh299UkMmrDT93QqclAy8qNh3CAOrk0ONcSPBRNkqREgHZz9yEBq3P
	slHbmMzcPbtLmYamlJKBstbJCqU9wwVdp6bXHDTXr4eSCwIhOXwjAEiDWZinPNTfWhaRbW+G6Ty
	h+cORemSqakWvrweM5luGebgYc32OpYVs3F0VDbIs=
X-Gm-Gg: ASbGncvtgZ7ZLaIUrI9lo2iA0gF4npON3gmohsSFFKGqww/OcmGn7SMFCUouEojWHvk
	xmugb7dqdRQX2Y3wV0i/Ir+Om2O8kSfJX30r9B0GhJOAjGsRlUMCyVVtc+M/vQcLQt98EEA==
X-Received: by 2002:a17:90b:2c8f:b0:312:29e:9ec9 with SMTP id 98e67ed59e1d1-3130cdad261mr2945196a91.24.1749018886644;
        Tue, 03 Jun 2025 23:34:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIuPluBDu4u5KGnxzBhJcv5mMUkl7EBUh/65kh9bW75WRsQbbaFMAdq4P0YI8KhX6NYIyU5JJbH9xVw242LSM=
X-Received: by 2002:a17:90b:2c8f:b0:312:29e:9ec9 with SMTP id
 98e67ed59e1d1-3130cdad261mr2945163a91.24.1749018886254; Tue, 03 Jun 2025
 23:34:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525-update_phy-v3-0-5b315cd39993@quicinc.com>
 <20250525-update_phy-v3-2-5b315cd39993@quicinc.com> <mcmpmaapzv3vbiynlrp6sijdjvj6a5j3dxzoixz6b4cxqsvbsl@ecljexn3zg2e>
 <0aef1687-0158-4d7e-8e3d-b6eafc38d049@oss.qualcomm.com> <CAMyL0qPd2HRv4nr2C9=5SgzSkuKO_1cfZbOUO2aUj3vPWnmJbA@mail.gmail.com>
 <41ac26a6-7a5a-4c11-b05c-9ce688ad1856@oss.qualcomm.com> <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
In-Reply-To: <8972adb4-b6ae-4ea9-986a-32e59fe84c50@oss.qualcomm.com>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 4 Jun 2025 12:04:35 +0530
X-Gm-Features: AX0GCFtUSo3xmhLJTp6kkLzM4r7UUUEdKvCLKhwD4KBE-wPI3JUeW_pADGCllGE
Message-ID: <CAMyL0qOhxKq8j1UXDX4xrWa8aVZoeqrhpWSVN2dC2hDLaqJoHw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=bNYWIO+Z c=1 sm=1 tr=0 ts=683fe907 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=o19W8QfZZ25Kakzi4KgA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Oz9JG7ghLYvK6c9U3EZxJHtjZWbA6A3s
X-Proofpoint-ORIG-GUID: Oz9JG7ghLYvK6c9U3EZxJHtjZWbA6A3s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDA1NCBTYWx0ZWRfX9UMGZFMMwLKK
 19kwgEQ9VnW55tjLoMmISgtVB0xtcgjhgefWA7XYsT797xpbfVaTxx+hLppuMtmT6U6Qmmjo1fO
 waO0Ey/6EZOVsgTzovsDGq+ErLuM5fDl90s+FZTAAhymtCzX6qlyKxbuBcy8b8eP+D8l9H/JXV8
 jQ3gz1/u8LYoPQhtJZcXX8fbROGHrbA87vRk1EIefyIVisnBJ2zNxFLcVgtJ8fFMPASPV8f71P7
 M5o9nOokYo3oofA1xUaENi9q1p9Xy9Wv4akQEwIenPlQ9IzSyuPt9rBl3LZiBl6jriGKMJunEDS
 R4JWy92H5Jh7g0ugqisTadeGwZeSRfl+tnfG7vTx8C8WcPcgblEH79Z8OvTMd+F//0ZLbk66jC2
 CdSSn5llOf8hMe9shBSAPnPgUs7SAHrJ5qJAkjfru0To2wMKEuksqt5GtOAgRvpcf40DjXG/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 impostorscore=0 spamscore=0 clxscore=1015
 mlxlogscore=736 adultscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040054

On Fri, May 30, 2025 at 4:26=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 5/30/25 12:50 PM, Konrad Dybcio wrote:
> > On 5/30/25 7:38 AM, Mrinmay Sarkar wrote:
> >> On Tue, May 27, 2025 at 4:06=E2=80=AFPM Konrad Dybcio
> >> <konrad.dybcio@oss.qualcomm.com> wrote:
> >>>
> >>> On 5/25/25 3:29 PM, Dmitry Baryshkov wrote:
> >>>> On Sun, May 25, 2025 at 11:27:18AM +0530, Mrinmay Sarkar wrote:
> >>>>> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> >>>>>
> >>>>> The maximum link speed was previously restricted to Gen3 due to the
> >>>>> absence of Gen4 equalization support in the driver.
> >>>>>
> >>>>> Add change to remove max link speed property, Since Gen4 equalizati=
on
> >>>>> support has already been added into the driver.
> >>>>
> >>>> As Gen4 equalization is already supported by the XYZ driver remove t=
he
> >>>> max-link-speed property.
> >>>>
> >>>> "Add change to remove" is a bit clumsy.
> >>>
> >>> I'm more worried about this node not having these gen4 eq settings
> >>> (i.e. the part talking about driver support landing is true, but it's
> >>> unused without the presets being explicitly defined in eq-presets-16g=
ts)
> >>>
> >>> Konrad
> >>
> >> Hi Konrad,
> >>
> >> Actually stability issue was resolved by this patch series:
> >> https://lore.kernel.org/linux-pci/20240911-pci-qcom-gen4-stability-v7-=
3-743f5c1fd027@linaro.org/
> >> and I don't think we need to define eq-presets-16gts for this.
> >
> > Okay, so there's multiple parts to it..
> >
> > I was referring to this series
> >
> > https://lore.kernel.org/all/20250328-preset_v6-v9-0-22cfa0490518@oss.qu=
alcomm.com/
> >
> > Please check if you need this as well
>
> If not, we can get this merged as-is
>
> Konrad

Actually the series you are referring to is not required.

Thanks,
Mrinmay

