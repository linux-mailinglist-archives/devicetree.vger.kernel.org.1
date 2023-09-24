Return-Path: <devicetree+bounces-2777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 566A27AC802
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 14:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1132A28159A
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 12:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6B8A17E4;
	Sun, 24 Sep 2023 12:23:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4814817DB
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:23:01 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B46B2111
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:22:58 -0700 (PDT)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BEEE53F673
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695558176;
	bh=jfhJ/0WF4K0ac4kOBJQChSkyfixsrhUS+n4MUiLhPoU=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=iW2LIj4svLCUZrx5SxaQ+u/49zmScFZYXkdxU6a6NzyLQx/iQ9GrHwQoPEms4xpo1
	 bie1RZeOufOE6WXuPzOAEMeWPUG2QHKn4lqV4suHPdBi3V0OQ57cYQhqnbT7XgtTHk
	 0M0Qi7dYUierdAnZuhDI24Zy7j7mQRNcqv9EHUl5aPXwFRF8oMPyr5htdzoZKLVpuD
	 FeJKYm393QL+Z7pK2Vrf2MnLjPipfSTKnS4op941aYGL9kkNlGkQK158il7oXTMg2z
	 jktGZGo+1Jpu7wNUpV3qQP45DheFb5mEb5ezfFZuXvU/A/tfSWgmF10bRPqn4WZ+A5
	 sBEbEdRl8w8Kg==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-418116b13a7so26006001cf.3
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 05:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695558175; x=1696162975;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jfhJ/0WF4K0ac4kOBJQChSkyfixsrhUS+n4MUiLhPoU=;
        b=WE5s6p7TN51prIuKcotDkb2NX8ahxRlbXBUtM7QQiMDLBdemAUfXxpOul0PBJApiIx
         is6+GRxxL8OGQoslHP5R4djsbij4r5trTOlQ037xbQ5f/OS8VWX1FKCAqDyk632jwaXl
         8w7IsV+/OCf9np1gIzh/4TziWgTXPakiIUip6FQ4CjYXUgpHwRCHu3hURWwO5hmFPqJQ
         YEkJZp8zZt2d2uKfSH8LkKSljyfderP2w+i8r29EEdn+m9198c+lmZ5OHUCsKyoWtklz
         PQn0HSneUHuG+sFN0TUWfaIdWC6qM/PU3cpb+D35IUW55yuzRRJWOgZbjO8C72krC7ns
         uIlw==
X-Gm-Message-State: AOJu0YxJwjbFskQOmwl83MY6hSO6YZ+dR2ZU6fVPYgUY/5499bX30Hf1
	3ZG0nm/n/yeZyiSjNePYbj9F5d3Q6nuaPTfqLGZjrnYil9OkgFQXuLp5oX0LPaMCdPz6lqJQhNU
	/1A2O+W54v1QU/s6Rf8rbJ32GQbSAM0JQvXz0l+eVFhOWMSreLIECBsSjOsW4gyY=
X-Received: by 2002:a05:622a:11d0:b0:417:a2f9:bba6 with SMTP id n16-20020a05622a11d000b00417a2f9bba6mr5214493qtk.60.1695558175480;
        Sun, 24 Sep 2023 05:22:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiwHHrokfnfsvNrp6NSrWblhXYjJGcMv/JbnJDQvm95NLPbJFdb6zEXKfDaz8fBlIbETJ1BPCcccjlv+akHoc=
X-Received: by 2002:a05:622a:11d0:b0:417:a2f9:bba6 with SMTP id
 n16-20020a05622a11d000b00417a2f9bba6mr5214484qtk.60.1695558175223; Sun, 24
 Sep 2023 05:22:55 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 24 Sep 2023 12:22:54 +0000
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20230923152653.3371216-1-cyrevolt@gmail.com>
References: <20230923152653.3371216-1-cyrevolt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 24 Sep 2023 12:22:54 +0000
Message-ID: <CAJM55Z8hfZ3+-=Gea9o_0yRH6-kD1dVMfXHOu-k2GxghK2RwJw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: Add VisionFive 2 PHY supplies
To: Daniel Maslowski <cyrevolt@googlemail.com>, Walker Chen <walker.chen@starfivetech.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>, 
	Daniel Maslowski <cyrevolt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Daniel Maslowski wrote:
> I checked the schematics to see what power supplies are needed.
> This allows for using ethernet without other drivers enabled
> that would coincidentally enable the same power supply. =E2=9A=A1
>
> Signed-off-by: Daniel Maslowski <cyrevolt@gmail.com>
> ---
>  .../boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts    | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1=
.3b.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.d=
ts
> index d4ea4a2c0b9b..bc1ac12bc71b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.3b.dts
> @@ -16,12 +16,14 @@ &gmac0 {
>  	starfive,tx-use-rgmii-clk;
>  	assigned-clocks =3D <&aoncrg JH7110_AONCLK_GMAC0_TX>;
>  	assigned-clock-parents =3D <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
> +	phy-supply =3D <&vcc_3v3>;
>  };
>
>  &gmac1 {
>  	starfive,tx-use-rgmii-clk;
>  	assigned-clocks =3D <&syscrg JH7110_SYSCLK_GMAC1_TX>;
>  	assigned-clock-parents =3D <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX>;
> +	phy-supply =3D <&vcc_3v3>;
>  };

Hi Daniel,

Thank you for the patch! I've looked into this a bit now and I found 3 thin=
gs:

1) The vcc_3v3 regulator (DCDC1 on the PMIC) already has the
   regulator-always-on property, so should never be turned off even if ther=
e
   are no consumers.

2) As far as I can tell the schematic for both the 1.2A and 1.3B says the P=
HYs
   are powered by DCDC6 (and not DCDC1) on the PMIC via the VDD33_IO line.

3) There doesn't seem to be any generic code in the dwmac driver handling t=
he
   phy-supply property, only the Rockchip wrapper (dwmac-rk.c) does that.

So all in all I'm a little confused how this change can make a difference f=
or
you.

@Walker does the above and 2) in particular seem correct to you?

I'd expect something like the following instead (although split in 3 patche=
s).
Daniel, does this work for you?

diff --git a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.ya=
ml
b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
index 5e7cfbbebce6..9ce877782419 100644
--- a/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
@@ -54,6 +54,9 @@ properties:
     minItems: 3
     maxItems: 3

+  phy-supply:
+    description: PHY regulator
+
   resets:
     items:
       - description: MAC Reset signal.
diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
index 2209d5348928..6633c8d29be7 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
@@ -101,6 +101,7 @@ &tdm_ext {
 &gmac0 {
 	phy-handle =3D <&phy0>;
 	phy-mode =3D "rgmii-id";
+	phy-supply =3D <&vdd33_io>;
 	status =3D "okay";

 	mdio {
@@ -117,6 +118,7 @@ phy0: ethernet-phy@0 {
 &gmac1 {
 	phy-handle =3D <&phy1>;
 	phy-mode =3D "rgmii-id";
+	phy-supply =3D <&vdd33_io>;
 	status =3D "okay";

 	mdio {
@@ -182,6 +184,13 @@ vdd_cpu: dcdc2 {
 				regulator-name =3D "vdd-cpu";
 			};

+			vdd33_io: dcdc6 {
+				regulator-boot-on;
+				regulator-min-microvolt =3D <3300000>;
+				regulator-max-microvolt =3D <3300000>;
+				regulator-name =3D "vdd33_io";
+			};
+
 			emmc_vdd: aldo4 {
 				regulator-boot-on;
 				regulator-always-on;
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
index 9289bb87c3e3..2ce349421981 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
@@ -12,6 +12,7 @@
 #include <linux/property.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>

 #include "stmmac_platform.h"

@@ -97,6 +98,7 @@ static int starfive_dwmac_probe(struct platform_device *p=
dev)
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
 	struct starfive_dwmac *dwmac;
+	struct regulator *reg_phy;
 	struct clk *clk_gtx;
 	int err;

@@ -124,6 +126,11 @@ static int starfive_dwmac_probe(struct
platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(clk_gtx),
 				     "error getting gtx clock\n");

+	reg_phy =3D devm_regulator_get_enable_optional(&pdev->dev, "phy");
+	if (IS_ERR(reg_phy))
+		return dev_err_probe(&pdev->dev, PTR_ERR(reg_phy),
+				     "error getting phy regulator\n");
+
 	/* Generally, the rgmii_tx clock is provided by the internal clock,
 	 * which needs to match the corresponding clock frequency according
 	 * to different speeds. If the rgmii_tx clock is provided by the

