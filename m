Return-Path: <devicetree+bounces-254432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A127BD18259
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:47:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E1EF300F714
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47D2364E9E;
	Tue, 13 Jan 2026 10:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EPej5d/P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YkdBx1Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB370349AF8
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301270; cv=none; b=JPT33JeuDBbwVR3C2w7z1X+Uq5pv6gF/V+W19I+F2RC3LKz/inrnA+mUd7clNKL5lLv1yEEPswsjeS1HOXnJDkpg26iTM4sO6AwF/XLa9WJmqw4BcygE2+aVSkk0Dq1dIRtdzZ77hEoFbA7tz1QMmVV7f4ALHs8IDFmICCtZZRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301270; c=relaxed/simple;
	bh=VmAu7781od/ukoiPo1qxRm614qXoDBcYRBmSfXyOWOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EVu1m8PinmT9hEpeiuWl+Fs8/w+ZuFnNL2B+OaEkP95LAHV2+cleyAhGCd/VyBIX5z7lUfy9t7RlFIOzrln1sJnKhuj9Gws8sDQWff/z/yTJVqkFOCk50u0w+36SBTdMukZaqO+6Gms6qYcNUEBOQGYdJ4NlNXId4oJR2KDXkQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EPej5d/P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YkdBx1Vg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5nc373735222
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2kY74zZwO+BeGa7SUmLxjN1G/Hl2RRh15cAmm1kaUr0=; b=EPej5d/PLrlfkize
	RbKJi/mCuaHsj+TAyEsrU7hgwhfIzXjE3k1kn997tD+DlGXH4L0MD4Fp/RfJBkXt
	QTZMQCEpEpJU5VhjU9C5dQRpgzyeuAYhvcZ7YnieNg1YRAzlNuShmzeHHp5dk/KM
	60hxRzor1t3X2NbYPGPNxSrM6ZwZtz7Hzq8MDMO6CUWSrzuOdOPBXqdBDUC1Isjz
	Y8n3o/ZFzev+oBQr+Lh3znl51rseiNX2hrd3vMuXKucdWXdx/WKaGy5uecADtZGx
	/h3ZraNGEaxxHYy8E/O4d/vob03EwsreNkVcgmcavtmlfZQurXb1ZUhXkP5yUFa7
	5vqwFg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng878w83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:47:47 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b19a112b75so1839764985a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768301267; x=1768906067; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2kY74zZwO+BeGa7SUmLxjN1G/Hl2RRh15cAmm1kaUr0=;
        b=YkdBx1VgekjEn9UsFz+PaxgbDdL5x1uM9SP4O3OPs17pWT6W7kIOu8QDOu/dU2z9Gq
         6LiV57GLWb0tqbT4jtmFx7hbkjcdqgiDgPapIT/Lksv3Cnv1+m8anbVRHvmvIVE2bQwE
         H/Aie1Ze6lXFPu2LfJvWNtIyodthTIzsmWg9ft1N6TkKOINQV82DB4Q9A1QlTsGfHsbR
         ULHK53TpamnVQx6Hobv331qfNyrMcDx5cTqWstHQHpMLhSvnbvPtoOvRv6LO6OZZr7Dj
         2j0ueotCYySmJy9PmgThiE+KnIb+AeUTi+zsXvVnA9BbkhLABofJV+cfA2Ox6rR+8s38
         B56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301267; x=1768906067;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2kY74zZwO+BeGa7SUmLxjN1G/Hl2RRh15cAmm1kaUr0=;
        b=fH+W+7KCfYeB0+saWldVrBGRBu/PzEp4C1av4mYCnuL5s6GvjWjGK9mjMEhI683wdC
         6ryGaqnHQ9X2ZRIUrOciiFlKbrNqkPAKXT0igKDUrheEk+a1SdOl//6gwa/rqrABBCgd
         fsinHnMrMIkIZsUXswdoXqv5bteyBtYCPyhUXPpaP3JFeCFHVhAMQyxEXjGlE2B7M4YM
         hBtT7IpXGZHN8Quq/PQAK+SC1HWRX2zHG98dlykzH3KGj6A9YtOeh0EF2nfxGqFNVU7o
         eCi8mcRrcuJnHITNaJGkRxPobnvfbfuOsX+PEXcNs/SRdNxUy+fTATvwbHtSQxW0NZBh
         Ie1g==
X-Forwarded-Encrypted: i=1; AJvYcCUKxc/7pQQPAWgyjmisZ8rbTroICErj5+3p42FRKvIbcWOJeQWenX/FEc6F0E6D7gA04yiReWzELNqh@vger.kernel.org
X-Gm-Message-State: AOJu0YzMQRzL+13K9QmWtQSLcY4HD1BHy2tedYi0NhB5pSGoHggICufN
	Z2Q/1O49WK7YjXFL/DIJlXVC9fmZYvYaeAFDkNtSMs4DVxP5lO7U6ma8SLkGKBwh1seR8znZN0M
	uoRhKoWB6Ig9x3LsKsLTfP0QYZP8pUbD3GTif+wzI/8FFDcdkobGvz5DvLJ0z36Ip
X-Gm-Gg: AY/fxX7dK5uSUGVuJbJ1LpAylV4ywqw7BTFr8mrpSShVyQJw1KFKZXHuOjyDn7bGjr5
	dqdyQ1Qw/tcFXvU/ky/7UBPXJnqLFj4Z+aaWLoLK43Cgd3Rs2YuMh0wq8tIMRjW4DYswlWxdO42
	ue39mq/hzmAri4GzNqOA9aCsR6tJ0XPrq1OS2mOF81zfs5s0V2GirncsMy2Nw1XEc1jldp8LIZb
	x/eJTfIKtsj58j+nKX1vh9DCtMBzmVTUUeZdJZM9u63+ywlGAVMVoDhaXp/pSZ6O9kxjAP1Wu0p
	NJUSZ/WtLJ0lPIKiz06EpQ2Qc/QBaQ2N8cb/zzmBG8CGSCUfxPPtkwmjlMZxBJkUXFMk12J8I92
	19emwmJS+MIK608swMX115cXIagwzIyt0UAGxYBav7YGz9A5uvsSD38WbC1CkKW30a7jmCuQzYU
	k3AfLDgjTfzYujoHq25fX9AwA=
X-Received: by 2002:a05:620a:2893:b0:8a2:3be9:1d7e with SMTP id af79cd13be357-8c38941cddbmr2987240685a.66.1768301267085;
        Tue, 13 Jan 2026 02:47:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnYTSpd5qLZ1/2FR5eDQz9ikykMs08iZtFQQji9lmWPm+/IZPBjKPf+lj1yKkj8yvyDYvcvA==
X-Received: by 2002:a05:620a:2893:b0:8a2:3be9:1d7e with SMTP id af79cd13be357-8c38941cddbmr2987238185a.66.1768301266648;
        Tue, 13 Jan 2026 02:47:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb3a02e3sm45182831fa.10.2026.01.13.02.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:47:45 -0800 (PST)
Date: Tue, 13 Jan 2026 12:47:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Message-ID: <nfhjbfqflsrye7hqbtgwr5hwkwdtq5z4tbvnta7lk7p7jtvhl4@zbttn6coc7br>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5MSBTYWx0ZWRfX8RP77xoiHxCc
 Kz9/yNEWhnv9capzuyLIdFzZUC8xpvs8MJ2EICxvKbd1HvS94PWbGO4fRI/XwcOuLkTTKnf8dRy
 m5piN1SpuS/vSiM7dofxTybBJwEtd/FqNTBuhfZfoC2YmEEyLS+z8ZJW9Kmxvrr5ZaN9OZCabP/
 bEEFXJAHCqIF3i62uZt6mPL3+BFM9FMPzmbZLBxJXez6zutTiDQ8gwGzcNdP2BuWT6+Oi9/sClP
 SDLNcDdKIucVtuhX6aej3t4K4qOm6iTkHD8FISKQOtePd1/2Pf7zgTwRWDtb013O+HilU3Khdjh
 riUnBPK0oifd9Z7ISU3WmTZC4tlQWpw2NodoWdOm6B6kZ+F3ZbvbPUX3y3eZAmC5Np9UUJYuIj6
 qmxNYu4SClkxlAZSrVW/vOdiRIRDm5EiHuR3y3jXewb9udt8P37QeePQGRe0kWxpej8Y83JykVJ
 EAwuLr2203d3lPnkr2w==
X-Proofpoint-ORIG-GUID: C2esdAJe0iJz5vPLQDX7KRXG1LkR1X4t
X-Authority-Analysis: v=2.4 cv=IOEPywvG c=1 sm=1 tr=0 ts=696622d3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=eQA81Jyt6kpvTzy5W_wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: C2esdAJe0iJz5vPLQDX7KRXG1LkR1X4t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130091

On Tue, Jan 13, 2026 at 06:28:15PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-SOM is a compact computing module that integrates a System
> on Chip (SoC) — specifically the x1p42100 — along with essential
> components optimized for IoT applications. It is designed to be mounted on
> carrier boards, enabling the development of complete embedded systems.
> 
> Make the following peripherals on the SOM enabled:
> - Regulators on the SOM
> - Reserved memory regions
> - PCIe3, PCIe4, PCIe5, PCIe6a
> - USB0 through USB6 and their PHYs
> - ADSP, CDSP
> - Graphic
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>  copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> similarity index 99%
> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> index b8e3e04a6fbd..fb90beb1096f 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
> @@ -3,11 +3,14 @@
>   * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>   */
>  
> -#include "hamoa.dtsi"
> +#include "purwa.dtsi"
>  #include "hamoa-pmics.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
> +/delete-node/ &pmc8380_6;
> +/delete-node/ &pmc8380_6_thermal;
> +
>  / {
>  	reserved-memory {
>  		linux,cma {
> @@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
>  	};
>  };
>  
> -&iris {
> -	status = "okay";
> -};

Why?

> -
>  &gpu {
>  	status = "okay";
>  };
>  
>  &gpu_zap_shader {
> -	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
> +	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
>  };
>  
>  &pcie3 {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

