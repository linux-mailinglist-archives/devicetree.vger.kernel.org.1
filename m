Return-Path: <devicetree+bounces-2568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6927AB639
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 577691F22C04
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A201A41AA2;
	Fri, 22 Sep 2023 16:43:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478453CD0D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:43:06 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A59D119E;
	Fri, 22 Sep 2023 09:43:03 -0700 (PDT)
Received: from g550jk.localnet (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id A5267CFADA;
	Fri, 22 Sep 2023 16:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1695400981; bh=0b9u8zcILOem+66IO8g6cH96H5GxmSzUl5aFzzdzuW8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=XrjPV40DalNTQrJ6fdCZWFTsRz5xOS/Oi9jYxZnQ7usBvRV24cXlwMyJUYiIOSqIi
	 odsYwrrzlH3jVMP/5WtZqZTbzW1CBScU8jlzbn80F1xPr6S0/QB3c/3Ff1Ryd1vxhV
	 WZAmh9bYYzYg2RAh8OoyZVwrne/5aCTaUeujWOIQ=
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
Subject: Re: [PATCH 2/2] ARM: qcom: msm8974: Add rpm-master-stats node
Date: Fri, 22 Sep 2023 18:43:00 +0200
Message-ID: <4510576.LvFx2qVVIh@z3ntu.xyz>
In-Reply-To: <20230922003533.107835-3-matti.lehtimaki@gmail.com>
References:
 <20230922003533.107835-1-matti.lehtimaki@gmail.com>
 <20230922003533.107835-3-matti.lehtimaki@gmail.com>
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

On Freitag, 22. September 2023 02:35:33 CEST Matti Lehtim=E4ki wrote:
> Add rpm-master-stats node for MSM8974 and the required RPM MSG RAM
> slices for memory access.
>=20
> Signed-off-by: Matti Lehtim=E4ki <matti.lehtimaki@gmail.com>

Like in the msm8226 patch, also here this appears to match msm8974-v2-pm.dt=
si=20
/ msm8974pro-pm.dtsi from msm-3.4 kernel.

Reviewed-by: Luca Weiss <luca@z3ntu.xyz>

> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi index 706fef53767e..0bc2e66d15=
b1
> 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
> @@ -116,6 +116,18 @@ pmu {
>  	rpm: remoteproc {
>  		compatible =3D "qcom,msm8974-rpm-proc", "qcom,rpm-proc";
>=20
> +		master-stats {
> +			compatible =3D "qcom,rpm-master-stats";
> +			qcom,rpm-msg-ram =3D <&apss_master_stats>,
> +					   <&mpss_master_stats>,
> +					   <&lpss_master_stats>,
> +					   <&pronto_master_stats>;
> +			qcom,master-names =3D "APSS",
> +					    "MPSS",
> +					    "LPSS",
> +					    "PRONTO";
> +		};
> +
>  		smd-edge {
>  			interrupts =3D <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
>  			qcom,ipc =3D <&apcs 8 0>;
> @@ -1067,6 +1079,26 @@ gcc: clock-controller@fc400000 {
>  		rpm_msg_ram: sram@fc428000 {
>  			compatible =3D "qcom,rpm-msg-ram";
>  			reg =3D <0xfc428000 0x4000>;
> +
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +			ranges =3D <0 0xfc428000 0x4000>;
> +
> +			apss_master_stats: sram@150 {
> +				reg =3D <0x150 0x14>;
> +			};
> +
> +			mpss_master_stats: sram@b50 {
> +				reg =3D <0xb50 0x14>;
> +			};
> +
> +			lpss_master_stats: sram@1550 {
> +				reg =3D <0x1550 0x14>;
> +			};
> +
> +			pronto_master_stats: sram@1f50 {
> +				reg =3D <0x1f50 0x14>;
> +			};
>  		};
>=20
>  		bimc: interconnect@fc380000 {





