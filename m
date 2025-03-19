Return-Path: <devicetree+bounces-158932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F049A6895A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:22:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 655C6177480
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45F7253356;
	Wed, 19 Mar 2025 10:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HD0YSCxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5182C17A311
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742379718; cv=none; b=La1kKw5ogsikYbyBf+om+ydGiUnFZE8q2JMcTMRClShFxLHNrnEinXsvwI6JiHwq2R8hvZtLfgB5XuJv2aJtW3DCABW2R1gZDmI824hpg69ISyCGKcBfcQkSdb6JuZ6V232CNi5azHuLbk5Ua7VN36Sq6EYQ6W2ktDJgaGx70oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742379718; c=relaxed/simple;
	bh=vdBp42KU+xVL9lOmtUOGglOSCQwElRtru87JSPH4UwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S+rlX4F9xFTFq+vHPNhDddgyu2c+1DgSAIRVin8ucffmdME1D4BhNrHdIIyLIYEIuqg24nHgbIBt5ZW//Uo5HT7YEH/OX9GWd6Z9umseuRIB8zM7AGHHgdUyMoBoIVv3Qx0SoTnycDrXWpq3LFgAE7zxt+sAIJhmwONggbQdIH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HD0YSCxb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4loqT010005
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:21:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SXb6GCSHn6NIJ/A3PEZrRmG6
	bR5GGAFqRBpO3/iDlR8=; b=HD0YSCxb2GY7kIUPmugZugq1hkOOCaQLyFJhsNME
	e8JM7PodWZv1h6VqX2dcD33aBIL4F3ML1f+D4Jhlxql7tnYY3GF20P0wQScN1PFV
	iLRH27Xx3mrD5gbTJQVhcy62r5g68r8VgcjYD66tkE+3bYYtBkhA1iGdc2AkR3yP
	1laaFoLMSOrqd8K9PEVLcpZhBEUCq6eaUb45uQ9x2s2Nx4M8u+gTCHppD47M1kyr
	C4XTzq8WbTiBc5+cW1WwMYh7v42uctclOKY5GfHH13Ia8hZ0jvxuhaL9clmkWjOd
	YpBDtpEMd+Zu5LLx065J7SEQfg2t9OIxVifLuDTkUL6dqA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxj2wg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:21:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47689dc0f6dso122803951cf.3
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:21:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742379715; x=1742984515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXb6GCSHn6NIJ/A3PEZrRmG6bR5GGAFqRBpO3/iDlR8=;
        b=Aq8N1jK4ZZ9Er193aejmgvo/sTQypPni0w/+FUCD69SAYrMME1KoH9a/apCussEvdU
         KkKDysZFXSSBXWjmMk2pVwOWFF5OLgXKUy6lItJS6IwaTTWMmyWFjh4WEONTfI91/B8s
         ul6h8ltc13w0r4HaRCgvv8GVm7OaF49kcQyxNZDY+AMuXF0PZHKLm3Xysl7rlzxL1vfk
         627e13sVO5bMAQ5qFAKm0k4TFHkRtfb8sMhENskxvBJPC2TIJwC4s+BWixjsZ8+EurV1
         6ddmgojfAJCirjlVhutkPV65+9IxoRUnudKW08zng1Z3O+y13zamXUcRCbmhA0+2tBX0
         tojw==
X-Forwarded-Encrypted: i=1; AJvYcCVkGF+wu1TovdlM40eU32MHNkE4yTp8Sxw9JHInUI6zQTQAAJmi/4doJG9XjIeBet27i4MYU0+mtD3M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw77gPBlhamo4Yyy2rAfvfkksUdwORw69FZLYiBniMXHpRJd0J4
	syig/D4Uvru1uSX9MNS+X5ls7s44G7otXcMzV3RFzL3n2vm/AdkVxrTytGbW/Yv/yRivAfISCMe
	MGMfoijYJdfmI8HViLlVndjrvpqG4p51SJzT/vDOS1kzsS+gbND34nUE4g86p
X-Gm-Gg: ASbGncvkl1mLKgc87JaJGk9d8TSEmtwoaqFlMu6KoGesgRGizUIGrlOEKvnlciAOCrI
	6dt5t9EfIwzoq6AY1RjBcN83XQewvcNvpGbytKSYSp0yanFfOYAEIK1xfmcpNt69hLtORaVnPg6
	FmxpoT9eFUT8b2KTSt8aY7ix0/5a0NyOdVmM4ExktNh6CH8eyBrTT+vKrSjwIwAiSdKGuq3qNTu
	iza1pezvkGyrdu5b/aAyt6+7RYrZZCgS28cV6WKzyzsB8nJmbyVo8DoN6mEc3lt8kp2EgdDzeOT
	YI83BKEO7FqyJOm3UVYViYFnJiQmNycXuSMuVwZktAoB9vhQyAXf8SwwpO0W3U/9gornHwlLd0T
	8uUc=
X-Received: by 2002:a05:622a:5c93:b0:476:6a3d:de2e with SMTP id d75a77b69052e-477083333f6mr37440831cf.14.1742379715138;
        Wed, 19 Mar 2025 03:21:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGU7oer480oyupxz0AqS/yum3pFWtzjAvJwW2neq+hJ7os5A2Zxq1giCSqQVIaJBMUAxSTs/Q==
X-Received: by 2002:a05:622a:5c93:b0:476:6a3d:de2e with SMTP id d75a77b69052e-477083333f6mr37440261cf.14.1742379714636;
        Wed, 19 Mar 2025 03:21:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a8b11sm1959902e87.30.2025.03.19.03.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:21:53 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:21:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 02/10] arm64: dts: qcom: qcs6490-rb3gen2: Add TC956x
 PCIe switch node
Message-ID: <xkjozxbchqi6mhstqctejfk7vmwux4kdff2nyrcu5nxqzxv73z@agb7rbapsvx2>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>
 <kao2wccsiflgrvq7vj22cffbxeessfz5lc2o2hml54kfuv2mpn@2bf2qkdozzjq>
 <8a2bce29-95dc-53b0-0516-25a380d94532@oss.qualcomm.com>
 <CAO9ioeW6-KgRmFO93Ouhyx9uQcdaPoX3=mjpz_2SPHKiHh3RkQ@mail.gmail.com>
 <16a9ff11-70dc-22e9-bd3c-ed10bf8b4fea@quicinc.com>
 <hkm76yogjp6fjrldkyatekhg7orcd6wkc43d2e7cwzqfrdxjwh@b4f2rilmf6gh>
 <303194d4-d342-ea4c-0bb6-5f5d0297ba23@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <303194d4-d342-ea4c-0bb6-5f5d0297ba23@quicinc.com>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67da9ac4 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=A6lhvS5bGOSaI-HtR3sA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YpvHR74nAVt-ziIVeJdHqUW3or8ULmTp
X-Proofpoint-GUID: YpvHR74nAVt-ziIVeJdHqUW3or8ULmTp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503190071

On Wed, Mar 19, 2025 at 03:46:00PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 3/19/2025 3:43 PM, Dmitry Baryshkov wrote:
> > On Wed, Mar 19, 2025 at 09:14:22AM +0530, Krishna Chaitanya Chundru wrote:
> > > 
> > > 
> > > On 3/18/2025 10:30 PM, Dmitry Baryshkov wrote:
> > > > On Tue, 18 Mar 2025 at 18:11, Krishna Chaitanya Chundru
> > > > <krishna.chundru@oss.qualcomm.com> wrote:
> > > > > 
> > > > > 
> > > > > 
> > > > > On 3/17/2025 4:57 PM, Dmitry Baryshkov wrote:
> > > > > > On Tue, Feb 25, 2025 at 03:03:59PM +0530, Krishna Chaitanya Chundru wrote:
> > > > > > > Add a node for the TC956x PCIe switch, which has three downstream ports.
> > > > > > > Two embedded Ethernet devices are present on one of the downstream ports.
> > > > > > > 
> > > > > > > Power to the TC956x is supplied through two LDO regulators, controlled by
> > > > > > > two GPIOs, which are added as fixed regulators. Configure the TC956x
> > > > > > > through I2C.
> > > > > > > 
> > > > > > > Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> > > > > > > Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> > > > > > > Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > > > > ---
> > > > > > >     arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 116 +++++++++++++++++++++++++++
> > > > > > >     arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
> > > > > > >     2 files changed, 117 insertions(+), 1 deletion(-)
> > > > > > > 
> > > > > > > @@ -735,6 +760,75 @@ &pcie1_phy {
> > > > > > >        status = "okay";
> > > > > > >     };
> > > > > > > 
> > > > > > > +&pcie1_port {
> > > > > > > +    pcie@0,0 {
> > > > > > > +            compatible = "pci1179,0623", "pciclass,0604";
> > > > > > > +            reg = <0x10000 0x0 0x0 0x0 0x0>;
> > > > > > > +            #address-cells = <3>;
> > > > > > > +            #size-cells = <2>;
> > > > > > > +
> > > > > > > +            device_type = "pci";
> > > > > > > +            ranges;
> > > > > > > +            bus-range = <0x2 0xff>;
> > > > > > > +
> > > > > > > +            vddc-supply = <&vdd_ntn_0p9>;
> > > > > > > +            vdd18-supply = <&vdd_ntn_1p8>;
> > > > > > > +            vdd09-supply = <&vdd_ntn_0p9>;
> > > > > > > +            vddio1-supply = <&vdd_ntn_1p8>;
> > > > > > > +            vddio2-supply = <&vdd_ntn_1p8>;
> > > > > > > +            vddio18-supply = <&vdd_ntn_1p8>;
> > > > > > > +
> > > > > > > +            i2c-parent = <&i2c0 0x77>;
> > > > > > > +
> > > > > > > +            reset-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
> > > > > > > +
> > > > > > 
> > > > > > I think I've responded here, but I'm not sure where the message went:
> > > > > > please add pinctrl entry for this pin.
> > > > > > 
> > > > > Do we need to also add pinctrl property for this node and refer the
> > > > > pinctrl entry for this pin?
> > > > 
> > > > I think that is what I've asked for, was that not?
> > > Currently there is no pincntrl property defined for this.
> > 
> > Does it need to be defined separately / specially?
> > 
> yes we need to define this property now.

Could you please point out existing schema files defining those
properties?

-- 
With best wishes
Dmitry

