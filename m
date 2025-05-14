Return-Path: <devicetree+bounces-176967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43474AB6052
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 02:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78C1D3B9242
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 00:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA9F313AA53;
	Wed, 14 May 2025 00:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oVPfuWvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5909F12C499
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747184362; cv=none; b=YgrhNf4NaYlByxeGPwlfKwfr/dgcaMC+wusFI9sqNoZOX7J0MG468oGFt4Uo9uUg/059yhir9AC6d0d/VR77vNu3el/oqwNKIsZtjq38e+d7ygYsyi9fX2dPWo8rrvzj8MrmGT+0RgRjEw/iPJMSE8uG8NoNn43UMJVPPS4dObc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747184362; c=relaxed/simple;
	bh=PfUaRwWLE7xuBYYWZ9RhZCbng+fAOgq6pjlUuOjLmyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OtbT9iOeDMuTp9BNibNOg2GdFK/Bmmj7xPoDxvHMyGtdIFxZMmoh+80JzoE8B7958HiOj7EylkzGmZuo4bG1ZBEyGv9L4YrgL6crQrYyHo5XvD7AYbdXmTRXLPt31qfAMwdHkSu2FALRK+c3URFPhoKQrV54piVza/L56hH6lpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oVPfuWvc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54DIRsUw015791
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tTxcl01PEmLXwG3vhnhNAzbg
	xBv5KPSQLGu4R6f6OxM=; b=oVPfuWvcLSYlrZU2GlSuiaiibHQb0rWQbCq40ZwD
	ZATrGTlEomBFL2X/tus1rxQnhDxO9fX2Ax9nH0mvz9AVUlLX6Iij2bLvHgX+tgIZ
	DCqdYov05bmLFC5vX4ADmAWdzZ7b75xZfDg/A9b/c2OrP4+YVe+RnHUm2zbKd6ha
	xhrIItutQq9VGmZ+gnqNPQqBnN216lbhLui4WpQW/AvbscW4egXMALgBdgnKvn3l
	PpNSOssRqAaO7tMf+N9vjOsTiwjoD2X79dwS23WQodtrf0j/vx5xpy03RdAG0Z59
	X2cVnu5XgNkaBeF2hV1Z1uYKJneJZRYnbIggXuyLCIHNuw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmguvv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 00:59:19 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c543ab40d3so906526885a.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 17:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747184358; x=1747789158;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTxcl01PEmLXwG3vhnhNAzbgxBv5KPSQLGu4R6f6OxM=;
        b=RLN32xgqk78kOPAu9NtLOh7mkc+xPn9+3sz88lJYdbftDQzJr0Qy8eMhcjthG+wRfj
         X87P9yqwLAOEPZZSTIzPSY7vfGa443pKZiGJqiW52b2elgLwdt2wHcKTIFaK3MA1FQkn
         HPyTITbw+wogENAIReob84thr2e3GI1gWfxP5ErBute9kwoxUGflgRs2u9XqeFC8OsHe
         tMB9/tOTLpu7eTqvqai3MCiGKjibC6zMeHNJtwtSSFnC9uCamhy3n6uaj2E/uTwJwnzQ
         y3UIlnYUgafriZ9WXE3HuZKg+3vERDkZllKtunvF5d1D4fx9kx9N5i1SAE37fzVZ2Njl
         /Gsg==
X-Forwarded-Encrypted: i=1; AJvYcCX9Ygf06IUsnKOm7cPxEJ246ScNh5JiRHnZk5K5t8uyqXQcZbn+5J5W9BrlivkEInryZOS32Mi1dPmM@vger.kernel.org
X-Gm-Message-State: AOJu0YwznzF8TXVb4eNx0wiqbBx3d+M6FBBtP2VHx/S73Ufbs73S7eTt
	q5gKNEV36sqq2L31i1fY2BcylfRSXUQSWvY9ytUfPD6dP8g4vvee7KutCjLmC5f8XlXrwERA6ef
	7Wf8oT0GCuwY7fAYns2vivJChQHyw9xS6P5dJjxgCVycnLWR5zuy/h9m7nyEE
X-Gm-Gg: ASbGnctDIhq2QXXZB0B4VltKz43mMP7SzJe5wsT4g7fCQ0J97TIYft7hZ1pQMZsUct/
	ePMmrvgZ55YgbzcSmTlNEjfjpbbazDe9jpyRnw+Y97curWoSeUz+JZ+B4rFxGJ5uB92XWMCcEJU
	NL3eH3F9RIQcrZgUdH3EWh1eEbWD+fJUVKaLPHij7usXf4X1mFf33LE6nkS8SLZklCrRQ7ecSRL
	nupu3tPJfYrRTSV6z2X3KUJD/4lmsk40y6TtMz8HJH9OcHoa9g/3JkCSvwjL0jcp0dFQTfbdZGh
	c9Tuo0j+XuweMKSEiY/65+9YZxQZxTVY5qL64112/L8A6L8eXQzFCyxDOtT4SzphFS5iqCccLRQ
	=
X-Received: by 2002:a05:620a:f0b:b0:7cc:c07d:e3d4 with SMTP id af79cd13be357-7cd288557b9mr224253185a.35.1747184358002;
        Tue, 13 May 2025 17:59:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYw9SE04klQRvkfoCB/RwP4rwfTjUfhHfUXv4t360h+A2UdXo2t9FLTB1i69oyPRdksmwASA==
X-Received: by 2002:a05:620a:f0b:b0:7cc:c07d:e3d4 with SMTP id af79cd13be357-7cd288557b9mr224251785a.35.1747184357622;
        Tue, 13 May 2025 17:59:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64b6fa1sm2047195e87.128.2025.05.13.17.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 17:59:16 -0700 (PDT)
Date: Wed, 14 May 2025 03:59:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
Message-ID: <naoq2w2rrksdz3wjau43eaffawusymx6vwtazgszv6cwlur272@rctxn6pdahci>
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDAwNiBTYWx0ZWRfX+Z4YmJuMom9Q
 NxbuOHTva2drt1hpbzzOMAhfXhs2+hliUrKHmp4wMX7hzEP+JwEtva204KmcP6XYs5WugZceOCJ
 a937as9X6Sxc/1WLzCYnGn1u/KoNV8Mrl0EJFTxhEpkaYz1iQJ1ljVwoxyPdIdWmVQ/kY1hZez1
 RqsIjCXHdhDQPX3czqW1rsNEqz231UVrkjlMeSSdHFHvsDI7fJWqdaJ406fVIOlfxpYj8XTo2Ta
 vLIdcsElXBVQI4l5hxBk6QUuVw1/wPkN4DADyJ+XIBClhj2KNVdk+amoQHyhvq9Cui+GECbIrjL
 dnC+TNzzNBq1qXQsounFzbBze7g/Ox4GSWREtiDmJp4pMqFr4pkRz3jld6uLRXTPhhmvBUO9CIn
 fpfPzUCm38KF/PZIYyvmbk8ykruInttmVyuZo2nmYvvC+QOnUDLmz8R3ZrRvg/bV4FEOBgv4
X-Authority-Analysis: v=2.4 cv=G5scE8k5 c=1 sm=1 tr=0 ts=6823eae7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=A3aN6VE87vRDyCXMWEIA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: oMIYg2Tikwkp86LEv11TC32a9_pC3WPc
X-Proofpoint-ORIG-GUID: oMIYg2Tikwkp86LEv11TC32a9_pC3WPc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-13_03,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0
 malwarescore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140006

On Tue, May 13, 2025 at 05:39:18PM +0300, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.

Are these currently a part of the main camss block? How do you plan to
handle backwards compatibility?

> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 

-- 
With best wishes
Dmitry

