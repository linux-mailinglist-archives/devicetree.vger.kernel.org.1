Return-Path: <devicetree+bounces-210028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3F5B39EF2
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C85643AC8BE
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6338313537;
	Thu, 28 Aug 2025 13:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WdVPK2jG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C21313544
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387808; cv=none; b=Na8HD6dbza8MnuL3QReCRY8Nu970HdcBjKov+IlfYq467BfYIejp+B0p+UbzSwMjHF4DV8028MHd6uWkVFIc01EZ1r+FIpP7aFIuK464de0P8vuJ4Fs0qweniqRvm9GEr9UniAi/hWn1KXS/CwjDP6bnl38By1KmqxvNMwvI3Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387808; c=relaxed/simple;
	bh=cv0ZxHdea5CKsewlRvW/nTV3U8O64mbsID3Dg6IGx0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kwX0Fi6K7iV3ZMfVw8wwA/gSwkH1ZpS15+x9mt590SQZolpJmOzKmTPwZudvupWOxXBMLZscR3alR7IVMHeus1gYrzDuyRI5nHxv79ExClkccojpDqW5qZjQZhCacQsk/ZpbbySiwOfHmM2DLwfK4IB5Xhd0TRokYAEHRCnSxnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WdVPK2jG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SBL7De029026
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:30:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t1IRldKz0gQmhFQYU2bb3SAPuJJrpPeWPFtRHihBROo=; b=WdVPK2jGbR8S0q4p
	vNFhQDsCRbecVWA+fCnLIBrkBx+EWt2dqWkdCKJ+OgemYk4l0b0y8X+shn5sZFmB
	LHlBk3TXiGkfoaL9vZFkTT2UTdIkluEnODuBI6TbGwHEUK7dlqS7H+YRQBfWsdtI
	moblJdPF52D+fmAQ11reSz25Q6iOxf1Qn0+OrARUkOcelB+PYrc+KxtAg8Rqr6Tq
	X3AqiNm/FsP7G0EQlyDxvBsZhb6a2QgcNKA5Ls6xGeDb0uy65begVgG1H/ON8unt
	ow24+4Fpv4f5mjUZGsvwW4XCDcbh6KH4GpbvGhRg5DvwUFnUtjJ//UH7nPbjucrc
	P6ssXg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48tp5k0a79-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:30:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109ae72caso22667691cf.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387805; x=1756992605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t1IRldKz0gQmhFQYU2bb3SAPuJJrpPeWPFtRHihBROo=;
        b=iz4sHfDc0CDIxC7hzThr4OmIsMmkurs0ODbTudwoVBD00pp/jOjtsVvNz79QUkgXAw
         wVlSxTpuuBVxTboDo384dgO7iKI/R16Y33OT0qn/zKk1PQIbZfwADnC/z9LiubbA/K9w
         joNjK7A7b+x4a5fRjqNLvg5Dks3pxl6UZguzKfogvy2JEg8iC3AC7kZ7sb8E4Im5J45Q
         Y1Zs2toJ2lLuG4lnipBQ1qkcNwFfk0BPezUr8a781sXqjuE/8/K0S+Qn201hyPpYhg8D
         ui4Ox3N0WU/u0pW32hM9BQt5htdA0Km2P17M7UEEqwduz1PSLokZhLKWyg67dIf1Vkih
         +WGA==
X-Forwarded-Encrypted: i=1; AJvYcCUvZPaqpw7SwVWxUEHkltIIUvRWts0YCWjegHBFw8YWB6L/1vZDQ8MBTcCXgn8mwNBHpa0yXXZEJr8C@vger.kernel.org
X-Gm-Message-State: AOJu0YxMbMX1cA0XjS/sYc3V7VF16A3eddUyo8BpztsLQMm3aSJRRet7
	qiBy8fknBVgLtuzaBf9hImajwYs9h+ImBBOGF0zZlGx1/Xn/V6xUkbrg1Jc0gCk/4faMsvCfHME
	57kZ+QwNUw55ihis6nrEBTmSrvudvsDSdzA4udiG1I9NhurRIieHIxn4c8MhK98uV
X-Gm-Gg: ASbGnctMjnsZIwcvHPCvb5HOjJQ+0JyPXgrHHaORuy/kQuKLkU63XzMq63h0fEDMN/b
	/pmU6teZS61JupvuNGNE3p97lkbnV0AebnYTdila5d3I24lae04axhcLOaAWa4l8+EOaRNjFjVH
	oGkMxoJQExp92B9+YR+6CrrwjgiBZ9L4nY6o06VehRYDCsAXwERFd1ITwbOQCL1XHN9OecuzbwL
	36RPQsdtvTDek/BBaCo3OPBCV+P2Xn+jylZliFrH8fJbtR3g/5BXNJQRJ3cnVz6JYR9a6dl2LDx
	teqY8L+Vw4647DY7LgTlfGvw/SCf5XExkZUnYFWa/AFyybzR70HEdodV6+7QxDBRlDUoMpCJX4i
	4W5ZDlxWjE8DkoFH8xXtHi8qh6bng1tKzKq1AtWXdJoObz3C7pD/V
X-Received: by 2002:a05:622a:5b9a:b0:4b2:eed0:4a61 with SMTP id d75a77b69052e-4b2eed04cffmr82140971cf.71.1756387804549;
        Thu, 28 Aug 2025 06:30:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaOiP53QzP+S1t68Ggm4fjMOYi9fuzbFRp57u9VDUOAbeZXX2cOuJSczfNUU5F5LjJth2aNQ==
X-Received: by 2002:a05:622a:5b9a:b0:4b2:eed0:4a61 with SMTP id d75a77b69052e-4b2eed04cffmr82139901cf.71.1756387803743;
        Thu, 28 Aug 2025 06:30:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f489f09a8sm1977650e87.116.2025.08.28.06.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:30:01 -0700 (PDT)
Date: Thu, 28 Aug 2025 16:30:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Cc: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vishal Kumar Pal <quic_vispal@quicinc.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: lemans-evk: Extend peripheral and
 subsystem support
Message-ID: <zys26seraohh3gv2kl3eb3rd5pdo3y5vpfw6yxv6a7y55hpaux@myzhufokyorh>
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-3-08016e0d3ce5@oss.qualcomm.com>
 <kycmxk3qag7uigoiitzcxcak22cewdv253fazgaidjcnzgzlkz@htrh22msxteq>
 <3f94ccc8-ac8a-4c62-8ac6-93dd603dcd36@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3f94ccc8-ac8a-4c62-8ac6-93dd603dcd36@quicinc.com>
X-Authority-Analysis: v=2.4 cv=V9F90fni c=1 sm=1 tr=0 ts=68b059de cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=bO8WyBFqmgISiikzXHoA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI4MDA5NSBTYWx0ZWRfX91vvuamE5Gk+
 N8Ql1IhDGxGE8U1R6uP3/FtbiD3/akkKC6nODFBfNYzN8vu9H4KHAwYeuLp3yzmun+uZTWS7sbA
 txZy2svafewcTMRvrZKy7SUz/RgU6ZvJjbJto2CIUbqjyOkz8RIkLkeJbSVF+vrULlUO4A3zisf
 D8IRWpzK47HKifV7BYfjWKifJKFLpL6YpyCt77LcT9TTzLscid7nbDMqgYLKYsn2x9d0vqwNqDr
 peX/xwUc3GSyEBthZHPXyolAJo0ESspRWe3c1p42z9Lk8nOd5x/C3lBOkPCRBdZj4qsqLAKf+mi
 2ogJelmBNNXk2l1NygqZFGu9isvnrGnpi6xrg90mA3sHm0GJmoNYim1mRiKwmcFJmsKP6Z44ysX
 hixsz9dz
X-Proofpoint-ORIG-GUID: --yo4-IH9u2vP3s6trsSGpWAxw3r1-4m
X-Proofpoint-GUID: --yo4-IH9u2vP3s6trsSGpWAxw3r1-4m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508280095

On Thu, Aug 28, 2025 at 06:38:03PM +0530, Sushrut Shree Trivedi wrote:
> 
> On 8/27/2025 7:05 AM, Dmitry Baryshkov wrote:
> > On Tue, Aug 26, 2025 at 11:51:02PM +0530, Wasim Nazir wrote:
> > > Enhance the Qualcomm Lemans EVK board file to support essential
> > > peripherals and improve overall hardware capabilities, as
> > > outlined below:
> > >    - Enable GPI (Generic Peripheral Interface) DMA-0/1/2 and QUPv3-0/2
> > >      controllers to facilitate DMA and peripheral communication.
> > >    - Add support for PCIe-0/1, including required regulators and PHYs,
> > >      to enable high-speed external device connectivity.
> > >    - Integrate the TCA9534 I/O expander via I2C to provide 8 additional
> > >      GPIO lines for extended I/O functionality.
> > >    - Enable the USB0 controller in device mode to support USB peripheral
> > >      operations.
> > >    - Activate remoteproc subsystems for supported DSPs such as Audio DSP,
> > >      Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
> > >      firmware.
> > >    - Configure nvmem-layout on the I2C EEPROM to store data for Ethernet
> > >      and other consumers.
> > >    - Enable the QCA8081 2.5G Ethernet PHY on port-0 and expose the
> > >      Ethernet MAC address via nvmem for network configuration.
> > >      It depends on CONFIG_QCA808X_PHY to use QCA8081 PHY.
> > >    - Add support for the Iris video decoder, including the required
> > >      firmware, to enable video decoding capabilities.
> > >    - Enable SD-card slot on SDHC.
> > > 
> > > Co-developed-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > > Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > > Co-developed-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > Co-developed-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > > Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > > Co-developed-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > Co-developed-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > > Signed-off-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > > Co-developed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > > Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > > Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> > > Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> > > Co-developed-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
> > > Signed-off-by: Vishal Kumar Pal <quic_vispal@quicinc.com>
> > > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/lemans-evk.dts | 387 ++++++++++++++++++++++++++++++++
> > >   1 file changed, 387 insertions(+)
> > > 
> > 
> > > @@ -356,6 +720,29 @@ &ufs_mem_phy {
> > >   	status = "okay";
> > >   };
> > > +&usb_0 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&usb_0_dwc3 {
> > > +	dr_mode = "peripheral";
> > Is it actually peripheral-only?
> 
> Hi Dmitry,
> 
> HW supports OTG mode also, but for enabling OTG we need below mentioned
> driver changes in dwc3-qcom.c :

Is it the USB-C port? If so, then you should likely be using some form
of the Type-C port manager (in software or in hardware). These platforms
usually use pmic-glink in order to handle USB-C.

Or is it micro-USB-OTG port?

> 
> a) dwc3 core callback registration by dwc3 glue driver; this change is under
>     review in upstream.
> b) vbus supply enablement for host mode; this change is yet to be submitted
>     to upstream.
> 
> Post the above mentioned driver changes, we are planning to enable OTG on
> usb0.
> 
> - Sushrut
> 
> > > +};
> > > +

-- 
With best wishes
Dmitry

