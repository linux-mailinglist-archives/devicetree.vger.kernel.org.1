Return-Path: <devicetree+bounces-254792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B561CD1C381
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 04:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 65BFE300767C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B098320CA8;
	Wed, 14 Jan 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bg+ZARYm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SdZcMZpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E7F1850A4
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768360473; cv=none; b=gHRcwCSY03GFvX63CoZZvAMCVVg+kS3oEBLEuRQY4a7yAMKk8vllcBkHsSLnvHL0bYQFOqVyJQIhbW7puewOU3meIoxSBS9H5zBpD6rEEJgzt/t9FfwaZ5gG8RfvqcaQjciaKOQTa2Uo8W8AXNfC4zF5vf7N+n8ITu/MaQf6faE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768360473; c=relaxed/simple;
	bh=tmstHXmbtQtNzUFEOMIDB+DFApVjPcnTHPv9ac2Zz5k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qtihBhYTtfED7mE1TWxAymHYJ2nAPkQ0xxBhCqqKRg0SAN2jNaO8bG3tqw7TqmeHjBegMURNHj86+lGy6JmfbDMJDr2O5XmvbPIY6XD+mBCvcGmc+WLBiAVw60kYp8nq29NuNCOPfQPMj9gGwctNB+ezt94dA2OJ8k3BAS2f+Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bg+ZARYm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SdZcMZpi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DNHgXq3270613
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WA0Duyy7oOsOZpF1Hhf6vvf/KMhyZASXJgxYvMzuc1E=; b=Bg+ZARYmUDXdksuW
	QgXjKlDRCCXtl33HQIfjIOynDS1owYIqMZeXFC3VzDX1R8LE8xCbTdasnKpBfypj
	DAgtMD6YNxK2aP2Faah489ct0duBepJl9f+0eTkwH5Qh3gczr7T9+OMNNAPdmiN1
	sohc0yVixiJOobE5AqolBjcG2xKJPIJC1NxC6iB9ZEYpcvRGcREkWjk+iUrwLCT4
	COTgG2jyW4p9AiEVqG16ck5JMDKbuD+CzmTLlilrrk62wf0L8QdMOPfglE45SzwJ
	3mNQUTfIiBcp/g5fxTIMK7+ZKgOr0uCYmR+nzxXZgLKRYGBbuKyxjCOPfbGcLl+N
	ZIbDtg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnqbmacrp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:14:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c530da0691so54420485a.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768360470; x=1768965270; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WA0Duyy7oOsOZpF1Hhf6vvf/KMhyZASXJgxYvMzuc1E=;
        b=SdZcMZpia4Ir/VgwiTI1f6KpvPqOyPzPaNS5Ll24Fd0ed3G3sDuJyLa5m3w2Ietd8O
         0yG0psh7hRab3ld70xmjLVbgljCMn/Qv92JuH4l+R7CvYLU0+Zx4OxT18tlyM0lmQTyT
         poGDC7fj1w+As5GFncdSESwm6A7cIRFZAwbdE13jLwNYUO2WxUGdJFIt6xKTpms3PJiW
         DxQfvh/92zpPlUmLkUzm+zWbiEQ+k+Wu5XGFVJ6KxphmOFdNSwix3nIXfGrO2j9Kgxxr
         mp+moYgjPDd35PQMCxmIoCGSLIszDyF962sLbR0LmrhdcXUyQelv67nUYIVXD66k6+9d
         bDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768360470; x=1768965270;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WA0Duyy7oOsOZpF1Hhf6vvf/KMhyZASXJgxYvMzuc1E=;
        b=W2CMCCo2mwbXKVuygef8l9LaP0Xxl75ie/TrGnDOYZTgM9ZODy+heRGtYdtMttTrfs
         jLPgxv87yLVdIaFB6DrexCrCWwernjkZRnFnMEKzN7mjzXAgSWk5kHVxxR6uJCjH6+R5
         gKSs9rjwqh28TKhw1UkBBt2c2f1dZd8ByVFnty3tf6yzJr9JIZIcBawdpYiabKbIlUmj
         NlQQ/4n/5HPrur6TBHg3UoU+e844BWSy9yeUWIIKZ5JMXwxO3bistjSN6pwJvbYV8Has
         504yJarIack1rtBGPE74NvU0HEmRov587+mfC9Q8W8ivxbNI/13fxiYOIbZ6y3yGpSMh
         c4uw==
X-Forwarded-Encrypted: i=1; AJvYcCUbEAzroD0ZoxY7aMhvuMHjJIXuJvyOljJaUooVwofCZlAnmGb/Pl3KwS9hH2pvlKp71I5mmlOxUpQ5@vger.kernel.org
X-Gm-Message-State: AOJu0YxnLWHAyosjGByD6R1MBjgqUjkup6FJyXJLtje7kZYUMpRuNzcq
	pBc21JRvivbU+Fd516B0JXMzqbIvuOlQ6m9qfay+FltUrKh5N3DkmI04YV3y3wqyHWSBxffdgIp
	IZwIm3VW8YubsWJNiVN24zQCJhfKHUOQCIA9GKBQrhaJOLXvqmutM6768hQmd7WUk
X-Gm-Gg: AY/fxX56nsd+LMSAQJEP+XUx8gV9RtEiLG6vc73si4qWaMTzwErYz5k3hNTidXlD2MZ
	dSjs5G4Aaj3khS/v1wvzWgCciY7qctbgxaqADMQMNUF4RzIvOUAui7EkRWDB4rMzpyhjdKyNuQj
	wfJ14UhKM5hBBX3i9ftNv7yz7Q9zDfN8TotkD15zHXS/qh0w/JsL+skOTkvhDVh/D5QlnhEhH44
	YeyPN9XZzqCm67mQkjV12NmoXz0RIFipsplaqNDXXMKtEPBYSOw/Fqzv88VbdvUIY02/QjzirKU
	plA0sFIiMOVwDJNo0JuXo/8Sa7f8v2IgCJcPjcE2V7/epp1TWln7N1EAAVqQ0m5m9CNOpTuPe9G
	T3ZFT+PLAjMNgBEHAvqXNuAx9EfKq0p4KBpMKtVkEvxRUiCPobFQ4cci7c15VNbW5hyRmTfADi5
	meoXMZVjVrtIQmYkQxHWaHn7I=
X-Received: by 2002:a05:620a:31a5:b0:8c5:2e2a:68f5 with SMTP id af79cd13be357-8c52fb1dbc0mr197467985a.35.1768360469803;
        Tue, 13 Jan 2026 19:14:29 -0800 (PST)
X-Received: by 2002:a05:620a:31a5:b0:8c5:2e2a:68f5 with SMTP id af79cd13be357-8c52fb1dbc0mr197466285a.35.1768360469263;
        Tue, 13 Jan 2026 19:14:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba1041152sm265207e87.51.2026.01.13.19.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 19:14:27 -0800 (PST)
Date: Wed, 14 Jan 2026 05:14:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <bcikdrswcqyibzvtygavuev4c5g3lphdmvl5l3xtxlihshaxpl@miwpuwyfacqv>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-4-yijie.yang@oss.qualcomm.com>
 <2qa3kn6gw4f5qlncq6iwgxattfbbztu42gpcbekqfghcrdg3l5@z7zsx44xch7a>
 <3906614d-d9df-485c-963b-603e2311bc2c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3906614d-d9df-485c-963b-603e2311bc2c@oss.qualcomm.com>
X-Proofpoint-GUID: utB8W6HobHKmljs3IpRHE40oGb3jm50l
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAyMSBTYWx0ZWRfX6kmOX2dmYwiQ
 w2uZGtEwbf2xuxXuxYE+ETWd6y8qhwfwECVVdfuPlxNydQa5p8qdwypOD4EJmMFtVwCAgXeU3mQ
 ZT+Wq0FWv2LMonne8GKhraUpSKmmIZJk/eBQIAENAv5EUPhHRdVKs6aUZlVEvYgl1oiwY4cVAJP
 CcI9as2642s9VJns2xrw+QYsUkEvFSNZlQUQFl9wyZuv6JStFc2HDIKGf/zcwfxZTNchmPOUdb5
 S1QXd8YfqnD1fmOh6mY/3ZacLv6bRTZ4iz42mVrsF0j8kDGAi1/Upc91f+nrTPEjTwV6FkO3kdV
 TqYLR/f91EE+fhr90XTMVNtEMSZ4hWCMfDIbGRxq6HsRcG9LLTwc+RkMW7m1566X4bJVh6zqVJ1
 kSwFqcaZotd9WSmaxN+LR8SqdmS5YtIc1y/GBLWeQPGJ2nJjHj88GilvdGbCrbzyRZMHwoZB3p+
 OutzBfzDB4rIJB5yYaw==
X-Proofpoint-ORIG-GUID: utB8W6HobHKmljs3IpRHE40oGb3jm50l
X-Authority-Analysis: v=2.4 cv=YdmwJgRf c=1 sm=1 tr=0 ts=69670a16 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=vOeAKl8klYon9pFA0QwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140021

On Wed, Jan 14, 2026 at 10:27:16AM +0800, Yijie Yang wrote:
> 
> 
> On 1/13/2026 6:52 PM, Dmitry Baryshkov wrote:
> > On Tue, Jan 13, 2026 at 06:28:16PM +0800, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Purwa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > > 
> > > PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> > > Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
> > > topology differs from that of HAMOA-IOT-EVK.
> > 
> > What is "glink topology"?
> 
> What I’m referring to here is that the graph composed of glink nodes and
> their peers.

Then:

As a result, implement corresponding changes to OF graph connections
between USB-C connectors and USB host controllers.

Or just drop this phrase completely.

> 
> > 
> > > 
> > > Make the following peripherals on the carrier board enabled:
> > > - UART
> > > - On-board regulators
> > > - USB Type-C mux
> > > - Pinctrl
> > > - Embedded USB (EUSB) repeaters
> > > - NVMe
> > > - pmic-glink
> > > - USB DisplayPorts
> > > - Bluetooth
> > > - WLAN
> > > - Audio
> > > - PCIe ports for PCIe3 through PCIe6a
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile             |   1 +
> > >   .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 102 +++++++++++-------
> > >   2 files changed, 65 insertions(+), 38 deletions(-)
> > >   copy arch/arm64/boot/dts/qcom/{hamoa-iot-evk.dts => purwa-iot-evk.dts} (95%)
> > > 
> > > @@ -1102,9 +1140,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
> > >   		pins = "gpio10";
> > >   		function = "normal";
> > >   	};
> > > -};
> > > -&pmc8380_3_gpios {
> > 
> > This needs to be fixed in hamoa-iot-evk.dtsi.
> 
> Will do.
> 
> > 
> > >   	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> > >   		pins = "gpio8";
> > >   		function = "normal";
> > > @@ -1171,16 +1207,6 @@ &smb2360_2_eusb2_repeater {
> > >   	vdd3-supply = <&vreg_l8b_3p0>;
> > >   };
> > > -&spi11 {
> > > -	status = "okay";
> > > -
> > > -	tpm@0 {
> > > -		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> > 
> > No TPM on the board?
> 
> It has not been verified yet since this patch set was sent out; I will add
> it.
> 
> > 
> > > -		reg = <0>;
> > > -		spi-max-frequency = <20000000>;
> > > -	};
> > > -};
> > > -
> > >   &swr0 {
> > >   	status = "okay";
> > > @@ -1470,7 +1496,7 @@ &usb_1_ss0_hsphy {
> > >   };
> > >   &usb_1_ss0_qmpphy_out {
> > > -	remote-endpoint = <&pmic_glink_ss0_ss_in>;
> > > +	remote-endpoint = <&retimer_ss0_ss_in>;
> > >   };
> > >   &usb_1_ss1_dwc3_hs {
> > > -- 
> > > 2.34.1
> > > 
> > 
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

