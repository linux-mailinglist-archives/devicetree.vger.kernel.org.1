Return-Path: <devicetree+bounces-169085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC4BA956F1
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 21:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86E50188D8F9
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5C91EF37A;
	Mon, 21 Apr 2025 19:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bGz1ucMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703F92E401
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745265259; cv=none; b=uRCPhbp2LF9bUaKv6dSL+hw5SM5PU7FnOLSLTzTlvdSBR4FlSqAlgulXemXJj7RIQdoCGO8aExSGiq0Z5moUu8P9Aw1cbQDoqUgjS8hmcTDCY8+uo+53pCZQUnpGcxgHGaiu/A6oda7JttdxU9BW1pg2Luvts6HdYAlR6/HMkpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745265259; c=relaxed/simple;
	bh=pA/ToDvdpTVm24xr1xwcyTjji8vGx/vbj7BE/Ixb2hY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qu7/n0j797yHMKGEZlGGywWc+T2OIXdAQbUoqSkfkKahJQmWRnhlPEWDWUBDAVcMjECH0Y5aWLVwvSS8wSsJY6v8d57pQnmPXNwkOI4RULExBmXM/9sU0pKrFeG3NSuzDhourecmrbgjaVp9P/Pe+VttZV9ShbpnqE5nQLCMW88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bGz1ucMU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LIg6Ga028201
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:54:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wqgz1pvZsK3oV6w6DNwR/nus
	F1riwGEGizHXICJ8OPw=; b=bGz1ucMUhATKrtCEV3L+ESmTmTv+RNEgyxfP4Lhp
	3NR30j85SxuLPGp2APt7PBv7HUzBxn/BdyrynEUyyU0I5LvBC7WpklpLi7IQ4rzh
	fV6Dt2/vADrW2DqJmz7jXGqoUPzcMNyCVh+IFK5MngD5+AGBGsNjuTdXSEyYOKVl
	HlPPkTfBC7m4YfQzHuN5zxSr/SdnKb7FTvvspFm+5HZJfhW8zdPipKCpstjr45Q2
	UAIraWRZRX6bfOmpAORslZTrLad1Plp17CzTSLvXseBf9eAQwPPwJok0FIHxfvbW
	3LBqikPICh9BhoyxvTnWmDj/gI/Gy4oHFsGYIW4wJl/viA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 464478w6hc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:54:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f2c94f8f11so83930226d6.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 12:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745265256; x=1745870056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wqgz1pvZsK3oV6w6DNwR/nusF1riwGEGizHXICJ8OPw=;
        b=L5wTmFUmlNyHuKlGOd6Z0zl4BSZmYySINi5owWMCp4uXt0+aoqpI7ixAMB5mCWF2uU
         RDzp6a8M0EEmBYObnww6ODVWsZnSpSROx9nl6/srDPqPui5gPzAWvfijaoYoNdVXUbfk
         Rn347yFMtU9Dr2gtXf5iuVJGFxm7oSM7u1ahEI8PTsLU1kevZ0pbk4Kxqhj+xP4gTESe
         R3KClSTOR5kjLX5PVGOkCJV2v7yV5gT/2YtuuSYHJJ/HgtkvBxps27wayVZzNriZPSw4
         078eum4JLwB0FRCOxnCPiXhcMeAw4uBXHZ8g2FCDRaAnTqU/uOUCiAwVRdAdvdSoC33e
         rT5w==
X-Forwarded-Encrypted: i=1; AJvYcCWPrOCjPywE35BAC5dHYzyv/okqpqwML+aUwboc5lMZE4cMfJdLeh9th2grELNy/4Q4oa6aLX4oYji+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7zb6qdW1HRxtEaqCMWDXDUIHXEoRc1bO0MjxTCLScV6wvEPTu
	FSiHhY5I8dfxO0W4ATQ0+9yv0YiRnrxptJUaZoClDDzUQc70dekzxQQFW7ea3IA/D50Jd2z9uBB
	pnPMsnw9IECalxcnEtg8TgeP8cB0yATbMFiBS2kjFBSSzi1V95t9KQhvcMDA2
X-Gm-Gg: ASbGncueBzygOO2IMcypM/yRCHTGbqcix3/N5ryHE++ZVQLOljnMJqCLikUWEsMqlR5
	3rB/JcaIPZj/EcOWFsehBgo75CKdNK2txtTB78La1c7XlW6Owf45MX25K8KoAhQMK9+z0hZo8dA
	Q/HUUgGt5K3Y6xWuRqn0WXLCRAE24q/0jhLos5IxQ9/fhKW5/yAzlCt3Xn6VNaQXtATlXC5zZ8T
	c4QMsDbyHz9k6RhxT7nfjQi7ia5bsMvVGxF4f4ZfqN4zQJdBDzXUmNpHFj4+MEneJL+Bn9jd1Ov
	hDFQVSH9/NM9mebmw2u4FyxklfKu4ryX2eXXH1sbF49WTU3Tfoe2gBvy27VxA1c3VBPNuytlG7E
	=
X-Received: by 2002:a05:6214:e6c:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6f2c4577c1emr250811216d6.23.1745265256639;
        Mon, 21 Apr 2025 12:54:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhE1DctXsRfKqK5IBLJQFAq8aEHEgx8Jc+I8J2DHtXC+nU90RdD6J6JfbcA5DfHAsPaRmFsw==
X-Received: by 2002:a05:6214:e6c:b0:6e8:f470:2b11 with SMTP id 6a1803df08f44-6f2c4577c1emr250810836d6.23.1745265256302;
        Mon, 21 Apr 2025 12:54:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5cfe06sm1019459e87.123.2025.04.21.12.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 12:54:15 -0700 (PDT)
Date: Mon, 21 Apr 2025 22:54:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Widjaja <kevin.widjaja21@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] ARM: dts: qcom: Add initial support for Sony Xperia
 Z Ultra (togari)
Message-ID: <yw4sgwnzrsefahji5lwmzdmp5ozi3cuw7uuw7mkimztr7z3rh4@oiawdyze7d2e>
References: <20250419-togari-v1-0-45840c677364@lucaweiss.eu>
 <20250419-togari-v1-4-45840c677364@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250419-togari-v1-4-45840c677364@lucaweiss.eu>
X-Proofpoint-GUID: QPHSX_mXpEJy1gw-tfIfG6kIrroqYA_T
X-Authority-Analysis: v=2.4 cv=CYgI5Krl c=1 sm=1 tr=0 ts=6806a269 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=jmGcUwK-_ZklpmBGyDgA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: QPHSX_mXpEJy1gw-tfIfG6kIrroqYA_T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_09,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=692 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504210154

On Sat, Apr 19, 2025 at 11:00:41AM +0200, Luca Weiss wrote:
> From: Kevin Widjaja <kevin.widjaja21@gmail.com>
> 
> Add the dts for the Z Ultra. This is currently almost the same as Z1
> Compact (amami) and Z1 (honami) as they share almost the same hardware.
> 
> Only USB Networking and volume button are confirmed working.
> 
> Signed-off-by: Kevin Widjaja <kevin.widjaja21@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm/boot/dts/qcom/Makefile                          |  1 +
>  .../dts/qcom/qcom-msm8974-sony-xperia-rhine-togari.dts   | 16 ++++++++++++++++
>  .../boot/dts/qcom/qcom-msm8974-sony-xperia-rhine.dtsi    |  2 +-
>  3 files changed, 18 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

