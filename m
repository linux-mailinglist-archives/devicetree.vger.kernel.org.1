Return-Path: <devicetree+bounces-221108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88610B9D3F4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A5B02E7D9B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A5F2E6CC8;
	Thu, 25 Sep 2025 02:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8AzB8Mu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C566D2E6CA8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768941; cv=none; b=WeIwmi9wwVAXTzaQObZPEu0BU7KUQK4a31qkKBcuFeTZQ/dJPFdlzpygiF39p9IcCQijeBJ2i8Xv37+UgPh11l4++qbc2E2gu5eXaCSvVKZXN/WXRRe6a6BnDIOm1v0cil7z+/4WUsxkTvSYbOZPUJ8QC9lAszxF1+oQHgDAiYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768941; c=relaxed/simple;
	bh=H3KAcTmwmORg8SJ/xG7H5u+L0tAoDnAnaELg5U+7sqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s1weSBiFDeutZiO209ArcSADm9uYrmZj4K7kNzeshtgrprWwxLB4wL4DUJAQRWKt8FTjGieNWCMWCOQGjm8lSSahZRuhupUomh3VvIz5vYh/dN+JkMp/h8ipd35kwEG3K+oANUlvUpLgWML/QFy9IeeL2QDM7AszP+AZLVIH934=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8AzB8Mu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1Emqt027759
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lbAXN6mA77BRJN0uV3xHHBfz
	VOSuZFy9BYewzxG21Rg=; b=f8AzB8MuyP8nEoEpNuzCVS+vA1YYt3oDHjnpirqc
	Zm+6RCDvbDbmCgdTRc8loA4vgKo9Rvat4uKr9MfR3JrN82i6sBgHX+cyIFZt+Cu9
	0ay654UXCApI5NfFcnSmZRCsn4W5zKeSgrD/R9na4y1Q3maZT8U7TvVcBOYO6CCg
	C42D9F5+R8sWM6vAhGHS3PkzM2lDZFyWW/XJNuZyj7eloXKa8+Axv6DTJtCHOTEX
	OwJQNhXOkEjFSNMPnLqjdKc3ZfklAKvYGK4OagWljoNiyve88/Ot5tkVOUqAYjE4
	1zHnxqcWuyRgMEUDhVH4pteqU52Psq3BvcLGKZKoihCESQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxuyp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:55:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-854bec86266so161609185a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768936; x=1759373736;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lbAXN6mA77BRJN0uV3xHHBfzVOSuZFy9BYewzxG21Rg=;
        b=BrE/L/VABIn5YcKDIclkdTFgwQLk2co8mlERxkwqNht4zgn5Ame3w35x97t/+m9Q8N
         tXDryGA8e+V6C17H0VFn/EGAEfBZTLgjZ9uW/QpOdbvm7VBXTyFDQxacnO8Esk9md3vr
         GxTFDeUGZp1VG0GlAvi1uafep7YcORzGU1zdH8nUqLLbY3MnKIY/mQVL6/EmHfxlISaR
         P3lac0lFfqPwmQLJcJ3XYlNuLKRLrwHR1eX+zGhc56IUFZHz0+2iCRe0y3azYLFigqei
         LHiDevMtTJ8rNif8pD5ZWzSwiFFWJ2+itrM9PUiEsEDuLZ+HyDdlS7/WpKASZ+566g/d
         Grxw==
X-Forwarded-Encrypted: i=1; AJvYcCX2DlqENXxQ0YXPhm+Xa7TWwuzdTva9DV6ettwV7PfoLVVCaYrebGAPx7wNgUfyf7AlW2QLpsxphlOq@vger.kernel.org
X-Gm-Message-State: AOJu0YxMZSU/MsSARgw+bgWd8CWjqilv+/VjZmkrOkp2NgRQ9It4GUQ3
	4Rtxc6ieL/itTQ2K6GxPYLNMNZLzlebExyROIBd1T/uJzrVWi0g/Ywejk6hxbxfszk8BhHShU8P
	D5+h1kt1seRsdL0WDB8EqfXakFtzjuzYZ7hjDj75MGph+nZVfB50q1f7HyrN03924QW9v8oqC
X-Gm-Gg: ASbGncvB5TSbt8HVeFDFfC/dP2YGlLS1at4nOKYagcwGFcsWR0naZEqPBnYJCLnvQq8
	v4nM+NMv3o+4RXZZgXKjEHiA7GNj6Wf3Ey/0zxuk1ZkE5TyCfnz6e7dkkCBiEqa7v4Al/6uc5/+
	79mCdihORoamIMX/zqfaxcHEnCB6Vj7WkpFRt5aYS8XbNyxdqFTrzrh7s3Y9vj+B5bDDbTJz4yc
	Ohu4kYw1TPnvpuvioGuEiwUE0HhyiX6qd+3li/CzlRpfR/W2rxP7c2eXkHfWZpLLTxbf9X6H05C
	ET0Q7zQ03Ug2f0ukyLvCKW2s3yGbggs/004MLE2iSFYxCak/i8hAo03RkbqZbSvInfrP34WgYuj
	H6FnmWWkCCiJWdfu60CjqVc8ct3J3Q9LBPV1QET0vPypzcA/jbzLS
X-Received: by 2002:a05:622a:13d3:b0:4d7:e9f2:efb8 with SMTP id d75a77b69052e-4da4cd45987mr26133071cf.58.1758768936482;
        Wed, 24 Sep 2025 19:55:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDcOH8M6DYCRGbeJRkW/0/SS5z3YW3oZHH0vkC9OBNOaylp5NhxGGlOrhD3KELtaAzAefxGg==
X-Received: by 2002:a05:622a:13d3:b0:4d7:e9f2:efb8 with SMTP id d75a77b69052e-4da4cd45987mr26132861cf.58.1758768935931;
        Wed, 24 Sep 2025 19:55:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc1921sm266870e87.62.2025.09.24.19.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:55:35 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:55:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/10] phy: qualcomm: qmp-usb: Add support for Glymur
 USB UNI PHY
Message-ID: <xunzckmlj2gn7zxvklpwop2v32vmlvr2ri3wnykj45dufqrnzh@hvcuggj55lkf>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-9-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-9-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d4af29 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Es_qMKvyyIjXqoqR7w4A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 9rGt7efMW20FRzrd4kg5gPhQGTX1ctRK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX5WoeVu41hgP3
 rkoBLnKEGpcjDKuYMludOpplIDVIJ2RVJ6fHFaxKOkx4ok7cPXqJjwYGhycfNREBgkjQXh4WzMH
 AgRFNjI6s50RiPZs+rKvCahroHP6Niyfh9RFVEcinc4+rtdE5Xf7XVPGqx42KzF2AVaakyEOm5j
 cYj4bSl+8RiMa99oaGsNsjQuQbM5I3UV1FGgY/IS1UFinlN0NHm/ruJhySktJBlfh/EisYZLIKE
 qrDzkn3IhZ+7B7jHa+RU3mTPecO0ontAjdfbYjvCQZulyq6PVolagiIZoVcfO7RmV+46Fxomseh
 Sm7Ax5GnYUlisFLze2UqE3YQK2UVIAEMiLHDwXRwKdsmFS4e9EFJKPNtdov0DT4OIidXxXHXxys
 zAjosN3w
X-Proofpoint-GUID: 9rGt7efMW20FRzrd4kg5gPhQGTX1ctRK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

On Wed, Sep 24, 2025 at 07:28:48PM -0700, Wesley Cheng wrote:
> Glymur contains a USB multiport controller which supports a QMP UNI PHY.
> These ports do not have typeC capability, so it needs to be differentiated
> in this manner.  Update the QMP PHY sequence required to bring up the UNI
> PHY for Glymur.  The UNI PHY follows mostly the same register field
> definitions as previous SoCs.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

