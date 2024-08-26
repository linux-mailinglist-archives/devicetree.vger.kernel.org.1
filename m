Return-Path: <devicetree+bounces-96689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3D795F182
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 14:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B8FA1C21842
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 12:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 295AC187348;
	Mon, 26 Aug 2024 12:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="HjEsGjgf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56811185931;
	Mon, 26 Aug 2024 12:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724675918; cv=none; b=KR29KSGhwTVAaSXmGywiUVGb9OrJqN5VhLFArwcYo117uWyXuRcN/rpWAGdJVHqwhoz5gpjAKFerGLab4Sh6RRHTpfv0rAB0kKmNWjKiltWVJC818Ln3TKw5F3/M6DqXIufRM9dWX9BK46p5L84G/palPfAs2JFd3lHZjxMGy7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724675918; c=relaxed/simple;
	bh=FBOWkOJ8Fv8/HjudbpS8HPnjZSATpEa1kECwdzoWEUs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AqYLL2BK86wOB/J0k+JcowZ0esKaDYFALrBrcwY7ZebrzXjQmDARQ4stv4N1nWd60lQ1xcK0t3mTTUCfcjlEEoJgcENkmpIriS3b8gO2SqMWtNF1HFkvY5Ozyq3cV3t6VFWs2hjNCHvuS3V57ITbgfFsh3H2Hp9fa6knZH9Q5/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=HjEsGjgf; arc=none smtp.client-ip=185.70.40.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1724675908; x=1724935108;
	bh=0DFY+wLkYuEWyBy/mhSUmuzkOWFdO8lFfTnXo28Nt74=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=HjEsGjgf7W37hkP1e5QLGoI0+JYT5Uf7dmKXwDzgBTfU4bV4ON5OjRMfm3IacW5BT
	 SoYLHbxQt07XGk5rtFdPNAJO3MgtmWF2l2COlFX/pJX4PMMdQr90EiuoCQL9ARxPnE
	 olqXL5ptOWeAmhTkLMYd1TfqIO7APF74Mo8kvkEQsR9VTyf63nsb74ztgPuf3CZBs/
	 VrRMzUBDslq83Av8BpZV1nMv8njthYTsBGMgNBPAd10l4dQAwSdpdlyyVazJz/3LcU
	 aR+6uXulhQ5VE8YTViSrrqL18C05H5PaRrqQBLfa15Jp3a2fzd9DS4FcLJKNkFOMY+
	 7bdqNqg8ON01A==
Date: Mon, 26 Aug 2024 12:38:24 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH v3 4/9] clk: clocking-wizard: move clock registration to separate function
Message-ID: <20240826123602.1872-5-hpausten@protonmail.com>
In-Reply-To: <20240826123602.1872-1-hpausten@protonmail.com>
References: <20240826123602.1872-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 45e8454da06f098c8983fadc75a227a513988076
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Provide clear separation of dynamic reconfiguration logic, by moving its
setup procedure to its own dedicated function.

Signed-off-by: Harry Austen <hpausten@protonmail.com>
---
 drivers/clk/xilinx/clk-xlnx-clock-wizard.c | 143 +++++++++++----------
 1 file changed, 75 insertions(+), 68 deletions(-)

diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xilin=
x/clk-xlnx-clock-wizard.c
index f332e0eee56c8..1a65a7d153c35 100644
--- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
@@ -962,72 +962,30 @@ static const struct versal_clk_data versal_data =3D {
 =09.is_versal=09=3D true,
 };
=20
-static int clk_wzrd_probe(struct platform_device *pdev)
+static int clk_wzrd_register_output_clocks(struct device *dev, int nr_outp=
uts)
 {
 =09const char *clkout_name, *clk_name, *clk_mul_name;
+=09struct clk_wzrd *clk_wzrd =3D dev_get_drvdata(dev);
 =09u32 regl, regh, edge, regld, reghd, edged, div;
-=09struct device_node *np =3D pdev->dev.of_node;
 =09const struct versal_clk_data *data;
-=09struct clk_wzrd *clk_wzrd;
 =09unsigned long flags =3D 0;
+=09bool is_versal =3D false;
 =09void __iomem *ctrl_reg;
 =09u32 reg, reg_f, mult;
-=09bool is_versal =3D false;
-=09unsigned long rate;
-=09int nr_outputs;
-=09int i, ret;
-
-=09ret =3D of_property_read_u32(np, "xlnx,nr-outputs", &nr_outputs);
-=09if (ret || nr_outputs > WZRD_NUM_OUTPUTS)
-=09=09return -EINVAL;
-
-=09clk_wzrd =3D devm_kzalloc(&pdev->dev, struct_size(clk_wzrd, clk_data.hw=
s, nr_outputs),
-=09=09=09=09GFP_KERNEL);
-=09if (!clk_wzrd)
-=09=09return -ENOMEM;
-=09platform_set_drvdata(pdev, clk_wzrd);
-
-=09clk_wzrd->base =3D devm_platform_ioremap_resource(pdev, 0);
-=09if (IS_ERR(clk_wzrd->base))
-=09=09return PTR_ERR(clk_wzrd->base);
-
-=09ret =3D of_property_read_u32(np, "xlnx,speed-grade", &clk_wzrd->speed_g=
rade);
-=09if (!ret) {
-=09=09if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
-=09=09=09dev_warn(&pdev->dev, "invalid speed grade '%d'\n",
-=09=09=09=09 clk_wzrd->speed_grade);
-=09=09=09clk_wzrd->speed_grade =3D 0;
-=09=09}
-=09}
-
-=09clk_wzrd->clk_in1 =3D devm_clk_get(&pdev->dev, "clk_in1");
-=09if (IS_ERR(clk_wzrd->clk_in1))
-=09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->clk_in1),
-=09=09=09=09     "clk_in1 not found\n");
+=09int i;
=20
-=09clk_wzrd->axi_clk =3D devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
-=09if (IS_ERR(clk_wzrd->axi_clk))
-=09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->axi_clk),
-=09=09=09=09     "s_axi_aclk not found\n");
-=09rate =3D clk_get_rate(clk_wzrd->axi_clk);
-=09if (rate > WZRD_ACLK_MAX_FREQ) {
-=09=09dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
-=09=09=09rate);
-=09=09return -EINVAL;
-=09}
-
-=09data =3D device_get_match_data(&pdev->dev);
+=09data =3D device_get_match_data(dev);
 =09if (data)
 =09=09is_versal =3D data->is_versal;
=20
-=09clkout_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_out0", dev_n=
ame(&pdev->dev));
+=09clkout_name =3D devm_kasprintf(dev, GFP_KERNEL, "%s_out0", dev_name(dev=
));
 =09if (!clkout_name)
 =09=09return -ENOMEM;
=20
 =09if (is_versal) {
 =09=09if (nr_outputs =3D=3D 1) {
 =09=09=09clk_wzrd->clk_data.hws[0] =3D clk_wzrd_ver_register_divider
-=09=09=09=09(&pdev->dev, clkout_name,
+=09=09=09=09(dev, clkout_name,
 =09=09=09=09__clk_get_name(clk_wzrd->clk_in1), 0,
 =09=09=09=09clk_wzrd->base, WZRD_CLK_CFG_REG(is_versal, 3),
 =09=09=09=09WZRD_CLKOUT_DIVIDE_SHIFT,
@@ -1035,7 +993,7 @@ static int clk_wzrd_probe(struct platform_device *pdev=
)
 =09=09=09=09CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
 =09=09=09=09DIV_ALL, &clkwzrd_lock);
=20
-=09=09=09goto out;
+=09=09=09return 0;
 =09=09}
 =09=09/* register multiplier */
 =09=09edge =3D !!(readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0)) &
@@ -1060,7 +1018,7 @@ static int clk_wzrd_probe(struct platform_device *pde=
v)
 =09} else {
 =09=09if (nr_outputs =3D=3D 1) {
 =09=09=09clk_wzrd->clk_data.hws[0] =3D clk_wzrd_register_divider
-=09=09=09=09(&pdev->dev, clkout_name,
+=09=09=09=09(dev, clkout_name,
 =09=09=09=09__clk_get_name(clk_wzrd->clk_in1), 0,
 =09=09=09=09clk_wzrd->base, WZRD_CLK_CFG_REG(is_versal, 3),
 =09=09=09=09WZRD_CLKOUT_DIVIDE_SHIFT,
@@ -1068,7 +1026,7 @@ static int clk_wzrd_probe(struct platform_device *pde=
v)
 =09=09=09=09CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
 =09=09=09=09DIV_ALL, &clkwzrd_lock);
=20
-=09=09=09goto out;
+=09=09=09return 0;
 =09=09}
 =09=09reg =3D readl(clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0));
 =09=09reg_f =3D reg & WZRD_CLKFBOUT_FRAC_MASK;
@@ -1079,19 +1037,19 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09=09mult =3D (reg * 1000) + reg_f;
 =09=09div =3D 1000;
 =09}
-=09clk_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul", dev_name(=
&pdev->dev));
+=09clk_name =3D devm_kasprintf(dev, GFP_KERNEL, "%s_mul", dev_name(dev));
 =09if (!clk_name)
 =09=09return -ENOMEM;
 =09clk_wzrd->clks_internal[wzrd_clk_mul] =3D devm_clk_hw_register_fixed_fa=
ctor
-=09=09=09(&pdev->dev, clk_name,
+=09=09=09(dev, clk_name,
 =09=09=09 __clk_get_name(clk_wzrd->clk_in1),
 =09=09=090, mult, div);
 =09if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
-=09=09dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
+=09=09dev_err(dev, "unable to register fixed-factor clock\n");
 =09=09return PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
 =09}
=20
-=09clk_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul_div", dev_n=
ame(&pdev->dev));
+=09clk_name =3D devm_kasprintf(dev, GFP_KERNEL, "%s_mul_div", dev_name(dev=
));
 =09if (!clk_name)
 =09=09return -ENOMEM;
=20
@@ -1108,31 +1066,29 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
=20
 =09=09clk_mul_name =3D clk_hw_get_name(clk_wzrd->clks_internal[wzrd_clk_mu=
l]);
 =09=09clk_wzrd->clks_internal[wzrd_clk_mul_div] =3D
-=09=09=09devm_clk_hw_register_fixed_factor(&pdev->dev, clk_name,
-=09=09=09=09=09=09=09  clk_mul_name, 0, 1, div);
+=09=09=09devm_clk_hw_register_fixed_factor(dev, clk_name, clk_mul_name, 0,=
 1, div);
 =09} else {
 =09=09ctrl_reg =3D clk_wzrd->base + WZRD_CLK_CFG_REG(is_versal, 0);
 =09=09clk_wzrd->clks_internal[wzrd_clk_mul_div] =3D devm_clk_hw_register_d=
ivider
-=09=09=09(&pdev->dev, clk_name,
+=09=09=09(dev, clk_name,
 =09=09=09 clk_hw_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
 =09=09=09flags, ctrl_reg, 0, 8, CLK_DIVIDER_ONE_BASED |
 =09=09=09CLK_DIVIDER_ALLOW_ZERO, &clkwzrd_lock);
 =09}
 =09if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
-=09=09dev_err(&pdev->dev, "unable to register divider clock\n");
+=09=09dev_err(dev, "unable to register divider clock\n");
 =09=09return PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
 =09}
=20
 =09/* register div per output */
 =09for (i =3D nr_outputs - 1; i >=3D 0 ; i--) {
-=09=09clkout_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL,
-=09=09=09=09=09     "%s_out%d", dev_name(&pdev->dev), i);
+=09=09clkout_name =3D devm_kasprintf(dev, GFP_KERNEL, "%s_out%d", dev_name=
(dev), i);
 =09=09if (!clkout_name)
 =09=09=09return -ENOMEM;
=20
 =09=09if (is_versal) {
 =09=09=09clk_wzrd->clk_data.hws[i] =3D clk_wzrd_ver_register_divider
-=09=09=09=09=09=09(&pdev->dev,
+=09=09=09=09=09=09(dev,
 =09=09=09=09=09=09 clkout_name, clk_name, 0,
 =09=09=09=09=09=09 clk_wzrd->base,
 =09=09=09=09=09=09 (WZRD_CLK_CFG_REG(is_versal, 3) + i * 8),
@@ -1144,7 +1100,7 @@ static int clk_wzrd_probe(struct platform_device *pde=
v)
 =09=09} else {
 =09=09=09if (!i)
 =09=09=09=09clk_wzrd->clk_data.hws[i] =3D clk_wzrd_register_divf
-=09=09=09=09=09(&pdev->dev, clkout_name, clk_name, flags, clk_wzrd->base,
+=09=09=09=09=09(dev, clkout_name, clk_name, flags, clk_wzrd->base,
 =09=09=09=09=09(WZRD_CLK_CFG_REG(is_versal, 2) + i * 12),
 =09=09=09=09=09WZRD_CLKOUT_DIVIDE_SHIFT,
 =09=09=09=09=09WZRD_CLKOUT_DIVIDE_WIDTH,
@@ -1152,7 +1108,7 @@ static int clk_wzrd_probe(struct platform_device *pde=
v)
 =09=09=09=09=09DIV_O, &clkwzrd_lock);
 =09=09=09else
 =09=09=09=09clk_wzrd->clk_data.hws[i] =3D clk_wzrd_register_divider
-=09=09=09=09=09(&pdev->dev, clkout_name, clk_name, 0, clk_wzrd->base,
+=09=09=09=09=09(dev, clkout_name, clk_name, 0, clk_wzrd->base,
 =09=09=09=09=09(WZRD_CLK_CFG_REG(is_versal, 2) + i * 12),
 =09=09=09=09=09WZRD_CLKOUT_DIVIDE_SHIFT,
 =09=09=09=09=09WZRD_CLKOUT_DIVIDE_WIDTH,
@@ -1160,13 +1116,64 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09=09=09=09=09DIV_O, &clkwzrd_lock);
 =09=09}
 =09=09if (IS_ERR(clk_wzrd->clk_data.hws[i])) {
-=09=09=09dev_err(&pdev->dev,
-=09=09=09=09"unable to register divider clock\n");
+=09=09=09dev_err(dev, "unable to register divider clock\n");
 =09=09=09return PTR_ERR(clk_wzrd->clk_data.hws[i]);
 =09=09}
 =09}
=20
-out:
+=09return 0;
+}
+
+static int clk_wzrd_probe(struct platform_device *pdev)
+{
+=09struct device_node *np =3D pdev->dev.of_node;
+=09struct clk_wzrd *clk_wzrd;
+=09unsigned long rate;
+=09int nr_outputs;
+=09int ret;
+
+=09ret =3D of_property_read_u32(np, "xlnx,nr-outputs", &nr_outputs);
+=09if (ret || nr_outputs > WZRD_NUM_OUTPUTS)
+=09=09return -EINVAL;
+
+=09clk_wzrd =3D devm_kzalloc(&pdev->dev, struct_size(clk_wzrd, clk_data.hw=
s, nr_outputs),
+=09=09=09=09GFP_KERNEL);
+=09if (!clk_wzrd)
+=09=09return -ENOMEM;
+=09platform_set_drvdata(pdev, clk_wzrd);
+
+=09clk_wzrd->base =3D devm_platform_ioremap_resource(pdev, 0);
+=09if (IS_ERR(clk_wzrd->base))
+=09=09return PTR_ERR(clk_wzrd->base);
+
+=09ret =3D of_property_read_u32(np, "xlnx,speed-grade", &clk_wzrd->speed_g=
rade);
+=09if (!ret) {
+=09=09if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
+=09=09=09dev_warn(&pdev->dev, "invalid speed grade '%d'\n",
+=09=09=09=09 clk_wzrd->speed_grade);
+=09=09=09clk_wzrd->speed_grade =3D 0;
+=09=09}
+=09}
+
+=09clk_wzrd->clk_in1 =3D devm_clk_get(&pdev->dev, "clk_in1");
+=09if (IS_ERR(clk_wzrd->clk_in1))
+=09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->clk_in1),
+=09=09=09=09     "clk_in1 not found\n");
+
+=09clk_wzrd->axi_clk =3D devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
+=09if (IS_ERR(clk_wzrd->axi_clk))
+=09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->axi_clk),
+=09=09=09=09     "s_axi_aclk not found\n");
+=09rate =3D clk_get_rate(clk_wzrd->axi_clk);
+=09if (rate > WZRD_ACLK_MAX_FREQ) {
+=09=09dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n", rate);
+=09=09return -EINVAL;
+=09}
+
+=09ret =3D clk_wzrd_register_output_clocks(&pdev->dev, nr_outputs);
+=09if (ret)
+=09=09return ret;
+
 =09clk_wzrd->clk_data.num =3D nr_outputs;
 =09ret =3D devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get, =
&clk_wzrd->clk_data);
 =09if (ret) {
--=20
2.46.0



