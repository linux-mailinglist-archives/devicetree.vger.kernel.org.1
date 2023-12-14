Return-Path: <devicetree+bounces-25330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C24D812E92
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A21C281AC3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C864B405C7;
	Thu, 14 Dec 2023 11:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBMkXwDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 669B2BD
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:30:45 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1d03f03cda9so15772115ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702553445; x=1703158245; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZsXqfMJvIejGwFH4E21IdeG9XdQUg9mslQtYOVrQDho=;
        b=aBMkXwDthgL9vR5xbRmeL4zEO2Opc39k7k9cCT0Csis8q5bQ/WKlx3zQXvPQBAslyC
         +07+3Ryo/ogKUvu9mc9vu8HNRuIIPWj+W2+CmlJqe8/WuVHkoELS4W+0UZ93DETn5Ra3
         ijXKvzNKI06HHfB94oVmaabrqP8aLkTJEcyYngFDr4XUDkJeGMokkVbzZ5MXUUlveF6v
         B1ux0VfZzQnoE+mz1ZQLvkznqBI3qTXMB+iklfLjD09TjI+Er65MUYEjf3x0Uq17meER
         zIpQKodFz0xjeULYANnT8D7thXQ9tqUoTknZ+x6PLCybGoXyO2lLB/DcJ+FP1rx5beq0
         6k9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702553445; x=1703158245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZsXqfMJvIejGwFH4E21IdeG9XdQUg9mslQtYOVrQDho=;
        b=r/pDNcSJLuR3S1ngAUNsiiFPoSp+ODcFHcY1asebwC3VrhHfdY6iU59N7/2tRmJm0l
         a/sOyLw/mJRbBJCUhBKDsZPZKc8dw/zPJE4IpXOuobB3cdtNzFV8aL2UVUtSj2ArM2on
         beN2ltctHWbPQpppyu6c9oUFlCd+XlnvQSTv6v5ArI9C20xw5CiU1ArDj1MlpH4IJ2Wt
         1kOFeR9v6hrfyZBiLnbQTkCkBK6RqN1rrSRVNNiP7W1mmriE9mP/07UlvWkOmHKQIRXv
         d05RmTidcVGZE5YLIfGytLQZWERBrPqTxNXaKp7MxuZi2q7soLsuka22nVN7roIuSIex
         I15A==
X-Gm-Message-State: AOJu0YyBtKgPQ28vlm6L0ynkEmiotlP4UPFUtDdFoaejxR9zaEp63/Tj
	T8iN+yeh959fKfc/v8EPjXJSi2faq/qSlKXzNc2seRn/ddM=
X-Google-Smtp-Source: AGHT+IGRHBcybpYHo5XRVptwl4sQ/DWAxcr8hY+E5nG8YJ4sxzlWhfK2cA9zkoiDNrIWWCkk0q5Zz2TXHxJNN4G2eso=
X-Received: by 2002:a17:902:b18d:b0:1d0:80db:a841 with SMTP id
 s13-20020a170902b18d00b001d080dba841mr18432094plr.3.1702553444853; Thu, 14
 Dec 2023 03:30:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231214112442.2412079-1-xu.yang_2@nxp.com> <20231214112442.2412079-2-xu.yang_2@nxp.com>
In-Reply-To: <20231214112442.2412079-2-xu.yang_2@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Dec 2023 08:30:33 -0300
Message-ID: <CAOMZO5CgzioWKjWkhmQjL58GGGmDSsm9SD1f6YAX2EyM0DNJtA@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	linux-imx@nxp.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 8:19=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:

> +&usbphy1 {
> +       status =3D "okay";
> +       fsl,tx-d-cal =3D <110>;

Place status as the last property.

> +&usbphy2 {
> +       status =3D "okay";
> +       fsl,tx-d-cal =3D <110>;

Place status as the last property.

> +};
> +
> +&usbmisc2 {
> +       status =3D "okay";
> +};
> +
>  &usdhc0 {
>         pinctrl-names =3D "default", "state_100mhz", "state_200mhz", "sle=
ep";
>         pinctrl-0 =3D <&pinctrl_usdhc0>;
> @@ -224,6 +264,20 @@ MX8ULP_PAD_PTE13__LPI2C7_SDA       0x20
>                 >;
>         };
>
> +       pinctrl_otgid1: usb1grp {

pinctrl_ubs1: usb1grp

> +               fsl,pins =3D <
> +                       MX8ULP_PAD_PTF2__USB0_ID        0x10003
> +                       MX8ULP_PAD_PTF4__USB0_OC        0x10003
> +               >;
> +       };
> +
> +       pinctrl_otgid2: usb2grp {

pinctrl_usb2: usb2grp

