Return-Path: <devicetree+bounces-237546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D7BC52045
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9F08A4FCCE2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3792D2390;
	Wed, 12 Nov 2025 11:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HBh1CGN6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZvdFFM5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DD825D208
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946157; cv=none; b=TBEv5V5OpsKIcADBxyx1nOj4kQSjN0QUVd2FakdLZkOGDbPLoaaMwDIXWTsZBNTw+/W+HqGSjPVy0yTw4Yh1gefHwJh65ggxtWxZhy1ow+Vp4U44CX/aHrSVlioFv6cyfg30NikkOgh4hqALPuP3dLPRL76rqz+eQFKnCcfxHOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946157; c=relaxed/simple;
	bh=Ap9O+/7wqWhNAdtJOhlmX/Bb+eHxo4JzJ7cSwHL+I90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CK1mOsSpxi/GuXyXpJ//Q7Q1RjTXBYjDF5et+c3WQImLVSetCDZJRBYZSjWNHwNrt1bB0sRw2iw9KffENG/YSSUxeozfn+K8XYf4iuRn/8NZPZYeTqPqx4fq64VauRfutiXUXJUL141I8F8X27MFFohUPuZg/KKPe9+NpvLDTvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HBh1CGN6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZvdFFM5+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9T1aG4076895
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:15:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ml+7ACGSsIoRB5tIYgTA6Iwt
	Q4AbhO2ugzv1mrLcl/A=; b=HBh1CGN61fVZa5A7AWCrPuz5d2M2CiITxKu4Z2dX
	2JNvbsXNuBum2VyWbXBMalHHirqNQoPAUT4OQ+TooWuvJq9Soss6e4W/fw3osbg3
	1mvyuFxHTMYBOXiguVJphiVdJg9swMVkQugTu5LQFBEb4p8mtBZ4vq/l+i8qScMy
	dVJxTwe2cXGJfu3byOTRCGIO1vuZz/CEV8tJkXBEOOV8kJBe+Ib/KXYj2ZpeGKxB
	PSXv2HTwXhH1Snf1JiZ3Y9yKGPcPhUXqA+TvuEeDtwz1woZ0rfXKrlfqcmU6UyRK
	UfUgYPUF7wcD/YK3hPTDbFNLvZL/Fxe6qsmMADb729PV9Q==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acguahkwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:15:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b9d73d57328so703828a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762946153; x=1763550953; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ml+7ACGSsIoRB5tIYgTA6IwtQ4AbhO2ugzv1mrLcl/A=;
        b=ZvdFFM5+KSw2NKqrJGtaLAM9n/miCSYbBI9jmCSonsmpyEogWXEPCLdqrmZhp2CuQk
         dWLS9lKHPy5xy2tTfeRQVCLJujAX7KD0RELh5+M17cOjFaxN3ItWcOF/iu1ahGmhBVYr
         Os2uzm8nSHUG90VCbGXkzGe3jVX/7v27egPesT7EtJnDMP6urrCi7LqwS09lKY8R59tF
         E5Gwg3L5vwHNPyumq+9lvA9EC/rwEId/ATkQJrbV07NdrPOosE++MqkvGOeCbN2EmP2E
         eeOU0h8Ak3Qf92SLPlctk+TUEZeN2P8mzESrNg1LCiy/sf9OYw3N2+h5Xdohys0eoDvD
         iAWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762946153; x=1763550953;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ml+7ACGSsIoRB5tIYgTA6IwtQ4AbhO2ugzv1mrLcl/A=;
        b=sO61PwdSCuDh3wUZoh6vZ4Z4Ig6obcYBNbEnc3nRK0Qxn6eb7Ga1tSWU79fAQjKmiQ
         8eImsdFl7/BpzdIESIF8ImT6uF7R2g66+pa0a9kenqJDwqRIwcOv/axlJB8fThJSjQPA
         3bm8XxByV9Vvqs3rPcgi9V5WcFnaCByJfKDZOciKH4Fg+SzOa6sSkWZFOwshiDD+Eakj
         3DzKtIXV1KjJhx+OqB6REfKXuj9/nhk9SWx7n+q60DrNSbOHesGFRRcS3/CGfDAkaqUu
         qWe7ywYlqyCiw8guMugfPzHdyroKqwySAmjBIDSeb8s30bxWkrjnfY/WtEHeL56Y3UAG
         5oQw==
X-Forwarded-Encrypted: i=1; AJvYcCXsKiT6wkjXO1Tsdtjo+mDHOYNC4Ia+i0o854W/R+AlU1p1VcWGnXZRQ+Ko1JyGDj2SLdTP8hVb4Biv@vger.kernel.org
X-Gm-Message-State: AOJu0YwME602fmkGaOvGGq91w+ono+zWe9kEO230+73QLt3FmSuJne44
	LAlHex3kpjEM4HtJ97bhyvdm2MMQtfFrVEuSSoYSz7aIPg/uW/+hCWs76YdxHje/FSsZIwUfuLd
	Fa43I6ytXT0lF9sRnHc/SvKyR9mNLyfswqmjhFeQlgcS77ZC++vKMFzRKgCYE+b8j
X-Gm-Gg: ASbGncvsMpLqNO3FqONDuqjwPa6WapYhELtqAy5m+AetkQF4n4uhSEugBdWYEqUeooV
	ddYft9ziWxAJK0vOpnA2mdN5xw9jwhQwZa3vhN1hVYBoY9XLvg6GnMiMHXcGHt0mDDibIsf+9Lm
	wRHAX09ARqO7XYZ87oqU2/+4gNi5D4J/+Uep+dUiJ2IF+hdXkqgnoA9tQUNVAqUT6gB5VmqM7yz
	Kri+6uOj0E10Cbp8awPtUnkgJdSNmJGvVwmvrilHM3hbwCYbAYxyjSMgenzaGTj7D9sawKnOj+8
	QUrtG7tNixR4bq8fOzQtZIzmw413PpP4e6aAOShKaDdNh39OPBMGErTWO8/QicLRGtCNKa+l8yn
	XpyZL+jh/LR6EdWtYSQO/tnGOSQ==
X-Received: by 2002:a17:903:944:b0:28e:9427:68f6 with SMTP id d9443c01a7336-2984ed82890mr31516835ad.27.1762946153053;
        Wed, 12 Nov 2025 03:15:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQo4qACRIp+OedhfY/26n73XxSpnD0V+0fp7zIBbHeBesKIBwMdeFL9nZ+Ozf7XBOO8UitOA==
X-Received: by 2002:a17:903:944:b0:28e:9427:68f6 with SMTP id d9443c01a7336-2984ed82890mr31516185ad.27.1762946152292;
        Wed, 12 Nov 2025 03:15:52 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dbee127sm27439685ad.24.2025.11.12.03.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 03:15:51 -0800 (PST)
Date: Wed, 12 Nov 2025 16:45:40 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v17 09/12] arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI
 SYSTEM_RESET2 types
Message-ID: <20251112111540.w57ygzrvc6m3qbrs@hu-mojha-hyd.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-9-46e085bca4cc@oss.qualcomm.com>
 <20251110122824.5je5jfoanivl6xrh@hu-mojha-hyd.qualcomm.com>
 <btvknf3tcqhgxzf7ckyvfwix6hxle2bs4whyayan5haaejo3sm@gnbszdys32lm>
 <20251110161950.ngs4ihn3asijoqks@hu-mojha-hyd.qualcomm.com>
 <cvfr4zaceknma6camborq4ro3lwbx3dfps2zjagwhwmvwoxriz@jwybwtzdd46u>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cvfr4zaceknma6camborq4ro3lwbx3dfps2zjagwhwmvwoxriz@jwybwtzdd46u>
X-Proofpoint-GUID: S72-PEXr4n0w3Z97o8Z6vGX8TUKwOzfH
X-Authority-Analysis: v=2.4 cv=ao2/yCZV c=1 sm=1 tr=0 ts=69146c6a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Kkq7PJKcI6aLCMVX8OwA:9
 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: S72-PEXr4n0w3Z97o8Z6vGX8TUKwOzfH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA5MCBTYWx0ZWRfX3QjNZwI6HT5f
 q7lw7D7hZumWxihzvmbkEyiHUqwV6yWgdVgpaF2wn6VK0PD387siO4kuvlr7n4GV8msLtFi/K35
 XTpXcQJ76eIAo3gHEbiEBgR2xN8QTt7Z0vcgocoXyn9syIYXHTg6A2CMWPXvB/hmuA6sDiberVx
 OIGBv8YMXL6PSIoYsVh3HOuL4cQpkXCQiOki8oht/Zou78XKjlRzNlcVufqOWZYVG85Zj9AaC57
 KLB6Qk3N8T48T+yQCx6zxTkWI+Rkr4wMC7JHx++WB0nFy2DIfvglRlp2FwyvYzSqGuo8yLEmXvy
 wneESKUjsLNkSp/dHJM+oLT4dsAVhDQ5/cL4mTJGsikL/cD5vv8hXiuUgpI2TdZq2MF18EdJjO+
 Ji7w4bQUgOmbNqHC6ajWBotRoLqaVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120090

On Tue, Nov 11, 2025 at 10:52:34AM -0600, Bjorn Andersson wrote:
> On Mon, Nov 10, 2025 at 09:49:50PM +0530, Mukesh Ojha wrote:
> > On Mon, Nov 10, 2025 at 09:30:26AM -0600, Bjorn Andersson wrote:
> > > On Mon, Nov 10, 2025 at 05:58:24PM +0530, Mukesh Ojha wrote:
> > > > On Sun, Nov 09, 2025 at 08:07:22PM +0530, Shivendra Pratap wrote:
> > > > > From: Elliot Berman <elliot.berman@oss.qualcomm.com>
> > > > > 
> > > > > Add support for SYSTEM_RESET2 vendor-specific resets in
> > > > > qcs6490-rb3gen2 as reboot-modes.  Describe the resets:
> > > > > "bootloader" will cause device to reboot and stop in the
> > > > > bootloader's fastboot mode. "edl" will cause device to reboot
> > > > > into "emergency download mode", which permits loading images via
> > > > > the Firehose protocol.
> > > > > 
> > > > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > > > Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
> > > > > Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 7 +++++++
> > > > >  1 file changed, 7 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > index 721a26d49ccaeb1429e2cc1c3a5c8d9517da3be6..cebdedd5d614b9efb6dfbee91dd67f3c3e322a38 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > @@ -935,6 +935,13 @@ &pon_resin {
> > > > >  	status = "okay";
> > > > >  };
> > > > >  
> > > > > +&psci {
> > > > > +	reboot-mode {
> > > > > +		mode-bootloader = <0x10001 0x2>;
> > > > > +		mode-edl = <0 0x1>;
> > > > > +	};
> > > > > +};
> > > > > +
> > > > 
> > > > Make sense for this as it leverages sc7280 and adding it there would not
> > > > have made sense.
> > > > 
> > > 
> > > Why wouldn't it make sense?
> > 
> > It is better to add for platforms we know their firmware support this
> > from day1 and not add for something like chrome or any other variant of
> > sc7280 where this support would never come or not tested.
> 
> So SYSTEM_RESET2 only exist in newer firmware versions and hence this
> isn't (and won't be) broadly available in SC7280 devices.
> 
> That would be excellent information to put in the commit message, so
> others writing Kodiak dts doesn't feel the urge to copy this and debug
> why it doesn't work.

Sure, @shivendra please add this information in commit text.

> 
> > > 
> > > > Acked-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> > > > 
> > > 
> > > Please read submitting-patches.rst about Acked-by, and use Reviewed-by
> > > going forward.
> > 
> > I was acking the idea of this particular change in platform file compared to
> > other patches, if above reason looks fine, can be converted to R-by.
> > 
> 
> That's appreciated, but per the documentation, the meaning of acked-by
> is different.

Sure..

> 
> Regards,
> Bjorn
> 
> > > 
> > > Regards,
> > > Bjorn
> > > 
> > > > >  &qup_uart7_cts {
> > > > >  	/*
> > > > >  	 * Configure a bias-bus-hold on CTS to lower power
> > > > > 
> > > > > -- 
> > > > > 2.34.1
> > > > > 
> > > > 
> > > > -- 
> > > > -Mukesh Ojha
> > > > 
> > 
> > -- 
> > -Mukesh Ojha

-- 
-Mukesh Ojha

