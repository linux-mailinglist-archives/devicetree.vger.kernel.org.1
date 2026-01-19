Return-Path: <devicetree+bounces-256665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2FAD39E8D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38D9A303ADDB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10109268690;
	Mon, 19 Jan 2026 06:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lyZv8y49";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PdXFbHNo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A795D26E71F
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804427; cv=none; b=VzhE/rBOBBx1D/NSju0n2PqliyYVpletkskCk6lWN+zIViCEXrMp4FN+doZtaFD3I0WiJZujcEwyZa5B/bPpE9PO+0Ma2iDic5PuxGMy4l9oOmKesNjeBClwx5Ea7cQ8uyq7K/Y2M6F/7vE2W8E8FX5sMNv14VbYOt6wPPDbDZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804427; c=relaxed/simple;
	bh=VMyPPKv1J0fVPpM7Cv/Gjc82tc2/2IPQbdRxeb62a4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HX0/FxU3LyF/EuNdDOew48dr1s+ItwN8K1rCxoimbajSrSOmy2tEEiC2Su/T0ZBOz5xbMXYMzzVB1FF8oS68DHO8ajlVQxklkaTB9TxANVlG6wD90fWuKZ4nU2RSgikM3D9BMpCEo9822C3d5Hh/+hgSEHLMEa6B2rveFofz0gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lyZv8y49; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PdXFbHNo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60INgYSK707910
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MhU0aZqvrIrSdSRBpUgm7iOn
	4NaqegaCjfon30LZwSQ=; b=lyZv8y49F7MBp06+LC08DKsiILWURVh7npDTN9et
	QpcdGTo2o1G7zwdWFfoNLqJtXs/0jzz3mBWfHTGWgmdv5aH3gECuQi14ym4HyU0a
	vN1rkZ0uyhcUCWEkt2NORhQoKq4gAKNBYjLgWCooz36ArkBK68IbExtFMP7WHmvj
	vxqkdMRZWEIGs6OhKJbSqXQLjdjJPgLkt6Asa64sR3AVeoQwra6wfH65iJGBaSFc
	IrSQ3Q08pO/nD/DEO7Y5vnlUwPhuM5rseDoQIJ+Pbu7WTTaF4qe/bNGVXTRcCIjk
	tE1uNcHd1HDlD1G0/zk6UMXlp/L8bUFLyrXJBs7YNbgEfQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br1e5m4n9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:33:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52fd4cca2so1018903885a.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768804424; x=1769409224; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MhU0aZqvrIrSdSRBpUgm7iOn4NaqegaCjfon30LZwSQ=;
        b=PdXFbHNoNB8/Y+Eq6fj1kEkg29U+Tt3bkjtmxm8G4xwp4tL7IlEBTkBWKDIo45EFB9
         zhK0I3ejHYXnue/GhK8YjH6FWGUZkJ1tfbnuWOjSfwqvhws4uyO1RxlJF8+xk2fIplQd
         l/OuCQKFRdgsIbR6sbEli/FC3r4P7qAnHnADbsCSAAiqHxUzS32n5ws+G/9oCv6hT1oG
         Y3fw4KHB/k6L9sYWaWmi1rNgguF883PpnauUpE8u6Ep9hBG1tEJCVciCYkqvn4TQdBdc
         R8XVRDKEyE5zORrz+6Ph15nIzqSJP3Q+pqkJZ6oejuGOzQyfYnYOwNTDJOmTwN8qGxhg
         4OjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804424; x=1769409224;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhU0aZqvrIrSdSRBpUgm7iOn4NaqegaCjfon30LZwSQ=;
        b=WtZDRR587ALd1nXKsqR/UWrNYnCyfL6Muq//trx0GRFMuuYQqPmVMOks0biqMkkJIU
         I1UiYE3Z9tsMMevdAciXSO9rGjrL80l40XYdJ07opGq9EOZlLlgMCpLUNlfcK5Ln9lul
         e/q+s9ZglYIo0fDeYbE65s2ZC+z5pLgs7piCD5B+/WbNIEvS/p5VKcpnwmp5sKgdrVLK
         2lHb1LnwtRsL34ZPF8WcOlG4o3yvWcEc+EIl/rEAO01jHUrhYSSQMT310ETi87OYvQib
         dRTFOL4c4N/E6CxLNXwp/MZmigeAX/5zNWmNcHAi/YO2VgaUZGP5AIFBgoa6xRRPTCm/
         gu4g==
X-Forwarded-Encrypted: i=1; AJvYcCVRwKDjGPzi6jWHb+TqTjhY0zGETmxAr5hPqzb4uY1ZxZztmJrVNVaVa1vtGKuBSFXdtFoxNiZeBjft@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+4cCrHFB4RPv5oft8BdJvdCvXQyUyRReNwRvlMlt5b8SufOnh
	Xv0Yt4KlXq4tjwg/bjS2o/oZrAyojY1VBYTfYAV4yWQTLYh9GABun8vIBI07IgET5AWIo58655Y
	ohbRN1JY+zxy9O4JQbDgMcntWlAXsZTuLb+KILGtLmi1PB32XoQwKQg23n+u5jVFa
X-Gm-Gg: AY/fxX4hLbKJN3mbMVrKkeEj77ehMULgCUSJuloENZ+CNkytf+RL8jgwUqbGFtDq3T2
	LBek7eF1/yZdll/2TSdLmNm3gpNnABLiDKIpTYz1epR6vtewtykriZCstocTeBCg9WQmWnyKl1h
	q/dZbwDtWcI5R/mKzPNYH9MRV1ddc7SrM4teMZhbbGlL88WRxp3T84ncvrQVbnIKl48o4gKTXFw
	PmV46oWFzR7/TGNmQjR9yttuG9w6Jbg2MrU6ekcCAYfdqdhfPjLCMwHkbyLefSPbvS20+F2Fkdi
	yoeA6kL6KcoH2u5tdDHvqB6JAM2uCb6KthYqueOOsolhdRgvDUAr9vQ7kV9MpYV6AtM3NRuPsAI
	0o9eTwNmB85sFmmJiF1lLCFKWk62qsHeBSFiG9FTvsL7dJohs48EwRgunII4vVRlPPayzPF7YCb
	ItqHU3fHHlRWZGyBwLulvq37o=
X-Received: by 2002:a05:620a:2893:b0:8c3:650d:5785 with SMTP id af79cd13be357-8c6a66e90a2mr1496957785a.16.1768804423904;
        Sun, 18 Jan 2026 22:33:43 -0800 (PST)
X-Received: by 2002:a05:620a:2893:b0:8c3:650d:5785 with SMTP id af79cd13be357-8c6a66e90a2mr1496955585a.16.1768804423494;
        Sun, 18 Jan 2026 22:33:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c051sm3021350e87.79.2026.01.18.22.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:33:42 -0800 (PST)
Date: Mon, 19 Jan 2026 08:33:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <eawxuhblnho4pyeyskvk5s4ouqser7o5jh267ttinzeeowxfxs@y6nl2qbdydb2>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
 <d15bbe2a-a88a-4a88-a685-ecd4f058c3af@kernel.org>
 <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3404f2f4-7edb-4bff-925b-0a6a7a450f5c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MSBTYWx0ZWRfX1hOLH6KykyrQ
 q/xuyIF3ogw+kgV4BXok4hh8GX4N5Iy3XPf/xP6iax9l3cZDpHBMAY6a/DxfZ6t4XgY36rh51Jp
 KapduillrNrzhpb+GBQKiBemApnRQ44S6uttpblY80/OStpnipIK6bMlvBzlFix8lUnjoaJp2do
 Cz//XK8PcT5ahUjTOahO62Ew2dUrF6FxWmDS+/6oVZ+wOG+9DrM8LWDeljBVBvDkkhHZVN02x/e
 H8NBoHTBPEzrvEn9cgOfIz4m+hg8fiXw1eiGYYjod1roW5rgBvvFbDHaIZIrvZrJOh6Hm3CjvmK
 pEHiW5ZR2GS6DUK5XmibVI/Yx79twMjDYCzkj0vhLVxM1y2sCl7Qq5noBfxyYIBIqs7O/Aw/0wk
 EEgAjYDpTsEOCcW1rWYAeg6hi2XMSR/mtmCLI6i8T1PVPyL5aTsaq0/3n9h9YyBcGwKfGn9bcJQ
 Av8SLJ57z7uGRx0f7LA==
X-Proofpoint-GUID: IdW_NBbmK4Iyl2ASFYg6yWCD_pKaB364
X-Authority-Analysis: v=2.4 cv=U5yfzOru c=1 sm=1 tr=0 ts=696dd048 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RSLIvqAEGxZyComq2RAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: IdW_NBbmK4Iyl2ASFYg6yWCD_pKaB364
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190051

On Mon, Jan 19, 2026 at 11:13:29AM +0800, Yijie Yang wrote:
> 
> 
> On 1/17/2026 12:19 AM, Krzysztof Kozlowski wrote:
> > On 16/01/2026 11:41, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Purwa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > > 
> > > PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> > > Meanwhile, USB0 bypasses the SBU selector FSUSB42.
> > > 
> > 
> > NAK.
> > 
> > Warnings were reported at v3. Did you address them? No, you completely
> > ignored them, so warnings are reported again at v4.
> > 
> > What do you think these emails are for?
> 
> This warning is caused by the pcie3_phy node in purwa.dtsi, which is not
> introduced by this patch set. Since it does not impact functionality, would
> it be appropriate to fix it in a separate patch?

Why can't it be fixed as a part of this patchset?

> 
> > 
> > Best regards,
> > Krzysztof
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

