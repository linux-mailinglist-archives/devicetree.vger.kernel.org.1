Return-Path: <devicetree+bounces-195977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC44BB03B5B
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1E1F1A602C9
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A4DE243371;
	Mon, 14 Jul 2025 09:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H3B50jnC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90EA824291A
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486681; cv=none; b=tcjN3aQ4LzGE07HaqQkADjB9iVEypfF+u5dpx276SxrJAHPLWT4vlv/eBVBgN8eGoI0b44ZD84sVV67/GLFlbPb3evd/C33qvhjAHwVSKUR8haI73CZYrHcFr5SxO8VP31p34BrzOntdlryLf4ygY49uRz/LFzZO9q1snMOqWkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486681; c=relaxed/simple;
	bh=eCL4qmLWWL/3BTkqkRoJIFUw/Ktyc5F3Dazz+04Rh6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V44Pa1Vl7xH/vRp/19tK8j4QIVPhavzVAY0uM/651fxClnjIoUaFe06JPR4dsFw1gHqw8Xu4ZWlYKb6nEFWFgutiGKp9aj1CIJRLHiSjkSp3sKPuzMwZfHfzasejVDd1AVMTK9ZS86xrS9jqD2Pps4WNLhqf/vG8BMm7B6zuYq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H3B50jnC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E0Kll9000421
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zDAy+8JMXnCcqEc5qlHAUScV
	Nrras9+1OoX2usFWe5A=; b=H3B50jnCqK8QLLJLJVMXL6ZuFgcTTQX1Fi8K50w2
	azX3au9Qgv8MnqYGs6H367PGBzIVsbppwVjCy70j/thcmif5S3YHFHJMu5jikwWl
	wYuLBgFxnnxQ7rBAT5wekaDhGOyHDnximS4OJPDDlFKNyeWAamHWl3nWisHvHwGr
	i/lzIIr8EGqhb3sxmwtHK3yiMZt7FEmpvj1310xZ7WYQ0Ac80xy97oPvZp7ijTZT
	uc7neMDNg0iuqwBRWmbg8OYFBkqYma8gaZcOLFS/iiUwk+6PxSwFbT6G/1nBq2aw
	OuEr9Rxa4ID+YXYd370CiuGy/0wdhxvgZCC2OVQnxcts/g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu840js-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:51:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e06402c7daso352249785a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:51:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486677; x=1753091477;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zDAy+8JMXnCcqEc5qlHAUScVNrras9+1OoX2usFWe5A=;
        b=nYEdA4Y5PLsKZJrSCROdqXLZhWjemds+kwqlDwwf25vOgbBAuJU3tnDyHUNbi+Rhz8
         hbiLHGX4ow6OZNwMjwv2yNOEY5RR0RwFMhLvu9fHo9JJm9k9V4xZljjHutYUk13zZ8jq
         kkaiEvkAxGdp+jLh9ulc70ZL545ew2OUxfUt6YTpW8wxImyPh5eVFW01demxyScQVIBB
         gFguGIOOzZxxXfBPr9bIxcwDjLM7vb6Nhx7WPoLg5eWrPO+KLCduGdleyWAKOE6qdh3l
         cwPwqGFgqiM3MVHbYbosidrLx2hYg3Ak4gIrbpV25G4gZwX3eyZ49maUFcEUBuI+qVGN
         O1Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWjcGG/QKa8LiPC4aMqybmCebJsChi9RVoH47wDkSb9aMM7TAbfiMNiMoPgJdZ0cMsvofIK5CwUQVeb@vger.kernel.org
X-Gm-Message-State: AOJu0YxY7VnTCf5MNupjzkFAckpjpHxF3DG5gquV7qUdGfE7pz+w/EF6
	awjOWk0Nd0euW3u3WpVieL38B6281h331C7T4MYCtCG8nhntbR7+u1oftIt0pLKe8s+UbHenef7
	dZ5xrlAd26YoDAm50MDJvV54fpJRVXo1YeVIx9eqtbxvmXNjkKUFwlYq+RogjwiUq
X-Gm-Gg: ASbGncttzDHfmGby3WvjuAEJczrQwx5gwDFHbI+bmMUKprnJlzReaFhIXz8bIGDyyZg
	dUO2aE1tAJFes5qGCpcSbL6ZeKWKFghyzbRxI0qS08nIBN/1Hb+pZDKTnKUzMAP4BxEvTDZNk9V
	3K7yCvZEJt8BAvFi+/CyWikmxai0DgDxuMSE3671sKSTzpKL2lvVPj1Wjz42BleEbw3OCnLc8iX
	3NID00jLNh/IF1yf+jenLERLQ7ECwf+arY3o/kk0u+EzF0/nshseKlFL9h3vCkrDxxEkrDUp2ir
	i6vS8146hSo9IwP4wk2kZaCjl/PeYPGH8hV6JqVoVponBonUDXDJZXjEniFo4qmW9ZDoyz4Y3Bi
	YUUlMRc46z65g+HwmaHPAy8uyW1TYheSFX9TerkYA3UXX7LsifvD6
X-Received: by 2002:a05:620a:284e:b0:7e2:971e:2d4 with SMTP id af79cd13be357-7e2971e054emr438468385a.52.1752486676792;
        Mon, 14 Jul 2025 02:51:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHthfPAqTZotjtRDXjX6wM2Y7J98pizOgCzVKNQFLOI4EXwa/DmQvYD7qXZd4s2ubpszugA7Q==
X-Received: by 2002:a05:620a:284e:b0:7e2:971e:2d4 with SMTP id af79cd13be357-7e2971e054emr438464585a.52.1752486676122;
        Mon, 14 Jul 2025 02:51:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b6077bsm1892665e87.152.2025.07.14.02.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:51:15 -0700 (PDT)
Date: Mon, 14 Jul 2025 12:51:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v7 3/4] misc: fastrpc: Cleanup the domain names
Message-ID: <ocmh535z7oaew6wkyeukadwlu5ublwixfbl6ljxtbdtwn7om5l@jeysqqphcm2w>
References: <20250714054133.3769967-1-quic_lxu5@quicinc.com>
 <20250714054133.3769967-4-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250714054133.3769967-4-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA1NyBTYWx0ZWRfX777KGv8IVKAq
 sYEJzuW+F5sazZ4s3MTRbG1ofjdgJJ00FC+cUdp234fCaygOG0rS/ZIgW4M8xSaGDS1OLirR40s
 Mop9EI8m3P6XHgFPk6z977rZ+E98iYgNAqJu2YMbEfSOGXIScy8bgE2xBYs5xVMKczRjY7/zBog
 HCgTtHIjNQIWJiiwab1g3kuTfcRrrpcf2HU6USHrqonoTYUD9xZAoHxAVHmjNIrXNBF4snh9Mmg
 hHkOhZ9+Jgxsq06QJpmnmPo0/24RFPTgO7UEIgTWCBTDOXtqkzZTZYD6gLcnlLROFFUbBygfwIu
 35dfIWZjNw/tpK1dIGwPkGsP6u7o+3/cRG7jqRqO/euxdNwiViZ8KmBeegoL7ShqTfphBXJnp3m
 ti/VRqaIWIUqcZ7iyEHaatw5JerkT91WKsDaCKgstWo4bD8EeLfQtmZ8SFbmj2a4u+vpzO6W
X-Proofpoint-ORIG-GUID: oguIEHwpV5a082HEr_K2dgdtM18W9-iI
X-Proofpoint-GUID: oguIEHwpV5a082HEr_K2dgdtM18W9-iI
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6874d316 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=YNof3K1rMo2TS1Uk_EMA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140057

On Mon, Jul 14, 2025 at 11:11:32AM +0530, Ling Xu wrote:
> Currently the domain ids are added for each instance of domains, this is
> totally not scalable approach. Clean this mess and create domain ids for
> only domains not its instances.
> 
> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c      | 50 ++++++++++++++++---------------------
>  include/uapi/misc/fastrpc.h |  2 +-
>  2 files changed, 22 insertions(+), 30 deletions(-)

Please separate uAPI+fastrpc_get_dsp_info() changes to a separate patch.

-- 
With best wishes
Dmitry

