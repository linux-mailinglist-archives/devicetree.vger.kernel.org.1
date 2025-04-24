Return-Path: <devicetree+bounces-170405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D4AA9AA74
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:35:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A61419402D5
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C1F23236D;
	Thu, 24 Apr 2025 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZIzUkKFh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037A221548
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490492; cv=none; b=PAojj0bd99sh88+atfBnF4l6+AImaMAh5OOEgS7zoLr3mn5xkydCbUkcCrucrHENb5K/J+VKHRnbLLgaF6GCFhMfJKixiVnAI0W5q+DhUpGibvSpZWsk5NQi4fDSBo1Jc/u7t76Y3jRKDfVMal6Frxzp0l2ORoSsj28h1bsGnzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490492; c=relaxed/simple;
	bh=dxaNNaCb7wx8tJ7MXo6Th49dUK/WwBE1ivS8aRZaFnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dTVBz81pGgwbgvRLSkuifoM/StxOiaArFQ9tHIO4OxyfrYHTkp4QU2n6l4JMkXPDCdHtAMY79U8IYEPBac3UBsIBb+jMAcexJvTNYEv6PsEvnzWeqeRDpl3zZqYWxDcqCPhdLVTM0L2U50gesmilHAPOOCuKRAeTNNeEUE7RGvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZIzUkKFh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0F9sC008894
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:28:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dxaNNaCb7wx8tJ7MXo6Th49dUK/WwBE1ivS8aRZaFnY=; b=ZIzUkKFh0PKsZ2KR
	S33zbxVPl4+yLe6WLwHArPgXQhKTZ+Awl03fU4mcgrDGcklIGnvoQs4eOGRywuGL
	N2UWjJLGF+elFSuu148pWKuPgkhJJGmLCiMn/35a1gWjo+2mdxVMmjfmzouJxg9c
	lXyoHEBqqTBTLVLgsHdpWbTWOcmHN9xLxcQ18v9Lhm3sAnV7wyi/NutKuKMtRHCx
	lyr/maVu0Qh16ygkTrsAEaYDzcznjXcd2H5svQ7Jou4Fqe236PEMgMjM6lL+6UVb
	ek7I5MWgZ7OX3o/omaAJCSIksZjbeXyBVV2BN2E8Ujkfr+B0VIR9WoNHb6T3sVcn
	QTfjfA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3d50d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:28:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c793d573b2so168808185a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:28:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490489; x=1746095289;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxaNNaCb7wx8tJ7MXo6Th49dUK/WwBE1ivS8aRZaFnY=;
        b=KyLEWEhTPxwictYZ2ikZcM7pSX3ZYTogAVnr2kcxN/mX+JnQAaqgngXBoEbc7qE4yL
         3E0pfv+HWyf9EJiUN9DPtvHqX5/yJFaWGlO5R3rFm0YbtqTBXwWchRR8QAVw+hnhExW9
         HgKodr1aIA0CZy7gaScTWWwsJXWtBgxPtvUKuaisBR0XLZfPn7tb6lfNX1IOzqSSvFqs
         lm+CU3TXP21M0hvWQVwC8gY7HMJUQICdaxhu2hjo6CdEtfGMrBnMiFn/ZAt2G/2Zose2
         d87FcT64SVcm7mG/vqBdUgf4/1BdG22lxiD19jcEhH242gbdWCWpPki8WQZlIbiZQPg5
         ETPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLaNcljK6bvxVSjtYnoibUejzG5Ga2SAqtMqQsQJxG4w8B1+Pbzud0C0jA/Cack6XdK6Lz/Ir97lxq@vger.kernel.org
X-Gm-Message-State: AOJu0YyzxHZYO7cQ40pFLKcsy4tzMV362n4nZoNlXk/c8G/hdf5rRcVe
	GJzOGhOf3R088rVdI9B+hnQs8bW4PM/5+7TOOeTTSxrexXhUSjQj+ZwKL9SIiwOL4lFCoGSFTJ2
	/hI/QJuITsc7Inh5D5hpZ+ao4vHkY1+Tm/AzkarmkMEhS5+bRnBHy2ZDG0mZV+mohlJiajy7wWi
	nsiS4RuOAkUIGC04TjUwXNTYd7eDdPY4i8kss=
X-Gm-Gg: ASbGncvoHPd5TtqDQjdfGtXqSe1C1TfgUegiuenAVF40Jej9+EDURAoBZdn5vw0K1E9
	XR/k39HIXrECE+n5GaYbgG8Tf/Gg8iszGHLlZJrHEz3v4p59zfipkL9KxUdaLbSUKGCSnuXY=
X-Received: by 2002:a05:620a:3908:b0:7c9:2383:afef with SMTP id af79cd13be357-7c956f45eb6mr320451185a.37.1745490488987;
        Thu, 24 Apr 2025 03:28:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5BZlCzf2Zo1ugwuFPVTG43+W/s7bg/g7I+h0Q5YvLmNtAP024uFmveP2mjEmcoy+ivjTHrQbqnbWyp7aw5WU=
X-Received: by 2002:a05:620a:3908:b0:7c9:2383:afef with SMTP id
 af79cd13be357-7c956f45eb6mr320448285a.37.1745490488691; Thu, 24 Apr 2025
 03:28:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-6-loic.poulain@oss.qualcomm.com> <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
 <CAFEp6-0iXCPn80Y0s6Hoq2MjgNa+OYJEr0oWSKuXtah_OF6cAQ@mail.gmail.com>
 <hjaep4muhpl2t5hfajnmvaueq2m24rwbjkfggvhk7otl6naeoi@hqs5ejhp4sef> <2ab8e807-6fe0-4f59-8bcb-0870124021df@linaro.org>
In-Reply-To: <2ab8e807-6fe0-4f59-8bcb-0870124021df@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 12:27:56 +0200
X-Gm-Features: ATxdqUEA6-iL777V9qP2C6CLVQbLEBUOR3aB-ZkTOJXgCuPugvYUfVi5WAf4m00
Message-ID: <CAFEp6-0tDYScsFkHCwF21rCx4stB0P1An3QS1DvwisPooSxbgA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, rfoss@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: zKzC6LrZqVM_KzW634LkUQD70iPNpRTl
X-Proofpoint-GUID: zKzC6LrZqVM_KzW634LkUQD70iPNpRTl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2OSBTYWx0ZWRfX1Ulrqeq7J/L9 vOmD7Zjih2BSzVwrE3iTKnmrxj76Rz3DmzWfx0ededHkwLHw67VXTD5BSEWV+94Zjw2miCQOWbe qSHBhuQOqj1OG3frQZmVy0WYsmBsTQPxhKr8DEKGSr/jgGTXZAISF8lgoNEBBYKNBzW5v6XX11z
 cF99QG1h8TTuumoKI4dRt12r3ACHCf3mYbHNQxp3XDKeBJloCmP4/tXw6Pfto0sK7yznmtXN0Wa itSfHuYDH3jYSglVkdc8EmNjXZ9yaMXhCxG3+76BQq37sLNfR99Qr2lIsdOMlkaA5sDGe31h5UW lG69lRq8mlXtpxcRtP5PqEjSsNSWeRQ/Ix2k/jPJ5jVUNZ0IJ3FF2mf1WhVTQX7ouJhB2YKx6G4
 8kGjpYWBLIat6/dVjLbWtUyRIWsfZD8zSNrqfRYCYGHTVCXGXnen70d3qF+pVrGqjNaqFFSB
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680a123a cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=zU4xAU1DtyMVwtNcgFYA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=913 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240069

On Thu, Apr 24, 2025 at 11:29=E2=80=AFAM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 24/04/2025 10:22, Dmitry Baryshkov wrote:
> >> Pins are called:
> >> - VDD_A_CSI_0_1P2 (for csiphy 0)
> >> - VDD_A_CSI_1_1P2 (for csiphy 1)
> >> (both of the above are supplied together without individual control)
> > Is this a requirement of the SoC or just a typical implementation?
>
> Its usual for each PHY to have its own external power rail/rails.
>
> In this case the PLL power rail is shared but, that is not guaranteed as
> a feature of these PHYs.

Indeed, Then I guess it is probably better to have both a
vdda-csiphy0-1p2-supply and a vdda-csiphy1-1p2-supply.
Still we need to agree on that voltage name, before I submit a new version.






>
> 1p2 - digital logic is individual on this SoC.

