Return-Path: <devicetree+bounces-253693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 396C9D109A3
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A8200302E874
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFCD530E837;
	Mon, 12 Jan 2026 05:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L2pEtPTt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aVqEO2N9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B0C2EC561
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768194035; cv=none; b=eXrruOH8Xghj1Z64O8G3lnMd3vaCayrD59dIi7H/u890u/GNl0O3F6d2cTGleIh9rgI20W8HiHX1omspC/kPSQlSNPO9tR/zeeCVgkCsEimQSSmfFr+5JM2Nj8+WJ2NZeJ6XaKVfG5g9WTfHPz0WFdcNww3J/wtWfvyKTJIHpkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768194035; c=relaxed/simple;
	bh=t3r3AXoBkd0/ngre4hd4qcO9ERUUsuB8LeNH5EljkJI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=szh6DhJpXDt1aA86vbqeKWL9QBZ2F/OBd8PTxDjUcfndRbO3+3xwUk5mgOZfPv8pMr6909Z6FNvB34Ic6lx+hJ7jyaAnnr2I5Z6MRuBe+cd1uQoHd1rs/eXfJoJeSYXU90gzrGL+w5oTou+pc1aWWSzUlzc+BVK3f+GvSgT3wzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L2pEtPTt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aVqEO2N9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BMOQZo138153
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:00:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Cy19z6gu1PtzGgaR/dtvCLM9
	DUS663N/jPuBATe9Cv8=; b=L2pEtPTtaz0chwecRAf8wtTioxHuT+j1Xa90dCCq
	yaMa0k3zwUwFYAhstkya4/XV8lHQHRLJn0JasHsn/YIhg0VAyzdGQ8UMOK+aZm3L
	gkRcdsRCfCyB//CainXn7s83IazM2vyqisQ5WtjwQZMMHk1CbSy3eLV5uwylhEvn
	49NOEdT3LXXCGXRTNPFszNo6XKnRnwzePgpPLrrBosJHqrOmDNCspqMGxbKuG55p
	Vf2CDASXFRdiEeSXiYOx2+ellkElvqWs6vquk374c0rFOlI39StIa2cmxJH3HDr1
	NmnFFg3Dzfa860kTqo6cotk9GdQKTyBKc+8Q7amracL0IA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bm8kysk9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:00:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b259f0da04so1636879785a.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 21:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768194033; x=1768798833; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Cy19z6gu1PtzGgaR/dtvCLM9DUS663N/jPuBATe9Cv8=;
        b=aVqEO2N9+1jxQVK6jwEADWMU3+1ofiQ+jLa/KRWNbJuM5b/dihCG1vNwQZmGIahlLU
         xfOJB6uNyN5s0tut4JJuBHLcKABzc7+XfWEHakXY7H16Svc0msVP3d4X48vgZ9YAymc6
         7xUKeq3i32RX8O3vM6kdl3tVE7rvWagKRPCsLXH0314xTzUDrTVxf3lWytg35KdYh8YH
         Ore0o68NqZxbTyhPqPE4+X/0bASfmOatvQrlwxzesc89cT8UGtGpwleGsfsiOm1wLcWS
         YRdmXP2u95AYc+D5xqkchJ917BtDXmQLoPXaMiZz9LVjQhqk/AWanN14YR98GGrpWIE2
         knzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768194033; x=1768798833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cy19z6gu1PtzGgaR/dtvCLM9DUS663N/jPuBATe9Cv8=;
        b=PBCTEDIczj7rdZIVcGgJxHCAPk3SWXGZ2GBw0A4RdW+Q6OgnoAi2LjCrvcdydd96sT
         8QMkoBoav13CeXGJK9RTfVvS5kkddKFpRwbMh5Lgk0N/5zA5LEgZKiZtfTliGYPDGvCk
         cooN5/bw1IBk2bQUrOhEm2/UObLes1b9s4IAFSRpT3/oYx+AT3+ptX7LJDw46sd0X43Y
         tgxwXylEYSrmtJRXAxNtUWIE54kMDFii2l6SFk3ctx9fRLl4ThXNBGFtmQVwei7H/Crq
         5y9lRnGNDd+zCdwdTVJRNf4riFeDsA7mzvfsScFL3hGwULMpTStwWdTzbkQS+NCL1hV8
         xJYw==
X-Forwarded-Encrypted: i=1; AJvYcCVi9Uk1f3QNSkUNP0X7GfgNpZciFlThNHBxzExK/1OQJ/uPRhD01fbUqH3PGU88esIGw/B6pubbhURM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WEWq75IPgUd/QMToy3kbSfmZQWGZa7emzWGzwP8xO9q2Y0Yb
	2GLZvwdr/POI7kipr5EUYuWjWr+WqWvXgpGX0eSU35OpEDlPpTePPIM6TlMr5XdDYISb96od0R8
	2GPBY/LY6pDWY9YQwg5Ll7GmSjAqj1iC9bEdlFvfhGriItDk8Fi7taJ5aQFPc8PRD
X-Gm-Gg: AY/fxX4GXtrIVvHLm998KPbn7GtR44iAcBRbnTTYNGe1Pvd5dD1O34Qu2EgzwSumpUj
	Hbwe97X3o6jkY2GF5mbyeJR2Ei7UxHjM5IW74y+D7Yw58G+EHnj49My9jYiXsjBhty6xNjf55o1
	VywdrokA2zJOIHtuhiWoD5Z5fuM/vwWAjcDoy2A+jVyEXeoChxNRF4Zm8f+2p/1QgXxesmfveQf
	6CGTgYkEwcdiWtq1myqRIjol9SObKOoRORD4yMsdG5O9uutCoymaPvyApia0St/WEgGm4khYErv
	n+uBuKbe+lo6jlKdmrso1cYzMllD4brO1DbLhOVOB3CrTisvITryYUFGa36ebGXvIKZ4DR/zLtG
	BTRGaz81mQxzYUpkHgptX79h2StTgJfl1Jc0MYjK2LPhg/9Kje/Q/PikCVp+eIbXMcKYFb+yEX/
	aIPrcNRabspbCn8f08MnqDuSs=
X-Received: by 2002:a05:620a:d86:b0:8c3:5a72:b11 with SMTP id af79cd13be357-8c389426b89mr2197974385a.90.1768194032029;
        Sun, 11 Jan 2026 21:00:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IES4T+bcp+TdOYNVx5YOKEqtPQzqoanBejmY0l/1xyHT3qiehWElvYSMRXqTv5QYszLVZ+xgA==
X-Received: by 2002:a05:620a:d86:b0:8c3:5a72:b11 with SMTP id af79cd13be357-8c389426b89mr2197971085a.90.1768194031536;
        Sun, 11 Jan 2026 21:00:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b7868955fsm2831961e87.2.2026.01.11.21.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 21:00:29 -0800 (PST)
Date: Mon, 12 Jan 2026 07:00:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
 <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
 <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com>
X-Proofpoint-GUID: JhhzU2VqihjGxMkTyQoWqYV3qA5w9Qxu
X-Authority-Analysis: v=2.4 cv=ZuDg6t7G c=1 sm=1 tr=0 ts=69647ff1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WRrWcEVuY01nxyfF4fsA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: JhhzU2VqihjGxMkTyQoWqYV3qA5w9Qxu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDAzOSBTYWx0ZWRfX9/r80eEbYwh8
 CF6+wNaxA7AI995mu3gKTVw/jDXgR6NIVsnmiieGxZ1KM4MJlBYlCRMLUzYYjuF4YshoTXUuqvP
 1M1K1hPPwhy3aJY5SCaKRXG3M/TK+SB+DGC0As79NBh6clsg0D+v1PCrG3gKvo9UmSfy+BFgEKO
 BhYZFPDHEiFravtUdoCik2eqxfLGSGuK04nSonfzivbCOaRJoqKRumOxjoRkxXmxAkyZif8K1tS
 6EI1zlhUySJ+ah7yy1/KqqGyvgkAv9IYcNueJQN7psELejlrKlbilH95dyo7cBOTqpNKOaCpoZZ
 IBEBzvKeuIIgq16Jb5GZsPjIKMlmjg3YVjvDAy3wYG+ytNUh8wRLjJC3Zr9qf6bDO36Z6I5yU7E
 E/8qOhcyWVHwFSE9ztRwzHa6lYVAFBWg1pIcNm1OkMNwqLqqSR2UFphaJQs0Yiqz17FW2h83fRE
 BcLsUXnmtd2L87y/URQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120039

On Mon, Jan 12, 2026 at 11:12:09AM +0800, Yijie Yang wrote:
> 
> 
> On 1/9/2026 7:29 PM, Konrad Dybcio wrote:
> > On 1/9/26 8:59 AM, YijieYang wrote:
> > > From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > 
> > > The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Purwa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > 
> > [...]
> > 
> > > -	backlight: backlight {
> > > -		compatible = "pwm-backlight";
> > > -		pwms = <&pmk8550_pwm 0 5000000>;
> > > -		enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
> > > -		power-supply = <&vreg_edp_bl>;
> > > -
> > > -		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
> > > -		pinctrl-names = "default";
> > > -	};
> > 
> > Is the backlight infra different on the Purwa IoT EVK?
> 
> As you can see, this Purwa file was copied from the latest
> hamoa-iot-evk.dts. However, not all nodes have been verified on Purwa.
> Therefore, I need to retain only the functions that work correctly and keep
> them aligned with the nodes from my initial version. The deleted nodes will
> be updated later by the respective authors from different technical areas.

Please, only delete nodes which are not present on the Purwa IoT EVK.

> 
> > 
> > > -
> > >   	wcd938x: audio-codec {
> > >   		compatible = "qcom,wcd9385-codec";
> > > @@ -60,32 +50,6 @@ chosen {
> > >   		stdout-path = "serial0:115200n8";
> > >   	};
> > > -	connector3 {
> > > -		compatible = "usb-a-connector";
> > > -		label = "USB-3-Type-A";
> > > -		power-role = "source";
> > > -
> > > -		vbus-supply = <&regulator_usb3_vbus>;
> > > -
> > > -		port {
> > > -			connector_3_in: endpoint {
> > > -			};
> > > -		};
> > > -	};
> > > -
> > > -	connector6 {
> > > -		compatible = "usb-a-connector";
> > > -		label = "USB-6-Type-A";
> > > -		power-role = "source";
> > > -
> > > -		vbus-supply = <&regulator_usb6_vbus>;
> > > -
> > > -		port {
> > > -			connector_4_in: endpoint {
> > > -			};
> > > -		};
> > > -	};
> > 
> > Are there no Type-A ports?
> 
> ditto

?

> 
> > > @@ -920,23 +886,6 @@ &mdss_dp3_phy {
> > >   	status = "okay";
> > >   };
> > > -&pcie4_port0 {
> > > -	wifi@0 {
> > > -		compatible = "pci17cb,1107";
> > > -		reg = <0x10000 0x0 0x0 0x0 0x0>;
> > > -
> > > -		vddaon-supply = <&vreg_pmu_aon_0p59>;
> > > -		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> > > -		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> > > -		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> > > -		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> > > -		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> > > -		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
> > > -		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> > > -		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> > > -	};
> > > -};
> > 
> > Is the Wi-Fi solution different?
> 
> ditto

NAK

-- 
With best wishes
Dmitry

