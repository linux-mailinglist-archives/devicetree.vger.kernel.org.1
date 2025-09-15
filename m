Return-Path: <devicetree+bounces-217339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C570B575B5
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00256200EDB
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924072FAC15;
	Mon, 15 Sep 2025 10:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fN2akOMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A0D2FABED
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931051; cv=none; b=Vp2d5G/fYquVFSI7TQMd7CqRMurBuWYhsRWYwxxHVXanxzAAoaIihdQBnLDMu3IuOiWYv4PolJW+17UEJXDvOfjxZz8YQ9zyaczuGZRwKZdGnP8UrwdZcINHdnadVnBI0Toprw93J1FnfU+xev2qg/e3FWPKl59XVBWNZYRMNDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931051; c=relaxed/simple;
	bh=up4j8h6jtDg54emdcGVDa0vg2kAOizu71L43Aw1KSoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bIHHyGP2oTd1RmLlCHWymC/9qoGQXkg1pfmKTd1Ctg7p8LXKmgEGdiFVmo3srou2qqXlnIJ3N1NPtc3t8cTj4YLfVGj9M7JoHOiEUhF6Hdn8omLwFXvSTH+sE6ycZa1fF/wqDNy77DM+k8hfNYRpwswNuiYtu60K7l1MsECuAvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fN2akOMG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8Fkak008398
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bx8nSX7lM5/iTxOnkNxgDKcs
	szwsRzC2orzdwRqCT30=; b=fN2akOMGKv80kJnux5Ac6gK2O+dLakTojpIkbfxt
	8hCNe2HFtD/3CJOCDBOfLVWgQ0+zL0T70JDOYpAYRo3MyWF1RW+sFlLGSz/4YCHM
	2mnhJZlBqaqCfuQLmWfh6lcI+zidiGJDEoYnBoCmVvMjrKu++9NRKXrpNx3CCP5f
	+BJisTmF0KhQIGLwPjzy+pfkbKR5IYIYj7c8DZ/+lSRoYLgQiqtX7OhCnxR7x5XF
	puOLmLdUwk39jedrb7IbfokpoHV4MzOoo9cI772TG9vF/2tvEY3NBA3Nf49+dTYr
	YvTJ7vqaJhQGxBY7UNZxPpefzogEIcVRLWrQti1lrVjWbw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpuc45-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:10:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5d58d226cso106667541cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:10:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931048; x=1758535848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bx8nSX7lM5/iTxOnkNxgDKcsszwsRzC2orzdwRqCT30=;
        b=HVPJnNXdLOVlAz2pM+Y+MxdGLUVrNzRZEdJo48HjRAGmS41UJKWBMwbW74zc/kBIoG
         vc6GfJ2VSVvJMMtBWvjGoVaZySBcEw7Vgw0EOezpx/qaD2R+R5Riw/9Eim2b9YPMtivD
         CrDgdXsJlKNG5PWSKlMMsgA4qPB8Gn7fx0TG6HUCem/ObT8uFL1yS+4OTCkeaPyE1vdg
         vSGF5fQp+UT1wLc6Yg6HxX2Bcp5kdtKmLot+id6InfniyhK6/FDB6g/iRzJ/NAHDrw/Z
         QpBFS4G/h15YzQY3119yzebdZafwDlXU2w13+HyYS9Cle3NC86Ob19mZSZKS3Fml1WqN
         Ceqg==
X-Forwarded-Encrypted: i=1; AJvYcCWmjYTmf4W/E6m4zst51msgi+wvHSPlopFlEhfCb46R3H9YrtOTO59rNfEilc7Ml/qUFQ+/1kH76g9S@vger.kernel.org
X-Gm-Message-State: AOJu0YxYhZO4w/Eucvrv0dYP0eqRhKyQ/DbpHcNUZpg7+4e1FKjptyhY
	pX2WrFtoOtmTHHruTNpG60WrBejzgU8TBSgD9OpSr430jRVFN7KuI1XPWbbm7xF7+rzLBza+Y00
	89oNv4i5sSTRu8xee0PP8zjmXuP4QbnBEcBtrQirHU3bV0w2pu0GD8Ihhy0Tw/mkb
X-Gm-Gg: ASbGncsR8kse45UA+9+uq/bu7wNngd3llV2sy4WN9AsFjV20N+ZCfIlzNe9uuNl2a9I
	RrjrGZQX0436WeUr7xzHMqnk1S/LFX+3KME3g79/7o6e8luCGJH5bSJkiqXFqWW6q6GtIcANN2h
	jiW7Ir4nAo1TK9c+DSqQ9CsNCKLWQIqf1T/099uJDyCSPPytlXkkVaMnGHGz0HpxnRspbytYq4T
	Yaeu5/eLoPyjrV8G3S9Cj3cWjX0mBzrWKyzg23bep6OE+4ANZEsujsU6WRo5oBDdzTp3SXV1wcG
	TKhlmjpek+mP9XzCkH1mlTxiss5YaH5mioUWmadWw2Vdt00665wegZCg0+STIPKbD2RHSaan3Nt
	dFur6pQTMBejGvS8Ti3Vi1R39es8iaevF2J8R9n8edhplLXwOZ9Ez
X-Received: by 2002:a05:622a:90e:b0:4b7:a83a:e2a1 with SMTP id d75a77b69052e-4b7a83afb2amr25074081cf.46.1757931047875;
        Mon, 15 Sep 2025 03:10:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG43syCijOLlrPYBW7Mul9l7sbVMRPIZS5uLeq5awhyyoTo/hiZcqkxUruOCeFa+VO5PZdiww==
X-Received: by 2002:a05:622a:90e:b0:4b7:a83a:e2a1 with SMTP id d75a77b69052e-4b7a83afb2amr25073821cf.46.1757931047493;
        Mon, 15 Sep 2025 03:10:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-572a5cde069sm1706782e87.13.2025.09.15.03.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:10:46 -0700 (PDT)
Date: Mon, 15 Sep 2025 13:10:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xilin Wu <sophon@radxa.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
Message-ID: <33vm6uzxqbs5bukswpzdkrn3ronl7mp2q5d3j772t7lqcnvqvg@5or7jxglcynf>
References: <20250915-radxa-dragon-q6a-v3-0-a6c32d988ed7@radxa.com>
 <20250915-radxa-dragon-q6a-v3-2-a6c32d988ed7@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-radxa-dragon-q6a-v3-2-a6c32d988ed7@radxa.com>
X-Proofpoint-GUID: 4EHljiOso4Jej11KgWTb5LnAHjd4Cou2
X-Proofpoint-ORIG-GUID: 4EHljiOso4Jej11KgWTb5LnAHjd4Cou2
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c7e629 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=ksxQWNrZAAAA:8 a=ex1cviSggc2TnLhPxoUA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfXztmLBt+HQhiL
 i1RkpnnnE8B2mFWyzgSBNo8O3krOqbiRq/IViPDo5zABiiPjXA8fy/mTTkRrqKJ2YFuGoQlTnyz
 fmtE/J46YSyPPaxZfqqf3rjjWLfmZbLonmB0JtxnCVjuSpTfmp3ig2MkxlOl945zlrIGMDuU1YG
 Ys2MNefomaghPBxxD4Sd8gnpa6nqEbRO1u+8ufg8aVKD8RjufASBOJMtX6ZW6/7OdpNt/ku38V6
 qwz7jNhFnEtZab5DBI4KYp2wl8D/mxDvw0Nv5go/JA8fJeQvpeXxc7FtN0U5XMIyEkW6rmDlEBM
 NSNCroJ0Tdcr01BZLfUnAgqZC7LoaG/3DmoI1K7SonGsYkEdhKCjEpXtMlvzhE+kWSsEvL/1ZXG
 QSKeCVvZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Mon, Sep 15, 2025 at 09:31:44AM +0800, Xilin Wu wrote:
> Radxa Dragon Q6A is a single board computer, based on the Qualcomm
> QCS6490 platform.
> 
> Features enabled and working:
> 
> - Three USB-A 2.0 ports
> - RTL8111K Ethernet connected to PCIe0
> - eMMC module
> - SD card
> - M.2 M-Key 2230 PCIe 3.0 x2
> - Headphone jack
> - Onboard thermal sensors
> - QSPI controller for updating boot firmware
> - ADSP remoteproc (Type-C and charging features disabled in firmware)
> - CDSP remoteproc (for AI applications using QNN)
> - Venus video encode and decode accelerator
> 
> Signed-off-by: Xilin Wu <sophon@radxa.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 961 +++++++++++++++++++++
>  2 files changed, 962 insertions(+)
> 

> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/qcs6490/a660_zap.mbn";

Is the device fused to reject standard qcs6490 firmware? If not, can we
point it to the existing files (maybe except the ADSP)? Anyway, could
you please submit the required set of files to the linux-firmware repo?

> +
> +&usb_2 {
> +	dr_mode = "host";

As Konrad has asked, please describe the onboard hub and the USB ports.
This will ensure that corresponding ports are correctly marked as
hotplug in sysfs.

> +
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy {
> +	status = "okay";
> +
> +	vdda-pll-supply = <&vreg_l10c_0p88>;
> +	vdda33-supply = <&vreg_l2b_3p072>;
> +	vdda18-supply = <&vreg_l1c_1p8>;
> +};
> +
> +&venus {
> +	status = "okay";

No separate firmware?


-- 
With best wishes
Dmitry

