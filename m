Return-Path: <devicetree+bounces-158931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC61A6894B
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:20:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8FD83B9ED0
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B1C3253B50;
	Wed, 19 Mar 2025 10:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iLzs9K6O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E492512F5
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742379616; cv=none; b=OcopFOncqAuncZw6A23bINt3dICIQFlboCbNEiSejESqRCO1qKiLqwX3egUcNifwWOanpwo1fvcY7lVUx4bZozGpEeawHbaAGjoFOxPQMIXFR+1iKSqBjxNsu8VoHEQc+zRXMt/G841ONuuG1aJG8YVhNZjjga8gShXqZckOyr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742379616; c=relaxed/simple;
	bh=RB2dcAfEJVk54GzPhYzgFg3kO5/IsebKBpi06Nj6C5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PzHEA4/8IYOUneVcsKXJND5h4VVg76tjDa9qz8Pv+nLoDFkk5UFJgjp1o23Y6aRl2aGKs5pvZzrbX5M/adBimkRsVYGPtYXxA/m5acjQRS6lLGgSFrG8Bf5eqyF/rtjGwahzDUvhES0vYEaaf7H88H2TwhUPyNNQIr+jpWC11Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iLzs9K6O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4lojt020874
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:20:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zSDknMN5As4J/WBF6m6Okwmi
	u2zvdRItiGG5o6Mrxbs=; b=iLzs9K6OR5bSG4jkdExY7bPXDKJs/mlEOzokoyWC
	P58EXN8Yi+wBkeex/UzZINhNOD6uf4OJi4WkBxmPPGJhyQEbvzCfXE00kBCPQOsJ
	x3zmRoahp8FWYnYnbxnHnonLTcE1P8NqcJwzVrFkle95+hYAwyHmJ3zyVBVIVOSz
	opU5FreRapXtI1Vink1/jb7GUFmtMI6XeV7fbTa+ILHX9bx1BxsFTYp5wEEKPzmG
	fU/SG5c94kSFFj0XxuyEAf7EeLyNyTrQpL9SwoLklcnraGlBOofjUu1rLc3upfI/
	dN1CmyqCFtoVBthcMlccfirJFxZIHuANaGw4m4LKVytgvw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exxbmvfk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:20:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4768f9fea35so172279001cf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742379611; x=1742984411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zSDknMN5As4J/WBF6m6Okwmiu2zvdRItiGG5o6Mrxbs=;
        b=o7hLyhBufi0Vfdn0dpTqkZVnC/Mxkf6iN2Y32kLZDYmNtMQmMv/iHI8DZyeRITHPXW
         +U5LL9QIy7fc3s7yNIUofB2KOa6KoN4kh642n9H1vmF2YNZqk0CO6brORQ1LOCLO8SWQ
         tbYyhUWgsmSudUbkbrVLnbLQndItCoguqad2FK8Lzh5IrFZZh8/ZlxM1Pm8hmLX+RgNO
         Oz/3o2eFADxPKlLnwct8KI34/9lA+bl0zRHfjQs0t/71MRVBZSl07sZ3SKtLL+1QmneZ
         MjgyEaWWNZ551hP8bL2E5sTzi1+ww8BuEedhFMWjpZ8JJaBAxIcto0Ps4fVX7gSFQGS5
         M9Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUr6zmZhHfL+suqu5J20rdOSF1PqZ4Ti0kcR7Qw09S9MEjDrB7gpmreVN/MxLoYofQBjy94xUqK4SeI@vger.kernel.org
X-Gm-Message-State: AOJu0YydkjcuoPyX7XY4V//Qfl5ytFKaYdFEKCzya/wnqoa2o9T75co1
	KFlwtAfJ6bM3ywzFCC5dbSfvs1eVT6fy1iktvB3k6YOUQ5t+9ME/9fPz2ebJPpEWv7j1WY7muZF
	fT6FbmCXQDucgnWLKuC3pf0llfwhlN+1fq8WChQMWUpkpCy2GnC1nov7hmCCe
X-Gm-Gg: ASbGncsf2TQcsAvDHCxaUZNKILjpyOhlrGvCZZrMZQX1W4d9lRfRQSVjbX6v/RWIxrG
	qUYPmWQ/b4FpiY5ZV0ty/2+Iy2dQ4yQZytvayhTJ2++2ZmkGS/cbuxl4QPItuogDcABx5r9tuI3
	r0Z6PWq5aSJY8i5k5HsX+lMmZEk1LBS+iuxVHRl/2NmwGt0X0gEEwU0GvVJQ64+bmPzswt583BE
	F8p0Ns/CO9n6wfuyo5Y9APMV/m43HeZGEbacOCeCPvzY+RscwnFhZl9EVCT7pVzscvzewGiy6xZ
	RPI7PWLRMFmHePMoyUueX7mMtP7b3nRQ5lfXq6ru/zVd6UPQcBIHphd8BTTXTbsDsNwn+GFKZqc
	WXZI=
X-Received: by 2002:a05:622a:58c6:b0:476:8fcb:9aa3 with SMTP id d75a77b69052e-4770831c5b0mr45277151cf.13.1742379611513;
        Wed, 19 Mar 2025 03:20:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9RzAEw1/ZnVam3afB+N6GWTqWyZBkCWAuOXlcPn+0/cRH8L2YZEzxU+pqqrdx3zDScY+I/A==
X-Received: by 2002:a05:622a:58c6:b0:476:8fcb:9aa3 with SMTP id d75a77b69052e-4770831c5b0mr45276621cf.13.1742379611000;
        Wed, 19 Mar 2025 03:20:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7bec74sm1990650e87.59.2025.03.19.03.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:20:10 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:20:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater
 optional
Message-ID: <6yykvszzbhonc3dkwhva55arsdvp4hv4p2fo2vv6ftwr46httm@wnofgs4jaqaa>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QN1oRhLL c=1 sm=1 tr=0 ts=67da9a5c cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=lyNVp9QpP5gxZ78EsksA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: nXvNyet7MNmHl9w-itUC5sHf1TdKBoEx
X-Proofpoint-GUID: nXvNyet7MNmHl9w-itUC5sHf1TdKBoEx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0 mlxlogscore=916
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190071

On Tue, Mar 18, 2025 at 10:22:56PM -0500, Bjorn Andersson via B4 Relay wrote:
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> 
> In a multiport configuration based on the SNPS eUSB2 PHY it's not
> necessary that all ports are connected to something.
> 
> While this is allowed by the Devicetree binding, the implementation
> current fails probing for such PHYs, which also prevents the multiport
> controller from probing.
> 
> The lack of repeater does not alter the fact that the PHY is there and
> attempts at describing only the used PHYs in Devicetree results in
> failures to initialize the USB controller.
> 
> Make the repeater optional, to allow the these PHYs to be described in
> the DeviceTree and for the associated multiport controller to operate
> the other ports.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
> @@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
>  				     "failed to get regulator supplies\n");
>  
>  	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
> -	if (IS_ERR(phy->repeater))
> -		return dev_err_probe(dev, PTR_ERR(phy->repeater),
> -				     "failed to get repeater\n");
> +	if (IS_ERR(phy->repeater)) {
> +		if (PTR_ERR(phy->repeater) == -ENODEV)
> +			phy->repeater = NULL;
> +		else
> +			return dev_err_probe(dev, PTR_ERR(phy->repeater),
> +					     "failed to get repeater\n");

Can you use devm_of_phy_optional_get() or devm_phy_optional_get()
instead?

> +	}
>  
>  	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
>  	if (IS_ERR(generic_phy)) {
> 
> -- 
> 2.48.1
> 
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

