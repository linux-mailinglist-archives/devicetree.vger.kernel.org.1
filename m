Return-Path: <devicetree+bounces-223047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD6BBB0901
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 15:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 783D04A5200
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 13:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 892102FC02B;
	Wed,  1 Oct 2025 13:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n+WQA5md"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B632FC009
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759326505; cv=none; b=HXKijWfqR9o/3XoenZLpPUv2qLks+R7RrnjqJaSe4rzDxmlosoLVcXzM+XWxl2wmK3U/S3dk0ANSuZwcXtXHvu9yPn+yIaFRZhyV7H+UZDE6IuZvsvuZy3Mlmd/Youhds1visebeus+4g6W2WY7+ak6AFuubASFKEly8yRA3NQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759326505; c=relaxed/simple;
	bh=fp3v57qBuLEjj+J/x49VyV5FvxQeWmOVI+OPPyz4H7U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H6jMZ6bmPPGdw80vKraNkb5c9XUah6EHViiVFWVMrO1Kvpr2S3QvFFY5A8Xvv57F+zpf6OQGHJBM+Evcx31coNyX1z7qziTXNclH0Z5yp40NkL9FQzOHCQpNe44txtOHXM/0pqwNDH/ChMo9wcc3p3hudjG5v33bykGnWlKKnjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n+WQA5md; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591A9BlF020474
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 13:48:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fp3v57qBuLEjj+J/x49VyV5FvxQeWmOVI+OPPyz4H7U=; b=n+WQA5md74ejqI22
	weutqrqOSh8bHER/YgP7ORqarjnx1x7Q6u2QU+m0t3Lgnn8Hr547sOFtCtOpdVdo
	VmzJNle/CIt6lSESTN5+mnCqR9WmQ6qEVGXOSctw7w9fDABsyH5X5YlBy/qWGQ1Q
	wFFvroYetQDlqWXwFB7GeRHuK8p9JNqCZkvr0znuzjODxrwLfd5D735ii9598kQe
	bChngM/JygPhnrKHpyQZUoSHS2Q8TeJQfkVvVvVcRn5i4g7NhtRgXbf/XQTBTQBo
	WUxTXtxv1872zW77Fjh3QFjVsXR+UInS1z7367YDXPEF0hlFF5wmi41WBwq7m0e9
	QD+cbw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5vuxc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 13:48:21 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b588fd453d7so4780240a12.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759326500; x=1759931300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fp3v57qBuLEjj+J/x49VyV5FvxQeWmOVI+OPPyz4H7U=;
        b=bEVwlEm18xNeKOv1vHvNALCt994bcQtTvdM4wgWdQUnJSofZx6lADk+zSuLwcrzH8Y
         2iCgOb3J1f3cXyf5mytb7FjihnYj/LQXqhteSqvSMe8CU47WsSop6iodKXPH3bjj9m4y
         E7DMZogErapGtCKZ6tJuJIloHoZ2MoVID5KzWaQpS2aMpZ6moOX5AMWYwAH24rbN73gF
         SAOwYNkTp/+qlPgSPQ0epJhcETUSiiejHgDCkYGCR3hvDrOuKRz2y47Naa+xDMFDSxfA
         ivkcMoR6MJP7fnIxD7kZK98TIbSwIagg0/d5GwhHOLoQLesICmB5AJkRlt8S0iBrxVEi
         cMnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnmtUj4Fz+Ba/yOLNZxlueKAAm9xAPc3toso2lnV09R9d4XBcBqY4kvxLeieXB6TniwV1/pAlPN8xb@vger.kernel.org
X-Gm-Message-State: AOJu0YxgRvRIZZD9TP88KXKf3f2z17+dAPDsEVLx0c2eNjY7qEZqcu2H
	eE8XPRnhE5Y8+GGQlH3sYNQMjMJ3mgMjTVVkmfUSp5zBPn3VlCoWcaSe795YgW0Xw30/r3EMTZi
	Q+hNqMlSP9IjNFErSE7yjkpECN1xo8umaECQYiyUU2aFjaHqzVfBOuBSjUIl1/G4PhH4BzJyO+S
	Q5ApCaA3RTTbxA4++LPGSvXmMDzYUQ64v9J24/muc=
X-Gm-Gg: ASbGnctY2mMX8lR8TMNHqB1wxY5KE5vGLQw3+mxoe/3V7LL/cWguzEFH+z4BM5WjsRJ
	HK1XDjpJQOE6nAh/nRckGBFTOhx6nWRfpkgHIlNAMVkDyszNea+9k82LCeg/trPI8/PyNvhTBCN
	OYQPrjBITCycM0pg+f/i0ws/WRXWXGCCmJuWZVguPIqVEHUDvUwFLRoVg1dMA=
X-Received: by 2002:a17:90b:17cf:b0:32b:d183:facf with SMTP id 98e67ed59e1d1-339a6f66d48mr3342750a91.28.1759326500222;
        Wed, 01 Oct 2025 06:48:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGEoqW8Gg2lgK86qxAwu+nfXe3G5OJ2NfYflPendMDk34x4Ydw1dWzOJ1aSl3n8ThNvGAbpRjrnFNtVgBSIzw=
X-Received: by 2002:a17:90b:17cf:b0:32b:d183:facf with SMTP id
 98e67ed59e1d1-339a6f66d48mr3342716a91.28.1759326499769; Wed, 01 Oct 2025
 06:48:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-16-24b601bbecc0@oss.qualcomm.com> <cd91e7f2-72bf-48f2-891e-4e6cd36b1e24@oss.qualcomm.com>
In-Reply-To: <cd91e7f2-72bf-48f2-891e-4e6cd36b1e24@oss.qualcomm.com>
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 19:18:07 +0530
X-Gm-Features: AS18NWBhYwOecFTI7PUFOxMVtEHAFfH7cHQ1cCOcmiaMyYqMB14HKhsIE_TTwpI
Message-ID: <CADhhZXau4EPEvf6Ngo+p4Jv=NPF6TYxcWtt2tV+MyrmOxp7OOQ@mail.gmail.com>
Subject: Re: [PATCH 16/24] arm64: boot: dts: glymur-crd: Add Volume down/up
 keys support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: eXl71IhZyXDnmVTxlBuof0440DWlA9lO
X-Proofpoint-ORIG-GUID: eXl71IhZyXDnmVTxlBuof0440DWlA9lO
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dd3125 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=EUspDBNiAAAA:8 a=QrdbydHfbqU_mCGI0rsA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfXz3DQOwdTkA6z
 FaNOcPh7Zj+Up4ApjQoxCDtlGF/OUL/DZsPXd+TLYlxXygk5BG9qmz4Bi0oFwokXhmc109DGoxq
 KGZDKh0EN5g5iE5XNu0f6sKBduTaq5Ijj9XVnK3BX/n7tGe7nYmT4DFEuDQMiVfW0AxpLMPOiEO
 +VVvSQtGh6k4ZGzVZV6GOOSBTvSzlde6oA6nIbN/CG9vo5fVzfC7VjC+qYG05Qn1o/Ga3YefGZ+
 mNjnFEBRz7J3OrWny9r5fP5ZEvUPVmTFsBMgD75ad4f6BmK1HlWoVGqU8X0vQZBWIUhUO3+hKlo
 4FN7bXRLicVPU5URwn9g7FgIRXa6oxH7kLdZ3Yg4qkegYDf6blq1AXMRKKMK2SO/JVXkkDvHztN
 Xuv0TvbHgxmSK1qxj+bQ6Tw6TDE4vA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

Hi Konrad,

On Thu, Sep 25, 2025 at 4:46=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
> > From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> >
> > Add Volume Down/Up keys for Glymur CRD.
>
> Does the CRD have these physical keys, or are they routed to the
> debug board?

Yes, it seems to be routed only over the debug board.
The keyboard too has the vol+ key, but seems no direct key having
vol+/gpio6 on CRD.
(sorry should this patch be dropped then for this reason i guess?)

>
> Konrad

Regards,
Kamal

