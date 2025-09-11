Return-Path: <devicetree+bounces-215861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D29CB52E20
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05D4116EF0C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 10:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F58E30FF39;
	Thu, 11 Sep 2025 10:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eAM12sLK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A75E2773EC
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757585762; cv=none; b=l23vh9lYW+GRrk7BCoEoFbzRSqDpcZJ4EGVs+QeJEuZ4LdamMhZHzOfRVPR0VBgG1gSP5gC9khSo0Q/klp9F5v+yj5SeoniwhUNIDXplqqor1+Q87+H8w+89KgJgi6LV6KZ4gwakG2kIozpkyLoOMuWKGxQhp2a0wkSDWmjVZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757585762; c=relaxed/simple;
	bh=ca2ySU4dyYlyOWJGaxHKU1ZLVW/b67pBynQ6HDMkqQY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WKay1iYgT+aXQ9xaW3UZYZQWqoIbhBoNoQ2x631hSaSTkwrmXZDrUhInjysfQdiwXsi9LZk7S9IY5WBfZ5B21jka9wWPIMpGboDFY5nzTRlxZqdfzDgyY5Cfeu5Y7bxBNpQJL74rM5GFN0lt9jUcHsbuNxdDYzBO42TO0DArG3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eAM12sLK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2JAvJ007257
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:15:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oph/BqXdzMBPwBrMip4MvFuk
	jtsewo8GJDCyXuPq3cc=; b=eAM12sLKRw7iHA4nK7P0RsTQpfsV6QY9XETeZn3G
	UVIE2cPKj7JMqzAzfTrqecqCZw8BRXTrfl0dv7VkVDpH2gdQwye0xgVxCfwxn3vg
	e8IXG0wo/pnmkmPYNxf1kgY8PeBawUXunhzz5IkfZFWwd3h+qYudDviRl8VIIzeo
	fKk2qDnJrPGMt5JeBWs7B7tMV30KtgxXNw1yWd0iHH14snWTAhF2dbKy0JDp8A0p
	8BAyy12bbX/BBo5O4pK1oyM6j/o1EVr6O3H5jKZlyIshw7yTR7s8sFAeKwKbbQ9G
	mu/gGN3eK6Kj6NLxqc6l5nbM5WevE352xJjwO4goTBplNA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8af6pv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:15:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b302991816so11807081cf.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 03:15:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757585758; x=1758190558;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oph/BqXdzMBPwBrMip4MvFukjtsewo8GJDCyXuPq3cc=;
        b=ZzHcLHCfGSqnn2tdFagqfiTy9yySBy2CDemsbRHnoopuu5t8nR7calPFBPcTo3Xrbt
         bGI3GQ63tsfpBaTe/s7bRRUq/Icj8HENrj4rsPDR9XgtB9q8BlyC/MyjmUmyeffG4MZF
         a/n+wMTAwlKWp4CwXkArelmtBki/+jzvzr2+R/ZMKbvrN5p+2Y4w3t2bKZdJeVPaj7Wq
         6L5qmtit0aqDg/tCgHMMsCZUPzbvtA9tM+mD9ww/mXUWB6AhJAMMaN5KuK4ZxiWRKcjE
         388YpDWWw0gy+YeBfcPPaoqZEKHIxZyHh9RGNd8T9kac9LaqM7RJ45p3kwYI+gAD2ONY
         jufg==
X-Forwarded-Encrypted: i=1; AJvYcCXZ/azma2vouI74/9iUlBLczp2EGBCg9q5fNRjcCSjcZdfisswlMKJFnPSBgUPw9ExQ5ZMJorYA91hY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3wIDfDBAgiNJzZNFFfa6x4+fQOsU3aZkTQmA0OF5cCaOHAI1X
	13kpOJP/FrK0Ef9R7qc5fkVWtUdAP9o14V+priR18wWZNprVHnurtuYdSHw2Dwe41dtRDgOZCde
	Hb9A9tyYyV2QXYrdrFcVwLec/XyrU+wEs7iWbjTtJmNUrirftKQ8s/pn1l0DEcCnW
X-Gm-Gg: ASbGncsUwkBawK0Cfm4O2YlbTTfK7fHjpt7XOY26UMOIuTKRZQRWSw28S6SZb/gphg3
	mH0WidKEVmNoNYD7UpyiuoOMXkZ7nj2tpQqcd9UIl6Py8pR/lJhdvQ+nPbgkxFTW0MAviGxj9Jw
	yMRzLCDxUfiQij8lGSJuGo4V370bZja/axRigwYc5XUjwIG1s2bduRqJiC0EG3CrFQcS15Q6DTf
	bU+1velMIs0ZPmW8678fiurvXIG4RpKTkQ15CdCqDBmfu98N3jTw1gLw3ERV6dvaySE2M7f8LIh
	h5aq17rIX4cRAJgjELlJcFRjPo7noWD2P6eaRI1aM69FAzBpDzBnFwpHqO/Jlp3/byLGfgqQhuk
	/YYgvKn9VBwb6qrMyY6GYwogYBLznVjJwCcWYTrscFF22I37JH7yV
X-Received: by 2002:a05:622a:a953:10b0:4b0:8890:105e with SMTP id d75a77b69052e-4b621507117mr87845251cf.2.1757585758268;
        Thu, 11 Sep 2025 03:15:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+FP/EvbksufoGB7yZt87mFGo9Mn7VdVzO2soInO78NzAyreFx9DhQ6rNkNHS/PzrUOKTl/g==
X-Received: by 2002:a05:622a:a953:10b0:4b0:8890:105e with SMTP id d75a77b69052e-4b621507117mr87844921cf.2.1757585757776;
        Thu, 11 Sep 2025 03:15:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65d11926sm321542e87.140.2025.09.11.03.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 03:15:56 -0700 (PDT)
Date: Thu, 11 Sep 2025 13:15:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <quic_wenmliu@qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, todor.too@gmail.com,
        bryan.odonoghue@linaro.org, vladimir.zapolskiy@linaro.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: lemans-evk-camera: Add DT
 overlay
Message-ID: <srawt2oh3hcevopcrvpnmbocw4wknaytyvxt6yjmnet3yujupr@ub3t36ffbrcx>
References: <20250910-camss_rb8-v4-0-28f44e1880b8@oss.qualcomm.com>
 <20250910-camss_rb8-v4-3-28f44e1880b8@oss.qualcomm.com>
 <u437qomhok4yg6pef4xttd3a6zibuybzaeys33gxu5frbyp2kp@mgmym6c5dr72>
 <8b194a19-182f-4f49-9427-c0044a9b4dfe@qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b194a19-182f-4f49-9427-c0044a9b4dfe@qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c2a15f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=lHPSLNiHg4AawE14pKwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: Kbt52SKJ2An7CIS_qGVdD7xAxv6v6VB0
X-Proofpoint-ORIG-GUID: Kbt52SKJ2An7CIS_qGVdD7xAxv6v6VB0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX9dbhcGfmy1Gv
 13n7R9jBhLUo2m7wHMWb+XlTppwdbiijEY6bEC6p815V5yUo6LhidbQ31oElckIFCrHtmq5z2YC
 gyRz5gaHdZGXYx5VhUYB0wJjwJSDDsZnkLwz836cDqXYw9uHlHgG32WUuppWIV/O3SKgbfPicZU
 sZDkDfks8QjDORkAOsWjXqddi5Vn11IoNTjajk5QqWE/tGQCV69QYHzfpNRjh0Kzn9ZOwbxykZt
 paAEBa1MwtQW4ediCTDBsvNSDpDo/F5ilKSM2smWGgg4H187Hp8DTzWCexBStdOdwPTIvKDBT/A
 Jl7wwlATvM31eUsM8vbJHWNU3cd1dDJkXNFW/9w83GsvEbmHN88PI3JdMhkMmOfLgmNI96xwOfF
 GtVoM82Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On Thu, Sep 11, 2025 at 01:45:59PM +0800, Wenmeng Liu wrote:
> 
> 
> On 9/10/2025 11:23 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 10, 2025 at 07:06:23PM +0800, Wenmeng Liu wrote:
> > > Enable IMX577 via CCI1 on LeMans EVK Core Kit.
> > 
> > Is it a part of the Core Kit? Is it a part of some kind of mezzanine
> > board? Why is it being enabled as an overlay instead of being a part of
> > lemans-evk.dts?
> > 
> Since the sensor is not part of the default hardware configuration on the
> core kit, we adopt a device tree overlay solution to enable its integration
> dynamically.

This is less helpful than a similar response to the similar monaco-evk
question.

Is it the only configuration that we are going to support? If not, then
the overlay should be named accordingly.

These details should be described in the commit message.

-- 
With best wishes
Dmitry

