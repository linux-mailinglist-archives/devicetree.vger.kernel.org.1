Return-Path: <devicetree+bounces-237816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 75229C54963
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 22:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CA4FC4E1C77
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 21:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6DE2DECA1;
	Wed, 12 Nov 2025 21:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FqFHfHRi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YuBif/YM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4153293C44
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 21:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762982159; cv=none; b=U97KVqXlG+paO7P2PZtmNRlTiiw3aSFffKvxHgD2vsS0MjnemeZvIl0bKZfRHVusp9Gp3KYHms2VvIV0+9Y5VRpqAODWv43rxRPTh3Z6M14OzQCV5A+tgMD6mmD0Wt+YdJpfMygym6CkW8t/IA/gWJD0uXAOI9cLUN4MbwE9lU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762982159; c=relaxed/simple;
	bh=OZzRji3FYjqR6KceTKkg3Y+UG3edG0Wk3BrnNYUZsrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fd40VfaYuvEmgtVrSJ7I2daPpPPDSjAduK5fERiQgcwyTPWIOmIck7NkRphIpDlokl5gnthqfxVQe3lXqy/LDH43svHwUUU0QRSHiPjTmDOg2gRpApwfEfMfYVZgpJ5htNCRX05RK40sqtaeNAqZhmg8gAPeaicsQxrc79tpilA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FqFHfHRi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YuBif/YM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACH2HgY721886
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 21:15:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HGBWrs7DnHLfdEf2UIMKQOz4
	rRJ3a068v2CpxXJAmdU=; b=FqFHfHRiO1SI3v2yuxSfDK2ZL4TkYZ6invjXimWm
	AvP+g2SUor3kQCIbE7uLf7M/kstYiPI4umK0Ii3o0H5hin+63EOkIG9Uir80lpv/
	ky99GAGv0H1EuwiSbeADrbD5FflejhtgzCyE3YiIsmOwO8Op/R4SxnXXj7Pcp/Al
	v6B6miEaMdznNKFa0k9ELmM+gowFgFu0j13AY2WPjvvyBpWv1yo1gLNJAFBomJkx
	+2QsG6PiACDZ1EAtDIRepJ/Sq9YWn3vJd0cPXEtIsrRRnRuxE+Tag3oErr/WG1L8
	70WQbLc3F5PdlzJb+lb7raErXiGB3TIKU6AtJ5qj2O5tJg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqu1t536-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 21:15:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edb927e4deso2716121cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 13:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762982156; x=1763586956; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HGBWrs7DnHLfdEf2UIMKQOz4rRJ3a068v2CpxXJAmdU=;
        b=YuBif/YMM8HB6GCie3w52BApxTy/GqVYctFldmKeyQrtf/jOPXysRiwMD+2F2uHOaj
         Vsdj62dys5yBK6EZJcSckXyGRlPocv2fLKyZPMI5gGZIRRd570789inpLawZzASz+elN
         bM4ygVA0hj4VsvyXcO9uhljSghB8RBX5qjyi6rLqsC7GAlxrDpwDfM8F3kOW5ydQNUc1
         SOjNEMC0oL+RunxcztU+C7ZDSqHISl8coKcRkpU1Ow/92ZR76uUILaGAebxBwa7I9kLX
         i8JTeLS7Vhl8ydVrOPI1MuMoNuh4odHkn8JUZnY57hKUDvKxhGiL9S8aSvae2kYgtMO/
         /ilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762982156; x=1763586956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGBWrs7DnHLfdEf2UIMKQOz4rRJ3a068v2CpxXJAmdU=;
        b=a+JyAY271GugVMR6DQ9mcnT7LpMWIcFrP2ma+N9Ys1qtpv7yChCKljBCVlf4Jfx9dU
         V/RG2n02dJ8S0XIpTBULQpxDkfo7+NQwT1A94TumPx16bCaF4ebPwH39eG97dAtbeKBU
         zHsWTIcfnxWLproXUvgYHyFuCQZIwE2KuKbFrzIJYeeqhyxBLj8h3xHl3FCodxPYcEvY
         CeygnpPBvyD9dCHjz49d+O4BkpPM0uVY9XHZXRXthL6nprlfqDuox65Lp81KfKNEO0+d
         NHTdQ4auU0oX+Ge/GFtFL9QFejL9vLVUtvTOtTTZddrKPqJHAm/LNr0OzpPCslFDblac
         /xwA==
X-Forwarded-Encrypted: i=1; AJvYcCVrZYFu3hhgaYx4+moFjKRSUfWXQkBGIX7/ZVJ4O0NcT+09t/vb4Bv7VAa6JkEpZvI1hcNCyAHF6Kty@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7bSgxoWsvuOue2kvj4kwJ6YvWb7KQJ6+cXQQcispTvRkGT7OJ
	wBVAFRkXDQKTmOxSbqH07UuAWmdKpNvbDrDzkd4uJIR9EoHJALgyrNWNxT4n0WUxvkG+gZN/rWH
	/G95Ni13FDld4Z2KczvI4MB5wrwZEyqs79oQYSZbgWFtsWTPz+o6MPsCK3S/tSSvtRETGpjmR
X-Gm-Gg: ASbGncuBStpjJnlLOF75oOsBLwVTRD9bE+O3YNPFIaFuWF03n9GgsYSt9988HEx+cWO
	kHPXKelQT3msYL2xJbilXB/7H7Je3j+gdi3xY/IuIGC9W63ARlMSdzNYRUyME/vDd+wf0JCoZoh
	FLTgdVhOhd0Nct7mC+mWq6kO1NbCA5KS0JW8bfqMk/Ue7eodUNcfF5xUZgTHt+RLuMXRlbNN/zk
	AROIipHMT/FWP9kxnfkppMxQ6ZiLLWygqUSeW+2JfWrlXJIok16fGdETL9e/31V42OUFF2d4fHD
	nK+d7cT6FMQUXTvmreOyxtdwLR8nshel7Sln6TWWdNa75TpqizFNrxUql2FUvydg8afRpHi0+nr
	eFa5r2j1xESXA6daP9RYV1icp/zJmsKTPvEMYHgvkPuz7Q8fISNTODSqXmc1LWOtGJugalWz+r0
	iy4+NMvhzYmE1U
X-Received: by 2002:ac8:5815:0:b0:4ed:b2da:9662 with SMTP id d75a77b69052e-4eddbe56a76mr66415201cf.70.1762982155579;
        Wed, 12 Nov 2025 13:15:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWqFy2kLgPWPVS/huXKoUFZ5R57hNEieCYdk97d1qbnfNL5pgKF8pzTG5alOHRPxvUi3yPcg==
X-Received: by 2002:ac8:5815:0:b0:4ed:b2da:9662 with SMTP id d75a77b69052e-4eddbe56a76mr66414771cf.70.1762982155063;
        Wed, 12 Nov 2025 13:15:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5957c50f627sm668161e87.26.2025.11.12.13.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 13:15:54 -0800 (PST)
Date: Wed, 12 Nov 2025 23:15:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: Add PCIe3 and PCIe5 support for
 HAMOA-IOT-SOM platform
Message-ID: <q6ztnuiouxvg7kpy6knrnwugusi72xfye6wf2pgfltugjwlbep@mxtt3vm7vx4i>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: kTK9fO4J-uU_hV8XgAlwUEjH3DcvvBXD
X-Authority-Analysis: v=2.4 cv=Hpl72kTS c=1 sm=1 tr=0 ts=6914f90c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EhQ9wbuxbXqUBhoRm5MA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: kTK9fO4J-uU_hV8XgAlwUEjH3DcvvBXD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE3MSBTYWx0ZWRfX3C6cLPh3Gsa2
 0lQeXEzeDVCLp+nEiMFddK43/ifL0Jhp/NlO3hwqPQGnwyqFmQ079MUJGRxNAXaE28wMyyzCucM
 QVnNQtQYIl41foMP/z9vBbba/jdgjAaJXcjsmnh3+MFDzC88bdSxLQr8zVNiToQzfafYE3hSI/J
 /IAdyPP3XTY3r/sRCCVxVZc500/eCEATpOiABAYLT/cmZ+1e3GBQoH4WqnANyj1YdqLa6ylALh7
 Naenc8AVKt/NuxobIT47dp0Mm5eLdyBF28dGoFK3YU3c0YxmafaOwOKRZPsKhMwHpLvJFOZs0LJ
 73IMUNCwl8BQfVy/JZv2swbKtwMa6lFySS4yYJziSiwEu7PJEEKJiCaKSrV5jnVO62GRznGPLWZ
 kq4HGQ0Q/Ghyc0h2d8Dc4d8Tng7yOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120171

On Wed, Nov 12, 2025 at 05:03:15PM +0800, Ziyue Zhang wrote:
> HAMOA IoT SOM requires PCIe3 and PCIe5 connectivity for SATA controller
> and SDX65.
> Add the required sideband signals (PERST#, WAKE#, CLKREQ#), pinctrl states
> and power supply properties in the device tree, which PCIe3 and PCIe5
> require.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 79 +++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

