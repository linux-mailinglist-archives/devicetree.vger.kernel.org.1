Return-Path: <devicetree+bounces-2566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 957DD7AB617
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:35:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 51892281FC4
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C52804174B;
	Fri, 22 Sep 2023 16:35:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B56323E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:35:35 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246FC114;
	Fri, 22 Sep 2023 09:35:34 -0700 (PDT)
Received: from g550jk.localnet (k10064.upc-k.chello.nl [62.108.10.64])
	by mail.z3ntu.xyz (Postfix) with ESMTPSA id 2EA7DD0F4B;
	Fri, 22 Sep 2023 16:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1695400532; bh=Trik2Fp3cY2CgD0hfjMvGBShjwznm5mwm8ZrD31Rg80=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=giDUjNsSKjxev//ztHAX9kkPdkuwYheyNNlkpF/jVatsZ5aFJkxSu9xaMq2CZ5+he
	 nLInojaidcckO2Mv36MboCSDCBC61Pe8AsLPh9GERGk+JtQ53J5ezw9qhr8Cs9e60L
	 TU8ZTXYgVHV51G4iy59TJIFtYeMUFh2dN5YIUqrA=
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
Subject: Re: [PATCH 1/2] ARM: qcom: msm8226: Add rpm-master-stats node
Date: Fri, 22 Sep 2023 18:35:31 +0200
Message-ID: <5709950.DvuYhMxLoT@z3ntu.xyz>
In-Reply-To: <20230922003533.107835-2-matti.lehtimaki@gmail.com>
References:
 <20230922003533.107835-1-matti.lehtimaki@gmail.com>
 <20230922003533.107835-2-matti.lehtimaki@gmail.com>
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

On Freitag, 22. September 2023 02:35:32 CEST Matti Lehtim=E4ki wrote:
> Add rpm-master-stats node for MSM8226 and the required RPM MSG RAM
> slices for memory access.
>=20
> Signed-off-by: Matti Lehtim=E4ki <matti.lehtimaki@gmail.com>

Makes sense from what I can see in msm-3.10 msm8226-v2-pm.dtsi and the driv=
er=20
code.

Reviewed-by: Luca Weiss <luca@z3ntu.xyz>

> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi index 44f3f0127fd7..98cc5ea637=
e1
> 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> @@ -56,6 +56,18 @@ pmu {
>  	rpm: remoteproc {
>  		compatible =3D "qcom,msm8226-rpm-proc", "qcom,rpm-proc";
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
> @@ -742,6 +754,26 @@ sram@fc190000 {
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
>  		tcsr_mutex: hwlock@fd484000 {





