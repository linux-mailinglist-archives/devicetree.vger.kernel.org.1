Return-Path: <devicetree+bounces-170314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85238A9A790
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83EC31B81E95
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C014214A82;
	Thu, 24 Apr 2025 09:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIyaouIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2F5205ABB
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745486454; cv=none; b=W94kzELISodA/HOmFuQxEEmgsRZwCn+ZlXVyAn//z6XL6V9J+3XzVxX1vlM8UdAydyIHMkpegLCCR9SaF4orXXWoKWdTFmgUtM3aGh8HdVJI4YA92SxTVwnipAx/k7BPDBRrYe6YxtLDSl0D8WLr1sSlGTSJpjmo1tSgAjoRkuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745486454; c=relaxed/simple;
	bh=CF/aYD+Nsr3nocmtFfWpxD7GOTbvRFE+GGinm++Bd+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TXChJZlELwd+T1WT6PDP9FRJrWuFkNvXnRGZhzUZ0Oujz/d7lkr8JvJ3RquoJxUG1MaVM8SsYsoFDhSHNQM/s2u0//jMvCJo9QpNhfz4A46VPUONaRbk2xCKqLhRO5MWiUpLa7v0oBjs4RiM0o48OjjqJIh6N6TeB5tuooYzkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIyaouIP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0FMQ5008061
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:20:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pDjRpH+J6CGnlh13kx8+R3WX
	Es3y+59jkGLHtd1EBuM=; b=eIyaouIPCacxeLfjR4f2BcE+tC5Uyc4i13ntg/T2
	3SLbX3AphGht1EkW9xna1jbWAYTl0Kh1+8q9Or5bsZIiy+LzKsb2dLfkN1WDxL4J
	dAYiXMLeWN0fEpyxIJC2946xzWKvSpWDg18VNPDDjCKK6367A3/Q85rKetPVGWhZ
	HWK3pfu3M/e6EOM7ACryW9dZxqpMBQ+kTbPewwJs0RM0OEY042dlGMvLRLFlT07d
	PxGwZbQrqB46wvqGybo+k718ZlFXijJZL+l59ZFf+2LMRDBCDlw8PNHHY35OgSfM
	DauWW1SKhgrSavyxOhBX0zn5kIIDGemu/s0Q4J5ThtYxyw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1mxp2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:20:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c09f73873fso106991385a.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 02:20:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745486450; x=1746091250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pDjRpH+J6CGnlh13kx8+R3WXEs3y+59jkGLHtd1EBuM=;
        b=Xzka4bC/sB+i8jLtKOehmpvKN6H2lP3uJof/tOIPXl8i/yvn+9PDtgwot2lTXFE63T
         n25tBz9gW3IPiTlWhOmxunICcugDdgoWdJjwjpGbMVNJDM0GP1Hr9uSLmYaNkV6Qat5p
         bdS8tSWD3XAIE7kTU225C0/7tIrIZWHisdkBfDqMdswYmvocEWFfVQbMANX2LXxU0JSx
         TpL49+yUzVi5PgYzh9m0plkpvDejFQuau0j5BMChivvnvWtripf/ZH5EwUBFu3lNX1jd
         fzZPMd5dD/wMUwsejOD4ZyijH8dgJYLa5ZcVS/6cVBeGYigpUhtoQ4NyIPqI+Adq4T2U
         7aKA==
X-Forwarded-Encrypted: i=1; AJvYcCUIpaw6EOCOURLXEzX7qANVqZzXVRoZ0vJEwegyYhThzZb/5EgieJgVd0cL3J5Ih/IQkgFbAgipnSdd@vger.kernel.org
X-Gm-Message-State: AOJu0YybG6ddQaNPvvg4VmBzYFyWnQvIaDHgOEyEVKXBOhLsUD3qELtk
	DQHoeiAuel0YntIV2L18IbTyfl1Odf9f9ndwPaaF5G9+RTX3NNnUHE5+StvavpV9AnG9Wkv8jma
	L0zuBQVKDPK0beftpvMEr/a9wXbEfPpvFdsOUHuQ62Uo0vYbkeNu6jGP0ElpA
X-Gm-Gg: ASbGncusHN2mOXnDkItgukK+61hmWP1/eZQ3E2D1rq8DI0Dn1/46l2sMvip7tMHV7Zf
	XbzWR3tzBRlP8EgURoerq2JFvCDKtGF4TDZr/B4rR/dvEwQWTZvH5m/qzXQ5saNde5eSS4qxx7X
	/2YODxQxxmKM9k1jU/zQseg7wHxplnqkXOy9I5SiMYFYrVyikE1VFeWARsjwW24NLyWGctCxRZj
	DSIji9becZf/o+NtP2o5yV9tgj+y8GRCG+Kpr1Fz/Uu4DP5ojGLVX5bF1tFcbLIXcEiH50cz3Dz
	Sk1k5LlfQDuLL9aZrPDPxTvYEQW/CCO23CxfBB7Bf8MPyiL0aaB16q5f3Z1UWkH1BLQT3vUQnJ0
	=
X-Received: by 2002:a05:620a:4054:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7c956ee938amr279922685a.33.1745486450684;
        Thu, 24 Apr 2025 02:20:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXeic/MNkIklWTVv8k/JVRx/CtwZ1JpYeAnulapKYrZSdZyMll2kb0qr3b+jhkqOfvLBmVww==
X-Received: by 2002:a05:620a:4054:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7c956ee938amr279920485a.33.1745486450385;
        Thu, 24 Apr 2025 02:20:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb88dcsm162385e87.253.2025.04.24.02.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:20:49 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:20:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: Align wifi node name with bindings
Message-ID: <nsbzaqjloqm4jnwiauabgmokhodtxgbkri4lqhk23f3vcawymy@i2vigckhuvql>
References: <20250424084713.105080-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424084713.105080-1-krzysztof.kozlowski@linaro.org>
X-Proofpoint-GUID: 1_5xVi4pCp7b52eCkn2t8xMk6CKamzL0
X-Proofpoint-ORIG-GUID: 1_5xVi4pCp7b52eCkn2t8xMk6CKamzL0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MSBTYWx0ZWRfX2iE2tpM6WYeo X7b2260Lgi6v9uioGTBQcxFQzvY18v15NVfeuZ6CYZ0hwW3fLysURk0GFXj4o1RoRcvVsDRU2KF GKuc99FmBPzPTOLBS4DawLEQCIgnPGd64XTpMtegtBnPYTrAmI+eyoKYZXeQr3rHs2Hi/ce62eV
 51u62wAfLEmY/2d4s63o0yLd9iqF1QMo3hYFPGNCQuJNfUCYUVUfTrYipASKeQG0NuB6aNZpQ+T 3sWr4Vne8Hqa0XbIzo6kVpRg8s8LNVX0+lGrGNFg5LXS1u7hFXOVJ4a0a2br6OBwrbnZRUvUpnv WUUQtuszfQ0bagyS50wnq4knPygNoGaQAlM6CwYbODABEuisIwNas12FB7X2iS9LM03rlFTzxv8
 b3ipKQA4I3lBNAEkX2yksV978tezC24xHXU4opXZ59fA2ZxrbtBx7E4ilWipk7vlVn8lZCBu
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=680a0274 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=IEkoaye7scGfjVXCoRQA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=589 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240061

On Thu, Apr 24, 2025 at 10:47:13AM +0200, Krzysztof Kozlowski wrote:
> Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
> wireless-controller.yaml schema"), bindings expect 'wifi' as node name:
> 
>   qcom-msm8974-lge-nexus5-hammerhead.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

