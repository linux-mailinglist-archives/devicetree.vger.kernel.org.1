Return-Path: <devicetree+bounces-2565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE1E7AB5D2
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:24:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 51CAC1F230F3
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5745841A86;
	Fri, 22 Sep 2023 16:24:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A5441774
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:24:47 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21484196;
	Fri, 22 Sep 2023 09:24:45 -0700 (PDT)
Received: from g550jk.localnet (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id 03FC9D0F4B;
	Fri, 22 Sep 2023 16:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1695399884; bh=vz9aLGwD2omT0ckR2F/Kh+4o0j42RWhh8kqv+jYgp98=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CWQ9NOtYU+KW5FdqRC+Rn3+KpfTfUDLrZ9kWZBjEN9Pzuid3bdJ37+4+Fqm2EB2JU
	 QvgITVOM8HmgEPI15JDPKXg83ZeBxmCxgj7Jja8s6T1WdMaZ7F/YjESuTTH9sTMSx2
	 Dy4bumrBIjRAFDdb8GsCW/NLgZkqiTxuOaIFu5+k=
From: Luca Weiss <luca@z3ntu.xyz>
To: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Matti =?ISO-8859-1?Q?Lehtim=E4ki?= <matti.lehtimaki@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Matti =?ISO-8859-1?Q?Lehtim=E4ki?= <matti.lehtimaki@gmail.com>
Subject:
 Re: [PATCH] ARM: dts: qcom: apq8026-samsung-matisse-wifi: Fix inverted hall
 sensor
Date: Fri, 22 Sep 2023 18:24:43 +0200
Message-ID: <2696920.mvXUDI8C0e@z3ntu.xyz>
In-Reply-To: <20230922011211.115234-1-matti.lehtimaki@gmail.com>
References: <20230922011211.115234-1-matti.lehtimaki@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Freitag, 22. September 2023 03:12:11 CEST Matti Lehtim=E4ki wrote:
> Fix hall sensor GPIO polarity and also allow disabling the sensor.
> Remove unneeded interrupt.
>=20
> Fixes: f15623bda1dc ("ARM: dts: qcom: Add support for Samsung Galaxy Tab 4
> 10.1 (SM-T530)")
> Signed-off-by: Matti Lehtim=E4ki <matti.lehtimaki@gmail.com>

Reviewed-by: Luca Weiss <luca@z3ntu.xyz>

> ---
>  arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts index
> 884d99297d4c..f516e0426bb9 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-matisse-wifi.dts
> @@ -45,11 +45,11 @@ gpio-hall-sensor {
>=20
>  		event-hall-sensor {
>  			label =3D "Hall Effect Sensor";
> -			gpios =3D <&tlmm 110 GPIO_ACTIVE_HIGH>;
> -			interrupts =3D <&tlmm 110 IRQ_TYPE_EDGE_FALLING>;
> +			gpios =3D <&tlmm 110 GPIO_ACTIVE_LOW>;
>  			linux,input-type =3D <EV_SW>;
>  			linux,code =3D <SW_LID>;
>  			debounce-interval =3D <15>;
> +			linux,can-disable;
>  			wakeup-source;
>  		};
>  	};





