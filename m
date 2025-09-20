Return-Path: <devicetree+bounces-219621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD95B8D0A9
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 22:16:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84F877ADF3B
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 20:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C800D286D77;
	Sat, 20 Sep 2025 20:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c5IxZxg8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0292749D5
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758399377; cv=none; b=dw2GS7PJuHlu5B0l4t6hIHwoWMElLwwLh3/ita/rFNLorM+fJx/FdQEXQbo8z63PVzDHJRQcpnhey+xNdExCoyAkolKHrvlUxAaJ9WzCIS6rur3GDIEk7GrLE0zWvWE5H6mbfQRSEYGjc3wBfXZDKxY/twKS/gChT7yg3Jb5rIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758399377; c=relaxed/simple;
	bh=9gSaNjRAqWsnV7A8tQ05dx4a1z3WSXwsKDdQMoFHyAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AiyzhwX9fH9JuT/IgWciV5aGaYbr6UlMrFnT1RlUJIKAO29vJG1WgjuSVcKfBMm8iJR3wLAlmKtZrzDu6fNJa1+mK96lAmEE72s2fnIWBYABxHJHemSPofjQV3iWSwcsHyaUCWhMH0GcdPclTD70kQFCbMYL1AZx5ZpYSeRFGHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c5IxZxg8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KK0KY2008368
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:16:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9cQlld5QxJYmLD6/7vCxaduv5uU03r8crSu4d602Xac=; b=c5IxZxg8m9ENpNzR
	qP7u61oMfOCl1K+twklJFtIwPFO2+4h/G3nrOfa9oTaTJ3JZO28gtUNFND+VVGqm
	E8+SKUL+eDMzZEcusSfDQr97zUHy7s0FYMX7reJqWYoDgaD8Be6ppo6AaBVumT3X
	ibNpIcZ4/ZFiVMMlmBOzM7+zGRCmYrl53L6PUCmdZgEoZZIwC8LOj5qc1VsqyTvr
	e0lusF+sEs9aGDFV/8Y7hgtMs0yf1X0LoANzUCWlH9jVKVrnHLF3OWO0XfPkN7V/
	NsofbkRjpntSOp7SeYEy0xHs9DPKf5ImgtLL7Rz9sFLJ2EOkSN1Z4PgUS2qlOz/W
	jnHmNg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k989b65-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:16:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4bf85835856so59070551cf.1
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 13:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758399374; x=1759004174;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9cQlld5QxJYmLD6/7vCxaduv5uU03r8crSu4d602Xac=;
        b=wjpAeYV5LpfYeD3JSimBFTNDhJNMgFvruP48WHEspYi7+DbIHgPfivYtcBl8uOB17/
         Ce6Wd4mXSpinMLBR6XkZbrF8qpUxQuBi40wDdgfq6I05Yk+VgfacfoOiz1HaZybQpov7
         ABRYOPid5j9b4bfz/VMFZl9JzAsn0rfc9+K2miBKktFUJFd5CgBWDa50KUaXclKspflP
         P3z+qdN/5tjRuTD+AJN+EPPAygl0sbASHPy/tPWk+NrIVOZUBOO3B3F+adu6aNM/f/1p
         +wmBaRZII6ZBlCPm6eGIRYgyhDLVX0ehfEj8I2sXvWPy1yS+BnrDyFKlzUnepeSxHjxP
         hrsA==
X-Forwarded-Encrypted: i=1; AJvYcCUDO9wK2R69RXmKg5RAN7kEgIHLWKffII44TdcRMGnyclPSSvcfn1FVvqOcLBz5X3mneGSC7F1EDOQC@vger.kernel.org
X-Gm-Message-State: AOJu0YxBpMocuK8Md96hak6Tyi/9P9Z1qoUK6Nn3CzXibUVcgMzcPFpF
	9D7tqZM6hbbmxSxRrktBaeQxRHx4GkOkl+2qsg1obKjzIPf1Q/W4iO9kgdWt/w6S+ceg+TjAkft
	l+4Ve6Lo6DHC2EjyW8ZYiaBId5U9+vN8uY1TJ4vfSOMg2VLaNo3v6wxB7LnBmbMET
X-Gm-Gg: ASbGncsBT/WDyts3zBFcPIqLYxrDfUBKiGsNoKhgCPu3SvfD6WUQ85w6mNLPV7vkW5K
	UdMtxEyO+S60m+KyWIHU/VDXTRyjiv8mH8xq/Qz5llLn/sI+wV2Lr0rTbBnyPAK7H52+saYKYOD
	yMK9Xf1rKmNSCaOaVEhw3Oki5i8eWYaA3/MAESXLbI4TTDc1pMh69fFumflrtb8DARnoXPJTYnW
	X0gbPoS2+yAjJbU/BP6YYeFDfDALzQABPkl2qBaQDUgjdL7sDv7nlvMtAsuG0zO1ob4N2fQQDiT
	9rwdm2YeBtMJYXrOMpOG6fi35i9dlP78vq+abaaqZT7/CXlzhHsZiEQVpbB0lkGPx4JaY3GEtmM
	RrRbxB1Zi4hG69hZNuN5x9Cwcx1r3AWmwk+t4u0+jnWLbavioY/Cg
X-Received: by 2002:a05:622a:14d1:b0:4b3:4299:5c34 with SMTP id d75a77b69052e-4c036de6ecdmr86555761cf.0.1758399374115;
        Sat, 20 Sep 2025 13:16:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1DNyqHIcZCEUjbmIic8X7Hk5Rzdg8lYxc0kB18mG0dSGQEWt0thEl2oJIfyhs5VLrC0SJzg==
X-Received: by 2002:a05:622a:14d1:b0:4b3:4299:5c34 with SMTP id d75a77b69052e-4c036de6ecdmr86555621cf.0.1758399373683;
        Sat, 20 Sep 2025 13:16:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57a6fe56378sm1078181e87.100.2025.09.20.13.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 13:16:12 -0700 (PDT)
Date: Sat, 20 Sep 2025 23:16:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: qcom: r0q: enable ufs storage
Message-ID: <vhrxxj36weirztofpxii6iqojdfa4sujrfckbhcga6d5pckzxf@5l55a3rzi5hh>
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-6-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250920014637.38175-6-ghatto404@gmail.com>
X-Proofpoint-GUID: aGJmCS0dOn45ddUjdEZ60oIcSSZNd1EJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXxqzEB1hJoq9s
 jr1+jsGzCQo6CUf3aHNPL7VXz/pjibRjFamuPuVXtikCPXATseVxEU6uqTefbdKFdiA0k50GK/5
 GxmdJVUXMsy6D5EdWIAFSDdF/d3rCMuVn27osHKJlchvJfhBdPnkP98YeJFrpdOGnSi+0GWeHPg
 MU+NWYbwMzSU5VRsJ6I2eTO07U7cvjdcR6FXjq/nBJFxuHrzCZGZGwRVC0AZjrSRZXmNNscZwcH
 8qwjxhL6yhRUJrmKu4Z96MGQAO2xA798ONcNWXUlUjDW7fbDaE+NfDBToPzRLN71r3eq8PN7+FV
 hYau7GF+nr4E5h1T1euIGRlIuV6b8uP2xt5AsDcefbB7u8f5uojUD5xOrayyno4zs4bEHSF+AAC
 UK72bF2V
X-Proofpoint-ORIG-GUID: aGJmCS0dOn45ddUjdEZ60oIcSSZNd1EJ
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68cf0b8e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=0lCXNLNvAqMk5Dh7VnoA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_07,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

On Sat, Sep 20, 2025 at 01:46:37AM +0000, Eric Gon�alves wrote:
> Enable UFS internal storage of the Samsung Galaxy S22.
> 
> Signed-off-by: Eric Gon�alves <ghatto404@gmail.com>
> ---
>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

