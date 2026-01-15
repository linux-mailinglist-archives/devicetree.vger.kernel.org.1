Return-Path: <devicetree+bounces-255806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B70DD2951A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67B2930BEDB0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D18B23314DC;
	Thu, 15 Jan 2026 23:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="OwQ1zwsq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7378331238
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520581; cv=none; b=iyK5yy4IcTT/Dh1suMIk10Lwfmx2C2twctxKUxsLX21KmKYRZQuYl9KEmi4seZI0V09tXFhBf4f3KO6thLVrdyI2jDScVyu83FgwDZOOGaUuM0d2nK7xZOGJ0REMZLBO3Zdi4ZxuXsa+fADefLpr7CxtIan8s6iiEsLPVQt7br8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520581; c=relaxed/simple;
	bh=Ylr1ksiIyLAyPY7iXL/dycbAN3cQLzZmATzrikSFelA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qck8ZQQp7EjeRQDx36OkGPCdSluL3/pFKDuZxMxxkhPL+Q5Z4fPoI/mbafUWTFl3hUKlzvla7aCl+JBbHYrywWBYa64x1VvvBqz20wIXMQFyE2HMtMhp437iBodtg+H3Woy9OFLuGa4/ElxuMmNPF6Chu1X6Pv/cTmoAGV+zGH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=OwQ1zwsq; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-7904a401d5cso16316667b3.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768520573; x=1769125373; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z0Wiua7ymfJDhSGN5M3Dn0d7IWpEsqVX/pz6WUwMkns=;
        b=OwQ1zwsqJddjTJitEZSy0LnAf0QQ2cEB+5midBl2oG6zvHiWl1myUbexlMtp1F3IRX
         RBqutwr6eXdmdk0SgwjsIvSt68s+8bZuMRKlFrbnST69AcFAawlGx9zradzEz6erIvmY
         F+iCF9l+L4ec5hi4i2k6yyueJmzdxDn7Juq2NW30nPDhhTvikrnEvVmxRHJOdN9FoaWQ
         2uKPsVmHr/wmUmhAzTb4BbUnvbSDA2O+v6noAgJNgDMuQAZ9CSsmsbRXPuKhvv9M3k1l
         +nyKDLpN+xkzGvfZ8Obv0fJlaxVOXMUV5+e20Fj/Onxxm9aGf5yolz96R1L2olv2Johk
         yxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768520573; x=1769125373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z0Wiua7ymfJDhSGN5M3Dn0d7IWpEsqVX/pz6WUwMkns=;
        b=SxLDvOuAa9nvQaSAeUd1rQ1IgbxUtsDB6rID7YYX6dH1Ap1gDJcWanWEbXpZmuwHNJ
         OkPrJKUozWxS4SkLdoaJmLCbdLfKsvqnyR0u1u1zvE7GfWanWrUv7lu2YwuRe5iQ3jce
         Wx0DwFrcuQeHpc+O/gwStFVZCHpVbLmjDhHa3/CT0+/QitCXkP8aClH627MI0v8itQ9K
         pFNZCPG0f+AdoHVfnXt/RcOnSb6rGwVnhJV1MYNfifgBKIhejrEJbr/tlRadCV7zkyRd
         nTM9MzwA11SvnYyuFVBEz4tFF9Qzrewi86f7iluiygsaRWQiSjVC6f0d350HOz2XzH6P
         Dq/w==
X-Forwarded-Encrypted: i=1; AJvYcCW/HIXBquOE8bsWdHN0I88Gg59SQ1s21kKijPpKv0Sy1Mu/RWZoKFEGk2ksP8h0IUFiRggqAE46ewRT@vger.kernel.org
X-Gm-Message-State: AOJu0YxP6smZ5Q39PCqcZpY7KOppRV+Q9HkIvrA/JiBA59oBtItVpYtl
	S5Nlt+2drWso1YKPWOWKW6/LlaNf95NomaYus6FxWA6RyFY9LLl4cbEe/frSMRmvXFs=
X-Gm-Gg: AY/fxX4R3Shfj7p+tR+Gs/hbouHbg8YeuU+BO/KPzRFTF9cMYUotMa2qzwSfk9qXDut
	boQLpyq/tu/2aKbHt4DNmDyBm5yP7as+ikzI8S250Cqy2+xI666EujTl2+ciajaK/03zZP3Lyyv
	rze1r4/NPLQar2jtEU4T3uWKPMjRkl3P57zlze/7ktU2hMD/U1driR3iL89aYM2XQsk68GGb1i1
	/bXFL6/Ti2Auv+u+XnkdrnazMaVRym72mcG1pHjgTflHCEti3EXN4V3UvPl5NK+l7FUIh7dFTcO
	aW6lXg15CHYCa3jUEPArTMewe8+R/DDKF5C0sQ2ni0fvLqXqTAU0iSgyQB0kq5/sibFgBVCAfSM
	Zg7HmTzsDSkvwupW4Ncrw1WSRAO76F5loiRYxmMNiFDll9cctmm5gW4/He7pQDK4PhmjGQ666qS
	3+dSzUidTYOtz3Nj6V5rk0S+iwmTdEGzOqDXxPFwpK7tWkMWbbfvOvFoGa6VaSi1e5fEFPdlSEC
	x6rjXtbxw==
X-Received: by 2002:a05:690c:670f:b0:788:1cde:cac9 with SMTP id 00721157ae682-793c52b193cmr12384547b3.23.1768520572934;
        Thu, 15 Jan 2026 15:42:52 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-793c66c72aesm3027117b3.11.2026.01.15.15.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 15:42:52 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 15 Jan 2026 17:42:07 -0600
Subject: [PATCH 8/8] clk: tenstorrent: Add reset controller to Atlantis
 clock controller probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-atlantis-clocks-v1-8-7356e671f28b@oss.tenstorrent.com>
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
In-Reply-To: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
X-Mailer: b4 0.14.3

Create a reset auxiliary device during probe of clock controller

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
---
 drivers/clk/tenstorrent/atlantis-ccu.c | 59 ++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/clk/tenstorrent/atlantis-ccu.c b/drivers/clk/tenstorrent/atlantis-ccu.c
index f3a2ea49a82e..e4f56018907f 100644
--- a/drivers/clk/tenstorrent/atlantis-ccu.c
+++ b/drivers/clk/tenstorrent/atlantis-ccu.c
@@ -491,6 +491,7 @@ struct atlantis_ccu {
 struct atlantis_ccu_data {
 	struct clk_hw **hws;
 	size_t num;
+	const char *reset_name;
 };
 
 static const struct clk_parent_data osc_24m_clk[] = {
@@ -706,6 +707,7 @@ static struct clk_hw *atlantis_rcpu_clks[] = {
 static const struct atlantis_ccu_data atlantis_ccu_rcpu_data = {
 	.hws = atlantis_rcpu_clks,
 	.num = ARRAY_SIZE(atlantis_rcpu_clks),
+	.reset_name = "rcpu-reset"
 };
 
 static int atlantis_ccu_clocks_register(struct device *dev,
@@ -875,6 +877,59 @@ static int atlantis_ccu_clocks_register(struct device *dev,
 	return ret;
 }
 
+static void atlantis_cadev_release(struct device *dev)
+{
+	struct auxiliary_device *adev = to_auxiliary_dev(dev);
+
+	kfree(to_atlantis_ccu_adev(adev));
+}
+
+static void atlantis_adev_unregister(void *data)
+{
+	struct auxiliary_device *adev = data;
+
+	auxiliary_device_delete(adev);
+	auxiliary_device_uninit(adev);
+}
+
+static int atlantis_ccu_adev_register(struct device *dev,
+				      struct atlantis_ccu *ccu,
+				      const struct atlantis_ccu_data *data,
+				      const char *adev_name)
+{
+	struct atlantis_ccu_adev *cadev;
+	struct auxiliary_device *adev;
+	int ret;
+
+	cadev = kzalloc(sizeof(*cadev), GFP_KERNEL);
+	if (!cadev)
+		return -ENOMEM;
+
+	cadev->regmap = ccu->regmap;
+
+	adev = &cadev->adev;
+	adev->name = adev_name;
+	adev->dev.parent = dev;
+	adev->dev.release = atlantis_cadev_release;
+	adev->dev.of_node = dev->of_node;
+
+	ret = auxiliary_device_init(adev);
+	if (ret)
+		goto err_free_cadev;
+
+	ret = auxiliary_device_add(adev);
+	if (ret) {
+		auxiliary_device_uninit(adev);
+		return ret;
+	}
+
+	return devm_add_action_or_reset(dev, atlantis_adev_unregister, adev);
+
+err_free_cadev:
+	kfree(cadev);
+
+	return ret;
+}
 static int atlantis_ccu_probe(struct platform_device *pdev)
 {
 	const struct atlantis_ccu_data *data;
@@ -905,6 +960,10 @@ static int atlantis_ccu_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register clocks\n");
 
+	ret = atlantis_ccu_adev_register(dev, ccu, data, data->reset_name);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register resets\n");
+
 	return 0;
 }
 

-- 
2.43.0


