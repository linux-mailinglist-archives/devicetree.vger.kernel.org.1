Return-Path: <devicetree+bounces-86932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD5D93811F
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2024 14:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A0E22821D3
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2024 12:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C63912D744;
	Sat, 20 Jul 2024 12:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="uUZfyQV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1221C2F5A;
	Sat, 20 Jul 2024 12:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721476900; cv=none; b=ZH7Ud0YRC5D5wrh0ewix0UrxSz4LVjsZsMtpHUi4+R7+rQ5UAzTyWEEvur05sm+xKF91hfWMHSHWdN5LykcA9AovoTFzx+xey/ua5ABPJ/ZXaTqTR3IZUAYRJhjVckSZX+vvi6iQ2cJu1GdbSDmdQLt6R8O5krbdzfZCNvuYG2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721476900; c=relaxed/simple;
	bh=BZ94NbB2z0EXNIH14qb+/9duAgGJRupVsDZWibifBx8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=a/1Q6nEd6Zd5e083i2Y86nSvs/CFVSgseVp8j7fdPlYxUGN6YRWddCuNZIZckYkE8BYB77k0Krb+9ApGavJbQnptg3gZ+AEqE1FXG0hPA8+PFaq2FJi2FX1pHIXifV+klCk6O8rwE35DDeUZ8s8K7ShKFVmDeLNemBPLLxajoDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=uUZfyQV8; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1721476896; x=1721736096;
	bh=MfAnLt1AlVyRFPTE7VlNMDNXUNxM1pCavT/S7LvdTjY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=uUZfyQV8fyoO4u4GJsSjWBc/DEmYTg0AhU1o6fJKxllnaHke5L9QWvOu+YaEz1Rdg
	 7X8RDbcQCTChlCVawkIpBIhJR4lxh8jU/5x96lXpr9ILuln2aeyah0mgn3ih9xserM
	 hUnVMOfeGX74FMB9TX6P0dksujDTOTLjZgFlvSeBTMhrYOgBnIRFZ96qAVExOq3qC+
	 dJn66amciCKJ8s0kPpTvDP2HzBpQmDOINlO1sEUhK+7AI0b9h6jHlDBT06UrBAf/E6
	 DA2eB1VEq9x3yTk30RURnHOQ04DMpWV/HiNWN2oE5lOJxn0LpkfIzpuYYgszIsEMhM
	 vYhSseb/VgriA==
Date: Sat, 20 Jul 2024 12:01:29 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH 1/7] clk: clocking-wizard: simplify probe/remove with devres helpers
Message-ID: <20240720120048.36758-2-hpausten@protonmail.com>
In-Reply-To: <20240720120048.36758-1-hpausten@protonmail.com>
References: <20240720120048.36758-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 5c41ff769d54047beb7e068d8bc3d90dc32a0afa
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Remove need to do various operations in remove callback and error paths
by utilising device managed versions of clock and notifier APIs.

Signed-off-by: Harry Austen <hpausten@protonmail.com>
---
 drivers/clk/xilinx/clk-xlnx-clock-wizard.c | 48 ++++++----------------
 1 file changed, 13 insertions(+), 35 deletions(-)

diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xilin=
x/clk-xlnx-clock-wizard.c
index 19eb3fb7ae319..0ca045849ea3e 100644
--- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
@@ -1001,21 +1001,15 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->clk_in1),
 =09=09=09=09     "clk_in1 not found\n");
=20
-=09clk_wzrd->axi_clk =3D devm_clk_get(&pdev->dev, "s_axi_aclk");
+=09clk_wzrd->axi_clk =3D devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
 =09if (IS_ERR(clk_wzrd->axi_clk))
 =09=09return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->axi_clk),
 =09=09=09=09     "s_axi_aclk not found\n");
-=09ret =3D clk_prepare_enable(clk_wzrd->axi_clk);
-=09if (ret) {
-=09=09dev_err(&pdev->dev, "enabling s_axi_aclk failed\n");
-=09=09return ret;
-=09}
 =09rate =3D clk_get_rate(clk_wzrd->axi_clk);
 =09if (rate > WZRD_ACLK_MAX_FREQ) {
 =09=09dev_err(&pdev->dev, "s_axi_aclk frequency (%lu) too high\n",
 =09=09=09rate);
-=09=09ret =3D -EINVAL;
-=09=09goto err_disable_clk;
+=09=09return -EINVAL;
 =09}
=20
 =09data =3D device_get_match_data(&pdev->dev);
@@ -1023,16 +1017,12 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09=09is_versal =3D data->is_versal;
=20
 =09ret =3D of_property_read_u32(np, "xlnx,nr-outputs", &nr_outputs);
-=09if (ret || nr_outputs > WZRD_NUM_OUTPUTS) {
-=09=09ret =3D -EINVAL;
-=09=09goto err_disable_clk;
-=09}
+=09if (ret || nr_outputs > WZRD_NUM_OUTPUTS)
+=09=09return -EINVAL;
=20
 =09clkout_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_out0", dev_n=
ame(&pdev->dev));
-=09if (!clkout_name) {
-=09=09ret =3D -ENOMEM;
-=09=09goto err_disable_clk;
-=09}
+=09if (!clkout_name)
+=09=09return -ENOMEM;
=20
 =09if (is_versal) {
 =09=09if (nr_outputs =3D=3D 1) {
@@ -1090,18 +1080,15 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09=09div =3D 1000;
 =09}
 =09clk_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul", dev_name(=
&pdev->dev));
-=09if (!clk_name) {
-=09=09ret =3D -ENOMEM;
-=09=09goto err_disable_clk;
-=09}
+=09if (!clk_name)
+=09=09return -ENOMEM;
 =09clk_wzrd->clks_internal[wzrd_clk_mul] =3D clk_register_fixed_factor
 =09=09=09(&pdev->dev, clk_name,
 =09=09=09 __clk_get_name(clk_wzrd->clk_in1),
 =09=09=090, mult, div);
 =09if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 =09=09dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
-=09=09ret =3D PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
-=09=09goto err_disable_clk;
+=09=09return PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
 =09}
=20
 =09clk_name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s_mul_div", dev_n=
ame(&pdev->dev));
@@ -1197,13 +1184,14 @@ static int clk_wzrd_probe(struct platform_device *p=
dev)
 =09if (clk_wzrd->speed_grade) {
 =09=09clk_wzrd->nb.notifier_call =3D clk_wzrd_clk_notifier;
=20
-=09=09ret =3D clk_notifier_register(clk_wzrd->clk_in1,
-=09=09=09=09=09    &clk_wzrd->nb);
+=09=09ret =3D devm_clk_notifier_register(&pdev->dev, clk_wzrd->clk_in1,
+=09=09=09=09=09=09 &clk_wzrd->nb);
 =09=09if (ret)
 =09=09=09dev_warn(&pdev->dev,
 =09=09=09=09 "unable to register clock notifier\n");
=20
-=09=09ret =3D clk_notifier_register(clk_wzrd->axi_clk, &clk_wzrd->nb);
+=09=09ret =3D devm_clk_notifier_register(&pdev->dev, clk_wzrd->axi_clk,
+=09=09=09=09=09=09 &clk_wzrd->nb);
 =09=09if (ret)
 =09=09=09dev_warn(&pdev->dev,
 =09=09=09=09 "unable to register clock notifier\n");
@@ -1215,9 +1203,6 @@ static int clk_wzrd_probe(struct platform_device *pde=
v)
 =09clk_unregister(clk_wzrd->clks_internal[1]);
 err_rm_int_clk:
 =09clk_unregister(clk_wzrd->clks_internal[0]);
-err_disable_clk:
-=09clk_disable_unprepare(clk_wzrd->axi_clk);
-
 =09return ret;
 }
=20
@@ -1232,13 +1217,6 @@ static void clk_wzrd_remove(struct platform_device *=
pdev)
 =09=09clk_unregister(clk_wzrd->clkout[i]);
 =09for (i =3D 0; i < wzrd_clk_int_max; i++)
 =09=09clk_unregister(clk_wzrd->clks_internal[i]);
-
-=09if (clk_wzrd->speed_grade) {
-=09=09clk_notifier_unregister(clk_wzrd->axi_clk, &clk_wzrd->nb);
-=09=09clk_notifier_unregister(clk_wzrd->clk_in1, &clk_wzrd->nb);
-=09}
-
-=09clk_disable_unprepare(clk_wzrd->axi_clk);
 }
=20
 static const struct of_device_id clk_wzrd_ids[] =3D {
--=20
2.45.2



