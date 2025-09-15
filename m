Return-Path: <devicetree+bounces-217393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6619B577CB
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:15:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5BE11888947
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA12A2FE597;
	Mon, 15 Sep 2025 11:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dJx7+62O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C92FDC36
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934884; cv=none; b=nl1XGiAFs6BlT1kIYbTRX5CmpPEUFZrascKYXlJWHBIHN7GT2IajSQAzNg7FZ4n8Fer7rJGE9vcK1TJMDacuH2J06Gg/xSGjGsuhJX/3Zz8rFG/NUjbvwIfEtZXAFmf22KOqVrehvP7TafWj1CtiDQwJBLp13cz+a9PsYaMT16g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934884; c=relaxed/simple;
	bh=NmQTuE6oktbowc1fE4SzF/Rv2PfEBusgZuNoSX/J7vY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lJSR7/8bxSf/nWtbsiyzJFfhORIcn8TWBhM4xksUUcdTZXyMtgqwa5xk0RuYo4wuhL+HckSy96wrczdYPbp7nqDw7i8Y0u79AhxatFji/fbuVTZjbxCchiACFCp0RDoHWE6+kN8RW5byzNaxLWy//T1VWnDyU5zH0yZdlkpJETQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dJx7+62O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FgI3031662
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:14:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UE7EY6vJQIQpbunoS5He5lME
	uax+fe4RHGemt1V3aWo=; b=dJx7+62OlQPI1RNydmN/4kCNITuoVFKlgH7f93wT
	sJwd92efp6QuuQxKXaaB1K+mhBdXjcPlRHrDKMJz0tD44FLfV8KlHRsP1xMLzYeq
	5K9B/+yIQG40ahukawsfKCwoJzUxunn4dj8EfXt4FR6KvZXcPDanmWgXF5RMstA8
	8+RMKM/d3kyVx0zke/R6KHGclBd8Ch7rULj9Mpz+6vNh/0geV69a08IapsWXyIpu
	1WlczUxwiQzYlxneXhStTydUrNTCT28nWvr46P/L7EYJh21lOwtZkgT3TkslfnDH
	vRV2Fd5i85TWMZtNpZAk0/HtjLenS6kxetFOlEHlIeVeJw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma4r18-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:14:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5e9b60ce6so118350311cf.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:14:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934881; x=1758539681;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UE7EY6vJQIQpbunoS5He5lMEuax+fe4RHGemt1V3aWo=;
        b=eaYEpkH8aaZd6b0/TMi58gZKZDJxOO09ZYPf45GCYSu6AiknJi2FtD674nJ4zYRxW9
         Ab8W12REyn4Z9uA0/B0fZDFOGvEBBu5kA9LWcFppNVp9gwbrY+28Bb/cWFSieg5EKHHk
         4MxDpMo6xeUp4hNvS7S6C0oEP7xOcmWZXqovWEp2r6trQkcXGZS05AGLatjSsyCtL2RI
         a6LjdsWu03xDRAc78tQd3uW0RJfz6VezSWjA49Qhpfyyw40bbmRfwMSXnHK4w6QLM6ow
         7uKaIM+hgiuO49pql+tv+pYRFjSJNEgPD9oY3CDA8Yu+UQiIaVQB0//E/d76Gr34nVnP
         p59g==
X-Forwarded-Encrypted: i=1; AJvYcCWK9xsopAPi3DKpOYdJs/Xmx4YhU1vMm9hN5vFotV86fSeuU14U6QDR8Rl3j6Rvdfp0mniz2dtAFJkp@vger.kernel.org
X-Gm-Message-State: AOJu0YwzMgKXQhOzQDx1dYqL80MbMubsOm8jxCGovZeheGNrJlGNQ+KM
	OwnpxHeqCxPt6yLbuWQCGZc/Otx95qkInnlti6VHmDdMlKmyH2Jbz0QY1jQfvVOnRppbQhhotFP
	QXTLkbR+z98OPZcqtDMT4gMRDnEJvN71ZbCZcheOI9TnxUzUKIuMb6QskoNG8Sbbp
X-Gm-Gg: ASbGncsnKptjpQpLs+q5DEUAYYur1TmlRxVAxnHXDYMaMsxPO7GVP7tbU4TFcDGXLUL
	2rLNHZiWCbCiafd0eMmob6R3j/ucBpL5+Qv3ZmtgRtDUndtfo3ZrlETLWmchZvwnv8aU2TdNYM/
	cLMwKQ+fhLfR+7aTvnoLFFJWAwMfo0afy+gWU6OwH5czs5an+JYOmDHjwusTnEOKGvITjyZqzxb
	YmGfViPcmafrumX1ZjNaC/tb3/+c8VdDQIXcGP61ajGYLSKtd1e1nD/Dtbpf0FC7efC0pVUIvyA
	T/jGMA5w0U0H/uImomeyvTNsnVmLrEsZ+tZqZ0voNah9NgQvEgm0HlPoNS19HmUjbTwRasA878m
	dtMdTTEjVKuA2a9seZ8xPJI76ZJgLrkNkjyPM7Int8kfoU6f8sXQN
X-Received: by 2002:a05:622a:1a29:b0:4b4:9773:5863 with SMTP id d75a77b69052e-4b77d0446cemr132550631cf.48.1757934880801;
        Mon, 15 Sep 2025 04:14:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHqyK3/SBERxfJelmharBzCPiOcF1a5b27+7+3enxQOwgbeFlfGbnEd2RvdA2OiZrdidoXpCw==
X-Received: by 2002:a05:622a:1a29:b0:4b4:9773:5863 with SMTP id d75a77b69052e-4b77d0446cemr132550211cf.48.1757934880246;
        Mon, 15 Sep 2025 04:14:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57178b7e5fbsm2655981e87.22.2025.09.15.04.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 04:14:39 -0700 (PDT)
Date: Mon, 15 Sep 2025 14:14:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xilin Wu <sophon@radxa.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs6490: Introduce Radxa Dragon
 Q6A
Message-ID: <2vpckcbl7biqaqtb2e22mhnorbiq3xqlsa4ys7x2grzrs67u6f@iixiq3xhfwzl>
References: <20250915-radxa-dragon-q6a-v3-0-a6c32d988ed7@radxa.com>
 <20250915-radxa-dragon-q6a-v3-2-a6c32d988ed7@radxa.com>
 <33vm6uzxqbs5bukswpzdkrn3ronl7mp2q5d3j772t7lqcnvqvg@5or7jxglcynf>
 <B3EFC6A5E09F74FB+a67c9b82-a7c5-4dbb-9486-90a6df55ed13@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <B3EFC6A5E09F74FB+a67c9b82-a7c5-4dbb-9486-90a6df55ed13@radxa.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX3CXqI3HGmzMg
 rHe23pn7ZUt7md981piOsh6T8ZCDTZGwQYg86pC2fC2gzIEllmv3HsDWg+BCWNhezqd77rI9jUH
 nD8OPuibsUBn9swigJdIftiRFScOZt5M8eD8w0PkKoyRPRiOxitCRdoxO3AbBdOqLXJYatLvdnJ
 fnZaV5HO6xXz+Ys4ZijX68dpdpvLfWLlsiUJLhVpB+7nRwr9TUe16HLYygIvb/z3g+kJtbgy2fN
 gMAsKQ5LdWO1208jNeNIGXiHn+2xH+3G4pFZ5xayTEjIcPGTFKMTA0y9ITpD7ETtn8j4OkAshCo
 W4EnB8QJTE0tYUr1FuKH8j4+9Kkl+bP9YVclH3Z9ozeYyy7sX+p41HW4m0bTyJlt2ICAfZ+UcxU
 WyK+Z5ov
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c7f521 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=NEAV23lmAAAA:8 a=ksxQWNrZAAAA:8 a=foqy6ynOqZJRs6KxsBoA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=l7WU34MJF0Z5EO9KEJC3:22
X-Proofpoint-ORIG-GUID: vFzd4a7klB3LsYuxX8ttc5KZVDTrmLzr
X-Proofpoint-GUID: vFzd4a7klB3LsYuxX8ttc5KZVDTrmLzr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Mon, Sep 15, 2025 at 06:43:50PM +0800, Xilin Wu wrote:
> On 9/15/2025 6:10 PM, Dmitry Baryshkov wrote:
> > On Mon, Sep 15, 2025 at 09:31:44AM +0800, Xilin Wu wrote:
> > > Radxa Dragon Q6A is a single board computer, based on the Qualcomm
> > > QCS6490 platform.
> > > 
> > > Features enabled and working:
> > > 
> > > - Three USB-A 2.0 ports
> > > - RTL8111K Ethernet connected to PCIe0
> > > - eMMC module
> > > - SD card
> > > - M.2 M-Key 2230 PCIe 3.0 x2
> > > - Headphone jack
> > > - Onboard thermal sensors
> > > - QSPI controller for updating boot firmware
> > > - ADSP remoteproc (Type-C and charging features disabled in firmware)
> > > - CDSP remoteproc (for AI applications using QNN)
> > > - Venus video encode and decode accelerator
> > > 
> > > Signed-off-by: Xilin Wu <sophon@radxa.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile                  |   1 +
> > >   .../boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts     | 961 +++++++++++++++++++++
> > >   2 files changed, 962 insertions(+)
> > > 
> > 
> > > +
> > > +&gpu_zap_shader {
> > > +	firmware-name = "qcom/qcs6490/a660_zap.mbn";
> > 
> > Is the device fused to reject standard qcs6490 firmware? If not, can we
> > point it to the existing files (maybe except the ADSP)? Anyway, could
> > you please submit the required set of files to the linux-firmware repo?
> 
> No, the device is not fused. So it can use firmware from linux-firmware
> repo, except ADSP and Audioreach topology.
> 
> Sure, I can submit the ADSP firmware and Audioreach topology file to
> linux-firmware.> >> +

Yes, please. Also please consider adding ADSP fastrpc shell and modules
to https://github.com/linux-msm/hexagon-dsp-binaries/

> > > +&usb_2 {
> > > +	dr_mode = "host";
> > 
> > As Konrad has asked, please describe the onboard hub and the USB ports.
> > This will ensure that corresponding ports are correctly marked as
> > hotplug in sysfs.
> > 
> 
> Sure, will describe them in v4.
> 
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_2_hsphy {
> > > +	status = "okay";
> > > +
> > > +	vdda-pll-supply = <&vreg_l10c_0p88>;
> > > +	vdda33-supply = <&vreg_l2b_3p072>;
> > > +	vdda18-supply = <&vreg_l1c_1p8>;
> > > +};
> > > +
> > > +&venus {
> > > +	status = "okay";
> > 
> > No separate firmware?
> > 
> 
> The one from linux-firmware works.>

Great!

> 
> 
> -- 
> Best regards,
> Xilin Wu <sophon@radxa.com>
> 

-- 
With best wishes
Dmitry

