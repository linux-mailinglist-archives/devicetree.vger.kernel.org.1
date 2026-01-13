Return-Path: <devicetree+bounces-254217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C45D15FB1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B37D3029D1E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 00:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96712248B4;
	Tue, 13 Jan 2026 00:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCpZD0Ap";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q3yXRvTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF0521D5B0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768263775; cv=none; b=WHSpGnN8MLieKGZrq3eJt4vS7vSGwREgKyjxXFxbHgqsVsj2J+HrFIUx3Y1uU9HXIMQAWI4Z0magHanQmon8Oowere8jd8yZhcsAhrnAw0ACeeVLVCcC12yxqpvusF3IN501LFrPrH3C1sXRErmWsPXGnbexulCmhyVD7kWaTsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768263775; c=relaxed/simple;
	bh=CFEXDSoX7g0csFSTExby+Zewmxl7mKrvM6xohhBNA6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W/HofV8/8jJWVVkatxu+DB9CyK2v0UFqd2jteH0RkuosTmZFZW8Juobgu06zNk0CR3Y/EOvCR5soBv81/5vfCxwTMnYiu9TXelHzwwFHHXDk0GglEQYAm+8nVstYXbTAbD74a9vdzHn8UPFpl4l7TnVQb5FxF4DySWKx67QVOwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCpZD0Ap; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q3yXRvTR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN52FN2965327
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gleZcckWtKx0wiXdNKBZLi0kdf9nQuuupQziYFH9qYA=; b=CCpZD0ApKBp66S5C
	9VgcGpsrBp8S4gaQwsHphcUSsCUqJbK41/1n2LkIW4c3XY1mPrejZzajssPMT57L
	Yfh2uG6JOCsKBqW6hfpBg5R4G1RWHxSIF0uRbj5XSq5CCAGeFWLj14xlwz1giv43
	P9tpPajlvvBEiNmZJQpvPNK1IVlDbQzzbw95TwyEuhXirXnH2tDkUlkKgkRhV0Fh
	SjelhnG5ALI71DNk9zjHvCm4HAl2+R6oDEDXCY2eHQt4YQsqIfEaorKG9ECUJUN0
	CoLQgK2d/0net6pylET6a/AJ0DgnEWr4N2AwxSNkgStEmw8srREIDjrDyZmmMC/y
	JhYkqw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hjdjs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:22:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b6963d163eso1784488085a.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 16:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768263766; x=1768868566; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gleZcckWtKx0wiXdNKBZLi0kdf9nQuuupQziYFH9qYA=;
        b=Q3yXRvTROcqotOnswyuEH9KQArBC7diMnY7+ejvBjxvFf/1hP++hJAk264St/TBbYz
         DtEXjwtcm6INL+InWpKFlfQhAInEH1FH4f2Q5BGPjaBh5VfbF1X3VvlDTxSUk8j0YMSH
         1XFP4ulijali/ggUc0+51AWIqxmAgFmDV6zEV3XG0tWWS5AwBukA8rGmqZI1ESJnU/0A
         YEL5sJu0pD0wjO8xdAe/bRENxg19xsgp4jZaMQdLQB7YvYdoQS1mTHgOaaHqlwdsc5Lx
         fM5eEZqEBQk41LDyIwVC09/UG/CE0SWsnee43Q4maPMNKt/v90a98o57GZM3ey9CZ/LK
         poEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768263766; x=1768868566;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gleZcckWtKx0wiXdNKBZLi0kdf9nQuuupQziYFH9qYA=;
        b=S6GAM1qvtjLX8kpqF2KAw0zKJtaBWi0LOWSZbXAPOc8nMMHym+f933pQ1lfYq2bat+
         dtBurMM6RSIqtQLcpMf2UEPl9j/ElaM6yDp8zL5gf/9o/xSaWY+j7tIRaDdpFZxBGykY
         +pg+o8XG3H8ofUeqylBUPKLJlqklYhkS+NKk/gEfkdnx8cBJLl4yx3pPynQClIPSd0bi
         c71Gn6KOF52/FO/BO+HvATb5lqINdIeu5zmdObBWvZoaS86/pcbZfuFslch0TRXzEfXe
         +rxT4WGQAEt3Nqy+P9/pDJwcu4Cm0BlXaUU39ykHPSyYwjQBwfPTPgM0Is0SPRk678Y/
         Ur4w==
X-Forwarded-Encrypted: i=1; AJvYcCWELJ+JPicae8etctzZE5zQhL/1KzVDiiqNIjOpt4ArPh3N2vIgLGJqJo5s5P1QJKMrK9FlqMtSKpU6@vger.kernel.org
X-Gm-Message-State: AOJu0YxUczfgmXfB4VAtV87nt7HX8I5s4iRRcOyFeYN1YPHjofNgNbrI
	iNW0bjS14Lfxg44T+8rICCrOl351gr5613DltgMko2Tox8qxl78jKIdJQRvUWEX4wykIVDw9Wb9
	UxSNMiNbimy/cgRAcq+TC6Bt+qBLrX/AFs1y7fpMZEOliNCVsd8bd++ce8xGtQb95
X-Gm-Gg: AY/fxX7ehBoJhaOSOhqGs76qa6Ye/nb+0Xo3SN2Q85CACTjQrf6Lro/nGAZILYIlQGL
	lW3OMesZH5ne87nzi31iHX7WTZPxWYWMLrSNmlOcn+hdRuJasOJavVgO6M2dwZIJnMCm0QT3bj4
	0PrujwskPIW//wWX7GPFOy3Uq0JDfnTyjB6Ydx4aAMomyWVDBtf5qqv1Bbg8cxNVHt0aR5rlgQ3
	yBz2rb2YUnC4SYBs2Ae+F3cOioQoxFeFhEbJ4gxkqUJPjbSi243r8nkGxErr95/pjKRxuQL83d5
	Zw/LpsCo7aRDz3TJm1RovVYLIrhe1NbSdlbFFeD6JVjMvvp56Xfv7gsTFu0yIUKFcE0rh7WDtzU
	SDSTRJpvyJlPBuQe+flKXl0vEtRJMIcpnrh6ixMdt+Rj8WNZhnenbczQAQ6nwm3rWnNVY7VPSS/
	uiFnXpJu8qPlzmV50KtzZ45ko=
X-Received: by 2002:a05:620a:1710:b0:8b2:6eba:c460 with SMTP id af79cd13be357-8c38938e764mr2857811985a.28.1768263766402;
        Mon, 12 Jan 2026 16:22:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEB0pTp18i+dqzRKpwzHRNbw9izTXQcKoLuHijkhHKEsdy1/ojcQBylS+thOWldmFGy9czllg==
X-Received: by 2002:a05:620a:1710:b0:8b2:6eba:c460 with SMTP id af79cd13be357-8c38938e764mr2857809285a.28.1768263765939;
        Mon, 12 Jan 2026 16:22:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b739a7349sm3943490e87.8.2026.01.12.16.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 16:22:44 -0800 (PST)
Date: Tue, 13 Jan 2026 02:22:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
Message-ID: <nrudictx64m24ydh265c4ma7txfdmmncjqfl4xq6zxvk75lkzq@wu6vnehc3dqu>
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
 <3d2qboek2kzsnsjmn7rqi6xkfotfchc7vdmyeprivu27l3rw2b@i5lbwsvxfwdb>
 <aa8d5d6f9301d94b56af4580210ffc88@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa8d5d6f9301d94b56af4580210ffc88@mainlining.org>
X-Proofpoint-GUID: 1YHRzLdlMQaJHQFYnMEqW1gNd5aFk3KF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAwMSBTYWx0ZWRfX5ynWgRlQQLpi
 SfGx8PCwQXByFWRwiqjLKwKeBqWO72W7T7C1BzUXfS1fD38Eq3u6sFFexisG8G+XuTf+FJeg4jF
 6iuSi57WncXW7yG0ugb2Jj3w15YFDKdNDgFa9iDqsk1Gm5wOgoJk7fhVOltlgxbzO43iiAHQzKE
 t/L6DK0eR8c3Vt2v92JiPrOzuKhRVPfDoD58Sqw3ejY84NcbcQ/ByRKr/v9vd9E0YQongzCf7KU
 E0QHFeN3fdLDimfiGMc7aN5wf12FXv5R4oW6JlYihtkZk+HNFKf4ihM1zupAtpucXx0IyywI3bV
 ICt9vkFzz6FgciLDl3d3bCvGnebnL22CY8P4/2OoX9Osz1zhQPqfQXASImLQQRpVKxhCofDQ2WZ
 tf+XfryRMUMyzRV56ObKFjQUeg/4WejxKBsRZn2hC1NOC4KoCKyoXHyGzqwfigPV0TW5eHVqC5G
 2Ibg9qP18FaZUcKdtDQ==
X-Proofpoint-ORIG-GUID: 1YHRzLdlMQaJHQFYnMEqW1gNd5aFk3KF
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=69659057 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8 a=aXsf02-KSqOFqytllbsA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130001

On Tue, Jan 13, 2026 at 12:41:43AM +0100, barnabas.czeman@mainlining.org wrote:
> On 2026-01-12 23:15, Dmitry Baryshkov wrote:
> > On Mon, Jan 12, 2026 at 09:13:29PM +0100, Barnabás Czémán wrote:
> > > Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
> > > the only difference is willow have NFC.
> > > Make a common base from ginkgo devicetree for both device.
> > > 
> > > Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> > > ---
> > >  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
> > >  .../boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 302
> > > +++++++++++++++++++++
> > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts  | 296
> > > +-------------------
> > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts  |  13 +
> > >  4 files changed, 318 insertions(+), 294 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > index 163ecdc7fd6c..70be19357d11 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > @@ -1,304 +1,12 @@
> > >  // SPDX-License-Identifier: BSD-3-Clause
> > >  /*
> > > - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
> > > + * Copyright (c) 2026, Barnabas Czeman
> > 
> > Hmm?
> Original file was renamed to sm6125-xiaomi-ginkgo-common.dtsi this is a new
> file just the file name is same.

Following Konrad's advice:

Would the following addition to .gitconfig help?

[diff]
         renameLimit = 999999
	algorithm = patience

> > 
> > > diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts
> > > b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts
> > > new file mode 100644
> > > index 000000000000..9e3aeb5a9e74
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts
> > > @@ -0,0 +1,13 @@
> > > +// SPDX-License-Identifier: BSD-3-Clause
> > > +/*
> > > + * Copyright (c) 2026, Barnabas Czeman
> > > + */
> > > +/dts-v1/;
> > > +
> > > +#include "sm6125-xiaomi-ginkgo-common.dtsi"
> > > +
> > > +/ {
> > > +	model = "Xiaomi Redmi Note 8T";
> > > +	compatible = "xiaomi,willow", "qcom,sm6125";
> > > +
> > > +};
> > 
> > Please consider adding the comment regarding NFC.
> > 
> > > 
> > > --
> > > 2.52.0
> > > 

-- 
With best wishes
Dmitry

