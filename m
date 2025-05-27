Return-Path: <devicetree+bounces-180807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BBDAC4DF8
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 13:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8061917D0D4
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 11:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C882641CA;
	Tue, 27 May 2025 11:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d4YuzMjN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C4125743B
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748347078; cv=none; b=pcUXt6d+mCdt3xrc95csiSToJY0stbcXRXCDVUAqw3jZeTm8LJWfL6JFnBUiSOADG098bxenR6o57zfDcdiKHB10RfcA8uSJisiSLQJOzTE44ozS6V/38J3sFGXylSgWcI/BaF/5l5G01mcPk6O1j9na+K32GX+wihwbG3gtesw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748347078; c=relaxed/simple;
	bh=iG7alVLRQPBLu2uFDKDhWTHeOCuXazt6XYy1LINh6nM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qKM0m/JODkyLtB92Am2D5PVXsjnkhZNip9qW72GA5DcHaFxv2v5CKUgH7G6QDh1N3ZYKHRlaDbeosgmXdgQcZgfsZTjE6z+QpWEriUA0uK7ti72EG7Iq3XWo2vujO1j36kFnVYq0VNV3ziuP5mvGd9Mnhll95UEf/w1QYSBBcyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d4YuzMjN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4Jd7g012234
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:57:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	00npxAYXcDwJtuc+WcPd16KMqvA6u6AGGT1iIUkKzfU=; b=d4YuzMjNLkLL7Obv
	rM7H+uKqKDuoTIoO1SJatzsEv/fL6jUIPwgSmmy4WBUC57SXQg8kdnjeBbnPYg01
	kRN4x1Pw3Zf31u6Vzu0PG5S6ThQtHm0KCKuRlsbcOYUOIy0gsd0FVoVP+/Iur2Gv
	HK+fERjylqJsuHzUUnAER2/1G0XcBFM29E9qlvfesLfA4Db5TiQzoVCytd9OskmD
	HbIJj8oU4PLYASb6Z93sC9dTugL76flTyUikUTw91PDZcbw+CDMxcn6fEuIqci2F
	3AJHHr631utVLtXGEdKP6bO7i41vOcqbmwOfVjoX4PbaksQB3ljRkhs32TQ0r1Ut
	7KdffA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w69195pc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 11:57:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-49452798bd4so6480571cf.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 04:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748347073; x=1748951873;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=00npxAYXcDwJtuc+WcPd16KMqvA6u6AGGT1iIUkKzfU=;
        b=e1g9VWc1L/GSw2CVzvZNicAL4ijebeXPAR++4BVTrWKSizjheD2aiLs6BLzjm6Gi2S
         1DRNu+MjiQeV3YnEQEOYM6IkBKptozmKOALei4YNQqGGXhiYT8qtXSkBHOnV7tA21qht
         FKe55XPn5mzAHazU56bYqZYhtWzCd2MQqLuszGPJLrs7H+4PXvRlHRjpiCDYwZxuEqmc
         /20+b6i9dlJxkgntgvfnXUp4vp/5r2B06Ps1jVGsVjOJivs9rSFNLvqC4JpJIX6VM5dP
         rS0Bfo93XnWEBmVYEizXVd8QSjxJKHF09avKKluMsdF6HQ9g0gelF3lJE0NmDblkJOVq
         y7eA==
X-Forwarded-Encrypted: i=1; AJvYcCVGKnlysWIddfaEBev/HyIyq4/af2yAf35daWyaUz4RNtGdvgQWYgPTp+Nk8md22WdGZW/1+Pr45uOP@vger.kernel.org
X-Gm-Message-State: AOJu0YzwQRzGnvrFN4Zwm7pNfy4D3d3wyFUq6uBBwBzK1Wqqv1WN8bfx
	oPB3AGC5d5+Q4XXRWnIXRJ5jOw9+frVcrg6Y56LVC9PuRMjTtv3IHdlHb+IehigeAkaIxbRhBCI
	qQGAGw28FIgAffIH+TBGYg77maFLesGoAYoO5T9OibZMJY/PsQZi/kybrjew3FBfD
X-Gm-Gg: ASbGncvvtriNUvauaUISBtisWjTMXrLRm5k4Jk+YK1ayOD6AOMdZ8Li7f0UJ0GiC4DE
	UA5Hbv9yoIXkDZ2mjZjNOXFDil4pnb4R7CRZ8TiZtiNvd39zFTnF4zac4wB1wYsMSUL8inpJ/Js
	HpXRImoSeY7fUzKTIwuJp0WrKW9EpHGwtKPVbOzmvOVMS6XikYA+48wuE+1d6Qt9fGVWcfo6YZI
	5g5aAX5iNbM15mBpA3SMtn29F2nK7jupbbfVrn2G/a3Z8Ajax+gP4TmknrsMEqqp5ARbyaqra2g
	mzayFmopT9YrlXgvlEfxWe8UudGEV+jqPY5H2iNO5x/gy7sPPmMl009bOEiDMpc+1A==
X-Received: by 2002:ac8:5f4c:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-49f47631130mr73698951cf.12.1748347073185;
        Tue, 27 May 2025 04:57:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IER2zMsxig6MWdo0BnCzVG0WnNdmIBLmV4Ag489VTpniSStMzoJwJoKznpWShclgNRbJnN9eQ==
X-Received: by 2002:ac8:5f4c:0:b0:494:b4c4:8d7e with SMTP id d75a77b69052e-49f47631130mr73698861cf.12.1748347072756;
        Tue, 27 May 2025 04:57:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5b192cb0asm1057955366b.170.2025.05.27.04.57.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 04:57:52 -0700 (PDT)
Message-ID: <c2ede70b-41e3-4009-baf7-afc6c2c65949@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:57:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] CAMSS support for MSM8939
To: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=6835a8c2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=G1DFoxIfSOwnDC_JHQgA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-GUID: bInujREc_cYe6GCQirwo8AC5In37U8f0
X-Proofpoint-ORIG-GUID: bInujREc_cYe6GCQirwo8AC5In37U8f0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5NiBTYWx0ZWRfXxha+sdJ1hBEn
 uIoVeyMZ2/mAgzv040K1OHUiMZCkHKrQqCbd/GctJf1bZuGxg0Wj9/88C0GC9WYPn4f29tM0pyD
 JBeR6KW36TXDy5A/dit48tHL/Rvir1YPiRiLM/rfyGR3nymwmN1gj4SPtFL8bEU47ESiTXW5iip
 SzIbP9pSrCBBOl7vLRJJosFTVdQZRVm+Ld8rCro8I0kb1+LkFgTzUvIB7tCDWq4dGl5sO46gnMs
 iMVnN6cz6IPyuN78EuwBUvXk7yODe5eV3cknqOCST/iXQpwndcvooIo4/CbPq+gyLHMfQpInkLg
 PiPdfms2KmZmZ1oz5aq52zSXjwsvnhmOkE4t4PgahKuZx/2YAkLYxVzzbjwtWJkRG+8AhpnFU71
 hsPewTK1w6oV9X+hQHP9viwCK9yRflad+jy+/xIOLtU40B2BT6RFbx9fEwdjnvhU3HDfeQMm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_06,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270096

On 5/25/25 9:25 PM, Vincent Knecht via B4 Relay wrote:
> This series adds CAMSS support for MSM8939.
> It's mostly identical to MSM8916, except for some clocks
> and an additional CSI.
> 
> To fix black stripes across sensor output, and garbage in
> CSID TPG output, 2 VFE VBIF register settings are needed.
> So the 1st patch adds helper functions to do just that.
> 
> Patch 1: adds helper for VFE VBIF settings
> Patch 2: adds CAMSS_8x39 version in CAMSS driver
> Patch 3: documents qcom,msm8939-camss DT bindings
> Patch 4: adds camss and cci in msm8939.dtsi
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> ---
> Changes in v2:
> - Patch 1:
>   - Fix devm_platform_ioremap_resource_byname line to not end with
>     opening parenthesis (media-ci/1-checkpatch)
>   - Move camss-vfe-4-1.c handling of VBIF previously in patch 2 here
>     (Dmitry)
> - Patch 2:
>   - Declare regulators in PHY entries, not CSID ones (Bryan)
> - Patch 3: (bindings)
>   - Fix bindings checks for new errors (Rob)
>   - Fix properties ordering, code-style and example (Krzysztof)
>   - Sort reg-names, clock-names and interrupt-names alphanumerically (Bryan)
> - Patch 4: (dtsi)
>   - Move #address/#size cells before status (Konrad)
>   - Aligned CCI with msm8916, thus removing ispif_ahb mention (Konrad)
>     If "camss_ahb should be unnecessary", it's still required by qcom,i2c-cci.yaml

Give it a shot (with camss disabled so that the clock isn't on) - make
sure it's off and see if you can still access i2c.

If it turns out it's fine, we'll fix up the bindings instead

Konrad

