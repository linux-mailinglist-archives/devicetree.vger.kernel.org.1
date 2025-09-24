Return-Path: <devicetree+bounces-220844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE14B9B121
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 19:32:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C180168779
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06315315765;
	Wed, 24 Sep 2025 17:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fKtTnbE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8EB314B72
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758735164; cv=none; b=VU/QrqlJ7QP7PgltVW3AQXh3pQW+hlfRjVxAQMmTHsYIL4/m2HHfbk7Nv6Ek0utR0gEw4bdJcJ0syMvH9UAxA4/Nnj6l92FgpoY1mqaPxVSaLsRNgSm/Ac0+S3CpM6HYRzJOu/sGrKwQHvNUyf2bJOTfe6nwGjLSd1BP+PiwU+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758735164; c=relaxed/simple;
	bh=LK7FuHWulSuZBSrOktpH5cJe+KfysFVveMNzVDwwTAc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KuxkeLQRyJ3l1xkQYkUMFEyVfAn3hwF7nivPHlqtUlptGMnLwCkOr1w8OPsplGM+t+iGpE3Uu7xxeamxAr3U1dsib2GjdUzr+Jkfj1n59XmE4lMOAxASEQcHxcrd306TucSsuWJWxMfnJqBT4mTlhy7+98TIp3DbF5inR4xfGFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fKtTnbE5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OClqsm025248
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1Z5b3FyW91Ev7pON5LFlZ546
	L5v5xS6NyxTMHjxie3I=; b=fKtTnbE591uJeV6EPt54V98sX958FJNXQWP33iuL
	HMU173kjpyld6tP3iTkRIJyCAP1zz8iQDe/ezaCSD10W+5qKUClmYBhe6oGrtvpF
	naq7PEMxvsHSpfHdU01TKMyOqH1AVbKDsqD/J4W855HlH8YMuMG8BwgBVwgpT6O9
	MmHoDGQAZQSNf8XRyqBSWC64YleMV2hYgb4N/B7IdLrHsm3vL1Ub2vW3zAg/d0qp
	C3GTwzqhHYCrXx+9LvZrBxmKQ91kIvuNrN/C4q3DV1gAFIu4kNunNpSob3Ktx6ET
	FPYO6NiVh8+Zbb4mAdVKg6qlAq79jaQaxOO1rCn8R1F7Yg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv158n9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:32:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b522037281bso22052a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 10:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758735161; x=1759339961;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Z5b3FyW91Ev7pON5LFlZ546L5v5xS6NyxTMHjxie3I=;
        b=G6Dx9SoaXtHwewiaMEK8uFX20eAx4PfdH91gx+rmQnNhkunJKY2YCUb4kFx+KumHpg
         bfYiuhOmx/051Frjvu0KfIboIEYdkZK6F7bD1SS5RxsiL6pYPC0WTKi5YR3/fOLLFm0h
         TY2LALCSxjn2kSrfXz/GB7bhC/TA+u1W5sdfQYMNBVRhigJsD34PEv5HcR30wlbIa4MI
         vUtDuh56e1RRfR1lT7PJi2PbW8YYrI0qDG4Bya+tzxlEgs2W0XXScZ90js4y5YeqxnHM
         fEmIgixhnkfU0rswH3CukyFvaesm4+fF2YU9Sw0mFOC1ij5LNEkHPxCAbINpCkJzo+uc
         dnQQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+Hu6+tx2y4EPWSll0xJ9BVTSrtOL7t8xCycdAy1inoOcOiF6/4r63BrARaIQXxHFVWWNdK2RDDJAT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2CkWDesc32ec64KdRHvf80dK/rInsfJArTqUaI9nlC6yjQ1j7
	m4crj63GMVfl8BDkdUoCvoHzHYhTFBTJT/uhUM6aUch0yW6FtoMKGR4M1kW0Wkl8HsXwhHZmAjw
	8ePt5GQgKpwZnfQUx3K4BidVzGMfPHTX+DztQHQFVWs6rEkx08ZGAgmGXVDCggzEgSzfp5GOsjm
	mFAfxhwD+HXLfBs+D30ATXMa88eEimvlSdyNL70Yk=
X-Gm-Gg: ASbGnct1F0a3dxs5pbRbQVc+Gh/awugFQ21QFklg7GA/GYgRn4T/e1CG9cx5paGOxQu
	Kbi+VFWkpv33uiA6C6RGAG3Q/FbRdSRniI2Vco5XwnzlIol/B+nAqnv9P4L03Shin0ZojCYTK2D
	vJ4tgL41W71UbBY3JCT6zIsxtTjdPI3lqYBvUzX0hdmE3/FBVxisqIDQ==
X-Received: by 2002:a17:903:32ce:b0:26b:3aab:f6bf with SMTP id d9443c01a7336-27ed4ac311dmr5754725ad.42.1758735160869;
        Wed, 24 Sep 2025 10:32:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVFoc+/aSgSKbGAREv44isgr8a+oJ1tMP5eoC7Beox5ftIIQN4N8Cm8Ud1RQbDvEzYZH2wRrzwwOkyntCwtL0=
X-Received: by 2002:a17:903:32ce:b0:26b:3aab:f6bf with SMTP id
 d9443c01a7336-27ed4ac311dmr5754505ad.42.1758735160426; Wed, 24 Sep 2025
 10:32:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com> <eec9a046-2742-4b7f-86ac-ef11dae19aee@oss.qualcomm.com>
In-Reply-To: <eec9a046-2742-4b7f-86ac-ef11dae19aee@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 20:32:28 +0300
X-Gm-Features: AS18NWDEujWGHc1CUohsolkmSSOR_zn4Ju2H3zwxDzlrpwz3Mtyqx9QBAuAE8wk
Message-ID: <CAO9ioeWJh6fkDYT-Y6O4mJHN3CpVw-D0nygvA0TsgHGqXpLq-w@mail.gmail.com>
Subject: Re: [PATCH 00/14] arm64: dts: qcom: add refgen regulators where applicable
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: ZLOPSwFj4Oe3hBT5C1Hgg9eRa20OcJ6M
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d42b3a cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=v75zDIhsPqNLugsjS6wA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX3DZbaj87kMcF
 qcirphpmzYPclzb2MGki9K0qIjDJFsYByuv35QluEdzLM7mnGkUfxjew533mcTFDaVJ53CkrSTh
 nQYJ0ADPeoMJFC5njnWIbTWllHromf2lbHEvqA+JNWp/b2Bi+ea1zcf9hETHFgBIr+TNZi6PEWJ
 /WGmJbb0E3dgMTsUMigIFeU3kL4roFYrbD9rrTuz3axgGVJhm9EFCyNmRBtTOyL+uvJsEuxJwiD
 DQ7nPzW1XjpDoqvPKZnvAFiJ7i5p+rEAwNnuS3yCmW/4Rg7K/FTdZxCSxQCooGVIEKStyZKtF7E
 ZigL2tsgPMtT56dIvi+sNL/cEerUYsf88t7fwlaHGErqArdexGU+GRmwdPPE/XY4l/RpT/YpV40
 Gck+Y7HL
X-Proofpoint-ORIG-GUID: ZLOPSwFj4Oe3hBT5C1Hgg9eRa20OcJ6M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Wed, 24 Sept 2025 at 13:13, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 9/21/25 9:09 AM, Dmitry Baryshkov wrote:
> > On several Qualcomm platforms the DSI internally is using the refgen
> > regulator. Document the regulator for the SDM670, Lemans and QCS8300
> > platforms. Add corresponding device nodes and link them as a supply to
> > the DSI node.
>
> It's likely that all PHY-ish hardware uses REFGEN, so please make
> extra sure your patches won't kill DP/USB/camera

As far as I understand, DP and USB cast their votes directly in HW.
For camera... I don't know. Do we need an extra vote?



-- 
With best wishes
Dmitry

