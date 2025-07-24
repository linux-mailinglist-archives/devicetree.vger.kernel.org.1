Return-Path: <devicetree+bounces-199474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55881B10D95
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 16:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6530169C43
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4A92E0B5B;
	Thu, 24 Jul 2025 14:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K0z4WueD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031C92DEA80
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753367095; cv=none; b=PuFcuErUcUIRUFzeWWmNxH+GCqJ+Va9TTo9J1/m28BSL1i6sI1X+h9rqk1AV38Y0Ac2wBMd3B3KQsrHWozHXHzXlj5+TSx7UZ2o/IQ3rhHVvkxcedN7JQ91zXd7kzjiW6Q0kAi4tyUGdZSIJFLna9zskgsD59DzDrlQC5Mv6l10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753367095; c=relaxed/simple;
	bh=yMnNEljPS2VbnBAe7RDRoMrtiMmabtrdw1ZABRBlKGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bg/+BteHEM4O2AFSM3k3hsugiOzN0C18GGiSYhdnS6sABZ77KatzA9S3cgCQUH3xUQltI8gNy28v1sDyDjQ3pR0OhiOTG696f6UbvBdrXST48w+AtPJDT0BvEVjEJPaJ4blAkWsu8bqB6N1kXY1X5AKtUw5cdaB2uclesMNHHFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K0z4WueD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9nSJ9021980
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:24:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PXQaN2D5/hB531+P97VDWMow
	svbj/zQKvLqKvH8lf7o=; b=K0z4WueD55xwjKU3Se6ihbq/2VCf3zfLo/B7fdSh
	1j+8LH2ycDmyqho6cCtX6qVdGT5m0yRzXD/rNay5RzD3Pd8rxgtfxnVnMdIIGiXB
	uxzB8AnxkzvmqrT/TA+pcDVEzwXolofDxs00ccr5mBKEGw835rbVga89a9YLHUu/
	MD/KsVXTWTRaDk9JsPEnXxHah8TBiG4Nfw5eEgl8dVQKlS2L//1b3/DNSiDc+PrF
	/m3u/2wrsLQ/XhqeA/a/CJ7usS1LqQieYQB05SD5L6iqQ0IwDQvbl1PI88qvBJXH
	u/VpcUbhl48QPg89KA1wwpz8GM3PP7vUGEsWA7PSzqvsfQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044drt0t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:24:52 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-4f7b56bf7ffso252633137.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:24:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753367092; x=1753971892;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PXQaN2D5/hB531+P97VDWMowsvbj/zQKvLqKvH8lf7o=;
        b=KF/+CAX3FiVkzhZnhMOTzsfJ9vcvFgfhs1gHaAYxW6bv8B1zFoyhZ7eXcDths/E/w3
         qpcRm2Leg/TUTutnZG/W2l1O7pbM3f5jdnAK/SCBSwznaIhM3kT7HXmP3KMzE6Ki3SKb
         cdTe3ELOAPNOYTxC0wOyZFiXs1J0YixSa1F7qzYCavGGgGSMn7zJP1gMSL3vosQUeb7/
         4h4HyabhEd1JDmliLTq8ztsDoexZusAusOi8owvuqRBnaqHEoEv0sm0nPgt3v5jnCw+Q
         hCLbi+NASWofvLGRkhPImWWzlFud7f+HlsUnVI3B01jGvlFUkgwQAjMPqlYCVGaiTYw1
         +HvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBGCeYUQAr080TmxhyyaKv3QJfjd3MvV9RH2DNdkV64j/PMqp9Paajl+Bnsw9DTEr9gf8+bHyymeYM@vger.kernel.org
X-Gm-Message-State: AOJu0YxUwRq6z8KVZTHql1tuy9wWznu5JX0mkeJ2HjNpOGGHNBT1i7ai
	zfPUbhEAc3DEZnO9wF9rvTbuGgf/sgw1zKRJ87Qu3ChmoifO8vMGoIrb5qZcT54q4MmFseX9vDl
	AdW31aRSbdGIcqpUkwt0XJ0lXcuQIR9RDu+AyTcPFNVJNgrSbNj7qTidVGG9DD3L1
X-Gm-Gg: ASbGncvCc5px4D0E9wjkX952SjQOzJhgmVXkW/GzsuJGMM7edVgAzC+CiLC9HEh+vW0
	uKuzhORU3yQnf+2KqTqMVbIa9DRfRj1Li0MnzQDJD3QLxnA2cRRYzsxkhis2ySFLKn1asMBB/nn
	v/dYBzcVraFW25REXQJPynw181W2mG/s14oCWglfMmstHDyRU1jt3fHK4BfHapyWDEyGLW9gIot
	wPb1RYGJldoqwrUoaS97EoWPf6phIAudvM33gdaWRxfcZLeVbOvkJiYleIcCXOeeUqkCDcKpIoX
	Bt43e4YcGzFKPqDXvsLPy+Yaf5okMAldvn4iaQLcxy4umGDTxQEM5wWNl0YfhbSvCS5irG9+cHT
	tqCGjgM4RYVYRVpnqRvUFDv8UT6SdrYdiOvhUx01DKHKWgLgFw2ko
X-Received: by 2002:a05:6102:1612:b0:4e9:8f71:bd6e with SMTP id ada2fe7eead31-4fa14d0678amr3840763137.0.1753367091843;
        Thu, 24 Jul 2025 07:24:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7ps+tMO3iXJTK79wunyZUIPEL7/LqtanKTlXWlbJ0rKzxmD03n3TemWcd8PsIKF5pqv7aDg==
X-Received: by 2002:a05:6102:1612:b0:4e9:8f71:bd6e with SMTP id ada2fe7eead31-4fa14d0678amr3840727137.0.1753367091417;
        Thu, 24 Jul 2025 07:24:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53b22b21sm382703e87.19.2025.07.24.07.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 07:24:50 -0700 (PDT)
Date: Thu, 24 Jul 2025 17:24:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: srinivas.kandagatla@oss.qualcomm.com, srini@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] slimbus: qcom: remove unused qcom controller driver
Message-ID: <mwhxikivaxtz5px5e7jkqtuuk2iz457fy5drsnaj32j4o5qqk6@hwkcjso4jpsp>
References: <20250724132808.101351-1-srinivas.kandagatla@oss.qualcomm.com>
 <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <276b7977-45d9-4b37-a4f5-1c65802ac267@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=68824234 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Q3_JIj6pLLKXvGcXXDoA:9 a=CjuIK1q_8ugA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-GUID: 5FSuyVOE7cqxuiiDkOW8cR7oL4Xed370
X-Proofpoint-ORIG-GUID: 5FSuyVOE7cqxuiiDkOW8cR7oL4Xed370
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwOSBTYWx0ZWRfX8O8eNL5XiFtq
 44utN+6EcQMByYK5y3T2hwT5Zxkw3smm/narVQbTP3lVrmVFPVmLnLEIhIwV3+vnIVobJKtU0DZ
 vhqQcq1j9pb0QUrVPE3Bc4n3VpmpD1HdjS/qgGiQRFcrrlmBPjniF/oBcLBYgwYa0mgku76plrx
 SodAuhU9zTGLBV8rZQ+RZkxnHbJBmXbnilVbIOHN2ZpV7SLwUuKpICRZVDaL4bfHTvh3geTH7i2
 2n7B9IUyfgyCFAzgs3KOT6YHdEzwuVw4+emyN9RPuJkF5gdqmjMvx8GykDMYb6G4JC5JLulxzZB
 tq+VlJtuqm8iVfrdrNRACGmi14vQZ+6xthf7zDGycA8qyUnueXiew+c0QSQrvKyY+sjFu85Yi1L
 5ZUx2UbOyOvskdSuYHzACyciCzsus71AyTubEtxKKqfCnS5BJdjF1jHtlfa0IRI0ixZHBG1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=796 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240109

On Thu, Jul 24, 2025 at 03:31:50PM +0200, Konrad Dybcio wrote:
> On 7/24/25 3:28 PM, srinivas.kandagatla@oss.qualcomm.com wrote:
> > From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> > 
> > Qcom Slimbus controller driver is totally unused and dead code, there is
> > no point in keeping this driver in the kernel without users.
> > 
> > This patch removes the driver along with device tree bindings.
> > 
> > Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> > ---
> 
> I *thiiink* this is apq806x code, with 8974 adopting the new hw.
> 
> +Dmitry, does you computer history museum require this driver?

I never had time to try enabling audio on IFC6410 nor Nexus 7. But if
the driver would be actually useable there, I'd prefer to keep it.

-- 
With best wishes
Dmitry

