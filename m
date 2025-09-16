Return-Path: <devicetree+bounces-217773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F20B59316
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:13:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 361E27B21D6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE442F83CB;
	Tue, 16 Sep 2025 10:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f6vRsUeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3AF2F7AB3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017567; cv=none; b=ATN9OIKEvsjzqphjUilDSZX5ecfHspI7SityUcnoHFvdVTASfYLFa3OK+LYiiJMjQDrLUgG1YUnD1WdrxBdkhZ8V8RwMFnUlgfYHgTRgJvSJowa4cQgTwuULQPs5EFmdIKrqK/yazvwo0mJR4fUW+NiPGkoyKdRuJSCeudOafKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017567; c=relaxed/simple;
	bh=AtHohfo1uYmez4a7xefZJq7bmucvJIdrFfYHyRkhDc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=unlYc8orYDXTbdUy9dPd+CeNqQS09wXK/LgjnqrvskKdcpaoUCX9oQ6zjm6oc9M6HLuAZi5bIvv3F5pRL0YiklBOfub7WbfHOidgBlCsqaVY4Z9iot2P6wI6Mhh62GP8+NkLXthkIYWbJAPiEpZXoXUr0+huP6bJSANsButQBLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f6vRsUeg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3pmoS020394
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UnKmxb3bowAmBuwA8psXvvWC
	ZxosmynthXekfg5oy5Q=; b=f6vRsUegm+ni5xrEt2LIXttgytT1FqE7qOMF4bo+
	wAWldIgj+YfZoMBsLrl55Y9rzWcAV/bZvX5NqGFJJSPGaDxJDvedEzeTwHD3MJfy
	+SUJSoWpSxJklqpAL1QzwOGmsSUBKVdIM8l15ga+dl/+PyxawM4pcWJ8pDB3Sg88
	RpcHy2gITDcNK/a0faKWNp4b/ExWzTq0vAeP+dSibTnc2u75q1aZJPBf9V6VDP3i
	L2DFOXjGETKjmoU3tTaJQ+EaMkZCvyu0mGkl3Fj70ft4G6E7uhxQqQG+f97ZMNVt
	MN3zljgkFprjXtP+5+HKiJZ43Z8JCxBecXVx3FzprfhjkQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chgdd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:12:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b49666c8b8so103753211cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017563; x=1758622363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UnKmxb3bowAmBuwA8psXvvWCZxosmynthXekfg5oy5Q=;
        b=vtWfmhxUqVF5wG//vWXcXirseJQRmCWodEMlEQyiZm2aaI+qnnjbQDRf7UxgrZheFg
         84N1UntTCmMRUUqornW0vKF7JAIkzLAI+Epdld50Kevua3cJ3XbILUVQv3Yihu5G+95I
         aOsXjallSARMapPoGH0YfhFlH35cwc0gnMIVHGcNerybJtLqQnpxAmDoWJYTcyRG8FwN
         IF7yfc9k22wk2HhOtwVl2Sj49KjvpkTA1WK1Fk3F4Rh7H8shFKOfCvq/o0V8KF6pQPB6
         vdUoRbgvXev3rF5lboJbA/7tvjWNB74nwI8fUZpAZmFaBdcg3FApIIU4t1adp9fr7kIN
         abOw==
X-Forwarded-Encrypted: i=1; AJvYcCVd6DqejsZizZKg6STT0GKPhlgfNeBmzvWp7FaWVeA0plHz2mr2+s8xU08P3DuL/GhnGeKKII4zeujG@vger.kernel.org
X-Gm-Message-State: AOJu0YzwpK9ArdFwj7oqX+QjhJDeWUr+7fFuPblINCaeFFwq7X5zoJtx
	Yv8pwepnIL6G9Tfim+XPlzgVSATp2mxR3yMgMDbUEVJvUjbaW2H/y2bPG3KDNfleY2Poz2G+Dn2
	NkvKVF3md/QT66Y3Cmvg35rVc7Tbd7WYbzvBHzYOjBOfHo9C1zt8ImyxZkj5H/7a3
X-Gm-Gg: ASbGncvU1fcDYYRPGwVSvhv57N5DMlR9aX8Fra6q7GBVHuziJrDPUIbko2tHvbn+IQV
	aVPnCS80lV9oEJu82OONBjNm+9Qzg1eSR5l2leUY3J4PjFnFGx0glF6bNk7gRvXMv+yG1oRZPPz
	HM79VzWyhxGlrGruc/q50FySTkL8vdYGNWf/vlcepF3vCWlpl/kNeBJQMC6dT1P8j8RFSGhi5EF
	7qIWlB8h6DDFhoh/pQjpJNDdqY9fmm93rit/VV0uLz07I09MoDF+/soVpJjqVCvnWyzOZe2+3l0
	BxkVuY3cERHPih2hMz3+3t9DfS3+CMSTMvDdrk9woAMDC3kq+6uw9VLRSb5GdGBV4zL9DH+ubPz
	40oVvfeiZ1p+kFR8e8H3KKaOXmLLNyLiClz80gO2mhCLKZkyxwdH5
X-Received: by 2002:ac8:7dcf:0:b0:4b5:dbe5:c1d with SMTP id d75a77b69052e-4b77d14578dmr166397071cf.47.1758017563507;
        Tue, 16 Sep 2025 03:12:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv3BVKVgwYazriyARNdmB0+Wn/2rbEY/SZPripe+2AZyCtP+Z0BiSNaYMhH9+jhFc4c+rejw==
X-Received: by 2002:ac8:7dcf:0:b0:4b5:dbe5:c1d with SMTP id d75a77b69052e-4b77d14578dmr166396781cf.47.1758017562961;
        Tue, 16 Sep 2025 03:12:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65a3464bsm4215173e87.139.2025.09.16.03.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:12:42 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:12:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs8300: Flatten usb controller nodes
Message-ID: <afkttq6trccdicf2i2npkzglrfr7bm7hv66och7bfvqt6mr3mz@nneluflok4lf>
References: <20250913182318.3547789-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913182318.3547789-1-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c9381c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vazWjAwb6okXRwvW2FgA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: _QnscsPR5mhO_3rnm7ByP2lRp7B2rj9T
X-Proofpoint-GUID: _QnscsPR5mhO_3rnm7ByP2lRp7B2rj9T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX/t5Tx7LP2hFs
 HRdip/2Y8QRQWsClw3uUWxDSml0o43SQ0qzSQwDO37+bhrebPDm1CI01ZhcteOgWNnaNZp/S8oQ
 kYleveVP7flUhAkZOqtnApKQbWVa6rIQOBxGXnqkZ2xnLndzTOxIswPmt/4o1mg5EsCAX5UAXU1
 JBNRFJCNppW5nKgFKtCo3/RvV+ayQ6gmYdN1sPtjN9qgwWQ1RMDn1/Y4hmudCGUqlLDpmRZVDSu
 msRmTSHU1zy4r5iSEdfDngCCZl8J8CzCbsKKWKkmKEHa6FNXKneYD+vCQtijiVLAPTn5zSe31zm
 6ItG5Lwfky6idoNldBS7+um4kWp190kOVDhZuKYj2srhIqBLAb3rHVx/PlzclDXOFlmli6/C/L0
 jL41Ldfc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On Sat, Sep 13, 2025 at 11:53:18PM +0530, Krishna Kurapati wrote:
> Flatten usb controller nodes and update to using latest bindings and
> flattened driver approach. Enumeration of ADB has been tested on EVK
> Platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts   |  6 +-
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 10 +--
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi     | 85 ++++++++++-------------
>  3 files changed, 40 insertions(+), 61 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

