Return-Path: <devicetree+bounces-219705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8390B8DC68
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:38:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0911189E78B
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92FF2D7DF1;
	Sun, 21 Sep 2025 13:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DZS3y5ns"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3B2D780A
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758461876; cv=none; b=LgWLYiE/Tt/VoYtuSJR94RqkURUuPLstTQZ/GR+9PIpVbLoKWNBAFjzfsnOFED22PVH61ZtetMwsNjfE7EJPFTfx/95P+rOyFVHVywfJYmXG3WgFXQdmFMqSaFIf/69wZAezs+uSYcYFfQF1+R70capM4GxnUIBO4trFOLPXoZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758461876; c=relaxed/simple;
	bh=bTGQnIgYPimWy6ZQcJxblWRwhrXSB7WQm/kR4eJDmBM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZpeSCw5ciEAsP8wCSehZeOcWFJ1gEN7/9dXVyWOx34KGocMdg/vtfC7iss6skxl9LfvXfZ16OmAk2l5SZXAyqDkyXp3tE3wstRdqLA8uPxS4LyRCMkgxTND1MyHqGSYUS+t4iQN3cHelZyZrzJUmAcUY0/NK5HTM6reaUtyu6Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DZS3y5ns; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LBx6AX011550
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:37:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MzXDdGjClmWDCq78VMRf8Xa6
	hegZ79/TEvqX/J8Bv5A=; b=DZS3y5nsizOB5pxrdpKaflssDRFVly/7W11LXBzH
	2l3INfkE4Ip0+6hj1QzqS8MDsa/IofeS1Oln107rpL6lPf6QUqwbq0ugYUud/W48
	XGq1z8MhD8CajhT2ZHhCl7qsv0nvAG+jVAbIwAfe7ETHpRAhuBP11sPpGCdqA2XF
	Qx9afXcEtS6DrbYO1w5Iks5cWCQE09DCT14YVXS55PgbhJGDK1hZFTJ4hvs1gOMV
	JO4fU+PW39be+9+vMTocD+5LapHl+rbe2UhbDZBiQAxLoRkFYKd5QfAtxO6+cau7
	s/8+OXfFGC0Vj/DSJnUBVgw8WkXCINwgNqo4b6Vb1rGnFA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nekt2ba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:37:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78f079c7120so41148496d6.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:37:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758461873; x=1759066673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MzXDdGjClmWDCq78VMRf8Xa6hegZ79/TEvqX/J8Bv5A=;
        b=vTAexsVZYhD0wCW/uQc9KdMDJnrDjcijPHbPEP1qA/sKLaV9yZcufTXdp1EvjYiyPg
         fXCrUwwWygMpL4vJR4SzHbYIovaffmLwjVRBGo0MvkmxMb3k7QmMuhCPlMU5guzHl6Jm
         EjIYYsBvCNA9vPknM7u55PtUrlt0TddMv8UcbULouAQQhczLKspm6mIm7YNwBkKLes6Y
         a1cS0qtP47wcZX4qLdg2zJFDwMClakYhDPIOJeBp6VviCG+R7hSTwR5bN485XJaa9DcG
         VIMC5SUuRU6rH309JCpfdxpHCQ6fUNWijOOCJFkOPSTgrr/N++bIH+xMkVdIVC+66nEt
         oByw==
X-Forwarded-Encrypted: i=1; AJvYcCWFTsjRk1JNZT8tPAlrANk33iyz/EXLny4+Tm2NkL3IorPRUHff1z75BnrSP+QfGca/0+eXGcS3+HPg@vger.kernel.org
X-Gm-Message-State: AOJu0Yyplf2woT8do6+8Z/f7ZMbCdydDWWQtFKji9JzEryAoxIzrg43a
	h1s8N1H/mrkSIsvGTyZ+KoMpnCmJ6kq/plYKhpfH6PoBsMCnXtvGL+a9GC6IEwC+fSfGdI2/fVA
	blsHyzPWID8gyd1DpjwYJ87VZ8tiCWrurJ0eN6P05MgCvS1r2Kktb1O67OH7sqSHN
X-Gm-Gg: ASbGncvjaQk7kSpYqni13KholQaacAogb/46u8yifKIAqmLdMVsZGG2VuVgTmIZdJws
	YJY53TXQE0LBo9DN/EEsDclNEO6S/5nu0qFqrROl6BeqIwH1LZNkm9gLta9mKvFCMMEBljFgkLp
	k5LzdzaxpzyCNfca4CGbQwzVyfnKq4Zei/mhqOK3Q1LvOOR+vImtj8Rb3WIIofSbfjaIzqdFcXs
	cpVcQDkEu/NfFyr8/HzFWrXCm5vHiuw6tJELJxr06UMqtQf3atdOYPYYlcnJmbTyk03ucqjBRSd
	WKDvz3vSR6pEy9qYOCG9iKS+XHpPh3M0tb30VEeksX0lHstRTCdL/24amrNsK08VKteRVkwPPe5
	0zhEEqnhr3vc3+RpGjvhh/LwvAEjJ84LkyPGVUHkjnvry1mRAe1f7
X-Received: by 2002:a05:6214:2124:b0:766:30e3:eb9e with SMTP id 6a1803df08f44-7991c125311mr97078716d6.37.1758461872676;
        Sun, 21 Sep 2025 06:37:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGI/3RP1aL5xclEUNdYTTvjt1cYU+s9KR5Uv6gEonYiwIU2diK28Vza0Zx3QnkVg9d6/k4Tdw==
X-Received: by 2002:a05:6214:2124:b0:766:30e3:eb9e with SMTP id 6a1803df08f44-7991c125311mr97078436d6.37.1758461872102;
        Sun, 21 Sep 2025 06:37:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a9668090sm2560948e87.109.2025.09.21.06.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:37:51 -0700 (PDT)
Date: Sun, 21 Sep 2025 16:37:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Heidelberg <david@ixit.cz>, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>, Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH v2 1/5] ARM: dts: qcom: msm8960: reorder nodes and
 properties
Message-ID: <5ecw4onppgefojlzpwmc4dmahe63pl64om2wkjjt4zwg3d5lrd@wg5b66x6g2s2>
References: <20250921-msm8960-reorder-v2-0-26c478366d21@smankusors.com>
 <20250921-msm8960-reorder-v2-1-26c478366d21@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921-msm8960-reorder-v2-1-26c478366d21@smankusors.com>
X-Proofpoint-ORIG-GUID: rmCPdgisBNtkKy97ATIHUtjaOx5FyO9d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MSBTYWx0ZWRfXwKkKyrW+QOSd
 GpeBv1jCrRN9ml4ekPseoQ1p2lJzFUVUVMujGOdLTFFuGyGCE3Nkhw03WhFPENcDZZYez3ufK/5
 5nBqWGgI1ti4GeuGljqSzTliQ/pihd+Yu5mm+D88JHbVeVCLaSr7DsgrKEx82stZuTE08V3ityK
 v+q2hSPQVre00YJByefZykpr2y12l7kIjAFRzPhGkiRTBZBGD5hDVqAYLdkmuUz8bxmMwsIreHb
 8kzxWw1DfVIXT/6nbKEN+EFyFREhIqugj2DyP3ZDqu29bw80Tw4QxGBt3USDTaNX/xJZrYoQPtI
 yhgLVeWkT+yhEF7Uhn1lYVyhgjlLcKvzFQKB55jTmnZZZzwLGzaVxqp3AE3nmBm8IgCNp+ZvnSi
 vbuKH9Xn
X-Authority-Analysis: v=2.4 cv=b+Oy4sGx c=1 sm=1 tr=0 ts=68cfffb2 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=kbTPNbk5bq0GMcXo2L8A:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-GUID: rmCPdgisBNtkKy97ATIHUtjaOx5FyO9d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_04,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200041

On Sun, Sep 21, 2025 at 03:08:01AM +0000, Antony Kurniawan Soemardi wrote:
> Reorder the nodes in qcom-msm8960.dtsi by unit address and sort
> properties, as recommended in the Devicetree style guide. This is a
> cosmetic change only, with no functional impact.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Tested-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 545 ++++++++++++++++---------------
>  1 file changed, 280 insertions(+), 265 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

