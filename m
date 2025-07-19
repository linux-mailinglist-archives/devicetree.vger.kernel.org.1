Return-Path: <devicetree+bounces-197835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B9EB0AF66
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 12:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4BED4E5367
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 10:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B5EB238140;
	Sat, 19 Jul 2025 10:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hsd8+FBb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F6733086
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752922259; cv=none; b=mFvkunpkMftYdgAe856hcvMIruxmmIN0+k0Z/XENUxrxp7L8yXLN1L55eCQkGbIBNp5y4/wfptRTQhvnJNm4WqgnBRcQOvGXCwKWfdIwJAclmviuVJzfAfUJUX4iDgiQvlC1N2PYTlTq8fVR/S7HxJPLjrefLwbIlwH3+oXkbs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752922259; c=relaxed/simple;
	bh=3nDMgq++85b2HkdS2v588umIwlgG3C8XygjJWNrepKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ihg2vKH0PpT0LZNPmWBY/xrr6+RA29ZvkCBpMdAfB6PbhuyN6/0KDIjUNFF1j7a2r19RUtCSouytzEVvIV3mfX6X+BWekKKl1xgl9knE6En49oyUKDUjj3Hm1S4vAuBY0oirN6a5MRvpPJkAlRzqZc4BNBBGX1/YvjzEK6wwgc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hsd8+FBb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J9V8Sn016640
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:50:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8bWRC+nyUTbnELtrQkJApxVg
	RlBOEUvNmWuQElnY2wg=; b=hsd8+FBb47O/w+UmniIXkxeCpDvF7pKn7BFkHm0L
	jSVY0uFMYAc9Xe/AAubuo3x0atiOU+pLs8QeEiZGzvEXwsIQW9M5EzcKnIaB4z4o
	1HsAr+yidzY+1GC1JLLzuCnzHHsom3mjKXg0qNbpkJlKUH3m00jcqJC6ZxkB07/h
	rHjwaeWUnyIGfYrpGucBQue26DNN2osr01O7Juwq44hcqphZoqTR5Z38D8PlsMsz
	TPxIA4MmGX/xg8sr40c3K72dOxJ6F53bdUxnp1zv0drjwrIy5guTYqdHp3xxm3NE
	lWvWWkqx6cpbR3r1bdRMD8NXV+dHHvmtjLdJ3mWu+pjjjA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044d8h3v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 10:50:52 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab401e333bso70504031cf.1
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 03:50:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752922251; x=1753527051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bWRC+nyUTbnELtrQkJApxVgRlBOEUvNmWuQElnY2wg=;
        b=GHffGqrsVAjLUOGKpBR9JzB+ENLftYT0iG3klx9sTHmd2set5RadNSwPBdfefOUw6n
         vKIW/UZMrXPA752szIQkikONgVpsavi+z7QWmHCmUOyEnhxeq/dKPBYqHfMObWKtwIAl
         ladtLuHAlDcEcXX9dUGkEjGC+AKEd3UX1ZCQTR+xszBqQQe+LADStsdfGRB+UNRuS6ZL
         xhD9N1Bn7i1xkndC1Fxb3yRcAWBx45JYORzkkwDDZLCI+Xm6dpCmixmYKzuvn5Hep9Kx
         ghO4eCiC6ZZHv3/SAGxiTg3f4fYZin87SMFAqFbIZYZ6ETRFj/4fNnSDwVtKTCxwH/aF
         R0MQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNVSTev7YhDnGoOQPDClZfDr9aJci7oBrsiyRcoOWIiy+l2vF1H1xIv38CyyV0lCeIlsnjh8Dfx1nm@vger.kernel.org
X-Gm-Message-State: AOJu0YywF9TO3eqNUx8yZ79UyzWyT/sElELHwdO8KtK86GkkNecT1fTg
	P8hifmX85uexRKuJMAesIxJi6VPDYr0v7jTvQPE7UbH+xqIyJtXUDwkIYBDObBnaAuhxWLqnnqA
	VQlVXBJ48rFGVw8cYo3Teu4ktom0aQqY2Z5TV2M19orl8bqLidvD70oO2sniiIpz7
X-Gm-Gg: ASbGncuA8EyLloT5vhhddQy1TywZyOcVuy7eEAykkp8uSKAnri5Y9MprxXpmMyu7hJD
	/4h1WvMNRnqzzvcdTvdmwiHhMeW7t4Os5RcsyJchYWfYdU66GiEZfRyU9EdrUj+5egS+9tQ2VZs
	mcsjcwVkbX2Qe4dbLd5PDR9Oafa4vfKsWlRwIDbspqpf+Jm5/djLuMkMEVZz4eMS/OjPmj220mQ
	NW2VLhyJ0AFFHjHxMkwMAsZaTTnhmU4fQ5efoc0KvPVnNCjkRpJYvwnt2QHYkYKcqZGXtj4s13H
	cKCKVwuiGydZySF159nduVWi0c74msQvNiQYq4YkIcm1yzW/id0m17cFIKk7dle5OwmcIr2orq7
	89bOCilShylpDHJUq+8N2F82fbcsCWlCp9QgKnuNlr909H0agGHiR
X-Received: by 2002:a05:622a:4898:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4abb078731emr123876211cf.5.1752922251459;
        Sat, 19 Jul 2025 03:50:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELvC0t2DoePnMMUcCjwnNp/NwYyNzJMw/LSjDMY6XQx3gX8ifMzX4kwnCHJthxZrRbYsOq9A==
X-Received: by 2002:a05:622a:4898:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4abb078731emr123875991cf.5.1752922250968;
        Sat, 19 Jul 2025 03:50:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d9122fsm667474e87.152.2025.07.19.03.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:50:50 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:50:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: rk3399-evb-ind: Add support
 for DisplayPort
Message-ID: <skvceiwrg77ysx74bmywp6buk6yp6dlllrwpkfea4brposrveh@2rqtawpiaikk>
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-6-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718062619.99-6-kernel@airkyi.com>
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687b788c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=ikJCsuYIIW8Wf-eC7T4A:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: JnlYivYajMEobkXUQoIHHP7l4vx7QVWD
X-Proofpoint-ORIG-GUID: JnlYivYajMEobkXUQoIHHP7l4vx7QVWD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwNyBTYWx0ZWRfXzsyI0dSpJZg0
 +au4AEwqq4240hC+rhs3QouCHkbOAKX8WJMIALmBgRiEevWAmCDj/xQF5ZmJc8hJZ+Gxxh2b0rE
 gQ604Wn/QBO49PO3JBxLALgVxCvMRqA6d2KafTcRRiycw1Gu4VepjLXCGFCWJts0g/i8Z0jFflq
 WLJsYxtxNN1NTbgv4iWsBIwZZeSs5DUAgVOFiuewe3yab6dnDPSANvVWRBxHPM8726nk6KawlqN
 XudczS+TPsrqE9aRuWXZMhp2RfGt67Uqk4bw6l/ZeXBKFqHvMDP7ti8S5cF+pTntx2RA9BZDseO
 EriapI8Q6BQ/9pG9t4MUY5iYCuCJBtNOjLp0NbPSiL/NCeQRIrDPLP25v49RMim629VxESt7Pnt
 zKVnlTS2WkTxjk/Cjdwt5mvF7OmZ68DsTct7m0ubw4k+AbDi9xkyvGFCm4qIap696prfWOuG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190107

On Fri, Jul 18, 2025 at 02:26:19PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 EVB IND board has a Type-C interface DisplayPort.
> It use fusb302 chip as Type-C controller.
> 
> fusb302 chip ---> USB/DP PHY0 <----> CDN-DP controller
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Add endpoint to link DP PHY and DP controller.
> - Fix devicetree coding style.
> 
>  .../boot/dts/rockchip/rk3399-evb-ind.dts      | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> index 70aee1ab904c..997b822a57ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> @@ -4,6 +4,7 @@
>   */
>  
>  /dts-v1/;
> +#include <dt-bindings/usb/pd.h>
>  #include "rk3399.dtsi"
>  
>  / {
> @@ -19,6 +20,21 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	sound: sound {
> +		compatible = "rockchip,rk3399-gru-sound";
> +		rockchip,cpu = <&i2s0 &spdif>;
> +	};
> +
> +	vbus_typec: regulator-vbus-typec {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec0_en>;
> +		regulator-name = "vbus_typec";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc5v0_sys: regulator-vcc5v0-sys {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -31,6 +47,11 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>  	};
>  };
>  
> +&cdn_dp {
> +	phys = <&tcphy0_dp>;
> +	status = "okay";
> +};
> +
>  &cpu_b0 {
>  	cpu-supply = <&vdd_cpu_b>;
>  };
> @@ -55,6 +76,12 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_l>;
>  };
>  
> +&dp_out {
> +	dp_controller_output: endpoint {
> +		remote-endpoint = <&dp_phy_in>;
> +	};
> +};
> +
>  &emmc_phy {
>  	status = "okay";
>  };
> @@ -341,6 +368,63 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <475>;
> +	i2c-scl-falling-time-ns = <26>;
> +	status = "okay";
> +
> +	usbc0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			data-role = "dual";
> +			power-role = "dual";
> +			try-power-role = "sink";
> +			op-sink-microwatt = <1000000>;
> +			sink-pdos =
> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 1500, PDO_FIXED_USB_COMM)>;
> +
> +			altmodes {
> +				displayport {
> +					svid = /bits/ 16 <0xff01>;
> +					vdo = <0xffffffff>;

I don't think that this VDO is correct. Please adjust it according to
the spec.

> +				};
> +			};
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usbc0_orien_sw: endpoint {
> +						remote-endpoint = <&tcphy0_orientation_switch>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					dp_mode_sw: endpoint {
> +						remote-endpoint = <&tcphy_dp_altmode_switch>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
>  &i2s2 {
>  	status = "okay";
>  };
> @@ -354,6 +438,16 @@ &io_domains {
>  };
>  
>  &pinctrl {
> +	usb-typec {
> +		usbc0_int: usbc0-int {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vcc5v0_typec0_en: vcc5v0-typec0-en {
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int_l: pmic-int-l {
>  			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> @@ -400,10 +494,48 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +&sound {
> +	rockchip,codec = <&cdn_dp>;
> +	status = "okay";
> +};
> +
> +&spdif {
> +	status = "okay";
> +};
> +
>  &tcphy0 {
>  	status = "okay";
>  };
>  
> +&tcphy0_dp {
> +	mode-switch;

But not an orientation-switch? Shouldn't it also note the SBU pins
orientation? Or DP lanes orientation?

> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		tcphy_dp_altmode_switch: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&dp_mode_sw>;
> +		};
> +
> +		dp_phy_in: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&dp_controller_output>;
> +		};
> +	};
> +};
> +
> +&tcphy0_usb3 {
> +	orientation-switch;


Hmmm.

> +
> +	port {
> +		tcphy0_orientation_switch: endpoint {
> +			remote-endpoint = <&usbc0_orien_sw>;
> +		};
> +	};
> +};
> +
>  &tcphy1 {
>  	status = "okay";
>  };
> @@ -461,6 +593,7 @@ &usb_host1_ohci {
>  };
>  
>  &usbdrd_dwc3_0 {
> +	usb-role-switch;

This is an SoC-level property.

>  	status = "okay";
>  };
>  
> -- 
> 2.49.0
> 
> 

-- 
With best wishes
Dmitry

