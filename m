Return-Path: <devicetree+bounces-220463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CADB9683D
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 17:13:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A910A165CEE
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 027161DF247;
	Tue, 23 Sep 2025 15:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P44L1ZQQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D4C288D0
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758640427; cv=none; b=KcVTkuu6NgeHcEgBkIxbW3VEbSXbfLpppBeOP0/ZZv7gw0P0jL2fI6suMQlkaAC1jAga6LZwk+xtQvY7PND0uYRpNvxf3cYBHDloNPgNOm38I7xby7DaZj9DWbkamqDxHiVERKQOwfEHbNGXuG/MyMspT9K8PCyGAdmpTL5u6R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758640427; c=relaxed/simple;
	bh=+dxVN03+NxPH90uxGPxmu6JMAYvavCbPcOumQmBHgQQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XWxRqizDEcG6BQmriVZhqSIBbhIUYuSc76PxQfcYj4D3HI3BhmmGzN2j4lWNGOAlcXC3Z0WKJF0+Lbswoukes91jCrJ9Sp3iFIzrEYdupEgLsV7CPp5MD8cXWoGYeYZTanepJuJd8R0UIM9AyAzbNm6SVCfcesNupdt82sPX+fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P44L1ZQQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8H8Z2026333
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:13:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BZIisvap+FMPTsGCcwwpcVKM
	6ffERfcfiaukHo8ByiQ=; b=P44L1ZQQ86VmGbeAG4spLI6pSWhWk1eU+oqMNxJJ
	1M3/M+9IfaE2wxbTD0fnkUMOvZafERizlFmcHEkJ8n5E2hy+xQF0tYnUq+ssma/z
	obF+5jvceDpDKd3h4VvEyCB/UndIBiNgUSLqfQnHFA+wdeRP3zG5Cjr48tM9SZ7o
	UsCXAxb1NKiXbGU425Rn6krwp0nOQxWrBAKI0HxuhVDLEK2VKCK2ld7ku90Pd9L7
	2+Ay/3Unk1kWfz7+RdIql/BZqaIZMQX052KyoyRXPdAKBS3TAYQyyOSrN7FxmAvP
	FViUz6AcwR5jEYOqz3GPJJvcwOm+cV05pL7wlWoL5IUhtQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyesbg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:13:44 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78eba80fcdcso42680376d6.2
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:13:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758640422; x=1759245222;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZIisvap+FMPTsGCcwwpcVKM6ffERfcfiaukHo8ByiQ=;
        b=AY2A4tyTlPX3VAYgdR0kFDR4pWNQHprtsE847uhmpjwKgctCKSYoQXZ6Hn/aFYDNPw
         d13k+xGWbC8yssSqtzqfBOuPGv2eN00r3fGqddVvtVRaqtYWo1YZfy2N++Rj4wpJaQh4
         skgq5u2IOukDfTD30egz1WCtGgGJ6m0G4yCQPs6wuwks+M6wZ+b8O3KzzrzQ63ZddAwH
         x2K6ZFQS+NJfYD+Aqgt/mgl7rFPOM+FUEFEMD/ini23HcSYUKBzK1vNqGJLawkMDQzg/
         tb+BhDLl5KecJG3ZgHgFymhNYrYZhzm6dBXWxqFBOoHExhDQYpy6GRX3NBX5BVSol5bG
         wwdg==
X-Forwarded-Encrypted: i=1; AJvYcCUwbfMQCYQN3Fnrt+zGKttNAR2sZudgo9i8OoW0gU16nGBPHrINPS8Vm9id8V9NVypWmOb42ZhA1UcD@vger.kernel.org
X-Gm-Message-State: AOJu0YxyfkzZ4SPcA7dOXzfceYlRVi4IWWy8V4s+OPbHCrltWWT/UrBf
	V1E80wdZs2c8kb/5VXQWuTPCYPQYOxuveh98TZn6/jwRc9qlvfNoxiglbWOIU9KADhsMvEI5tWt
	CtiWXwtELsSvqPDZgku5QPxy+Zpu+5cykwziPm4XH1dpdc9OHAXhgEf/rh+yR0nMk
X-Gm-Gg: ASbGncuPl0DtVuq/IyYuGOmIpgn23STpcbXQkT5yDMxdziHQbKOunxDx25vna0j2wwT
	lw4CvFQcGygkotNoCzMKysyBcpvL/RDnzD63jVfnju3MtTcdElIikPhxRkhVRZGX0jx8x0komih
	XqYgYIkuU2dItYr3oOkF/sn5068t2xM7SRhtJen9TfXrI9oqGXJeJy59RgiLEleyK0jOc/RvzgQ
	/VEsblFimme5WxXh/vZTLbY47CB5e24530HtyXpAb5w8PCfQ+bVZw/L+8QBImgz+5SONbOdJiqr
	pgiNyKiCxvDZxA+bptgaNiZT/TFo+/+sN8EWD9ntFZXikIexlATHNoW7EivzN39css4h38IiTKM
	0T8rK2XLF7qsyvRMyQ2tA2qy5TWcU/wdQtSLCe50lFg7YKPMfE6oI
X-Received: by 2002:a05:6214:194f:b0:704:a590:196 with SMTP id 6a1803df08f44-7e70381db98mr36059156d6.21.1758640421732;
        Tue, 23 Sep 2025 08:13:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn2M7oZxGMkVEQaCn+SRSpsX5F/BSK5zHO+MDSoD3rPA267omvOKyq/PN7wTc/fndNNH78+Q==
X-Received: by 2002:a05:6214:194f:b0:704:a590:196 with SMTP id 6a1803df08f44-7e70381db98mr36058356d6.21.1758640421084;
        Tue, 23 Sep 2025 08:13:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a9573541sm4264921e87.108.2025.09.23.08.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 08:13:40 -0700 (PDT)
Date: Tue, 23 Sep 2025 18:13:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mka@chromium.org, luca.weiss@fairphone.com,
        --cc=mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
Subject: Re: [PATCH v1] arm64: dts: qcom: qcs6490-rb3gen2: Add firmware-name
 to QUPv3 nodes
Message-ID: <cr2ehxr4udit6ddzp3pspsdrhtf4rpl5fzo6jakw2uo3gm7r6a@v3hwvkya62hx>
References: <20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923143431.3490452-1-viken.dadhaniya@oss.qualcomm.com>
X-Proofpoint-GUID: I7d2uCJu51IrOIngsmEBIaDtj4EDycb8
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d2b928 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8WW2uxIJbwZ2W8HW5oYA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX9dSNU2q2mjpg
 R6LWDKppK7KkkRYC7dHVpWXqPIji6S/4hD1Fch0TyL+N0RuwGqYgg0Wyym5og1awcRW7ZKJQobx
 JLKQwwmYhvFEyR9ZxwiumDrIxX0HJZJZtiBoUAgFXxa916Y48RZQa++U8UZNfqY5wR2vXa4aF4d
 +nglUAPq2i6V6vBN5c8N6HR/kGMpn8/Zt4mjHfN/4LiLwQzyq71e6aeck6EdjzsJBfPioGiIhdL
 0CPIbQCVEcjCs6E/ZojcisUzFwAr6uIG/10dNLb69u7469vyi9uXTqH5HH7f9yb8LRUwUe0bq1t
 NSTSkuLKd4YWH61oIs4BOrvEz8qKH6ihBp93WBUZ8Dg01MiBfER5FoRNVTUg0xyIDUnOQi0cpJz
 FEXmfY2H
X-Proofpoint-ORIG-GUID: I7d2uCJu51IrOIngsmEBIaDtj4EDycb8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Tue, Sep 23, 2025 at 08:04:31PM +0530, Viken Dadhaniya wrote:
> Add firmware-name property to qupv3_id_0 and qupv3_id_1 to specify the
> QUPv3 firmware ELF (qupv3fw.elf).

Please start by describing the problem you are trying to solve.

> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 18cea8812001..4e361580ddf1 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -1009,10 +1009,12 @@ &qup_uart7_tx {
>  };
>  
>  &qupv3_id_0 {
> +	firmware-name = "qcom/qcs6490/qupv3fw.elf";
>  	status = "okay";
>  };
>  
>  &qupv3_id_1 {
> +	firmware-name = "qcom/qcs6490/qupv3fw.elf";
>  	status = "okay";
>  };
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

