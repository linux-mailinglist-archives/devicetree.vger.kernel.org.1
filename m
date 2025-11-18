Return-Path: <devicetree+bounces-239733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C91C68E2E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:44:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 610432ABE3
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:44:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3398534D4F4;
	Tue, 18 Nov 2025 10:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DAF5ONL8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="USJoa3e2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5967E34C816
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763462683; cv=none; b=MI5teu0vBc4ASf7NcYiaPyUO6RrvQTFj+X60rcei2x288qFarKvTnulsGtbUypHQ1tNQ0rSjJmG0Wn9hMEDpYAIrLBnkFrsXjl5oM+BWxfYbsxkoDmzB6UYzg+ZPhf+9g1ZFhfs3GudK1Vx+LMTXoDlVaoNNuy3ucUJKjpU1uos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763462683; c=relaxed/simple;
	bh=iPkSGmX9KxQ79XLq9QwfSgi/5sR/v08OwyUjdBUS4Iw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gbAAVbv5NDlBkfVN0Au2622bBQDZ4l9UezUifSAL5FVLnr6vynqeGdMC6cpuhbOE6hlSL3mgJlaNVs0X2vRu5liGnseCB+zeeREwLzJdVHgDUNVlIh/MZIxR1zAevQUKdpAcJiask3EFzx8/U4Sk7i32h3gOl8OAPTmdr5xVoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DAF5ONL8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=USJoa3e2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6fQYA2272047
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sCaK7aEvfsFFZyY5KFZUmcHBNjI4yJN5kXzzhPr5dBc=; b=DAF5ONL82otdyD37
	ZpBScCYfdJaJ8/Vs3uShfNzk7+NKwnbwQW+pAiUAPijuG05RDZ2YFZvUerVgP/YU
	l3yGfLkK6gnljrLGQY4/d38u0XuGI9MR/DCQiuXWHug/sFzSpC4EkbReLGVq7hDi
	YcHHfCDUpOgesOUct6RJL+cLXxmNUIVrEnpRvCDOFv6LKddMLjGXAbxsDbt5gcrg
	NYEBzGq3/GlJV6z0kr6hN3HGxu6IsNH7kIx6g+mj5M9LEHcsufaQ2OpjRQC/xFi3
	9YaOdQ5jleItgTfJ05YciyWQOs1gyrrHnlpYA/pj4ZC0M167B/7ef/C/LARPpdxH
	0yCn4Q==
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com [209.85.166.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agkrmgqds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:44:40 +0000 (GMT)
Received: by mail-io1-f69.google.com with SMTP id ca18e2360f4ac-9486f0954daso430467239f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763462679; x=1764067479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sCaK7aEvfsFFZyY5KFZUmcHBNjI4yJN5kXzzhPr5dBc=;
        b=USJoa3e2u44cnh7pF+tEXEI3QvsKJdUYACfY7jSnVXoiYfgkSsAGhO3I7vr99+2nhw
         TbDs+Kv7PMx4ZBr/vtSlCodW+J3o8/eb0lFR2sq8c17LAhljIQ2lwj4qsu+VECPPClgK
         vUl8CIhl822vhFZgTtzEM2h9ys4xT5fRmL3AbKcvCWo67WgOzOC+wIGX6ACUGCBla0e4
         YNXfbcHRrnVA5DWRbJgTsqF3gIHiuNbZ8XF67vxYG4F28rNethRs8A3ekJ4elaZWMVTS
         9yyJvu9boFKO4ehVYz6bPq7LzpMI8iPEm76Ym+daVrBcHxCL+LERB2OlbkUJRLp5Douw
         OveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763462679; x=1764067479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sCaK7aEvfsFFZyY5KFZUmcHBNjI4yJN5kXzzhPr5dBc=;
        b=RUD3jRf/qS0OPkmC/9O9fBappUOQHDH1kLpLK6zheAtYyBvw7B1Ap7eDtc30pBT5Dn
         Ow85TVweFw4e4pkpe59ZnsAB03eqUZtJYKBhZHN3H0j8JBdPeNKHJL1vZL13p1jRhOjK
         +oxv5/9VOrslMfMYnB+eMOD01D8beMrKmpxYXbUUvxBsIAP00xFGLkgIq2ls7BLMCCO0
         Xt26BrRpjd/NU1rNKWUxCke6JdVtSQOPpLYohZ5XhDd4w6+i2mssWJISzone+JwZtU1t
         dFK6abAO/bocjuLN4oXDEFhIUJbYokMFAAPsZ4WI8I4TqWhmDr5+gih5jIpsMP4XocHL
         OraA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Y1CsIxc2xxkkSUqSuoizWNx+NXULDxtUWAG9rPXs1Lcq30x7+nocu7Pj3M8Ihc6T72p+o56z1Zjk@vger.kernel.org
X-Gm-Message-State: AOJu0YzH/+YlVSNxnLpeCDZAQ+1nyIhBsl6dRrb6OnEYk3IxJ6LksUw2
	1yh7xFcSKjGXxOMGXBCSmJjBbP2+LNJcycjyWlTOMY0wKHWiCMMJCPW4iioswZqJCM+1rha9MAY
	5Od6RRicZSiQAxgu8uLssUmCcEl9baMaTWuS8XeczO8F3llSWQ0lgDq+C5rQssciB9e5EopN46J
	4hWbRrRxmTHw7GeF9iztcLUKEQyURmgUHOAee4cDw=
X-Gm-Gg: ASbGncv3ILZY9QS1xic50qGKVRcr0658kjf1+Ih8wzXu9hst36IuzFO7+CfOhBTBWo2
	y7RS5kHwns3/jpdEGwnc+VRC5tVSEnwSLHmnqmQ6q50omwN7nWyBIdjHGZZI4bRloKJawZ80BrC
	TLkbrBHJSQyyLcrXIr97b4FdZlP4pp5crxwqg77C/fwzbwLY2XnOIOSgMGuIOKmQyE3ED9et9+i
	c1K0++449T5MbkQ/4o8zvHUu6yE/HuJI+zDyChBGinWaQ==
X-Received: by 2002:a05:6638:838b:b0:5b7:3de1:e1a5 with SMTP id 8926c6da1cb9f-5b7c9c5678dmr8785662173.1.1763462679201;
        Tue, 18 Nov 2025 02:44:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGR4bh7rs9exhJQVqVxgzqNa8Hqi9xarFc0Bf1cW1lcX+y/WBnb8w+purdq/irbPPDybbw5G4vnB/UapB3Q5S4=
X-Received: by 2002:a05:6638:838b:b0:5b7:3de1:e1a5 with SMTP id
 8926c6da1cb9f-5b7c9c5678dmr8785632173.1.1763462678815; Tue, 18 Nov 2025
 02:44:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114121853.16472-1-r.mereu@arduino.cc> <20251114121853.16472-7-r.mereu@arduino.cc>
In-Reply-To: <20251114121853.16472-7-r.mereu@arduino.cc>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 11:44:27 +0100
X-Gm-Features: AWmQ_bmN3GDVSaMzesy1zRTz832e_xMXref004SjMzrpC1Nyjrzj_zI6bF87WTY
Message-ID: <CAFEp6-31A9arc=JmO7ob4uDnTj+Uhv_xJFwiUAZnfNLoAnOkOA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino unoq
To: Riccardo Mereu <r.mereu.kernel@arduino.cc>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
        linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4NSBTYWx0ZWRfX7X5TTfhgxHjr
 m6uKFdgxKWFkMJV5M24OzRhi2JDBp7k42eXdK2ckwGaehl/W7lxsSkkzGnhrNXmKJTtoow00c+D
 1gR/aLdaZXV4igmtTetaN+YnLw//JFmzlDk4ZaXSvXc4ZCtca4iR87pqP2ukfcFAkPARYtvihrH
 eZhehofe/N2df4rpTE2SkEG3HTaAuCIbGtKXGmlnbIkCIvDFB2bWjKxVDRIGOvULedAUaXP3wMw
 eW8Ua+lZUrjqcyrbafUu0iguyIL8PfmB/w6beyS8rpFSMrXCNZ4g4D4jfrUUlNR3XLp+0DcrTuG
 oSZihtqXFMGyV8C8/dssnlfpxwBUbjbXYgLXV4y0z30SpNWqrtgAgJ1t1bK7e73fWS1OQslRPs8
 nxmiTWLN9C6oruKDS5+J3pY71dJQEQ==
X-Proofpoint-ORIG-GUID: 9ti6SQXfmzjjDAhsh2uUUkWOAjFONMW-
X-Proofpoint-GUID: 9ti6SQXfmzjjDAhsh2uUUkWOAjFONMW-
X-Authority-Analysis: v=2.4 cv=JfWxbEKV c=1 sm=1 tr=0 ts=691c4e18 cx=c_pps
 a=7F85Ct0dzgNClt63SJIU8Q==:117 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=UdB4yIQZu0W153naj6EA:9
 a=QEXdDO2ut3YA:10 a=LKR0efx6xuerLj5D82wC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 adultscore=0 spamscore=0
 impostorscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180085

Hi Riccardo,

On Fri, Nov 14, 2025 at 1:29=E2=80=AFPM Riccardo Mereu
<r.mereu.kernel@arduino.cc> wrote:
>
> Arduino UnoQ is a single-board computer combining Qualcomm
> Dragonwing=E2=84=A2 QRB2210 microprocessor with STMicroelectronics STM32U=
585
> microcontroller.
> Support to a simply boot to shell environment includes:
> - UART, I2C, SPI
> - onboard LEDS
> - eMMC
> - WLAN and BT
>
> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 456 ++++++++++++++++++
>  2 files changed, 457 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom=
/Makefile
> index 6f34d5ed331c..9f98a7f2cbb4 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -143,6 +143,7 @@ dtb-$(CONFIG_ARCH_QCOM)     +=3D qcs8550-aim300-aiot.=
dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qcs9100-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qdu1000-idp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        +=3D qrb2210-arduino-imola.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qrb4210-rb2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        +=3D qrb5165-rb5.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/ar=
m64/boot/dts/qcom/qrb2210-arduino-imola.dts
> new file mode 100644
> index 000000000000..8de355a1bf6d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> @@ -0,0 +1,456 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
> +/*
> + * Copyright (c) 2025, Arduino SRL
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include "agatti.dtsi"
> +#include "pm4125.dtsi"
[...]
> +
> +&wifi {
> +       vdd-0.8-cx-mx-supply =3D <&pm4125_l7>;
> +       vdd-1.8-xo-supply =3D <&pm4125_l13>;
> +       vdd-1.3-rfa-supply =3D <&pm4125_l10>;
> +       vdd-3.3-ch0-supply =3D <&pm4125_l22>;
> +       qcom,ath10k-calibration-variant =3D "Arduino_UnoQ";

The board-file you're shipping has been integrated with `ArduinoImola`
name in board-2.bin.
You should keep that name to use the right board file.


> +       firmware-name =3D "qcm2290";
> +
> +       status =3D "okay";
> +};
> +
> +&xo_board {
> +       clock-frequency =3D <38400000>;
> +};
> --
> 2.51.2
>
>

