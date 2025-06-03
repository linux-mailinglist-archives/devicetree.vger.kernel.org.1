Return-Path: <devicetree+bounces-182479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90DACC783
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 15:18:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60BE63A424D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 13:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BBF8230BD9;
	Tue,  3 Jun 2025 13:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BQMBemuQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8472D1E0E1A
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 13:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748956679; cv=none; b=HCqxwMyHs23C1RkXeK2hpGyz81RTQS8tiJd/3OHidP6XskG+4hjd+2qAJKKQXaLppZBDzgUs7flFIX8re/HOk7Xq5QsdSXHRKxDWiUjjpNrHn23qaopBWtoSzCVAWyM665IlqluOWpOv5tlr6naLVKGqJwJxxhbfh5nDwzWuNWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748956679; c=relaxed/simple;
	bh=6iBvI7K6Ap7MSOEGbalH5RS+2DAx3UXzxMrsuLUjNuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FLP44mapsv7Z3VevOGzPJ9xUOwxRmFPO4aaAUUSlQdiupymIZumWC/3qWR0rExNp4M0vxjRFhdKRKN6tr2f243cDfFTs6a8iZlvVCsLw1y+J3UZJgmNkQbvDpU45qyw9rSK43OiAitzprezgn7TR6Frg4R0HkGhHETUR4/QDCHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BQMBemuQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5539JFXM000674
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 13:17:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JXGMMgDR2GMRgvSQcH/bx3rG
	d4l8acpfk7Qd16JoTBg=; b=BQMBemuQF4dBmNLN6f4xYX27LftVRJZ4ntFZVPvT
	FbR2s6NAnc8ID8m0sOJ5xURsYPiBILlb9WHsjdzq3coeOQp/SLA5Lprd3bVXteeD
	1fYThUZZzomTy2IgV9mCX41/02ggPVuj87Bqn0QapEhA3SDoX/Pl+UDVjgWCIvI/
	D9nAyj03JwQLf6olY1tNuu7RtGbLZgL0LUbM87RNsWDo3U9IVrdyqiLp7hREtFnh
	0fh+zL4Z2F5NOkWSH5+XPm9ECZq3vEte8cYtKXEUOCXMF1usrkX3VT2R5vqfCJJ/
	hHuvmNB+sYBaLDdcSyfcU0b4RkT74D1xF7OaeM/b2G1JiQ==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q2pg3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 13:17:54 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-72ecb622e02so1542509a34.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748956673; x=1749561473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JXGMMgDR2GMRgvSQcH/bx3rGd4l8acpfk7Qd16JoTBg=;
        b=ZpBJAidtXMsuLi88GPVTCH+ht+el6IUrhez004/aWXTbiCgVr/sYnWbb5m5A3bLz2b
         UsrxrxTGzUTDd9q47JC9oPzydTMtlk3Q+rIANlPLPU48AYVBnIGYPrAWaM0h6ODEv3U1
         DOIAc79l6R9H6Dnbq0MFHi+Ua5kAsMX5lzKsp+8QG8o/0+VuvbSU97KBLgHRFbDPdzi5
         50rODUtTXUi71Mr2iIbkkIXhVVNeQGSShjg1vmPSiMgnMkAkHHVVXEVe+z4zsdGXYMom
         ZRFUOp1Ln1nygxt6JTOP8TRs5BV0/TnVcRmRSwxFtl2uN23WCywKHWKpuoUaJzn6ExX5
         Hbww==
X-Forwarded-Encrypted: i=1; AJvYcCWJ6ulOVzf4lc3AR6NycpCdWl7daxdpwqEkLPuBcVXsPxhOHlnN2n4HyGkkW+F/pXQLMtTyPeaE4rR2@vger.kernel.org
X-Gm-Message-State: AOJu0YxopG6GO5mTZX6fgygRk2vBH9l0KmWcQS6VUlRS9g7dtO6lOMla
	snSW8K73OT24refXALEa4yBn5C3Vu3nhZgSFZOuuTjz05yzVC6Kj3K0SLKUhAEYgjEYk/xD/OCD
	Fda14poCym+Lll8Y/HtnxDno+q55d5gkTY7W9jov0Q1nOjRDAK3g2gIRwX89ej3Fo
X-Gm-Gg: ASbGncu4JcZD7vdp1+DjuGOZHa5iFJQi55NQj/1Mv3mi7nsbjD/j6LM6fjfOqYbwfak
	04N3Wzeu03T0NeozPR6wAUfvbep10bvnVZkGQA4tvboMx0Qfg4GyvaekRwOTjtBrPNb1Q/Jzvwc
	pk4pojop9eaxcW3ShFQZp8IBRKMkjnCAWWnR6ekQYHMgyasne6w79C/ZVl+DldlTMOaiU68WNi/
	Bp89LjKKN0nNPkLyibbTqaoCtc+1IbWOEQrEKG+ROzaoLUnHfI5VBpK7Zp3/DYNZV7aHvCVOJ47
	TvFWzxYqN6aiExYqTrdmedCsg8BZ9jl0qoRb+XhNk51/0BCOgNJ57fk4izizQ1Cish2K4cXTNnM
	=
X-Received: by 2002:a05:6830:6484:b0:72a:449e:2b69 with SMTP id 46e09a7af769-736ecef9188mr9330707a34.28.1748956673464;
        Tue, 03 Jun 2025 06:17:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJzNn7xzYSZpmDzRz5bR4WkPRFG/MM1S0QGnUE/tMoDRu36FwucQVvMhTGP/O7jMEzHNHQUQ==
X-Received: by 2002:a05:6830:6484:b0:72a:449e:2b69 with SMTP id 46e09a7af769-736ecef9188mr9330676a34.28.1748956673048;
        Tue, 03 Jun 2025 06:17:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533791d105sm1905969e87.209.2025.06.03.06.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 06:17:52 -0700 (PDT)
Date: Tue, 3 Jun 2025 16:17:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <fhzdhzxdwcoiuhx2eogpshwt5cxagjkrygrefqikmfbx3cfcov@awmhgrvurnfi>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
 <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
 <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
 <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
X-Proofpoint-GUID: LwPuAs9gFKMCH4EKXxnpsNM58JvTmz-m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDExNSBTYWx0ZWRfX4KP4IbIxGuAy
 /Ko1SwiJHZDOLyu1yDdqUzQ5CRRCv/XZ0xvgRL97goROJ9V3NA7ybrjbJbRrVHQraFDcJNwSgTh
 uaytUjIJn7A1uFjlKOnM4H8bC3ux16rk4vvK6BQEAqU8IRDh2cBKoeMpbdiymkPBMoqm0fVSI5i
 FjuJC7TtJtGv5dEmxMbo0VK0Ort9+SD7iYAPDrr0M0TFlp+IDSh5Rrrr4lAjcTHCVYYU/pofzY8
 hWqcJR9CxRWZYueoUD9JBfezVtZiXIsYX8uO2cTiAu0DKmZincmo3o3p/ut8ntSNAYz1O17sSs8
 rL040SZupmcq1gQiYxbokvuJofahmFYhlw6v5keE4Y3vHDyGEXl8J6hnXDzPb8HH4adBKHIbtSv
 c4PxW9V0J9jYWPySGuUfAhxsDBKL+uvKjBAvMZ1NyROeJmSnyVSrQPCiJWkXk0TrUqTNsaoU
X-Proofpoint-ORIG-GUID: LwPuAs9gFKMCH4EKXxnpsNM58JvTmz-m
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=683ef603 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=G_5p7y9kmCDjZpQMCqIA:9 a=CjuIK1q_8ugA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506030115

On Tue, Jun 03, 2025 at 01:03:11PM +0200, Konrad Dybcio wrote:
> On 6/2/25 10:55 AM, Neil Armstrong wrote:
> > On 28/05/2025 18:56, Konrad Dybcio wrote:
> >> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
> >>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
> >>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> >>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
> >>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> >>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>>>>>
> >>>>>>>> The DisplayPort phy should be left enabled if is still powered on
> >>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>>>>>> PHY is not powered off.
> >>>>>>>
> >>>>>>> This series doesn't seem to solve the USB side of a problem. When the
> >>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> >>>>>>> clock, so it needs to be switched to the USB-2 mode.
> >>>>>>
> >>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
> >>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
> >>>>>> the USB thumb drive twice for the first time (only in that sequence)
> >>>>>
> >>>>> Might be.
> >>>>>
> >>>>>> But there's nothing interesting in dmesg and the phy seems to be
> >>>>>> programmed with the same values on both the initial and the subsequent
> >>>>>> working plug-in
> >>>>>
> >>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
> >>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> >>>>> devices. Would you be able to see the USB device on a bus?
> >>>>
> >>>> I only have a dongle with both display and usb that does 2ln dp
> >>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
> >>>>
> >>>> USB3 - yes, USB2 - no (but it works after a replug)
> >>>>
> >>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
> >>>> at runtime?
> >>>
> >>> I think so.
> >>
> >> So after quite some time playing with that, I noticed that the USB2
> >> device was never actually kicked off the bus.. and works totally fine
> >> after connecting the display output (2ln DP)
> >>
> >> I was looking at dmesg, checking for discovery/disconnect messages,
> >> but the device was simply never disconnected (which makes sense given
> >> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
> >>
> >> I also read some docs and learnt that what we call
> >> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
> >> and is unnecessary to set on USB2.0-only controllers
> >>
> >> The USB controller programming guide though doesn't talk about DP,
> >> but I'd expect that we may need to set that override for 4lnDP+USB2
> >> use cases (which I don't have a dongle for)
> > 
> > Yeah basically we need to:
> > 1) power-off the USB3 PHY
> > 2) switch to UTMI clock
> > 
> > In the following states:
> > - USB safe mode (USB2 lanes may still be connected)
> > - 4lanes DP mode
> > - DP-only mode
> > 
> > But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
> > The flatten DWC3 node now allows that !
> 
> Yeah, I got even more confirmation this is intended..
> 
> I hacked up something that boils down to:
> 
> diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
> index 7977860932b1..e5a0a8ec624d 100644
> --- a/drivers/usb/dwc3/drd.c
> +++ b/drivers/usb/dwc3/drd.c
> @@ -464,6 +464,11 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
>  		break;
>  	}
>  
> +	if (dwc->mode_fn)
> +		dwc->mode_fn(dwc, mode);
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index 7334de85ad10..ea56f5087ecb 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> +static void mode_fn(struct dwc3 *dwc, enum usb_role role)
> +{
> +	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
> +
> +	if (dwc->usb3_generic_phy[0])
> +		dwc3_qcom_select_utmi_clk(qcom, role == USB_ROLE_NONE);

This part is a hack for devices with no USB-2 passthrough, isn't it?

>  }
> 
> 
> It was easy to tap into because there's already mode switch handling..
> But obviously it's a hack - should I register a typec_mux in there?

I think so, we should listen to mode changes, instead of host/device
changes.

> Should it go to dwc3-common or dwc3-qcom?

I'd say, dwc3-qcom. Not all dwc3 controllers are USB 3 capable, not
talking about the USB-C.

> 
> Konrad

-- 
With best wishes
Dmitry

