Return-Path: <devicetree+bounces-224622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F3919BC65DD
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:55:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CED8019E0CC7
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6AD2C0F72;
	Wed,  8 Oct 2025 18:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PosQepT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABC62C0264
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949716; cv=none; b=Zqd7pXzqU6jAQfBT6yC2NdxWPu9SKGsX+wTVgLCe4VoEQiMg/eduYn6wDiGYZ4PeutYcGPxTxhvMzVE1MNGS019gvaAsVATmxUopTEOg9wTxQ0/H28yrfpzEUBwfOkRHFB+DLdCa20AuP5xXY6dMuTULkt2Y7dsoXGQQff/wiHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949716; c=relaxed/simple;
	bh=ZxrlyTdwXDKR/t7OEC5AFlsR5I/rwKK3nNq0HeWo8vE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L81nxTwqryXDWePBT4531VyvxE8o/N4/R2q2pzv7GPbgT6+tMmAxLcqrPscyYS5u9qXvFi6rJJe9JjQ5MeMP3MHi3TcrYmfO1YYZUooHAbUVPzhDKunupQdITg2SyGBMHZbPmYWlevrYfDLXJbmV+3F8bbjaIVk9XID77+N8ctg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PosQepT/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5KE3012918
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 18:55:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mxyhPRUmhe/CrZF5HttE0O7N
	aGBvDw13y3Fi6fBQnc4=; b=PosQepT/S5rU4yfEhPtpH1p53u69S6YbcJf7bauA
	9Gvp7DrWHjg4DYqj7CXedXg2wv0af9G8bvpzIs+AC9xoSpO4lMNdGYIpIVllFv9R
	jfWHcclwfdYEHmGrrXW+to+r1oxPlbfJ0qbQ25Yvan+0d+EwvxJNkYUryL4F3RMn
	zI5juMVuIiUTfjKPntYzkZXXZ8NQ8mWJPReh2dC0c4O1UiDd0JDDsdUDVRu6z5wL
	yvSJtbi0S95nk1H/HSmP5LqI5MOqFulhMIuPRmU6mKKH2kwLoqaBapi6HMiBg2J1
	CbuntreYl1m8erGOIcK43bvguN+A5AnYcKvshFWSBLX68Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4j09ux-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:55:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-797ab35807eso9713506d6.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:55:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949713; x=1760554513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxyhPRUmhe/CrZF5HttE0O7NaGBvDw13y3Fi6fBQnc4=;
        b=OkcdAzgGwLtvOmJX7alvOHm+EF0/cqAzqmx6IBlDlNwBjp48LgyrWitBIOV62+1fQt
         0C/p+nAdD+SbyjxICA89IhqBQZ8KE1ZQA0borcPMMHDzubLTulQkBJbVydh5Hvw9VhzD
         G7So+975iZ5NfDPkuu5wxhOK8xmjD61bdVICqyaUSBYF9IqiZD1elHcxR3NVjd9PGKy3
         5p/V0OirEJ6WVb+nZbT/PXWto3LCJZt/eP6D7sysN+pYZH/TtCo1vQv1xJfLgQyvSzrN
         UhURTeA87cSAWpE0pvOR+cP7P6kMNDlGw3Gia7lGc2s2FurR3JEkgkoVW6fVn90ELhdD
         FhEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxOPV/IMUaaRgJe2k2x0e+5YTL/PGYS7yLm82Qmh0bC8bek2vsi9PclxrdOUp9RR7CqCKG5uAc2E7h@vger.kernel.org
X-Gm-Message-State: AOJu0YzKc2WWtLl627FOV4VaLPMYFvJQwFhMKzQi70ppA5odAW/R2wmv
	ftLW6LS5VQO3pXcq0Rf6hM7HFrTcmZjpR2hXWX1Y6vfG0K3rw0No/EepjYaL2iVrgrtEvBJ3B4U
	r8GtFJPCPq+ZXjILdBe4+qeKcGV0iEUe5ogCeI7373fznHNVyVy4u3g+MdRdLjcon
X-Gm-Gg: ASbGncveqGcQh9Bo0GTCVjkAOp7N0nvLKIG+zV/VKoKsvB3x862oU4BwrxZuegdWaC1
	mxMiK8KWZdZYm2nsL6rjFKIbO0W+DuHXmXe7Pq6GbMjX0UM1eQv4NmeE0pdCBP51RHa+IB1H/dc
	sQpCAXvYUhAObU3MB0CQ6ehpTinvmB4efo2DY0z3XzURKNy4Lc/HTmMHIwoPvLqh+zGXvO41LZ0
	pzNmJJaFWKlNs3CCyLal4voIlPirEZ5ZBgm6pxNy8cf6rNGFnc7LYy/kC7j2vcQURT3zxc8Db+i
	AjyI/kkLrij0+ircwpeW5wufAAevnIO4fuqVzrG+Qb002kP6zEpuUFrxlUrMiuqI3g54X7a7jfH
	uXXi6XZO9gXjKB2YzplyZBARI8P0rO6IcAoxhpi38JLJ7oYwrIx6BvnW6aA==
X-Received: by 2002:a05:622a:554:b0:4df:d1e5:47ac with SMTP id d75a77b69052e-4e6ead07cadmr64588771cf.22.1759949712588;
        Wed, 08 Oct 2025 11:55:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9LU9w3HFmxqx8RGYdyppa1AO62f614MGbbNlcjJhmzBLRZN9Y8nGtrhlv25Odt++2usG2IQ==
X-Received: by 2002:a05:622a:554:b0:4df:d1e5:47ac with SMTP id d75a77b69052e-4e6ead07cadmr64588301cf.22.1759949712079;
        Wed, 08 Oct 2025 11:55:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ad9e03csm252110e87.83.2025.10.08.11.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:55:10 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:55:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 3/7] arm64: dts: qcom: sdm845-oneplus-fajita: Use the
 freshly introduced driver
Message-ID: <pdiqqujrhzvkvv2gx3nhvh2y5jddulcfmhdv3sthlnmn4gsl7p@mj4omp3qxusd>
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-3-21eca1d5c289@ixit.cz>
 <visvxwdwh2mcympwre6kx7xesvsysdjw6j33kewwibzfbgrbsi@dkcilnw7gk7c>
 <17b5977b-d0e6-4027-98f9-171b9e18b1bc@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17b5977b-d0e6-4027-98f9-171b9e18b1bc@ixit.cz>
X-Proofpoint-GUID: YuBCTWGgTRF5on56bUITCwEawcMOAS4j
X-Proofpoint-ORIG-GUID: YuBCTWGgTRF5on56bUITCwEawcMOAS4j
X-Authority-Analysis: v=2.4 cv=f91FxeyM c=1 sm=1 tr=0 ts=68e6b392 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VQwtuX0fJDwWnf3U-QAA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX5gLGPU7kVxkx
 7UKuqoqr9aNe3UCaC+Gc1a4zIbT47LpLCF3TWHEJgOmy3M0A29RcO7hS4sg/JSxAgKDEIDXzjN/
 Yf6MhCTWfmY3LGQKK9Hymzm/xplAOoUDuaNUC73q82k1s24CWkOu/VFcg3RDUE7Rln+RxJnxkxL
 AGYuB5y6WOCyr8xCLxTfcgoC4XeUwpq6Aq3D2cMfxfg0ckTh+YEh5E+pWR+ExXLrCerTZsnVU+w
 WvZmjfYpgwyqnrzfKFiVLI5Ca7x0lOKL/HQ5acN79eEGUpM7qzlLD68tUz9fU75c+OxiE1vLauI
 hljC6aw87WZjgaE9brRDPJOIJ+q1VnGnTJJbmKEecdGixaefhHssBAL6OLu6HxQz5ud2gihgSlB
 6haBbC8EwovGYymZUDi/1sChPJ1kAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 adultscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 06:09:19PM +0200, David Heidelberg wrote:
> On 08/10/2025 17:54, Dmitry Baryshkov wrote:
> > On Wed, Oct 08, 2025 at 04:05:30PM +0200, David Heidelberg via B4 Relay wrote:
> > > From: David Heidelberg <david@ixit.cz>
> > > 
> > > Switch from older effort to support different panels within one driver
> > > (which already dropped support for the HW) to the freshly written one.
> > 
> > Please disconnect the driver and the DT description. DT can be used by
> > other instances (U-Boot, OpenBSD, etc.).
> 
> Just to note, there are no users (anywhere) for this compatible.
> 
> Would be the change of the commit wording enough in this case?
> 
> If not, I would then propose to use for OnePlus 6T just an extension as
> 
> compatible = "samsung,s6e3fc2x01-ams641rw", "samsung,s6e3fc2x01";

I like this approach

-- 
With best wishes
Dmitry

