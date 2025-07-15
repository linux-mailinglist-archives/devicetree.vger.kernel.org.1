Return-Path: <devicetree+bounces-196642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E19D7B06879
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 23:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 155D27A64B6
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 21:20:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBCD2C08CE;
	Tue, 15 Jul 2025 21:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpfILPCq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF252C08C0
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 21:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752614493; cv=none; b=h9Df1BHXzLLpmF1uqfZRKfmIq7/xU/KA2LJTNoHP/njT+Thjiib0VAZjFMMg8zIRiJOzguiYB3s97P4pboLd6MHpM4bydzjsjcIzbGVhSUEKyy0BbeDOl218CbokdUR3QuUGaTzpie2YQAWa81w0BfK1Q3nEVjd/P/VYuVTE5t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752614493; c=relaxed/simple;
	bh=M54e0/ZlEEa2sNV99+CGjmRYbJUwlKNDtK0njJtoxjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VajmryLRZmyeok/ebcUfgLt3tIeA9pCL36klyZpgBImxmYqLbtYNZbs8oWq4kKfR8mN9DBMETk1wymlhQPAE3GSdKpQVDfmQRDIk5IMM6YV1gemIOPXeaQnUPRiEEvZ/k+UqpnTGXbWIuAmgBHHQvJcXUGnO62U6HBS2zmZk1Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpfILPCq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDDWq025749
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 21:21:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wt6pHEnPgOMDtsvi/12SpMFQ
	uNhk9sWrVUUSDWC7ddc=; b=JpfILPCq6ysjgrUDKdpIOioRmg3rMyF0SEy+bnD5
	iackY1+USjZDifvl2zdbwfFSE9EALG+KcOiiL8iNqFaSHLf/DcU/aVyWbEft8qYr
	l5S2/kt2JgudNnUXWgAmvUQLGkXlvyNA5aTWF6vmJT9NAlnzKD/VsCMNReWG6Asl
	NwL5wvtV7q6Ikpoe77z+aZbO7lmIJf10ELXud7QXnF16jOSkjig9TF/Mvv4p7XPw
	LjYmmcLIJwExnC0fmYylCOjCGstJD3FjIkBdNE5xMeqG5hZ/+jo1CRqovvIgUSGg
	JpXMh5+QMb7FaheXg9GSjLN7Q9iZweZBL5/5aOhYMzW6AQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy1dcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 21:21:30 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-311e98ee3fcso233661a91.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 14:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752614490; x=1753219290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wt6pHEnPgOMDtsvi/12SpMFQuNhk9sWrVUUSDWC7ddc=;
        b=P10NNtcLLr6pLJAAxmmHQnfJBASR9oSrg4SWdfpU1vWtIbEEC07RpJNxm390LpuNDo
         lCndhDJrAL0okpV67ECKk0cF7Wxpi7TDaDI4wkp0OlAkxR66yZ4PRurLU0ePJIDXXsW3
         83G6AdLlZqEpnV1xa2Ur5IQNHjeur4Buw3jzjKDHsmOcOdXjLcdtG+cGwpBfLTH1xgqs
         Bj0o8+t/yHTyRWJ9XDeR9UShjViA/cJ/v9hvoqix55wXDblghxztH+SqsJgiC2tLomb7
         3QOk5EYrBdEh8BnYndJ/GJiNyDwpUMQFFvyqpxml4Bwbdr97q18itxe+bMVcwBOMPVPk
         wf7A==
X-Forwarded-Encrypted: i=1; AJvYcCVKTIhYpvRtAaHgi6fjstiRo5AV4PbpC+umq0gA50SeiZft1alk1yy2S2Vba9HTqlfQeD0cxPBdWOes@vger.kernel.org
X-Gm-Message-State: AOJu0YxtODpqSWy/uM/bc/XAlY4JknsjKJq0eQmzidsHIdGnNxWg8Lwl
	Y/TKP/QQoKZI/074Zsa1zafrJ0UYSMMq/aIGsBXZqOj+doWfNheB1acXrWZW/bTbhmFz0a62Nu+
	gxLS4bXKIT7n13Ocolw6oiRu87ISZsQcYban4QBSwUcilrjHLD8ZJcoRwpAxZDH+7NJarN4TDlz
	MVANw+JWldMeTybZjLtitzewTijfjmjH/00xeEoIH/nj6OFdo=
X-Gm-Gg: ASbGncsH9iRYWOdCkan5sTdYuIc1NFIYReLrh/Y9+fQq1mciEcjCPRREvt8yi3EtUDZ
	dMeIAWf8BrRQYH++5N7NO4rZXtYgwYnL3O2ae900SiP4IjGolFTAa6mi/i1ASw5mH69HuqdXLYc
	WRdF1fEWwYJ8JLYNkULw==
X-Received: by 2002:a17:90b:582c:b0:302:fc48:4f0a with SMTP id 98e67ed59e1d1-31c9e5d6787mr1112822a91.0.1752614489647;
        Tue, 15 Jul 2025 14:21:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE180B/nvub/VcLFKHUYlMuFfM+d+W1Yrk+Dl1vV6BZLqXAgmjk5x3JRwv1+EXCWv36y+/9gQXCwKTEXZuI6Tc=
X-Received: by 2002:a17:90b:582c:b0:302:fc48:4f0a with SMTP id
 98e67ed59e1d1-31c9e5d6787mr1112777a91.0.1752614489066; Tue, 15 Jul 2025
 14:21:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250715185636.21758-1-me@adomerle.pw> <uvw7usijkllom6cox4fkhrxpckqf7gk65b4hn244hpmj62utyt@zlbxwwmj5t6u>
 <493da354-2c86-452b-b343-c9ecd3ff84e3@adomerle.pw>
In-Reply-To: <493da354-2c86-452b-b343-c9ecd3ff84e3@adomerle.pw>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 00:21:16 +0300
X-Gm-Features: Ac12FXwf4NBb2pWO6jqWH2XiOZVWEfDSrstKZQZ91qjRKAV9iJ1Qy-M0e_EZPFs
Message-ID: <CAO9ioeUtiYFLyTWHYdoy6P69jg77EbPv-f=i2dO=9dDB-UaHLQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop nonexistent hardware
To: Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5NyBTYWx0ZWRfX/ap8vbRGhwe7
 MJQUMrn+2tM1Z9NDjg2lZEypG4+A+NMnVJn+fXyXPREED3Kt4g8rtBgIqtF+6Mkkjxuy5PTxsRR
 T9CYhIvhcnXmDpHOOJa9fDqvOPSrnt4tDfPBaD/ct29LJHWolXBgYnKEKfXgfLZ8hg0fBFeh20b
 tk7KiBQrOPcstKM6HjmyPlH24ZYuYr4tdUMzf+Xoq1WmrYjkAn9RLO8istgJtqa8RXF/f/r88Ro
 0ru2/6xsecDQpliN4vcbuBshY3mq+OK8GqQBi33/r0hoj/ZqDF/qFhSnlskF50aobwOMkpHSfQ6
 NLkuxZIKXd85WOTVXrMVVj33D2E9mWi2TtA7lDb/Hky2QqzS8tIx0QI2XDD7xfjKGjdxxAxfcet
 NKJdVchsGny6pKqy4eu2wmjSoF5+fH/TPvtpD4qIfkmidQcqL5Xs5VjV0X2leHfcYcfE+IYN
X-Proofpoint-GUID: hLBVyQ585D1v4FW0_AdkZISgXvHXEGtB
X-Proofpoint-ORIG-GUID: hLBVyQ585D1v4FW0_AdkZISgXvHXEGtB
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6876c65a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10
 a=NEAV23lmAAAA:8 a=9pW74NbYAAAA:8 a=mk2d8uPtwDXq42qNKiMA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=67o8LzlnqLyy2xoPAWJp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150197

On Tue, 15 Jul 2025 at 22:37, Arseniy Velikanov <me@adomerle.pw> wrote:
>
>
> On 15.07.2025 23:22, Dmitry Baryshkov wrote:
> > On Tue, Jul 15, 2025 at 10:56:36PM +0400, Arseniy Velikanov wrote:
> >> PM8009 was erroneously added since this device doesn't actually have it.
> >> It triggers a big critical error at boot, so we're drop it.
> > Might it be that there are different SKUs?
> Well, while it's in dts, but it was disabled in the kernel config:
> https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/pipa-t-oss/arch/arm64/configs/vendor/pipa_user_defconfig#L413
>
> Maybe they just forgot to remove it from dts (I still don't understand
> why it is displayed in i2cdetect though).

For PMIC you can check in
/sys/kernel/debug/soc/qcom_socinfo/pmic_model_array. For FG it's not
possible.

> >
> >> Also it looks like the fuel gauge is not connected to the battery,
> >> it reports nonsense info. Downstream kernel uses pmic fg.
> > Separate commit, please.
> >
> >> PMIC fuel-gauge driver uses mixed stats about dual-cell battery,
> >> so I combined it into one.
> >>
> >> Fixes: 264beb3cbd0d ("arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial device tree")
> >>
> >> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>
> > Please remove empty line between tags (i.e. between Fixes and SoB).
> >
> >> ---
> >>   .../boot/dts/qcom/sm8250-xiaomi-pipa.dts      | 95 +------------------
> >>   1 file changed, 5 insertions(+), 90 deletions(-)
> >>
> >
> ---
> Kind regards,
> Arseniy.
>


-- 
With best wishes
Dmitry

