Return-Path: <devicetree+bounces-184221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A2DAD34A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD33216BB83
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:11:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAD428DF3F;
	Tue, 10 Jun 2025 11:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kig8GL0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1377528DF3E
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749553912; cv=none; b=SIPNpFsi7Qq55UedmjZV5LZ1/EH6f5pIBl1f+t1JLjD8AnXRCEt8K9wos6rD+z/BGcJMVC8QFPhxT/cVnriThHWQ+ISewr5ZxlBDlwbiRS8CvzdUi3zpuqGbca7/7ogederKzhxtIdQ0SID3hoTnugpfJYpHtZIfgBqkq43xTYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749553912; c=relaxed/simple;
	bh=lGfzwxjvbEeSHMr2uJyICRwLy4LaylD3mrDy0I7qXRA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vnx4bNj5iI+2JlzIZWNB1tHrHgyvVx00ddhSQu5bBVpApB4slRWsTa60x9hlAB5ZtVs+J/trHbiSSg8WmD2DwP5OyN+ZKE70btKbQfgB02phVa+OgQnjPH4IcK/vO+lvoHZQWTWJBdIId9vVBtejfqA+ad3Y0NxCtfJNfKPZO2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kig8GL0q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A9cUr9029980
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HK0Q8aC3LXcnvaq66Cado38s
	e74xEfV882+wZWo0hHQ=; b=kig8GL0qr11q5E5Aj5/wwSFeqxnf4pqQ76GRU8uR
	K6Cpx6DiioPEXFMqgdL7h28bbGEapNJ9TPaud601vGDB/CBmlB3erNTzT9z556TV
	8Xl4MbT4pFS/f7ecH4i0YS+pUrtbcQGG7nhCiVQB8dV7rgqTxh/JkyQT3J2UT/gp
	kFX8CJQ8vj4QOSBuV68vaCVeJ5//HbiQ+0R+upbsEZHXBLOltUdzbu5uBOOHcAHJ
	uuu+6WrqgZJ+tM6aemT5BZKjE2B6EBFXirYOxCXvGOPXBIG4wbiiN4iuSAsNCshE
	gpqd5G6VEmqs28m9WXFrG4S1vaiUPe2jlxLzDlJiPpYgAA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ce9s8nn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:11:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so826404085a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749553908; x=1750158708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HK0Q8aC3LXcnvaq66Cado38se74xEfV882+wZWo0hHQ=;
        b=MPwKMTE7G7tsCgr5iji0NhdfpSrWmCMFtyXUUMqZRYoTZBdzuXFN7IvfCLYkEKvNy/
         ugOCtR2KlL7SKbGUgGBaNbIK4Y4pdg/EDEsN69ylfrcFDJdSS2D2rJzoY8DYlYV+Oobx
         BxaCSFVGQfWe9At+Tt5XAVsO8Lhjr/FyRz3woO9AMuFaNMzMBP/SUrJZzVcWwzAif+qz
         u55TJk3nilHZ0atHS8JMqwLRwaiIcT8Vd/S9I2ny+odhFAGwFYoDwNXADyN7+LMF77t2
         2ycb56TEhyMvyAgx4BxpNZn5ieIohjxAGklTRj/VTQpoXpMuXaNVTuHtZcqMD1IMSupF
         V6Fg==
X-Forwarded-Encrypted: i=1; AJvYcCW7fUln0yO0lL23QYMZurJSmLj8oxcxRST4AjYd6U8cKwHBicjWktmA7mph96inQgBhcU9QNyKEpTGs@vger.kernel.org
X-Gm-Message-State: AOJu0YwnizFyyyhnRO5rDczRlsubl6mvxyykvqnU8DzJks+NtMCmqavM
	G9V6FqK26Xd7AeWfZtlP2ojD8lp1IcjbMmcNbgIlUgF3bu4JNLWRzgZKPEPmtAW0ndfW2sf5I+s
	lQlpanzskpUqK9eJ8cFBetn8PPGs2dfGqAIkKE2LkKToUIVaGOMyBzpoi2PRGZw63
X-Gm-Gg: ASbGncvAjpqwUeI8YAYPE1gDGkXru3dTnB8A+ous9fSI+nBJdJFbiVHeRyBv5RpNCpl
	ihaKDsMziWCVlYZRMVoqzRxArJqkaNhsaBO2TFy+8ku+Duymq67I+S3PX0pB6k4ltoRpJkzFM9w
	pFbGkBn5Oh7nEk9BtA1gP9IT1bkVkgt1B0wFTCMVGbH0CGG4Jc/eS7swhg29k3iRVBo/g12lNXn
	p+kelUc4eEZB9cazXMruHCduPyNxni9sHjhvSQ91shXxH8uRKaafZaWVrIqsfE1Ag/UwOnGFoM+
	5zFXzTzRasAvhpWTYSz5lcPVlj7d/suMTjS1SuExrg5qz2DpioPfp/yguSghAui20pXXvVcHqaD
	xJ8dYjI3cIizF0wthuRR8qTLyLrjTahp9Kt8=
X-Received: by 2002:a05:620a:440f:b0:7d0:9be4:2d60 with SMTP id af79cd13be357-7d22987e58emr2222428885a.29.1749553908048;
        Tue, 10 Jun 2025 04:11:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGb4kfyNuHSaU+T1FQ6VVMu2WzZsjYdsmsGCLkuk82qWqzLkqzTASRPgiH65daVXczZpDmSIQ==
X-Received: by 2002:a05:620a:440f:b0:7d0:9be4:2d60 with SMTP id af79cd13be357-7d22987e58emr2222426885a.29.1749553907729;
        Tue, 10 Jun 2025 04:11:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1ccc9cesm15298411fa.82.2025.06.10.04.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 04:11:46 -0700 (PDT)
Date: Tue, 10 Jun 2025 14:11:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Message-ID: <20250610111145.zp62zx5rjmezvmkb@umbar.lan>
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-GUID: b4c7yxtyYPWvcTzBg1UqV4o8OxPHeCc_
X-Authority-Analysis: v=2.4 cv=drjbC0g4 c=1 sm=1 tr=0 ts=684812f4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=k9-6lplzp057ag9H7OwA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: b4c7yxtyYPWvcTzBg1UqV4o8OxPHeCc_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA4NiBTYWx0ZWRfX9YK/zdyrnUSj
 BvxE80I1+G4w+/4bsEZHY9NEiF1d3DUsjQduRkAX37/ZR+lmKsMGDmiwJM15NoXup5u5BQW+uMU
 lfCe3xa1d3tfgVFuPrOxGmIWET2YtUEPASb4YeExD2DRM7POXE38PZczeYY3TEgCcSnU0No1YhF
 R12MIsqEnInK4L/awKn2C1h4iFWkAfrO9BpUlIvSTGbVljmqZAluUQ6x3bB7D009bjCy/AdH/mv
 /Zkqg5d9ktmlYo3IafbM2tPacnn4mcrf19FBkleEmJoabq2xKJ5ogaTE5iif+nm77R0s44nMKbY
 mtt5Mq1FFlUcal2jOfm9HDurPh0GBbK3JVinLzIJ5mPa/Mnm566htT2QMfYPU6tYnaeLdKmLWW1
 2F0qqJeUMkVTgCMLBRwZ3ZyfJo+JG8NhVuqyiXzCZxi0I2sHvoGLUVzeRomegCFgfWBRhr7k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=804 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100086

On Tue, Jun 10, 2025 at 11:33:17AM +0300, Vladimir Zapolskiy wrote:
> Sort the entries of interconnect and interconnect-names lists in
> alphabetical order.

This looks like an ABI change. At least you should explain the reason
for the patch.

> 
> Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/

-- 
With best wishes
Dmitry

