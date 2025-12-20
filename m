Return-Path: <devicetree+bounces-248497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A44B5CD332B
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 762B7300E032
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 16:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4172ECE85;
	Sat, 20 Dec 2025 16:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YTQ+Aw+A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Py55YGAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF5B2773D9
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766246831; cv=none; b=SDMOFaisTnKQMYdsNpXNvPazDjdd4aUJNL3l+m+VLf7rmzUCpGurwyuRPMMwbnyEsA+VpVvYGV5F8JyrIp164RNUnyTAywY7ETbh7wgdoVJ3vFdjopCix4xMHpldbcRIpKXJ1YJHfDPjMCY0elIQU9dZmXZMdg0iQ0cJGvC/cRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766246831; c=relaxed/simple;
	bh=7iLc15MgTuwmTLVdSfU5GvO1YoBOurOOB6j8L7l3QjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z2yK8fR9yd9J/ijfzbsuBmDqZ3R5c/ybtmkyESN8ZQM3EYz1d7das/H0Pku2NTsn+4pckpGM2q9MQvvBdMtasrHyXM8/PuR0uFjhozY4fw/7JpdIJnEsTvUCUsh4aZM0tg3vRDENqflplqUrR9WG0NzBgxVC7Afdb/bDBRSRGHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YTQ+Aw+A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Py55YGAM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBOon9243939
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6NZl6z/SL9Mum7SVO9rZG/Qz
	izYvtSD9+Rl/4uDxMBY=; b=YTQ+Aw+AW9on5Zoo7nB8e22DJ+REvaitvxbgaOgd
	yHRo3kCFj+GWjaBkQjV54hoaLaMEPyALweCkWNIuqG3/q315+yNGEE5Bi4d796g0
	dRhvATItrK64RlTycDoZ/eF6g5Qc/qXUC1DRmfyoyu2hzh8tyrS3ZOcbDZ1CFAfn
	ZwFmptJIHCAtgTYABBIGOvzPp+9UnXkDE3KNpaslUqrfh0jBXEolBZ1lmCAodfYw
	JkIPq3UR6oKy77koY2UJwEXbfEINOIsPiUmb32x3GWwdWahnHO09LC6TUnX2rTus
	p9zUO/+XSGGRehL/T/c7zZhhYMpHEZQrG2KePTdvTQ7ucg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mubgwrn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:07:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee21a0d326so47504221cf.3
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 08:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766246829; x=1766851629; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6NZl6z/SL9Mum7SVO9rZG/QzizYvtSD9+Rl/4uDxMBY=;
        b=Py55YGAMlqIqzmo405I/pGiotS9IhfXBcatNqFDKmQJkxIIbD1qpdsTzBkpa/n41PJ
         I+S4rT619BHqg1bHAEGrq7rUiBc9SJ2oljz9u4bG1pLaXgLhqygZdhpJLoBtNcGETiDW
         PCnCOH8ZItTk0MiKZE565VyDkrPEEA/fHdRA/BPkwii1xPTZ0CFKMM64Zd+RyLskfQ0D
         kqbGiMFjwo0/w34LmfxzRupVmGBG/R1rq1A7phwjT+F0xbiaIRSsxB7Ayfmkemsn8Zm0
         v2ekgIrIr/+f2AYh8/4zjijFKH90o5JxaCM4JMCIS/hx55N5h0X1ejmNrCLCDFxZ2ru4
         I7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766246829; x=1766851629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6NZl6z/SL9Mum7SVO9rZG/QzizYvtSD9+Rl/4uDxMBY=;
        b=sSPdDwPhR5UPEeYWBIHaszTMIB9mH4AlWd3BeZ4hCMVIssDb3Ryzh8w2oXuNFYEg/F
         5vnYUgfo02SpsJHLOOTbwEPfzLvYQdOI9EK2FBy9vQmhVsVtFIGi+dbja4FjNOluGjKy
         btkNjOodZsmHwQpa2CoKddlTFb9KdkDg/DwSMOS3rppuHnhE3iSTgoVyBBamSidIEaMo
         SQHt/dkgmfxYLZaT9aPkrT/zt65dIZdeA6rfC3xEbxgvC1xlyaitkd+aM43tulePifxt
         TpESbGrulZIHNmOM/9IaIcWaBPTf0Qlkr5AeRqnqWiZMXuTK0UknRtcrpYkFlVtp4EOQ
         aMkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk+BsrvXEkiZCm3wkV0lU1q+olH/ch2bIl6+dkrP0tg9vNzXBK1xPtKLLy4SmKZUGaIdroAxAQ8Q0C@vger.kernel.org
X-Gm-Message-State: AOJu0YyUpF4Jm9Xnw1EHvMbWLK53Fa/Gsbn3aF3NuoZd1Q8fPYDSJvEc
	rlO6Q/RqE60qyehCbsT9G5WEjsKxaWOdXwdSgL2kVuimLHSdNTeSj5+ExPAGoiZGTwxrJdpPoRt
	TTMgFLeQ8tVMr+A6Z7jpkE0/wxYSjjF1YjdGC+l/YBalhvBldtUyPewxiKirZLNbV
X-Gm-Gg: AY/fxX5DR0Puv3o0jdu9+nVqre4hFHfj/ZOo1EODVcEyAH5dc4QBLBwfbyMi1XwskJm
	5osRFfI1lvV7ud6XhNZ235MHtoysLmRWfC5kjwNLjuiGWFnSOrJu9bUCXvCE62jnqo5gbA3J7N2
	t+5tLRheGZE/8wzCrsfFN7FWW4wtQqZLof2E86lvAUBTCb5ntESWya2fBlmRP7TesNrwOLQT0kE
	LRMcia8fxFXSBGU+ut7m7T3k6uRl1myF52laUkU58R1shtaOJ/Fz1rUtlgMRhRf3Dtr2ENILkcE
	FS/Nj1gJ763nsJYCUocHEeE4xZs77fFjcsRt2Be/knLsfCGQDoH0JXjBi26ldygsf6a72hl+MRY
	ewpar6kGGQIjd8/ZStCnYku6NVHRzGtd7gHqznGWhz9XueUAw2o/+b6zo23ww4nuevRRgnZTKsC
	VIkRGfN8IeT4ViUqPLihQLva0=
X-Received: by 2002:ac8:5790:0:b0:4f1:b5ec:dab3 with SMTP id d75a77b69052e-4f4abd18cccmr100583311cf.18.1766246828710;
        Sat, 20 Dec 2025 08:07:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4XJPCsLN/SRIhrjlGIfx/XwLthxux8VMCRbzDyRXsyNHre2vMF1MkAyAsYxUuO5I0f26HUA==
X-Received: by 2002:ac8:5790:0:b0:4f1:b5ec:dab3 with SMTP id d75a77b69052e-4f4abd18cccmr100582661cf.18.1766246828257;
        Sat, 20 Dec 2025 08:07:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f4d9sm1578047e87.78.2025.12.20.08.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 08:07:06 -0800 (PST)
Date: Sat, 20 Dec 2025 18:07:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        J =?utf-8?Q?=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 2/4] usb: misc: onboard_usb_hub: Add Genesys Logic
 GL3590 hub support
Message-ID: <3dxv26cwshuoxjqy3436fcwxabctb33aclahals2xzt2o5jl5v@axwollef45bx>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-3-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220063537.3639535-3-swati.agarwal@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE0MCBTYWx0ZWRfX156esgG/PmLT
 o53hBTUIexoVuTlX8l28wnSNgf1td2jnDWeOlCU03oqVwNS6QBiB5WVM4vlUGcSZPEcTCEuFo6W
 ROSZfFH+BtYF3BJaPSyGEmq2nBY5/bLFRYYWBKZDUzrShVgrLdGeGNDnscZx9i1+Xo7S7Jz3lIa
 s0DtXeND1gUPu9qoOSuVI9Qf8L3xoeJlxPnKgGTJkGWg40I7x/K3pXlmJ658NIErkGsEhsfjLV7
 Pcs1M+Se01RWmnbJVQjNMhRRROAIQK91E1b1wNnYuk2z1LqfgOwo5D82M2JHct8QdatET81ibLd
 WHSf9Qgqjr2F9z35LYhZaIGE/YknQRq94gffUX0DhFlXWKR16LFcTSIA8xtMhr3jLmY+83I8xFi
 2Bfnxe7HZ6odxky4TeKhbsFv3tyI7xsJg7e59FuCfJ5FfXxdMvR2umZvi63/ASjXhpvLHNLApx7
 u+nHNsc4B7CDibVaunw==
X-Proofpoint-GUID: oNEDuTgg3o860P4UGahPYhwZ5i_B0xJu
X-Proofpoint-ORIG-GUID: oNEDuTgg3o860P4UGahPYhwZ5i_B0xJu
X-Authority-Analysis: v=2.4 cv=KYbfcAYD c=1 sm=1 tr=0 ts=6946c9ad cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=wDdryF7JnC3PY3xeqaMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_03,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200140

On Sat, Dec 20, 2025 at 12:05:35PM +0530, Swati Agarwal wrote:
> Add support for the GL3590 4 ports USB3.2 hub. This allows to control its
> reset pins with a gpio.

Nit: please read Documentation/process/submitting-patches.rst. First
describe the reason for the change, then the actions to be done.

> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  drivers/usb/misc/onboard_usb_dev.c | 1 +
>  drivers/usb/misc/onboard_usb_dev.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> index 41360a7591e5..bde303b820d7 100644
> --- a/drivers/usb/misc/onboard_usb_dev.c
> +++ b/drivers/usb/misc/onboard_usb_dev.c
> @@ -661,6 +661,7 @@ static const struct usb_device_id onboard_dev_id_table[] = {
>  	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0608) }, /* Genesys Logic GL850G USB 2.0 HUB */
>  	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0610) }, /* Genesys Logic GL852G USB 2.0 HUB */
>  	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0620) }, /* Genesys Logic GL3523 USB 3.1 HUB */
> +	{ USB_DEVICE(VENDOR_ID_GENESYS, 0x0625) }, /* Genesys Logic GL3590 USB 3.2 HUB */
>  	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2412) }, /* USB2412 USB 2.0 HUB */
>  	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2514) }, /* USB2514B USB 2.0 HUB */
>  	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2517) }, /* USB2517 USB 2.0 HUB */
> diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
> index c1462be5526d..7706a04f2630 100644
> --- a/drivers/usb/misc/onboard_usb_dev.h
> +++ b/drivers/usb/misc/onboard_usb_dev.h
> @@ -140,6 +140,7 @@ static const struct of_device_id onboard_dev_match[] = {
>  	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
>  	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
>  	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
> +	{ .compatible = "usb5e3,625", .data = &genesys_gl852g_data, },
>  	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
>  	{ .compatible = "usbbda,179", .data = &realtek_rtl8188etv_data, },
>  	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

