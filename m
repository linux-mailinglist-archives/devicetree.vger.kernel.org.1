Return-Path: <devicetree+bounces-270013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NOtDqiNpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:16:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDB31D99B4
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 668DC3050EED
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:13:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8453D7D93;
	Mon,  2 Mar 2026 13:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nVXcuOWM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HSBadLxA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE8433F8D6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772457210; cv=none; b=V0aGWzU/pgFJlCq56l/sWaAeYHEPV0M3v4GeJGhe8pqXbDbms4FgPKJ9HvUZY/Tf4g31ai+0vGdrIiFTAlAuTAW9HDdzg+u9YlMh9SVRBGsgEmxFhcYhIuKXX7I4mZTzk9sJDUrPVqz057Y+Hlw0AcEj+czrxZfBX0BCAhttSJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772457210; c=relaxed/simple;
	bh=KpP9QI803SicNOprcW5f0uD7Dl0i6yvL1fttm2+u5HQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jeDfpccOsSqCs3+7x75xoJvAhW3XwHWV3MCwWnyQxsFyFA/u9+txQmSYSFMr56nxskfbyBH07ksZ96/CPKPg6OfXpm3Ar+OrQsdqonK9DlSMT4TOlJbLQVSN8r5M8S4wugxdWBqrxBAPdhs/ba57UewXFKTgz++YYjvbUHrrFMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nVXcuOWM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HSBadLxA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229EwUC3630902
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:13:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+6GJLR1TOWcAZHXTNBjSxJu8lJQ/T0tDHTDKHqFFUTU=; b=nVXcuOWMeRBgHlyH
	FeSfruPFCmDhzU7Xbqf9pu08zMdhzUvEn15iRMiDEfFwowWV1zzXLKOmn4YANUsj
	t8XOXgaSqX4jTHXqITqV8CFNyR/IEv4Ievahc9QSnDYmhLF393s/oNaan97qUgMN
	TmtYfCi2EqHBSUEoWez0E/oVPKDWccugB+UxA74x/DISvQ5yMLwljv+HCx5MMIYn
	uwEv9nnnnNeIw/9T+uK9ttJeyMBL7U4BSVcfP9F5U8dAhsU8UiuIgruCwbgWpojk
	ZYGflsAE8tAMsk5JV7Kp6HVdcL89+g+RvW4JOu6GZqLV4W64bmIE94fjO8giiUrC
	5yT55w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7rhrrvf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:13:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70ef98116so3898258185a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772457207; x=1773062007; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+6GJLR1TOWcAZHXTNBjSxJu8lJQ/T0tDHTDKHqFFUTU=;
        b=HSBadLxAgLx3uR7zcDoptVipugDMI3n2pmo+oUuUhBL2UqR170hwVrqEBfxz2CmDgp
         L1LpfHsEUjQeN+hjYnVCpIEM9fLPaESjQUa1XbgTlhpT/SRf9w+EWKVboBKOIuGpDzj0
         FP/xGPETZdZSTwjxylMSa3c28wrRZnjKEaY5VhD2rWneDCjffKSFD978zIZkgYFJ2e5I
         +wVtvlCD5cKW9rWe5K+zVkwS6iGlG061Rlnzec5cJn9dslc+0L1103eyfGJyARZXydJ+
         eXzdMEdGI5c0u6QsQapUy86M1CU6yRSRpCXw5IPiFFe6xUw8Bp1i+FVHYz5tDoi3UgJt
         +I9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772457207; x=1773062007;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+6GJLR1TOWcAZHXTNBjSxJu8lJQ/T0tDHTDKHqFFUTU=;
        b=c5+5sdKVMTDmBTDnS9x0L96+HUI0ZvBA/G95DH+zTg6gphHt5yt7aFnGnDLgnJSd+f
         +G1w9gjLlTcdXbbbn88aGquvAyeY26AVo8GOYad7qyVy/Z+tz3GPqfHq53bF9oq3CdAt
         Ozv/Hd6p1giVJTQmJ+2RF3RflGDRFrcUvl11YMlgdcQV4vIkLCMi4aaZMO14fhKNrx8h
         itv6eOBWlWYO9fTukKLxyW0qXMjgw8+0Ilgv6R0+h7L4iAbPUnPl2zUcGB3dyi5Haa7d
         RtpWOJGaiyQ9oE/6p2EFchoQ4WVnsdRZF7DHFWysSjG7E9ETGZiZN6EuhPAY3t06BeKx
         XPww==
X-Forwarded-Encrypted: i=1; AJvYcCUV4a18RT7SwkqLnq9rp/xIgdH7e8BQSWOkB4DEhmdJzhv/FYMKo4LudK+yWiOdW5yNiMIPSxZuALqf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzx6jcGbkaNzW0RXN7uTygfc8LVWO3gSkZaxo31vrwRlZVzua/5
	4Qn2JeBIC3q8t8f7fVC490j2daocK5IEn9c66uRoAQj2BlTLo7pjTTgh0FK7TzLNyP922a91Xi0
	wCHnKg+omZVbB/PT8hHp9Q12+YSmbwDRk0lQkG0uAD2fqDGKmNY0WC10qI/GMDtGW
X-Gm-Gg: ATEYQzxUUl689QcrPhTN71x0zUgvWaoUaqq5cHw8PKrCb+UbwL1tDL7MDGmxLB7Q4Ux
	sw0n3asbVUiBEno5L9z2VWC9VKYM7FsUPnCRluvy6OD5w1xK4kRVABDyg/1biUanI/QXn3FM8/X
	wq8/2jN+hOUqIhjMnlh+/J1EfTVwohYoHuJ+4nYH2oL87PuEBEFGpEKniU8uq31ipNQWEd34i92
	A35DmtyShyE1/jzv8rm53rA+90+K8E6FlShDwv8Se9Bm+X5MCcM11TsH5xsp2Rv996jJDI45vtS
	jY2E1zymHXs+ZBJ9RKdCRR0U/YH5p8kvp0jp9n4jkO+19l6E2r5XQH4JCT/KCAoxWMOlK7keB7X
	n/g7iBgmgtJJZFLMUDCXjrwAvd42UPtOlElqzrNq/en1Y/xHir+vv7i7FgHxD281S40AxpgDTAw
	+l6Q28jyKFAsg6725amZDJH7md2yLFA3vCKbY=
X-Received: by 2002:a05:620a:711b:b0:8c6:ed6b:5865 with SMTP id af79cd13be357-8cbc8cc9c0cmr1474137185a.0.1772457207329;
        Mon, 02 Mar 2026 05:13:27 -0800 (PST)
X-Received: by 2002:a05:620a:711b:b0:8c6:ed6b:5865 with SMTP id af79cd13be357-8cbc8cc9c0cmr1474132585a.0.1772457206726;
        Mon, 02 Mar 2026 05:13:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd26eesm1643781e87.8.2026.03.02.05.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:13:25 -0800 (PST)
Date: Mon, 2 Mar 2026 15:13:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v15 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <rco6vpc2cnn7y52hyuf3btt2mo7apv46romvi3onakc5axjuef@sbghvgoknspy>
References: <20260302121159.1938694-1-tessolveupstream@gmail.com>
 <20260302121159.1938694-4-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260302121159.1938694-4-tessolveupstream@gmail.com>
X-Proofpoint-ORIG-GUID: lOPORrRTncmABH4fsL7pCQ2bDGB_oWZI
X-Proofpoint-GUID: lOPORrRTncmABH4fsL7pCQ2bDGB_oWZI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMSBTYWx0ZWRfX//jArZB7v2AH
 R+oym9PPP8r/ZxDxTUDHFdCxAk7jsSSzSXVMHmuHNlf3ixYz7KXJybPfBbIJs6Sz4Dbm7p2zLyC
 WPesL4O5PnwnxFV7otcOXU6P0HqBjYOY+qMSN26dqqkMgdu+zoKqcRCz5Vu8wijxVK3ty0sfyap
 S53GgPsLHC0KwB9qNxvkvj2DyjyZyqU6GwePro5LTzGz4VYaxQFtvQDiktVxl7r2FVHttnjJPpJ
 6fnvl5u0Q62/HUNK6DWW9j/mBnYdZ1YGpHT66Ow432NMQpan4M8Zoh4Ea5bswdvAvp2PBiQ37lc
 YU+Cq67M++ikXCO84LZrqwa3+v87JzPXGGv51AfB7Y9K1RkqeoVjNnqICfp4urFtBEMgNddpRh7
 SgF4tdEhoHLIldsphWYRmxmlz1P/xG2V09AxeMlTkCyNANTvLD7ap4GD3iDdcrwq7iiL5++VYQ+
 B6lKTQhQn3icmpaeRtw==
X-Authority-Analysis: v=2.4 cv=cLntc1eN c=1 sm=1 tr=0 ts=69a58cf7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=pGLkceISAAAA:8 a=z6SWYhlxSYCt4y5xu4EA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270013-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ACDB31D99B4
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 05:41:59PM +0530, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.
> 
> The Carrier Board supports several display configurations, HDMI and
> LVDS. Both configurations use the same base hardware, with the display
> selection controlled by a DIP switch.
> 
> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> can describe the HDMI display configurations.
> 
> According to the hardware design and vendor guidance, the WiFi PA
> supplies VDD_PA_A and VDD_PA_B only need to be enabled at the same time
> as asserting WLAN_EN.
> 
> On this platform, WiFi enablement is controlled via the WLAN_EN GPIO
> (GPIO84), which also drives the VDD_PA_A and VDD_PA_B power enables.
> Remove the VDD_PA_A and VDD_PA_B regulator nodes from the device tree
> and rely on WLAN_EN to enable WiFi functionality.
> 
> Add talos-evk-usb1-peripheral.dtso overlay to enable USB0 peripheral
> (EDL) mode. The base DTS will keep USB0 host-only due to hardware
> routing through the EDL DIP switch, and the overlay switches the
> configuration for device-mode operation.
> 
> The LVDS backlight hardware has been updated to use a simplified
> design. The backlight enable signal is now permanently pulled up
> to 3.3V and is no longer controlled via GPIO59.
> 
> Remove the GPIO59 based backlight configuration from the device
> tree, as it is no longer routed to the LVDS interface.
> 
> The initial device tree includes support for:
> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort interface
> - SN65DSI84ZXHR DSI-to-LVDS bridge
> - Wi-Fi/BT
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   6 +
>  .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 127 ++++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 614 ++++++++++++++++++
>  .../dts/qcom/talos-evk-usb1-peripheral.dtso   |  10 +
>  arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
>  5 files changed, 896 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

> +
> +	regulator-usb2-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "USB2_VBUS";
> +		gpio = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb2_en>;
> +		pinctrl-names = "default";
> +		enable-active-high;
> +		regulator-always-on;
> +	};

Hmm. I hoped that we are past this stage. Please order the nodes.

> +
> +	vreg_conn_1p8: regulator-conn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_conn_pa: regulator-conn-pa {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_pa";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_v3p3_can: regulator-v3p3-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-can";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v5p0_can: regulator-v5p0-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v5p0-can";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +

[...]

> +
> +/*
> + * USB0 routing and EDL mode:
> + *
> + * The USB0 controller’s HS differential pair is switched (manually)
> + * between the Micro-USB port for EDL/ADB and the on-board USB 3.0 hub.
> + *
> + * During EDL (Emergency Download) mode, the HS lines are explicitly
> + * routed to the Micro-USB port to allow the SoC to enter device mode
> + * for flashing.
> + *
> + * After EDL the switch is normally toggled so the HS lines stay
> + * connected to the hub’s Type-A downstream ports, leaving no electrical
> + * path to the Micro-USB connector — therefore USB0 runs host-only in
> + * normal runtime and device mode must not be advertised.
> + *
> + * USB0 is configured host-only in the base device tree; a separate
> + * device-tree overlay enables the Micro-USB peripheral configuration for
> + * ADB. For ADB to work during normal runtime the DIP switch SW1 must be
> + * manually toggled to the off position (reconnecting the HS pair to the
> + * Micro-USB port).
> + */
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +


> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso b/arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
> new file mode 100644
> index 000000000000..2f4630a6ba66
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
> @@ -0,0 +1,10 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +/plugin/;

Comment, what should be changed to make use of it.

> +
> +&usb_1_dwc3 {
> +        dr_mode = "peripheral";
> +};

-- 
With best wishes
Dmitry

