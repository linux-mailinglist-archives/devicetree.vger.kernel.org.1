Return-Path: <devicetree+bounces-228925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 287B5BF2285
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:41:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 704DB18869FE
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48DA926F2BB;
	Mon, 20 Oct 2025 15:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cEVH7PFr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E7DDDC5
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760974872; cv=none; b=G7jekaXz/RxpKCvWlSAzERLlu8p2XaN+yDj+91kg+pyGnV3UpDemuzhtSgKa7OuZKqXfXCZI6RceaUWTc2TfdDPXtUF5l7YifsP+A1wdjSf00AUtUrJzA0UFTsDcgQUfFVD+orCRccT6KFOhEzkW1frDy+uOFTAoFJ40Xig80G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760974872; c=relaxed/simple;
	bh=c1Ei5/rllke/BB5tHPc39QhmAfz5PU2A/xahS0I3Sc8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WuW9c5LQ78UHQwkOb6s1jdJGxitqr6Aa6zMQC34Ineoi1qRY1BYn3Pu/YAcvIXnffeHN2TWc+7zRVPE6T1DkySmPZ0YAZ2U9qMzNtlyWjndaVGQ5u6w3zeQ00zAAQIO3U4JK03fLXNgSiSIOEO99bkhxsnEr0mdO0Pegjz7fNdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cEVH7PFr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KBArrN021970
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c1Ei5/rllke/BB5tHPc39QhmAfz5PU2A/xahS0I3Sc8=; b=cEVH7PFrAyrBfNBB
	89sL8mNkaahBWa/8CuFH9njRxNFJPEfKgied64Yhc/H0cNA8qGq0nJyobQ0etrCO
	d1FFGTWJuRJ6nw5dH9anBQoBGOdvA+h6Oc+kRIUZNf9kSHvJJpZqd6zPaGcoIiUJ
	Rc5JE+mrciHEWUqs3FFY+l2X/jC/LcqHPHXKIoxoMAokFUEvtXgpGWZ2CdxPpN1I
	UUw0OOVVEjL/t8qoK+eONZNCuK9StXAkQR+jjBtxFUMN1Dnp9ipNjFcFuUhCokA8
	325SBJmaK9Zskn9DWmkOWoVCn2zdsmrtgAuZq+VSOsyjjsmVbzy0yyWfFM8Iog00
	F1FLcg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v343w88r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:41:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-818bf399f8aso228334716d6.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760974868; x=1761579668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c1Ei5/rllke/BB5tHPc39QhmAfz5PU2A/xahS0I3Sc8=;
        b=ru1Ed8pimYuzkFvlHUsyqZXMumWG+d3EuZbdG9sCd5gtXvZytP/WVSTyzb1RFTjr+L
         Uzo4x93CnlSjmaQgExpQrZ3mUI4B9QaJrzU36NcOyAaoOx80rHGZTt7rYFFD3ai0szlJ
         Xj+2QyyF7UqbTmOBWsMmS2ThYYnthdv4TkPTH2kApLJjvw5UMlokhZs4QM8RSfWWJW7P
         J9JxLmb4BZvZsUm5vBgSmomV7dr2OmdoeihiUTzpN+QlRFPdVPI7UIjfIvBkwgf779Qp
         Tfc0BDXRoVgNO6qQCTLh5QtRi6Cjeo7qPchs2kZYEKyzgye0oJNjEOexyHqFOnKqmFsg
         NPwA==
X-Forwarded-Encrypted: i=1; AJvYcCXe8VEoaX7jI2S3I629TlquPLNFOfGpqRpqSXtCIsi8HHZiv0KS1bUVNTj+zey7pVsxfwYM8EPa1A5p@vger.kernel.org
X-Gm-Message-State: AOJu0YwYlFciQe15UJGMsWmn+i7+esYaW6n1HvVKumRIzAqL2LBeDor0
	FqUqRT53rlx2MhJ3KIJYY7C3oaZrTnaxIK8POoKYnLyvdgZKQL1G7JbIJT0KITWhnAkkNIKpICE
	A0BZdxzvP62Toh3q1GzhtHv75RpRF2qzEZqqXGPX4TuR2wlvu5Uxvui9CLdMU1bdiHBjJYFVMky
	9KZQw6olFZbvCj2y8Oser55tkkJ06I4mCUoIwp8HkByTZ+WgeiNw==
X-Gm-Gg: ASbGncsg44agmYbfWVo+OZKtFljK5U/mXMTGARGbNw5wwRpNp4Op9A7A3PpcsFt/jpm
	VX1IwKw0AjVf5DVO6+kvAgsNmQdWHwgj4nPBGHF3OlLin++rj9hivM65+SVBlXsNApRExMl3E5C
	915ODbztoP0mQHfb2Sme7ZBmNXpiKDScp2mrUjTGzEp9IyT2+EG3csGOas4sAeLi+p3q0+E/FbX
	CKvgKAq4hrj1XUD
X-Received: by 2002:ac8:6e9a:0:b0:4e8:a1eb:3e2d with SMTP id d75a77b69052e-4e8a1eb3f57mr114071061cf.2.1760974868151;
        Mon, 20 Oct 2025 08:41:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEt/rE4Clz5yURYWYruI+sLzFZs59bWu+Qzijja7BPDkLwUvNedycPfUOGPFH1/AjHcLivcbqNVMlSmVyzFg1I=
X-Received: by 2002:ac8:6e9a:0:b0:4e8:a1eb:3e2d with SMTP id
 d75a77b69052e-4e8a1eb3f57mr114070801cf.2.1760974867660; Mon, 20 Oct 2025
 08:41:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250918155456.1158691-1-loic.poulain@oss.qualcomm.com>
In-Reply-To: <20250918155456.1158691-1-loic.poulain@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 17:40:56 +0200
X-Gm-Features: AS18NWAuS_7crH2JtntrswxMt0T5lY33ENW9jyWOHcdOBf9IRDbBirSjpRREuCE
Message-ID: <CAFEp6-0prjjqWoCQuvMJ_kvbLMsihMT=-bXaL_0qGGsAUDCWXQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Fix camss register prop ordering
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: HihTEQuFtpPhCYWCNaR7prBFG7rkTdYP
X-Proofpoint-ORIG-GUID: HihTEQuFtpPhCYWCNaR7prBFG7rkTdYP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX6lpO5+xaJx0i
 gOkdSCKGioGnL+JUfGBLuAYRlWx5DJS0VJ11QrhAHVF1V0GJ7vd/4UnWSWskvZ1k13pU9o3BdB5
 UuUvsX6tKK9DtlHtEh9zQwPJw8/LT17vx+suMKdpssE0oK7tYBK69pyrYMMeO975vcoWaeEgbpv
 qEumz7HlGMC+y67OUeGelaOrF7lG8pAIkBR5VfUIGTUBpKNE7mYDhiq9NtSsy4wyvReZt8vGN4B
 OsyUr5P99qK/fLY5/aE9HFqu9CReRiuHoTHDqISvLNkTPBUgpQ7SUXVsfSBepw7kG5G4Ak8s12i
 oqhlpdxcr5coewZfjEsM/7THxq0ybMHaHUNgiJNMdtcZIkIwm8KJ/mFO37nN/glURB0sAluGj4l
 McPrgD3R9X2zGMh+CzevLpv5BQb4rw==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f65815 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MXscjSYeNV_WA-v-aEEA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

Hi Bjorn, Konrad,

On Thu, Sep 18, 2025 at 5:54=E2=80=AFPM Loic Poulain
<loic.poulain@oss.qualcomm.com> wrote:
>
> The qcm2290 CAMSS node has been applied from the V4 series, but a later
> version changed the order of the register property, fix it to prevent
> dtb check error.
>
> Fixes: 2b3aef30dd9d ("arm64: dts: qcom: qcm2290: Add CAMSS node")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Can you consider this fix for 6.18, as it will fix a dts check error.

Regards,
Loic

