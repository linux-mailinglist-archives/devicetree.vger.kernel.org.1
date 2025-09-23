Return-Path: <devicetree+bounces-220521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BECFFB9734B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 20:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7962C3AC90B
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 18:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6823F2FE07D;
	Tue, 23 Sep 2025 18:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="es8n5gGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32C4301031
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758652364; cv=none; b=pMXwEeKrVmDbAb4F0GF4BbXrQW6dApvX+i7fIL1aUtuj+uja/wUBScCJU06rJM1axqlYreCr7+bBfFUHolX3VgqzifA2+ArnBY4qwsaM2jK3npwrEk+XLGE6ScjIFa9ba0zOdISBu9MGvpNE5Wn78Mpj7wj6/GiOu4CCBkZgLaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758652364; c=relaxed/simple;
	bh=xlUwMom0yQylASsa5GD7EC+5DktGsdejR5nEE2JCl+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pex5CZhQYQYc3VfVOhQw9XwKysCCdHGYmu4RQ6YjY4DkdsfO5Q0CruaJ+DlGQWtbEgkpIbfl2RutOmtyNwKR7+GO/0fzyIriTug1vzohMN7KvmRjjoE1Qb4IDGhSZae8qIh9pNjEZfz9CwSZULszoLVDkpB8ABhoqYucTdEnQ2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=es8n5gGP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NEpKL3014298
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:32:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0ywgl4YoydNFbxN0XRqWFqXQ
	EgLsb3KzEP1PoHIEnTc=; b=es8n5gGPQGrm5R6zA26WUXGLiyn821zeBMRxFToR
	CsxJJwtQ1/nIDVBeRUJTHoIf1vHpSgBUAGbePMCfqvfDwYwYgWVP3C4h/lNtAA1s
	ktpt8/NOEPxpn5hYTo24YMoWhniTHCq7LrznEm4REwmA8qD7TRsVSVUhIkUchWxG
	Z15SDM+n25tv6Oe+VEeBujJEQTsyIcB2VejohYt4/MDHFVVXds927/VFgG+7xCup
	mPRuOZ2eARdaCyDvkE+POTNdL1gP/D03SaSDCkt2m8WAbgiNtTk/nWwX2lAy2ORq
	X4URjki7i4uyh7gsyhBosT5L2b41fF1Ph47LWDq97IIg0Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp08qa7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:32:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d77ae03937so5499531cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 11:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758652361; x=1759257161;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ywgl4YoydNFbxN0XRqWFqXQEgLsb3KzEP1PoHIEnTc=;
        b=waTu/q8sgDzRIHnqd1fJX6aznrBnw3mQtb/qxM3IrShQEGsGlTAg+X8sfvMpC5sYjG
         rq21PxoO9h/Zld5wcYnAlPNylaW4Qn5zvzcenEe4vDLzBwE5QVqdDl4LPaCX/pQ3bbk2
         4oQDQkQt6AGWeDu5X1/8SG5Cq0GEZMA2ZnT75k4Xi8gDO+E1xXRvoOSVNXrhX3T1KhPR
         fWq4HI5zkTYZ80hRKkGLKyIpLRG8L2O+af3d8BtjMhVohbAu0MRTfNlpx0nyRwcvQUPH
         Herdyx1j/Emlp4qlzTsAdf3zGRf9THezXP0NPHJlAROM8cXu+luGr0MvkABwY7ZIuu4i
         9hyw==
X-Forwarded-Encrypted: i=1; AJvYcCUdLQ2PGXu0rBzG6PrUNvghSA1HZ6EW8g76ENkqbELsrtYMhsFEEbyu+sxvNGZ9x5jJXlWncbmrXp1i@vger.kernel.org
X-Gm-Message-State: AOJu0YzKsbSB/TwK0REfjmblZP2c1DtH24gP1xajIdQZwbBkznQYJOa6
	CFBVJD6Pv7jbGtTU/HQ1pwSfvQwqCbHNTQyFG5hV2v7iPAPRGy3ZPMJ3G3KndnzgU4fxT57WuTk
	mFLQbWpj6vYG7Gc/I3uwTW107DRxHboCFCWepD4pZ4gQ8YOD4HcArkLleD0Me3JQs
X-Gm-Gg: ASbGnctZxNN+PPLskAFcUcD2lwhSIPI6EGmzVDPdQ+F/0/ZEONJkHFZH9TpN88fMKyA
	p/X+fAKpIkUCMtSSXUvDPRzbM/MXt7A16WM++hmXiwwKHD8uESxj0BcnHTtBSzyDupsa/ARZPQ5
	kN9cwWfYQLtyF1jGnIIgT+OSLZnQJ5mYV4D09QD5kapbn7WoJUT/327W+lPI6AKq4GTOa5bXIc5
	lqq6XYQFWYKbB/Io+GsYZfNCPTZH6W1RuaISjO4HwpBCeuLFUsJqwtpp6TJrAs2JNzUI7PT9aUF
	byEJdm3uaSpnQkIKj1UpAhINuC0Nk8eej90ASkyQFysu2SFP9oTYBOmH9UTZv9Tc73De9iWJLKs
	s8oSCPKfnVwpe9tyRCuLoVvmIWqe3VmgGDylGNh2nSn/O9/3Mj4Hm
X-Received: by 2002:ac8:5f8f:0:b0:4c3:a0c1:335d with SMTP id d75a77b69052e-4d36b898548mr37820171cf.37.1758652360464;
        Tue, 23 Sep 2025 11:32:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMBlvHXtNDgFyPI1NlAGqjKTycFvFqD7+JE0+3TxE26+LvFO3cH0FAg4wxgHNuHH6UPT3b5g==
X-Received: by 2002:ac8:5f8f:0:b0:4c3:a0c1:335d with SMTP id d75a77b69052e-4d36b898548mr37819791cf.37.1758652359989;
        Tue, 23 Sep 2025 11:32:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a0ed3d148sm3565534e87.84.2025.09.23.11.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 11:32:38 -0700 (PDT)
Date: Tue, 23 Sep 2025 21:32:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Add firmware-name
 to QUPv3 nodes
Message-ID: <kijycy56wjgztfgltj773opeu7zc2ct32msbfioliliming6im@r4imwgdv3x2h>
References: <20250923161107.3541698-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923161107.3541698-1-viken.dadhaniya@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d2e7c9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=N2x_zcOB-Zb5SKZ0QwgA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: hH2AwK7h0_BqCb9lwLxnubfr4CXzjAFD
X-Proofpoint-ORIG-GUID: hH2AwK7h0_BqCb9lwLxnubfr4CXzjAFD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX+Uo25qA8a8CO
 FPlYwxD7eH5lRV6lwQzFPCyywggI1mWddhHorcnN0WAkL37+xQIvi6IQ6Wj6ReCp8fObdz0r13p
 KpIC3vMJ4Z/RKjpE3Ha1m7b4bwQIUOVy33F+8dwruXJtgFesud6qWmK6g7VKBXh/4kdZE6oANev
 x6tIhYhFlzgx8BsvU6Oj7VhpglhWhhe51wEQ3ojYZL8BKO/rCFRIqIauha00+50ovaKG0dKVvnD
 RWQwcny5xBIHxuQQYJNFEw2TUOxjUDkHSBGjcP/n4mG8K14f3iXbQwfPMyR0Maj3Zel5lb3Dhgh
 AkQvgCh2AK3U/EPtNelmo9QH+mbjH+oYQHFbEpU/SJ1PbfzKj1pduR6jsOVr8wLfZIxKKR8uYAR
 EkDZMzsF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On Tue, Sep 23, 2025 at 09:41:07PM +0530, Viken Dadhaniya wrote:
> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
> ensures secure SE assignment and access control, it limits flexibility for
> developers who need to enable various protocols on different SEs.
> 
> Add the firmware-name property to QUPv3 nodes in the device tree to enable
> firmware loading from the Linux environment. Handle SE assignments and
> access control permissions directly within Linux, removing the dependency
> on TrustZone.
> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
> v1 -> v2:
> 
> - Updated the commit log.
> 
> v1 Link: https://lore.kernel.org/all/20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

