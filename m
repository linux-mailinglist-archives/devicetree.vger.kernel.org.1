Return-Path: <devicetree+bounces-90722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE453946931
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 12:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E13F1C20905
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 10:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45C9E14D70F;
	Sat,  3 Aug 2024 10:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="ixBI5W35"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD69E136338
	for <devicetree@vger.kernel.org>; Sat,  3 Aug 2024 10:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722682680; cv=none; b=DhEzWyvrwhFJi7WEQomWwKHHsu6Ny8V79WdH/uSuW1ra1AmH6TfB2O999OmdzJQER4y9yP6LwSqYMw9YNhdBTusyFZYRHlus42bs42LaLBRXANDLuOPjS/iu3bPz+PTxQdgIV/28SOpg3rbYDHkvDel6TxN8/g3DmW32MSzM6zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722682680; c=relaxed/simple;
	bh=qeGqzsOq6hvnt2Ssx+xjMH+EgeX1O9a/0x2cswTGQyM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CQGmVqhm7PMLg3auPDkrspYjMgGzw23pv9KxEXf7yUe3AqXEZDeLoIzJsFqYt4JKoGftegJZhXDLLi0KJS7xkj6XkPS4fHbe4tFsbMsNZXZjajt8+wv7zdsIkOslidhBAuvYuVVhNx7v0YSnKhrTrJ+5dgvDgCUwKJrVpFM+tL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=ixBI5W35; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1722682675; x=1722941875;
	bh=hgmQYgGbKBNIE3jKAVuoNIdAjegNRZ9f/iIDrU2/RLw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ixBI5W35ybTOngt+f3ZS3wHskUqHRlFNSAwxMUQRlIyf+h2M4bzAHXqMX/frif8cV
	 Ld3+CzJhOyQCdl875fS3nR63vqdPEvvo6DpCR2Eifrtlim6F5ZLYv6pBoKtNlPvjH+
	 4jx7liAVq44evMVYku+pOxX2tH/a1Kdq3ly8KeKAa0cgLJtgpXyHzjIZacfzIHnzzM
	 pRJ7l2Y4YpWWXXNtW2z1eRge2lxnJTXsWDUmwKbbVp/KOrAxlVKmbQTVZkO9HEn8GN
	 jWWh88mAkajIsoFxBfSICWZHc6LLv9I1OwlaKU3+CN5aLo/esG6U6UE/i4WSjAM4/5
	 jhSBf51ZMjj4Q==
Date: Sat, 03 Aug 2024 10:57:50 +0000
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Harry Austen <hpausten@protonmail.com>
Cc: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Harry Austen <hpausten@protonmail.com>
Subject: [PATCH v2 1/9] clk: clocking-wizard: simplify probe/remove with devres helpers
Message-ID: <20240803105702.9621-2-hpausten@protonmail.com>
In-Reply-To: <20240803105702.9621-1-hpausten@protonmail.com>
References: <20240803105702.9621-1-hpausten@protonmail.com>
Feedback-ID: 53116287:user:proton
X-Pm-Message-ID: 33b6043ca5154c7c9ec3ae9711320c530f26e506
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
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
v1 -> v2: Add Stephen's R-b tag

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
2.46.0



