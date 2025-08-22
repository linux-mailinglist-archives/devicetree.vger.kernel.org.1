Return-Path: <devicetree+bounces-208042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24842B316C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10ADE62158D
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5BE2F6185;
	Fri, 22 Aug 2025 11:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jiPmadLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7FA281530
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755863796; cv=none; b=fIYQc+dkJ0SJPWaLzYtZ+SkahqXbC0tPT7LAMrYN7Nzdvuv2u1Q/Az57HPUgk0olfglCC4J/n0ZdIhUmPxYa/HlPqY9+INOpNGsnoLpFLrTAuyEl1kWs4eox1h/Dlus0Otw2CloH6T1W8PurIaUbrZqOF5KB05fvn9Fm8kmEeHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755863796; c=relaxed/simple;
	bh=l5e7J0T/OUqNKqSTaG94Vz4CDys5nKZK1+9uZnepPZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dkrLXjYTvz25mq5jeu7qtFrYOJ40IQw1qSzuZ215FmAdS2sSWrXDI0p3kAAGCxscybL6ACliBGQo08HE3UoMJLd0x3dPiEboWlBBGd95T/fPkgR0eM2zJDiVagXEJkOZu1pu48TQl2IwYy3gx6POCQTE13zqJCgXim9k5IST0B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jiPmadLQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UM3h017992
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:56:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vbW62LEHu74Aw44VkkkoyZ3F
	tXR0sTC79991GoTUD90=; b=jiPmadLQIJvc2xlQHTF5aiEolhpn10h8HyS+rBgU
	zUYR7SGg/NH7UfhCp9GRXY45p6hCsYwbQ7GXvx8LV1Ha3f1hT7qN0RDQHp0FdkKr
	w3aIPUNuNXAHSe3USwf+VZKKGAUUuoLl191LhswqpKqRVGQQWt1I90ciRtw7jWKM
	ZSbM9MdOF1p2UKc5shhQuXNeY5M7bjIEpOaKmAohMK+r45RglMmJwGsTrejSZb/R
	JHtD6JiCF39wDn0paKtWY1gYzd9CPpIHokrNT+5lEVS21RCwo+LskzPzwgITBPNN
	OMF3k30TKQ2SaePYK4hlwBtyomm2FIb8MAvW6Bqk+Fr/Ug==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52b0xuv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:56:32 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-709e7485b3eso60139146d6.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:56:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755863792; x=1756468592;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vbW62LEHu74Aw44VkkkoyZ3FtXR0sTC79991GoTUD90=;
        b=CcX5jIp77SG2DRe9hPlCkWVegCSMoEQcOvZhlTwmFY4Vvp/eGg+HEUbtBkgQRASHq9
         X+nC0ulq5xUSJy919tc8TRkUw0rmAcIhePjCo2HIC7XVaRwgoifIFiWu+FDXh8vFk/Ax
         +orTmlThJ0lMRKkbUzZ8AJY6a8/rklcrbElTo+liT3y+JnW+6Rv39VF1dMwJTd8edldk
         rGqSxGD8aeoeLtEZ78ngq6Tk/68IMzrRvoPsLvKZBaecsTkjbZpWvzmAQrpek8+qcs+n
         BKD5c2w66BZNunsGfx4l3EM20jQFBfJ7PBopi+m2eoImSijNlKvYHIKPLb0ui6pzPA+V
         OGRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHhidlT5hDi+mG1JpDzqMN3MN00SnX93o+OtzTMFP48U9AfulCPuJzyj7wAyN1j3kWft7r8GF7KLch@vger.kernel.org
X-Gm-Message-State: AOJu0YxtAJEMJtrY4af1UiYejthx2zo2rv1KAbD0xRnKtr2ps1Pm4EJF
	cw+t22ce/0boIypGRVj7MzrtlqGIyq8p+ePDvP0TkAp84hnO8hWwlzAbe2UUAbjp0JD8qIBgKpi
	20p73aRnIJm43fCZhtWqNIWrwKjZD5Q53NBXRyvCitYhlu6SPuS6LQkNdTRN6wVEQ
X-Gm-Gg: ASbGncs2VVjm001l1QTZJzfeTdrELTKfCZ6zMJaamL8CmZ97gfnx5tfb1N6/8nv74wL
	kfBhqmBLI4f/pmJr1Xdmz2VbUT9M0jihbnmWwapsCB9AcNyZwtJcafW93ZmVhJXG9/fdSruYOiq
	N32AYLytQpsKHLQ7lT1O1v+mNx4ll+IKjRMosSJlrwkwcGj3Pr21TNK8EDkdR3xqmxV86TGj9fT
	wDeRafCYDuHpWn0BF70Q425nTJ4FZ8Zpht7n8X1FoB1IBRtqhix7CyJcrzAYRqEEfLiZPhNMqLX
	VmgHacn2jreYTbNQvh7RTftiaEVOFvMfnlNEP2x3MWwemw/sOmaXwBFuuIwjzD2YFmsDr1vz2v4
	R9Plc5M8Ru6ubcrq92pbVggpmxCYkmBLEsO6/toYPo8+uWT6RF5bV
X-Received: by 2002:a05:6214:407:b0:70b:c8ae:1849 with SMTP id 6a1803df08f44-70d983dc528mr23595966d6.27.1755863791849;
        Fri, 22 Aug 2025 04:56:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGf9iDidXcu270WCLKEtYSzRVAzAXu+4qdGyYfnvgVEY1n02/TXreYV3lHvsEsLT/a/hYKhQA==
X-Received: by 2002:a05:6214:407:b0:70b:c8ae:1849 with SMTP id 6a1803df08f44-70d983dc528mr23595746d6.27.1755863791394;
        Fri, 22 Aug 2025 04:56:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a64d34asm34230181fa.73.2025.08.22.04.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:56:29 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:56:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Quill Qi <le.qi@oss.qualcomm.com>, Jie Zhang <quic_jiezh@quicinc.com>,
        Shuai Zhang <quic_shuaz@quicinc.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <jj3mvad27kdpfxo4p2c3jfpjq2icao6mltpx4uu3sretqgkfap@vpqgfwzl3sjs>
References: <20250821-hamoa_initial-v6-0-72e4e01a55d0@oss.qualcomm.com>
 <20250821-hamoa_initial-v6-3-72e4e01a55d0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821-hamoa_initial-v6-3-72e4e01a55d0@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXzIwq9UAUdo2T
 Lh1oxD4pdFm8h1PetzVIMO1lkVYJlapV9Z3h10Vi94VPk3zb1I/9OqVQUwBAzeFh7jQUlOtpo3f
 sopZywr2+DK/36daqU8yfyeRcJ8a7RtVw9sEZ8j3RzqV7bJ1RntI2pyaZ6UxrrmcPkpPDj8N6K+
 P0VHvW7TnD54Y0t2oyyDkKfMEPYX4T7t4ANk9CaoYAeGZLZZlMTsuV1A3gYhEsYqOWGn0AtIlY3
 J2X24UvjPT6Jqx3No4EjvFRVo+MY/Lc/U22fDdugVodOUIFlLXbdC+83xki+6yDucLj7yhBhMLl
 X6YUJGNu7MpoRlBoLNDSRszW3pCDpnBL9ItxU6MVeseEZYBrr7chhMMVfhqQFK2bRsML/dp+4yp
 ZwWN6u69cUOFTW3s2juFvaagA8PKEw==
X-Authority-Analysis: v=2.4 cv=TIIci1la c=1 sm=1 tr=0 ts=68a85af0 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=pXZBga7SBimYmxK1G2sA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: kvc17DuhtrgGIOW-W1cUok2FgC_-PWSi
X-Proofpoint-GUID: kvc17DuhtrgGIOW-W1cUok2FgC_-PWSi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Thu, Aug 21, 2025 at 04:20:24PM +0800, Yijie Yang wrote:
> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> This change enables the following peripherals on the carrier board:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - Graphic
> - Audio

No WiFi?

> 
> Co-developed-by: Quill Qi <le.qi@oss.qualcomm.com> # Audio
> Signed-off-by: Quill Qi <le.qi@oss.qualcomm.com>
> Co-developed-by: Jie Zhang <quic_jiezh@quicinc.com> # Graphic
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Co-developed-by: Shuai Zhang <quic_shuaz@quicinc.com> # Bluetooth
> Signed-off-by: Shuai Zhang <quic_shuaz@quicinc.com>
> Co-developed-by: Yongxing Mou <quic_yongmou@quicinc.com> # USB DisplayPorts
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1247 ++++++++++++++++++++++++++++
>  2 files changed, 1248 insertions(+)
> 

> +
> +	vreg_edp_3p3: regulator-edp-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_EDP_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&edp_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-always-on;

Why? If it supplies the panel, then the panel should be able to control
its power supplies.

> +		regulator-boot-on;
> +	};
> +
> +		wcd-playback-dai-link {
> +			link-name = "WCD Playback";
> +
> +			codec {
> +				sound-dai = <&wcd938x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
> +			};
> +			cpu {

MIssing empty line between nodes.

> +				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +

-- 
With best wishes
Dmitry

