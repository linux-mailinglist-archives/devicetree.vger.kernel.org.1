Return-Path: <devicetree+bounces-213509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A86B45958
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 15:41:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661B917187E
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 13:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D79FE35207C;
	Fri,  5 Sep 2025 13:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n9B0clsF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127022750F0
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 13:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757079688; cv=none; b=CGQ1VR6VLnf+FFYtDsyOzul1JGsmrbrv9IELA+r12O62X+C7AbtAbUljDBjbdVX8lJfa/8jIeFt/TZuO/Mg39S5LjSZhUEU7oSZK7Z0oFNDkX8Pzl9OxIShPA6AXNPXRhUaim789j3l5eWqQ2auVlb5nTrhlozxZC+U2A+AW0UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757079688; c=relaxed/simple;
	bh=jLry5UhH6/hPCvtIbxA4Y7EVMcaMoizeFGKLOfELDV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KAdlapY+6/EdQh0W424wuPXWkYAwgsmlp1asNwB+bDq3oehzQifpwqgza/MbgQy8PFWcPQWWHLpS8uVGDZoLDFaFAFnL6v920xh0FArAK2SnAsE81+fV6cgYHk+2S0FHQVcLdaDPBooYujnAi8c4ZGx0t2dII6wwyE6b8b7LsCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n9B0clsF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585792CX008152
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 13:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9nairzrxrLx+7AmhxXAPpkwSM1Xt+xwotCDD82OGERA=; b=n9B0clsF/5Xvf6fQ
	HgVu6KdMH+j+jIb0eHfcKqZWA7cOthaiEiUELXvxcHzTcBJGv1S4zBLh8FHqTHDZ
	fYHD8hgC3RpgGcujbi+O/3mbnVFgp3qshrVwPJLrKrN+xCE4j0F5LVsmOJ3fLTML
	dKP1EXdtxf695XzIP0bS/Hd5g4VaGzvLmdJHZHoFkXz7FqvUXUcxBrPpFRzewgO7
	FFTZuSI1n5vd36ufu+7SDnQeDZZ3YGSYy7LHPpJQj/k5ku2Tgd5TaQH8mOKHm9Zd
	utyuf5ciEYzYC54sWCBGappjxvgW5kBm/Im69b8rHDUPx/0km/wbzZM7wtYZ/oU5
	wOdf5Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmju8c4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 13:41:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b49715fdfbso68627511cf.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:41:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757079685; x=1757684485;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9nairzrxrLx+7AmhxXAPpkwSM1Xt+xwotCDD82OGERA=;
        b=rPvG/IC9vv2ExC1XceMQohdy3mym4MGk1SJOWPQTxzuJ/ze1A7kntQ0IyLFO8rllzO
         n09zclRoMCwi2grjtIu70yyqVVgsl/BgDvwTlWY/HzVhucgrdg9eiIVz16o+Jm1wUunL
         5c86J48dHQkJBgmukGJ5GZE1I/ne7eUyudC1IxmZC798v37Zjsusov4tFodmEbZkx7O/
         /mMYAXOabK3Ne1OJA9YhNGFU70OYOs+gaJ+aHSPBT+Tl+TcnNL9TMy3NIvXQSoGaXN12
         IyAvazWmU5YmFzdEaWdFROrf8biPPdyv1xfkADEWkjbPJ8qY6gIyEp+1qrRyQQjIq5tU
         iNaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsEIMOZSzFM+mjNWKPZ1B1nIg+WKlzRGm+zKGMOV7++MP48tV+SXMLg6exNPWVIlcq7j2URNfeRCFx@vger.kernel.org
X-Gm-Message-State: AOJu0YzYISFGmh4LHK/bWAnjH35Mi5G/GAZsBhtv6Khpbzn5sxSJWELe
	mD826+8zCymozzW8mecG8aozfWINiaUayLdsp+aiSCEd6H5f/OqGqpw2uXE7eMFMEj1lJ4OtRhw
	Ot9irnq8PAuFJFW3efU/9teKUpUfm7ypmOLwLl0L8H2pEmFEde4sIamwU48RqUe9c
X-Gm-Gg: ASbGncu2c91mgW3PzU1mZTWU9O6KljQ9JPyf9pKeE0qnTkfpWjvkbIkyc0INA1+BMSo
	jUhTHdrWGLeKZNoswdMFZ/69X/zdmkVxJ5eDksm+0qLBjSzTmiIjCoA4NnhFpsNbq7SpY845rhR
	xxbkdS0bwAvK8vjhNhcR1LvKEQimQO9V3YEtPkYBXZKiNACFwtw4T82slZ8VN6ElnT0kp7/fvh3
	xFNgSz2Ei3Xn9dSMZTxFJ50i0uf1HbrVhfm3n2re3YTiI34hkrTFDlim8EIyN4Bvo5wH0XtXHC/
	UVD++PWk6p0v3QWBtrGjHAXVo7vVS5r894NUq8RB8kNnyU5K4U4755+bPFHjAf8TTWv3gQRQE9h
	bLaGmn5mATc9WkctaksN+m3Ejb9STLzgi1MAsrOiYfrxq8cDk4xx8
X-Received: by 2002:a05:622a:a10:b0:4b3:285:91da with SMTP id d75a77b69052e-4b31dc737afmr311154921cf.68.1757079684698;
        Fri, 05 Sep 2025 06:41:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuMjYizg5Pnq40M/qfidOWisBr2dPqOMM0XLBwoecs1KjkC0Nk5K5IjnyM5w+W1vLbkO4LuQ==
X-Received: by 2002:a05:622a:a10:b0:4b3:285:91da with SMTP id d75a77b69052e-4b31dc737afmr311153971cf.68.1757079683724;
        Fri, 05 Sep 2025 06:41:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c89sm1784613e87.91.2025.09.05.06.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 06:41:22 -0700 (PDT)
Date: Fri, 5 Sep 2025 16:41:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Arun Khannna <quic_arkhanna@quicinc.com>,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add Monaco EVK initial board
 support
Message-ID: <ow7gdrkissn4npgbua3krdtkexvf47yu57e6luf7bizfvcvbge@33uwiohzlunk>
References: <20250826181506.3698370-1-umang.chheda@oss.qualcomm.com>
 <20250826181506.3698370-3-umang.chheda@oss.qualcomm.com>
 <ao3nb3xkeutqetqx7amlfbqtvhuyojfvzm4prsze2mhgb2rpnc@s2bsigcrlxzo>
 <CAHz4bYs7Jy_NXcn6bOCHfxG=YoO+5vcAMUYEcptkJK+Cx+pA9Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYs7Jy_NXcn6bOCHfxG=YoO+5vcAMUYEcptkJK+Cx+pA9Q@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68bae885 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=5rBl_X4QI-NXlREZvckA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: vO_IhEAYdRpPdSCUns6e3vB2uO5V9GFu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX6rERrQEapzjg
 jpCxDrz490Sx3P1RdIA98zTu8rFbQmPsQSyN6SWQF37Ej9oIZ9XgmII/o4PQWYr/GsmWqaYLndP
 7Iu0qVRKgveRlSN+yEAEYL3AjruW6IZqu4CGUv+wyzi4Q/fgQvKwgHvniaXWTGK14IcD49toVy3
 lPNl6IaozFjSNoHIsiU72ExrsN4aWWECtcb+v12hDn+50vLmNF/QzmSfFstcSTN2aumVsud3CSb
 PIZ8cT+VAE5nml+npU9F+NvWeYbSyehRKPfH8Yeglji5fIZ2ognky/GOYp49u9pqwS6+8WiL/jh
 XPapSTeniqWQvOylBKnOqua85U0LhyJ/w/RF7SGK47+jhxVPHkuyWaaWZsbFyGh++6TRMRtF+Zu
 677xLmLz
X-Proofpoint-ORIG-GUID: vO_IhEAYdRpPdSCUns6e3vB2uO5V9GFu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Fri, Sep 05, 2025 at 06:54:25PM +0530, Swati Agarwal wrote:
> On Wed, Aug 27, 2025 at 7:13 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Tue, Aug 26, 2025 at 11:45:06PM +0530, Umang Chheda wrote:
> > > Add initial device tree support for Monaco EVK board, based on
> > > Qualcomm's QCS8300 SoC.
> > >
> > > Monaco EVK is single board supporting these peripherals:
> > >   - Storage: 1 в 128 GB UFS, micro-SD card, EEPROMs for MACs,
> > >     and eMMC.
> > >   - Audio/Video, Camera & Display ports.
> > >   - Connectivity: RJ45 2.5GbE, WLAN/Bluetooth, CAN/CAN-FD.
> > >   - PCIe ports.
> > >   - USB & UART ports.
> > >
> > > On top of Monaco EVK board additional mezzanine boards can be
> > > stacked in future.
> > >
> > > Add support for the following components :
> > >   - GPI (Generic Peripheral Interface) and QUPv3-0/1
> > >     controllers to facilitate DMA and peripheral communication.
> > >   - TCA9534 I/O expander via I2C to provide 8 additional GPIO
> > >     lines for extended I/O functionality.
> > >   - USB1 controller in device mode to support USB peripheral
> > >     operations.
> >
> > Is it actually peripheral-only?
> Hi Dmitry,
> 
> HW supports OTG mode as well on the USB0 port but for enabling OTG
> mode , it requires two things, one is role switch support and another
> is VBUS supply on/off support. Both will be taken care of by Type-C
> manager HD3SS3220. Currently, VBUS enablement support is not present
> in the driver. Once that support is added, I will add OTG support for
> the USB0 port, until then we would like to keep it in peripheral mode
> for ADB support.

Add comment to the DT file, please.

> 
> This is the same change which was discussed for lemans-evk [1] applies
> for monaco-evk as well.
> 
> [1] https://lore.kernel.org/linux-arm-msm/d6816cc6-c69e-4746-932e-8b030ca17245@oss.qualcomm.com/
> 
> Regards,
> Swati
> >
> > >   - Remoteproc subsystems for supported DSPs such as Audio DSP,
> > >     Compute DSP and Generic DSP, along with their corresponding
> > >     firmware.
> > >   - Configure nvmem-layout on the I2C EEPROM to store data for Ethernet
> > >     and other consumers.
> > >   - QCA8081 2.5G Ethernet PHY on port-0 and expose the
> > >     Ethernet MAC address via nvmem for network configuration.
> > >     It depends on CONFIG_QCA808X_PHY to use QCA8081 PHY.
> > >   - Support for the Iris video decoder, including the required
> > >     firmware, to enable video decoding capabilities.
> >
> > I don't see firmware being declared here.
> >
> > >
> > > Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> > > Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> > > Co-developed-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > > Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > > Co-developed-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > > Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> > > Co-developed-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > > Signed-off-by: Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>
> > > Co-developed-by: Arun Khannna <quic_arkhanna@quicinc.com>
> > > Signed-off-by: Arun Khannna <quic_arkhanna@quicinc.com>
> > > Co-developed-by: Monish Chunara <quic_mchunara@quicinc.com>
> > > Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> > > Co-developed-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> > > Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> > > Co-developed-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/Makefile       |   1 +
> > >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 463 ++++++++++++++++++++++++
> > >  2 files changed, 464 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk.dts
> > >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

