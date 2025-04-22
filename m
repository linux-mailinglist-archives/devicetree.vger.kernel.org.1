Return-Path: <devicetree+bounces-169331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BFAA966C8
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 13:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80AA917E1FB
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 11:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094D8274FF6;
	Tue, 22 Apr 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lv9deyP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A222749D1
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745319772; cv=none; b=rtb6nN0MaPpPrEJUPHF0/4hKmyJIStCt2wc8IHfgefR7KjhgfQqQSQa1Xp1rbIaxCK2eaZTN0VPIfQ6hhjrZquBUil1Q/xEpcnbfbDzDnUdEc3a6Z0XLyEzxwlAGx8f7qfDdK24zJzejitj/3ddl7+A4Qibx3xKtZN/SDLIK1uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745319772; c=relaxed/simple;
	bh=X1Q1xjwPG2pD1HclX9JEf+yJ3b/ehvuIOj9c3epR+XY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IbsJ6qjP9fMQROgnqH6cIyl2pfkP222IaLr9zYycUHnKtmxE70ZxC8HBRbj7KoLW5jNYZbJ/h9mBRNOjh7Le2Q45qYrUt9gSbihcFqWWwOjNUGRRX3JMNIh3FKj/tJwewVdBQ2h/xAxRaZLwGV0ZHXRxKZ368n4ae6Dq25MDW7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lv9deyP0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53M4OoDB031778
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sJhtSdw5nK1pkgx2a60KWDZ+
	+Ku84pOdAteitB7NlXw=; b=lv9deyP0hg7JX5LqUsV8SP8lgKAQfS9cGDSlrN24
	KXiAQzT1X5p2TU4H1meirbYwqPraKBqT/HgqEY3tdBjxMT9OplOHv75wdVVztgA+
	VBahFk6NYoR4/K+nE4FCPJhzvEJjqBzG0UI71PIY1HUcMSCdSa5OPuG9W7PoPCw2
	Gqe7bO8lrdeUBwgOhnlu0iN/U7Yh1GSK69iXvRYhKiUmxtExDc6GKJxiVS9u7BV6
	ggAV74OWgBSFEZVKcCm5sgLfpmsHnvrOvE1lQF9AKYEyts6L8Nht6TyU1wulKVDr
	l4movz6vzHEFwGInOy1QKvEgQlIbjid3tGGSHb6rJzkzpg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4641hhqbsp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:02:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c09f73873fso762000485a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 04:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745319768; x=1745924568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJhtSdw5nK1pkgx2a60KWDZ++Ku84pOdAteitB7NlXw=;
        b=w9hZ1pSrwKwLbIVkzLUpg8ljZmvxWknTavdyoCyFL2oNSoCY/ag3zxcMCHmc8bbty2
         T5ecR2dRHEVqqcLqeORcYmy1/vbIbWIzMxfOrnDvFrj6ZsNRNxUHrH4QOe3xcmpP2z86
         kor+A2urtZ+fQ9A6t6M+RUQ2cK/KvyqTtAGLHhc7syDqKEiXYBqfjmc+A2ga7IjnX4vj
         gd2Hqsf3qahIYSHZ2WPzgezuWaLSJ0ctHOYMwROnYx9M3zmqfTteLuDnZoHrf8GleWbV
         pOa9+PQu6gF9QCY6qL69xDuzPFafej3i+friTxaKIzj+SSHSYa2RsaZ52YK8LsE+3nNv
         p6Fw==
X-Forwarded-Encrypted: i=1; AJvYcCVzzYIha3lXhKM7Ar1JPUOeJDAPhXSJZzOr0+OGx8vx+U+jkMYzG8troBUjofSOL4kllJoePaxo54cG@vger.kernel.org
X-Gm-Message-State: AOJu0YyVpXexVYuvG0ZALIGpYVUEz1uFxI5v/d4Doo+EHdg4v87qByfj
	Hrs688tWnb1F6qJjuO3FmiB1bvU2MykEUUAod9ctU/uLWkSTWp0K/GJcWmCRrgiB0z4DDoIwAIb
	rpug+TjaNMiITcaMMjy8bsftNi+eKx4GmuursFt/ubMBIRUOfI2DGGY3RIE3Q
X-Gm-Gg: ASbGncuYNqYxRxsN5wSmbBHzpZ/twsT+C9oA1Ib3g8k/PeP4p+gLwVuRCWq5Iq0x/XI
	rlqG5HR+ER1pGYb84Zv+fxPANyJ2CdBNzF7cUeXQy1gNt40Rtq++EuzZCLIcKn4bBjCsSNZaZa3
	wubEvW0CIQFC1Jce5qwsLy7Iajsbj84WiJ2myTMR6/AHqWADQn6zY3HP5fgHiJk6TucoAMsxxfi
	oe6vDiNuphqKf56bBZgdgw4S9p2W/IM6rXI1EiXI8z5Rv8b3AsJqzhlGTv15eMvdPAlCDgpl+5L
	jMK0V2bIbw/PMtBZZmOpb1vBfzfo/32W0boynXjZu52A9URwsE03rJsOOQ5lXj5BKSJ+dbJtIvY
	=
X-Received: by 2002:a05:620a:17aa:b0:7c5:a41a:b1a with SMTP id af79cd13be357-7c927f6b4e5mr2210332585a.10.1745319767861;
        Tue, 22 Apr 2025 04:02:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFN4wwPzrrHx8nsqrV5sbJ9OQl73YTYbgT962Arex3Cx5QfII5Wsr6EMD6ZHVslJXEdDC01pg==
X-Received: by 2002:a05:620a:17aa:b0:7c5:a41a:b1a with SMTP id af79cd13be357-7c927f6b4e5mr2210328785a.10.1745319767506;
        Tue, 22 Apr 2025 04:02:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5251f5sm1189258e87.51.2025.04.22.04.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 04:02:46 -0700 (PDT)
Date: Tue, 22 Apr 2025 14:02:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: Ayushi Makhija <amakhija@qti.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        andersson@kernel.org, robh@kernel.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v4 07/11] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
Message-ID: <2qpcmniww7uaemu5tvgbjpnijqqzlrcvf2dkewvumffnsdpsib@fl3tvbldtjds>
References: <20250417053909.1051416-1-amakhija@qti.qualcomm.com>
 <20250417053909.1051416-8-amakhija@qti.qualcomm.com>
 <qnhfnxvdsgnw5jh4xxaqz3p2x67qcrr7kn3vwdnyz5huchdtzy@aagflznjrvly>
 <d77353b0-94e6-4461-bd34-44c8cb80eb07@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d77353b0-94e6-4461-bd34-44c8cb80eb07@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Fe43xI+6 c=1 sm=1 tr=0 ts=68077759 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=Ofgg3MdZYWJxeOF5shIA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: GI6Yp_Poz3xSjXtgAgOK8r-tdt-62qfC
X-Proofpoint-ORIG-GUID: GI6Yp_Poz3xSjXtgAgOK8r-tdt-62qfC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_05,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504220083

On Tue, Apr 22, 2025 at 12:28:20PM +0530, Ayushi Makhija wrote:
> On 4/17/2025 4:10 PM, Dmitry Baryshkov wrote:
> > On Thu, Apr 17, 2025 at 11:09:05AM +0530, Ayushi Makhija wrote:
> >> From: Ayushi Makhija <quic_amakhija@quicinc.com>
> >>
> >> Add anx7625 DSI to DP bridge device nodes.
> >>
> >> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 180 +++++++++++++++++++++
> >>  1 file changed, 180 insertions(+)
> >>
> >> @@ -519,7 +550,107 @@ &i2c18 {
> >>  	clock-frequency = <400000>;
> >>  	pinctrl-0 = <&qup_i2c18_default>;
> >>  	pinctrl-names = "default";
> >> +
> >>  	status = "okay";
> >> +
> >> +	io_expander: gpio@74 {
> >> +		compatible = "ti,tca9539";
> >> +		reg = <0x74>;
> >> +		interrupts-extended = <&tlmm 98 IRQ_TYPE_EDGE_BOTH>;
> >> +		gpio-controller;
> >> +		#gpio-cells = <2>;
> >> +		interrupt-controller;
> >> +		#interrupt-cells = <2>;
> > 
> > No reset-gpios? Is the expander being used by something else so that we
> > don't want it to be reset during the bootup?
> > 
> Hi Dmitry,
> 
> Please, ignore the previous reply.
> 
> This io_expander is used by anx7625 bridge only. I have defined the gpio in pinctrl setting and so far it was helping out indirectly to bring io_expander out
> of the reset. The reset-gpios is optional for tca9539, because of which the io_expander driver didn't throw an error and I never realize that I should add this property.
> 
> I tested by adding the reset-gpios entry and it's working fine. I will update in the next patchset.
> 
> + reset-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>; 
> 
> Thanks again, for pointing it out.

SGTM

> 
> Thanks,
> Ayushi
> 
> >> +
> >> +		pinctrl-0 = <&io_expander_intr_active>,
> >> +			    <&io_expander_reset_active>;
> >> +		pinctrl-names = "default";
> >> +	};
> >> +
> > 
> > The rest LGTM
> > 
> 

-- 
With best wishes
Dmitry

