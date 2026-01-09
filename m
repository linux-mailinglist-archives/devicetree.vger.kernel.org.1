Return-Path: <devicetree+bounces-253211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E95DFD08625
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CF303027E30
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 989B93358DE;
	Fri,  9 Jan 2026 10:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oit/oFDi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LW3/uqs8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31B8335BB4
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767952802; cv=none; b=qaN7H64hW6qHDirCS57AM1pKd/LOfJf5P1nXoo+TpG6Ts1iSdeaDhf5VpUJmZ48k5I11salVLvjagnldAQtXy21O6s/Vhf+vHAK3wZp30LpAHWXH3FTgTIUj9eQ2DadNhjtwwUOxgb+atx4UtZ8FgzK4kl74XvvxyeE1RfxaGn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767952802; c=relaxed/simple;
	bh=9ndVCcF+R/wlVVVNOBbXwDmF5QARj0mKv0iuVxxmNgM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q8gxyXJcS4oOnCAODkBba5dWAjq/yXubbEdlpsEBk2LcjUW+kw2SJCXdJHusv3nMJIlAxf5gEpBL+pDIYKRLXsnj+0MjkEboTaKH0+EkOmLF8+VsjGb+pm9OUTKc7WMBiaXn/PojsrBXkqQ/XuPe9c6hL+6UOqwkXtBV/Cge08g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oit/oFDi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LW3/uqs8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098XWro823023
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 09:59:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N2T21G5XUHap0r8N2FzWobWxQaP5Qp/eZH3++JzBooY=; b=Oit/oFDiqjZf8l32
	oVlxBWu+iDFpAfxe15m8vzAzeg/zFucKc1WSoVOxteFFUDfCLT6syUkhT8gUTNR5
	yyUFTRuA0b67eKLpXmEU+cWoTav6H4fgqWmIpaMhNifoSL/pxV4o40thqphiSM25
	2eEdiaeMC7YN8XscerNDVinUjLzu0GUacgjPvUm+8Kp/WSfK7YlHLax4VlPEDoVC
	Bbdo0Q+iBLi8HqK/Htrro4nroWC2lwlXj3ejOH5wC9FUS3TAaBS+j1M3D15kJOsF
	yRd8NdAa5qAG7yCgDPzKWFxOzqin1KFzthRdhiZRhLHmiBKjEyzwgeG3Kf5CLV1N
	Nkt8zg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjx94g9up-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:59:58 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so17087321cf.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767952797; x=1768557597; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N2T21G5XUHap0r8N2FzWobWxQaP5Qp/eZH3++JzBooY=;
        b=LW3/uqs8V9AjtxbRP/WSZCqdNsGAoV/aioj8YQjbxw+tNNB2uvZAAdN3ikhlywk8Jt
         evstwEZa9glpAQ2zDydE1Cp5CjH0FOP8/tcl5alYTnZLu8NFkxR7ppz9mL9D5V9vf0sc
         wtUsN+MtsqtPP/P0R+uYcSgj5T//eOcA6RoCTL40e4qZgLUETYpxVVEQJlhkd78V1QQ2
         QH9ypSInyAJFA0R2VxQVtHZGtCFo+MvwpjMTdHN3FdyQvhdIr+nIe57WeNr9p4YAjpmu
         6ujUCpNDnEUsd5FSIj7HZ8h+M4sGPW1HkpqxHMs5c3fyEpArdldy6gBmKI5ILq2lrSnp
         yXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767952797; x=1768557597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2T21G5XUHap0r8N2FzWobWxQaP5Qp/eZH3++JzBooY=;
        b=NJ4gC8iuxAlm9FdCgVuQKgW4h8RoZmcHpQcFI/tLY27nDAWZiyKDudtF6AdOsgJgtH
         pmGide7BgGQt4pdvRv56H62ShotcULhMcMtGcBqXEdzZCE4FUlhT7pUwle8Dqdo+SGke
         TAlYFR7tFXzx0TPXycgXPbUDVM3VPBHX4o8DFiby79zPTuRjNYYN8dHnbYHnJNuV2GyN
         el3msQve+QOrsPpqC1j8sPjzp++C6+bw5l1RA8OYtDKv5suZCe79S0Zq+T+TTlZ+fUsH
         0nJnGQGVmODfoM8Ngqr9MTEakK95fw0nH1H+dZZIomDGN8VEFXloPy0ZYIkI0VixaiSN
         gvTg==
X-Forwarded-Encrypted: i=1; AJvYcCVgtOP+3ViRJ8kkX6R0PpRnBEQFNgTG95jXyI6abD5DgrxDZh5eOtRYM7AyXQzGOgFzBljqnj4XSnm3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs+PK8kXCo+KdbSX8NZ6jukyLi6L6/44RpV9XDQ2p92y9YIpzC
	0fHMIJukgaAyeYr8VvGvdPVGNm9q9UxiDpYDHZ0odq/uXqTp7KPUnBS+m2UXUPVvVUqkdsC2AAz
	59D+hS069bA8zgjM6A6wLtshQ4SjMvpFFlzKVF4wA7hYyiFeXZFjmgo1pOYW+vW1z
X-Gm-Gg: AY/fxX4g88wPQd2QkMUuGFMUITkATF102x9aJOSwNDhmIOQHGDOjS+tWNLDQIHgcmGd
	0vV5iVzpEoNNvBC0HSdv+V77xoSHqtnspqUz5tXsvPqDRglYVRDSEImsdl4/9eVQtkE2tPNOHrO
	RPU4CDIJnwg4rG5xKOtlHG7DF3mH7r2mbMhVXya0jwN2VugKz0rR8KGHtFUqqchkfAwUULIw6WY
	VOQa9z/zPW1sfrlC/BYS/xT/K2KaoyS6LcFOh+kAm23TNGj6Es4uOCp4SM1+fSAtA6aqHmav9JS
	aoVUvoU1n/Zp/q7hM1AWWziqgKwC8nDsSCbsiqkCpO5lWSeUMfBsH0FvdlIe7+xRuLWDNcbCtvp
	I/3GWpAH6iFLspAAk2kyCSCOCF2Ebb3UIqohaRUAYsSjg3GICsmvUYqSe4b0Wh/nNcCw=
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr99137241cf.1.1767952797174;
        Fri, 09 Jan 2026 01:59:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVSl3eAYxmMFK+CvBkVAsLJXo7tQpHD1mL8mA3FW+oxBzEDsLkyp6Ip1sJneT92BgPtX4x3Q==
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr99137021cf.1.1767952796760;
        Fri, 09 Jan 2026 01:59:56 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a51183asm1080258466b.49.2026.01.09.01.59.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 01:59:56 -0800 (PST)
Message-ID: <ba7845ba-9f85-45f4-bfdf-cb1c6f6c2f7e@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 10:59:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: qcs615-ride: Fix USB PHY label
 reference
To: Sudarshan Shetty <tessolveupstream@gmail.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
 <20260109095221.2847067-4-tessolveupstream@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109095221.2847067-4-tessolveupstream@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RN2+3oi+ c=1 sm=1 tr=0 ts=6960d19e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=ugNE4biRt3zQTriTjHEA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: 4XusphxpZ5RiDVTQVJKBzB4vx91zOI_h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA3MSBTYWx0ZWRfX3v7ihb5ACXcQ
 ZEsOu/Y8Tz2clZ1SeZXSFloDCFeQI2UtGg0a7nO9ElaOLEbkMehY9lG4jsG0r3eG7HwHffpJy/E
 dugpwCUj0Zwk1ilM3VF8COkSIE0wh6lCNJ2xnlMLtF/8pQMV1IJ7rue+pIPEEkmfFXQdGl/eJCq
 HJ5yinXOzj8nJ+eyMqG8W1R6aZ2VjLgc0oTKAAxBPzVxay9phQXxuu/upQBKWbcmVgfEa1+NK6h
 kDrgUrhzPB8f+2zyEXhNeieeVdj2qsvXHo7rqWOE/QtYWx94iabQUCtpKiDCgbf3nPf7Ry7veRZ
 f6vBkfaiTVZ3WESs6g1HH92GEKcHwXyA59HfRmq9t/bvbVbQsL+5afOkwTvWQrs91NJ32Uh4siK
 X5rKSjKhNxe8QvnB8b7Vk64eGI4pvh8wUQDfuQsniGNQhD80WLYc4bnVXxth3YeqSHSBexm/BWI
 Q2eXiGQUxUEBVLE/T7A==
X-Proofpoint-ORIG-GUID: 4XusphxpZ5RiDVTQVJKBzB4vx91zOI_h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090071

On 1/9/26 10:52 AM, Sudarshan Shetty wrote:
> Update the USB high-speed PHY label from 'usb_1_hsphy' to
> 'usb_hsphy_1' to maintain consistency with the naming
> convention used in talos.dtsi, where the second PHY is
> labeled 'usb_hsphy_2'.
> 
> No functional changes, only label renaming.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index be67eb173046..0ca6b50a6de1 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -609,7 +609,7 @@ bluetooth {
>  	};
>  };
>  
> -&usb_1_hsphy {
> +&usb_hsphy_1 {
>  	vdd-supply = <&vreg_l5a>;
>  	vdda-pll-supply = <&vreg_l12a>;
>  	vdda-phy-dpdm-supply = <&vreg_l13a>;

This must be squashed with patch 2, otherwise patch 2 is going to
cause a build failure which must not happen at any point in the
git history (to make bisecting possible)

Konrad

