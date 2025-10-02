Return-Path: <devicetree+bounces-223409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABB0BB46D9
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 18:00:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 609E33ADD4E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 16:00:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13861F19A;
	Thu,  2 Oct 2025 16:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aoikIAgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C8418C2C
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 16:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759420830; cv=none; b=Df+f2DMK3YRBTp1554AEiyVEphkNA7n7duGsSsSJFTmkivP993od57DB0n9rAKhGvZrge729BYrNHt02YNXGASl35DCcH3FU20tpkjDKEx6b2lvidIBYl0iW1BBfVKsjoUwTeKk+sLLG0FxC49inhtOUw2G91qe7HTKYckEOoss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759420830; c=relaxed/simple;
	bh=L55qLLAlJuHyhIu6IcAbTzxJ6Yc1Y9J1x5XdW+9c8Gw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pSXaiKfTf2ha2W54inZxFZjfTJUsx3gghJfzunTo8E8BV04KB8Jb0Hpzea8DR0Y12uVcuwHaQiP9/i9bQDsnF+k14gqjSUCHLmzbcofap4eyR0NeZpEQfzTEK1vcPfl3jSi74s/c7KAi4dAMjEpBA55djhzdmdyoAVDDseCuEfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aoikIAgR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59294Gi3001185
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 16:00:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rrjEEtaRvE0dVyoT2k3VZr0XIqGIMCkFp8H+n7LB3d8=; b=aoikIAgRFTTgV0EV
	5ua5CbelK4JQFPbRaWpWSWtUrjdOTBUR1qTsLScNZs+mWIq5dpu1EG4GwNFM9hCk
	vS4CYMUKbuBvBUWs0EjEK6otojtUpoX/GKcLsW+f1IpsKlYfopLgZixfaQqWxn4E
	LBobMe+NDbmNNIaFSthRGfF1bIJCHlO2YnPBrMl2Mx0auRDQOJn/CMDa6L0PegnK
	IzOwCMHYhzpLVBiwJXWg1QQVi9/pEtvnhpVkEOE41BTQQSF+G8wk/RmGLlqT82S4
	uR8azAdn+gMKyYhb6fY98+zFbZ/IN2hYv0k3OTPzQhwILdCAA3kxPLjis23veqcF
	ZZglkA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x60dgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 16:00:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-865b48c630fso314605885a.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 09:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759420811; x=1760025611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rrjEEtaRvE0dVyoT2k3VZr0XIqGIMCkFp8H+n7LB3d8=;
        b=skmkqGGEK95tCkG+RdDyJlH5llragbp8ToRnvA20hJDqmVDdASaraNmeU+QiJl624T
         muhotfFi4KarFXpkV544LfqBjenTetEygLFaLlM15z/vTwa7rs12J/y3+Tp+Ufqmsg53
         AgDP704wuMC5C8dhjPle19gR0OKNvoZiqG5NIHjIkHFEvIsj7FRJlANpmtxXGF2KhRo1
         tsIMFv1vgZPImRoUWNjL9790o8o9+2xub0YOeR18aPpj7lKLGQfY47JzONH8qoL70n/M
         uwiv1Uty2yDCvJouuxUgeY3gkDxumdwyWDknTYd83grtKf5wsYEYdoX6yz5diRHhH2I6
         9EFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhuG+wqTaFBUXR9Tg+ndTO0XxK0kHvVxH6KfIZpFKGnM2nxSaafzo9ZB4ECPaFJD1QKLRDD/psljl5@vger.kernel.org
X-Gm-Message-State: AOJu0YyDW+FIlGU/rOugCvkdsTzZFkAZSmwnrkgCzlELSz0D9xH8vBJo
	jIHUwuYNRMDjidiVq+iRIK6cmcpUYGUzGPumbxg5GhAoFK/3K1klY8agadL2vnHC2V0fylJRm4m
	AfxMvsL/zW9ozsDKW17mgZvkPD0gtxcDr/hL8uFNSUbGEs/c4bmWooq7LXyX3s7MiSwNXd1d2ee
	HRFuti1ibQX1b48ZET9sk/vR6qpDILPFaEl+NrYgw=
X-Gm-Gg: ASbGnct4uJSCDpHOjvo8oYLksEOg5wQEzg2vtgQBFy0SqYra0fn7tP4R0o5zej7CH9c
	qoDuzS3o6h5FR+HqGMav1Q8TaHMAFYKqFMdToujchjDVzKckqRyDla8DR2LxwdLvZniwRA5VOvC
	I7p/VzA4xuVFFu8QzEgBYSIiB720eRjTx7u50f+KKHRRwkSILYQk3FH5KCJk28
X-Received: by 2002:a05:620a:2954:b0:858:f75a:c922 with SMTP id af79cd13be357-873705ee14dmr1151527785a.6.1759420810677;
        Thu, 02 Oct 2025 09:00:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmX8lkWW7JD1xPFoFK2TsnE5w970ZCeRAA3DNU2mdUhqhcpjReibtOkdWBCmDgCogGi7mq2UVyAmL/vymCMRA=
X-Received: by 2002:a05:620a:2954:b0:858:f75a:c922 with SMTP id
 af79cd13be357-873705ee14dmr1151518085a.6.1759420809940; Thu, 02 Oct 2025
 09:00:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-2-loic.poulain@oss.qualcomm.com> <CAPY8ntC-Or2ErudHmP0mQMY6Rb8yQ53wkB5fW3b+4DTeeytbdA@mail.gmail.com>
In-Reply-To: <CAPY8ntC-Or2ErudHmP0mQMY6Rb8yQ53wkB5fW3b+4DTeeytbdA@mail.gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 17:59:58 +0200
X-Gm-Features: AS18NWBKPj2iACWebyncy890oBW9cdusAwWZYKBqMxptMXkMSqe-nJrKIx4MHK8
Message-ID: <CAFEp6-1tLTviqxheTxGeeBk8vt4Nm-qSBs1jV=CFPF83_6fUsg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] media: i2c: ov9282: Fix reset-gpio logical state
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, sakari.ailus@linux.intel.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
        robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: SSXT0iZvqEMVoBye9whP5WOAWYMQmc8n
X-Proofpoint-ORIG-GUID: SSXT0iZvqEMVoBye9whP5WOAWYMQmc8n
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dea19b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=RF00TdSWAAAA:8 a=EUspDBNiAAAA:8
 a=-mY5VsyjxCvqmBmQmoUA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22 a=_nx8FpPT0le-2JWwMI5O:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX9G/OMVu4tDgF
 H4xChtGnQAoQHuQHlJkFOmAigHkLE6rrlbb/qcbf0+486JTMfsJe3gEn8mI1ykDgF2IiAdFJmRm
 sKobakn70VOA/tK47S2YsUKmvV5/50c8I3FL4dhn0o8T53ca297G6TO8V0bnsFOWW8+6I3hYhJt
 fqx6LO5VvcqjXj6qltSp9bQQlu+6GufaMI9LZtjhKBLfL7VKo4DLZel8qnTF08G5enzSs+0LR3S
 WOqH6WRkAOBlJpTfs/UyfVMTM95pmeFTBKXv32ozHfF3HZ73bKvlGxG3/wNwxaPkaveg/ePHlRw
 ORmQZGpMi/1qQNtnIAYIRGSl47Ly5zOJJOgfA704o4pQf4U+Eg4RPGMYLA9pPKbMmzScNP8Hn3l
 0fO7YxuGEF4UjhrS9LAReVqMVLrXMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

Hi Dave,

On Mon, Sep 29, 2025 at 5:18=E2=80=AFPM Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:
>
> Hi
>
> On Fri, 26 Sept 2025 at 08:34, Loic Poulain
> <loic.poulain@oss.qualcomm.com> wrote:
> >
> > Ensure reset state is low in the power-on state and high in the
> > power-off state (assert reset). Note that the polarity is abstracted
> > by the GPIO subsystem, so the logic level reflects the intended reset
> > behavior.
> >
> > This breaks backward compatibility for any downstream dts using the
> > wrong polarity.
>
> Ouch. That'll be a nasty surprise to some if this lands, and
> particularly with a Fixes: tag so it gets backported to stable
> kernels.
>
> There are a number of sensor drivers that have been in the tree for
> multiple years that do indeed have the reset logic inverted as it
> wasn't something being routinely picked up in code review. ov9282,
> imx219, imx334, and imx274 for a start. Krzysztof sent [1] recently to
> flag that they are wrong and shouldn't be copied, but changing the
> behaviour feels unfriendly.
>
> I'll defer to Sakari as to whether this change is acceptable.
>
> Checking all my use cases, they use regulators instead of reset-gpio,
> so it doesn't actually have an impact.
>
>   Dave
>
> [1] https://lore.kernel.org/linux-media/20250818150025.247209-2-krzysztof=
.kozlowski@linaro.org/

Should I just clone what has been done here (pointed by Konrad) to
keep DTS correctness while ensuring backward compatibility:
https://lore.kernel.org/r/20230102114152.297305-4-krzysztof.kozlowski@linar=
o.org

Regards,
Loic

