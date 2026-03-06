Return-Path: <devicetree+bounces-272132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GhxI/HcqmlqXwEAu9opvQ
	(envelope-from <devicetree+bounces-272132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:56:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B06F82222E3
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:56:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F6C83049CB3
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 13:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5411133C51A;
	Fri,  6 Mar 2026 13:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="rLGgAIJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885B73939CF
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 13:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804928; cv=none; b=EOAKT6yTMqK2PWdWMTc7DruxUu+mjrW6nbh1tcnzPU/3WRPV6WH/BBS7vXReSRNg9lRLSz/4mcEsZQnNoUW8YS7rM5YzsGGQJGmNG084yIwYKUQz3Ub16Emk/+XSRTx/ZVPZ+C3ZENOKHdfvnVTlNDK14Syp2sB/FX71ZapyDG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804928; c=relaxed/simple;
	bh=tHyTmNiv3FTZ/H61OgV2oLKpsfPNjLHaPzrbeiCniH4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qjskBI6rKdbxnv3dLej/C6rUPzhWsSzYvXSmWsYyWVqsHuHZ/YbPQiflP/uMXg87VTVwZvFMloMfJereK0TJRRS7+qvRRJGVNqjoIkT3oY2tyKCkLBVzv0KvXguSxCeJjLdc4QD8o5Rnw3QwG7TQWNvUFSqYNUaNfW8w6gvKPbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=rLGgAIJw; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so3568725f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772804924; x=1773409724; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EHspA1nMRRBKEdBmLpX8hhFfkCXZ2adzsDZvyJnXm0g=;
        b=rLGgAIJw7BXlVX6FxlAkIh2yZ3H27oHy/DkVDrW9N/dDCIujL7maXI0XuJ39WQJhOv
         g0EqpwRP0EJ183KR/QHVpce1NncGU8pPwqz8vTgehOtAdEtuObSIhRnQkwahZCByN0uf
         0MshdaYGM89XkqlS5SuTuh8N4x8zRnRfsg3wOSGxBMqG0FCPj/rh4br0R1j1uSo0epdH
         u7Fatw35uyWroEk9w84RUwDs35nh8Q+SaJMIzCkUni4Jm74/pGLNSIj62Ba70A4K6Im9
         0s19HIekXYnfSfX8EVCpeSaw9ZdiS1FAJRB0b97Ybbie7LkWrS3wKGrruH0X7yiEw13B
         uNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772804924; x=1773409724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EHspA1nMRRBKEdBmLpX8hhFfkCXZ2adzsDZvyJnXm0g=;
        b=U41x1y/5AieUDnPIYAVSHRBmd6x5cqfqZpnokBlpt813wq0CssAYyWnU5tdq6Dr25r
         6DV2P6yuw1FqdvyClIi3546UKXpii7McluMbtFP6qfjuL+hQvZQ1PjxB1l8PwyMvuRbf
         QBbLkGdh/tv102nh++myAJhK+GETBEwWjGliYzQl0uXPbC3l1p6/VAJGRT0bLQVlVtRr
         Cemv4U7vkkKcw3F4Go5t3u/jeMj97twe9A+cVUbkcV5XZyGofZgm8zDbHCR3Lk/kfAQL
         oQkTXsdZi8gtAiqYLuFLreAIabBssfD47zE7qgkHo/IIqiNJT9UxTkrONWxYXkMKT/Mc
         w/WQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJh/dtDOaUK1RGCBaHPB0Pm304UnCk0onu/NfSGkraprcMZpWytrrDhagbrFT7aMt3aj9NpgVY6SfM@vger.kernel.org
X-Gm-Message-State: AOJu0YzA/cZh9nrgjsGEMCvvGbQQbedenBYzXziSmZuDUk/Y3B6Ovh2w
	zxwk/c4I+ZxBL+d5goabxpEilqMyMuhpaiMl5gqNiGXbk+xICdBvbwX5bdt1S6RaC8g=
X-Gm-Gg: ATEYQzz7UApwIOUjxCob0hLuyz+7fySlm+WsGnTZf6SxsnC9Sye6NKt/Nh5XgEBj69L
	jc7kIp+UWC3zc2KFHbCXLtjKEHKjSJgovVIABpxJk0v0D3oFapWLHNBbCqTPO2DS3fYz0R42NIt
	oOrU4ej3MgbftnuCenq/leGWsLM7l/9vSSw4eBKc1XL34Uzv7v22A9CpkA8ff5Kl1mFT0kNOghf
	puVKEfsf6ZM097gyzdf4A+nbMLM+yd6TtxbzzixVSxiU4BjrUN72fUO/jM/eBV1795E2OY3Xt/e
	69kuSOCRMR2yB9EQGH/+nzvcEowEt1jD2NHNdwXnY/ToPV6cZet2vl00I/jmmLq3BLlbY+R7Oz/
	5p8kDzo0zAFdZ4gFPhYu2cBNtRKQzY3fmU76sRPQIuMYMrhP/w6C51Cua0blKhX2aBlIrOZvSvo
	tOkGuB9N16zPncESyZdGTGm3RuzxHk21ScuIqy7Vycvptrq2RWdYlju7Ite4vrOQwq3W3p4Rw+Z
	0TQ
X-Received: by 2002:a05:6000:1a8d:b0:439:b79d:b9a6 with SMTP id ffacd0b85a97d-439cfc2e4d2mr11182498f8f.11.1772804923848;
        Fri, 06 Mar 2026 05:48:43 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4304767f8f.2.2026.03.06.05.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 05:48:43 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 14:48:38 +0100
Subject: [PATCH 2/3] clk: qcom: Add support for GXCLK for Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-gxclkctl-v1-2-00b09ee159a7@fairphone.com>
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772804920; l=1876;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=tHyTmNiv3FTZ/H61OgV2oLKpsfPNjLHaPzrbeiCniH4=;
 b=4pe087HcAY+QR4HJ6YGSGYK4ICTRgOj/8Hw/nMu1G9mRpX2w56izbXTkcBw02XWagU9dot/cB
 1Z9e0EOR3KdBBc9jDo0Ezlux02aqD0/0sCLmPhx36LU7cxbb6QH6+Mf
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: B06F82222E3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272132-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Action: no action

GXCLKCTL (Graphics GX Clock Controller) is a block dedicated to managing
clocks for the GPU subsystem on GX power domain. The GX clock controller
driver manages only the GX GDSC and the rest of the resources of the
controller are managed by the firmware.

We can use the existing kaanapali driver for Milos as well since the
GX_CLKCTL_GX_GDSC supported by the Linux driver requires the same
configuration.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/clk/qcom/Makefile             | 2 +-
 drivers/clk/qcom/gxclkctl-kaanapali.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
index 90ea21c3b7cf..155830140d26 100644
--- a/drivers/clk/qcom/Makefile
+++ b/drivers/clk/qcom/Makefile
@@ -182,7 +182,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
 obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
 obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
 obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
-obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o
+obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o gxclkctl-kaanapali.o
 obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
 obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
 obj-$(CONFIG_SM_TCSRCC_8650) += tcsrcc-sm8650.o
diff --git a/drivers/clk/qcom/gxclkctl-kaanapali.c b/drivers/clk/qcom/gxclkctl-kaanapali.c
index 3ee512f34967..d3899420d6f2 100644
--- a/drivers/clk/qcom/gxclkctl-kaanapali.c
+++ b/drivers/clk/qcom/gxclkctl-kaanapali.c
@@ -54,6 +54,7 @@ static const struct qcom_cc_desc gx_clkctl_kaanapali_desc = {
 static const struct of_device_id gx_clkctl_kaanapali_match_table[] = {
 	{ .compatible = "qcom,glymur-gxclkctl" },
 	{ .compatible = "qcom,kaanapali-gxclkctl" },
+	{ .compatible = "qcom,milos-gxclkctl" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, gx_clkctl_kaanapali_match_table);

-- 
2.53.0


