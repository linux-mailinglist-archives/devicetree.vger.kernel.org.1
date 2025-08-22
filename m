Return-Path: <devicetree+bounces-208009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C38B3150A
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:19:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DEA17A2D16
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30694263F22;
	Fri, 22 Aug 2025 10:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HMmZqA57"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936A4291C3F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755857923; cv=none; b=I9eyLrT43gMxOZm1G9LT/F1paikDuvtngtJgYTnDYHTIyR5bGQJfU6la4MrM8QkL+VLQEH7F4S487/F0DWqpfk4dDIXCxQe0OLv6GGio352enrdUZWwBxqUdQIY8Yk3PsVwwl9r3masPJaWqAsmO73ES2Odx7rVPMqa11ujg7vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755857923; c=relaxed/simple;
	bh=LqY9DvvMFJrnyb/3MZdXHgMs4XuGKf1wBFJPaPu53MQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F1tzT0iQMuy1C3ZhLkLQ3k/VxhwbT83Sv0soStPwVoJdS922elm14KNgknnuyws878iVPZgxNhgGE5sJ8yyjth6hs4iRI2iL/jtxkvHAfN17qoDbpQhpE037y1y45zT2fJPZOcDPuEVfSHckH75Xf66a1mmLFVsTYzLfH/KldNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HMmZqA57; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UI3i028616
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:18:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ac+nVSgZhDM7Uis1Ey9g1tmw
	QUcK1Fk95dUsNGYgbrI=; b=HMmZqA575k8n3YhX6PcQxSn38iqvxUNcQb6kB9vG
	qJZnkJdCfkpgNlGOXYAvJ5cBZESzZbRy4T64X1vaeJ7tJ2/Y6Sq+JvTwAMf0x3kj
	R70nf+edQxTKO2Ah+pnqAymz5q7n0tW7m3ANPgxx5DTARJWzaNG2JuDoKot6DNgh
	pEPW3Q9r4o2aigN+atDqaeVbBilW9W3tiPIVVtswRH6feiuClNuUKotBx+YusC7K
	FgLB4ZlMt9hYxAstBTK/wdrCRIg/YGaSzHiT3A2901ygsc4deZ9SPHDmm7olcgDU
	deeE8APVcu4E/5ynu2PqqntlgmYiq1noPAeUfvnQrqIMBQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cruv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 10:18:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70ba7aa13dbso46746576d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755857919; x=1756462719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ac+nVSgZhDM7Uis1Ey9g1tmwQUcK1Fk95dUsNGYgbrI=;
        b=hJPaaHPSSGInlKY17ioA2VYrnY0ox6MfpHXvf0zSk6gNqQ7c3RzAfv1N794dLP7Om3
         Px/7qMBGr0RlFc41nT9fxV8WwR0ORMVllhC5Nx7PypHFH5smHbzITuU3uGkJh65y8mYn
         qnYgK9+DPCAmTsC1y4EBKhoImOi1wObAAUU9rPxNl/Wt8JuyKlAh6XleHuHmhLgkt1gJ
         Cc3TesKxK/rjw4gJolO9ApjnNzjnINJysNDuX9pJW+w9IGZD7IZcB+msh6wf5oEYfD9i
         g7hyDTT/ghYfxI8O8GXZ7PTT8kU1SRq8Jfq7qgbPNwqJ6OoKoL61V8dJYu/N4tZFVPiY
         VUpg==
X-Forwarded-Encrypted: i=1; AJvYcCUxeptmtVObFHYJX2YCF2MxbkdDBWcIfvDCe/RnWIra85CdtxVCQuuLShRT3aFRmCkwTG0WryIzXE4M@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe9wVgijjx3WLpc77bVM+hbIeEx7DoS+ckxyRFxNBgaCNTKp78
	g9PuPFsxE+61XxV6NLc6THSxHpSAR9IuJa10scqhOkw2LrI3p/QNNkaoypxR6HsAulBFbRALXV1
	8Y3effZUWMDOgLml3zT/1zNDGtlWE8oNAYB8eU9EkI4jGPv/5ASMGbSdKxxSP7NrmtHdfwjWO
X-Gm-Gg: ASbGncuyWJkl80shA0PLedv+wOGFKIhOs/Pa19VJdurcfn2BTP58s8FqOFemCQpKvy/
	/fk97DRwoQCuFul87rD58VgFgyc+heKDE5bQZ3e/34jtu4qZU2ph7Tva6HS6/r0452yXoiI3/5P
	kPpsTjAIyRDqnNDnFp4WeNqa7s48/6iWXTw4Lk1qbd6fgjdBRi7cep7F0rUiM8jw+G+u5QWwryp
	tkX94IcPyGcH+Y03Fkh8+N590KVNLCY3maQWFc25ZZNPd+egZo/GM55E4E9aym2ezdYiy+k00IX
	81nmCb6dhPlAZWFPKMjQNVt10boWyiD97d7FI2zuEODRUfid1ggYNrzBdhhTqmuwW3ZbaFMX0r5
	siDYjlHIW7WxenAwjyUbuOCMFco2dmgfNYTGn/TFHm43F6NS3QuFk
X-Received: by 2002:a05:6214:c2d:b0:70d:6de2:50d6 with SMTP id 6a1803df08f44-70d97213470mr26722346d6.67.1755857918709;
        Fri, 22 Aug 2025 03:18:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErGePoMT5ywVRUZa2kbz8ENiaVTNjGMFIKjDHTl69Ij615Bvp3AsW1z97fsCHMLNb7j64twQ==
X-Received: by 2002:a05:6214:c2d:b0:70d:6de2:50d6 with SMTP id 6a1803df08f44-70d97213470mr26722056d6.67.1755857918063;
        Fri, 22 Aug 2025 03:18:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef4345d6sm3418726e87.150.2025.08.22.03.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:18:36 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:18:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Message-ID: <armnr2vplar2fppyxgkxeaywdlgjts3jmf3qmirwvyh5qb3bra@treg7qeqz4j4>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <95fed1b1-8359-4221-8245-dc12335dc4b6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95fed1b1-8359-4221-8245-dc12335dc4b6@oss.qualcomm.com>
X-Proofpoint-GUID: QLrCzK5BzZq-AmGc2DGHzKjAnPSPFBvJ
X-Proofpoint-ORIG-GUID: QLrCzK5BzZq-AmGc2DGHzKjAnPSPFBvJ
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a84400 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=9lylJ45cP0l75vQ64wAA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX7WUJFvxIkUBV
 3onnMrWyGauF/POt63aB9FrpRojbyCn3L4NRj8vRYQICev+Cz9t6we/dyf514JhH81U5DCP2pj1
 mXVT/TkDYJ5C4Qpol0Ee9Ey9ZpyoUq1Iszu3gPY8eBvn59Z+i1UPy6XJsRjU8I/2ClBEOr+PYK+
 a7cGuwblYbdhGQSMSow7f/18qPXiUCLLKjUPk6qiYUAZlYoP4mrj47rcE2JoYUBw5WplMrp+bHr
 LYx5ArgNCjzHBV1eAlOOVNIbTI3J5FfDKNCdyqkiEdkkmrtG29x4KgGp4QD1hYALPnK2eLPAVnx
 +WTC58lnhTxlPJG0Dgq3xyOIPeXRf2yJ5tf52DiPAaK22xeVZZdxlB3j7rf1DUOprSZiME1M5H5
 rnX/4OYiyKGj/aC5VqBrp3M8kGEMEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 12:36:47AM +0530, Akhil P Oommen wrote:
> On 8/22/2025 12:25 AM, Akhil P Oommen wrote:
> > From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > 
> > Add gpu and gmu nodes for sa8775p chipset. As of now all
> > SKUs have the same GPU fmax, so there is no requirement of
> > speed bin support.
> > 
> > Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Dmitry,
> 
> FYI, I retained your R-b tag.

Sure

-- 
With best wishes
Dmitry

