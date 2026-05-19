Return-Path: <devicetree+bounces-299763-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDbeBWECDGp0TgUAu9opvQ
	(envelope-from <devicetree+bounces-299763-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:25:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A2D57803F
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 08:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEB99306F1BD
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA043921D8;
	Tue, 19 May 2026 06:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rgPQoMFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5A339E162
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 06:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779171434; cv=none; b=Caqw6qbVm6q+hVZlBhhQDdzXa4st0A2AeuLuCbuCztVtuv4Za5U7B634bNwV0msGUdBjKNdAdgJ+qaIGwJUa50+IqlwPKwTx9XNHUU5HMhrrPVqVzg9EGkaaMU9n8ciaa5ba0hcWQfWJfyXWU2N+tiVbZoC6CwRoVj8Q7W0eVBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779171434; c=relaxed/simple;
	bh=QQ5srJ1k52NpjI+Q3HaLSa9pVnjXdE8OZht6hpCEbfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cx98XiHm4KRyLkfpSgZnUdvgblqhIBIyI4sAQm08XGQMZSAa4FHw5G/AxHLkLLzR2OcTvTvEM4zVVjcE7umv6HUCPkfBur5lmCHMucK5Hj55AUmzboDNFCRsr3sF/aQH1urimmJME/zZdOAzpdARxt6fQ0flAgEvcEiOwXv3bYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rgPQoMFP; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82fbdd60b64so2576811b3a.3
        for <devicetree@vger.kernel.org>; Mon, 18 May 2026 23:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779171433; x=1779776233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0chwJesI0BcvhVwn8jIR2v8RSVOpIFD5ULcDL4OMxNA=;
        b=rgPQoMFPLle+28rH1tSBPZIzNWSx/GoxgwnkZcpGHsRJu1fkpOdfWB7yoIAordyTXV
         kUMsJNfxbnRNcky2AulPpg8LrksLZPx81alNSAiBC8jh78iIuSoBedlomplm3BimyiTA
         Wg/wu3W3PgErxcOy3mxdeTVzX3Gw50K+3I6KfXBwDoXYzqGXbtLq2ShhaSjtpETMHjnJ
         cpkLYlGQ/44Gflqrm/2lXyypyBB/4jGFqaZULwlA3efe4fziefVuHy5detvzZeVKR2uR
         ZH9zLaq9w9EQcNGNwsPchHJWX0T4HN4XbQsEka4jIB9+oFU013YWvYaT9esHYt+kcsEq
         46xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779171433; x=1779776233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0chwJesI0BcvhVwn8jIR2v8RSVOpIFD5ULcDL4OMxNA=;
        b=iXi5fwmumG4dUU48lnB0eHE4j46muFIiInoiJTBjGkPuGBNQPIDv3Uy7nsLlSoovWU
         V6wDeSGeOHi/ncEhjmdYWJSBbBM9ocdFWAGi0AW5lVZrKqBVeGmuwPGAntMfuWkMHWkw
         evMtZ11zH2Q4H480K8FgVQjpL+NZUT4EC8ddmn1ngetNMzjtWM+mDPqRs2rULFUtE7Cb
         QrghXMbvEtnno/1q1bauIknQ3AKsXxPZtqVR86lyUkq+RdXYneyvAkkv5aWrNg42qONy
         xdVxazV7kjWhIg0tC9yb35+nytn+jbiYC0Jp7MoYUBaNYGlRNfVjdofqBYfBSHIZ52es
         EYqQ==
X-Forwarded-Encrypted: i=1; AFNElJ9BarUebRogdRIpfEKk8H/vCzg8d4vUba5MNtPjfKWyk0ahQQN9cViYMA8726p7OdjiB64vuQxRtHoj@vger.kernel.org
X-Gm-Message-State: AOJu0YzAZOZkcEeVFr4c9ld5mloKeB3mt2ep47O+hu8zpdKXnH/ApAB5
	rsz65I8SyXQoKEzBnDuvvXKdCo/v5AtSClMLAsDTDL2OcKqgFUlEnoMA
X-Gm-Gg: Acq92OH68/mVj7rO7LYAZR3Lqay26jEEPaBDLlXW0IZmPMN4HIRGECwaCN/1Tq81wzR
	HaXTxeovNH/3N5pVZ5bAUYYBOPL/XicQ+GMTjLnngOZL6ntDJO94LsBmJCGijzAG+lMLaD/b9vE
	tWfr22Y5fFIQy1mhzn/+eaAaXXT2JXRsEht0ahAjjWp7GFdROkXahRhTdkZiiguWwSgSJ9R/Jno
	zPD8Jswo79igOhZPyyCrmTBDv6glwJwev5CjkFBEZpYbUtuUYZb4w3rGS3q7lgRH74gmqYcfvHK
	DDGCE9jZVMPzqoeLAFfLb4TzZQ6jH/NMcLSV+PArzHZpSOpF61NM36kq+5HijMK3aztXa6tRqW0
	eRUizH9B5g1DV51Pr71NDXyldc52WuzGhxNHaD3eARThw0WhBMI/IesLxsh4I0efCy8NDCOUrQj
	Ht0mNaNBy7N1oRUbFFl2MKrvN/EmqvNQ==
X-Received: by 2002:a05:6a00:1797:b0:835:5aa3:2dab with SMTP id d2e1a72fcca58-83f33c333f4mr18789859b3a.6.1779171433260;
        Mon, 18 May 2026 23:17:13 -0700 (PDT)
Received: from [10.240.146.115] ([2.27.148.101])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83f19c7f202sm16112266b3a.43.2026.05.18.23.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 23:17:12 -0700 (PDT)
From: Zhengyu He <hezhy472013@gmail.com>
Date: Tue, 19 May 2026 14:15:56 +0800
Subject: [PATCH 2/3] spi: fsl-qspi: add SpacemiT K3 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-k3-pico-itx-qspi-v1-v1-2-c32afeeaf741@gmail.com>
References: <20260519-k3-pico-itx-qspi-v1-v1-0-c32afeeaf741@gmail.com>
In-Reply-To: <20260519-k3-pico-itx-qspi-v1-v1-0-c32afeeaf741@gmail.com>
To: Han Xu <han.xu@nxp.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-spi@vger.kernel.org, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 Zhengyu He <hezhy472013@gmail.com>, Cody Kang <cody.kang.hk@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005; i=hezhy472013@gmail.com;
 h=from:subject:message-id; bh=QQ5srJ1k52NpjI+Q3HaLSa9pVnjXdE8OZht6hpCEbfA=;
 b=owEBbQKS/ZANAwAKAc32nDaAuA3YAcsmYgBqDABXIRd9mve9a3LQBUJIUGDCj75EfmGr6SWgm
 EgLvgHfmoaJAjMEAAEKAB0WIQS9XD2kxy1NmfC2u/XN9pw2gLgN2AUCagwAVwAKCRDN9pw2gLgN
 2B0UEACbVrBMVl9AKoDlOthIdXOqinDtkvcCtGfWilREm6uKD0VHDaDqUbYqUyyngN2LzVqqsbM
 4fPTAtLTqOVySq3qbYFX3li10q48NOGWn5QFQ5v+JNkNd/Fe2l8mLhiSiKRtYG4M34VtWUBChoL
 L4FVnsJ7mLlU5zChZFZYySvPDRsgheMHCJpL1MUvfnB3Ln3iitWB2cyhV1Ir1LHYUnALTrVSzIU
 X7a/fAWMFmGN3z3Oiow1a11VMmZPFgW3jtrXMavZ3hVCYbUtnpZkwuYRUAReJqNEdFfm4m2WOYe
 +8PnK2BUOn2U7pnF4I8qnlcAqU2h1xxUGSXXywuRLuPigKDnpTAmhYwhtZqkpJTt4UDNkMbt57j
 JwzUhz1F16xy8nm2mHzgB2folx/0lKSpcxEz9VkjmixyFn6WA/SAUzBCQnK84kXdhFuJxavaN0v
 YeIJ9Fms027WtDd8alyE6tnGz5Nue//wz9sXiIcd9dbi/Y3vA6y5gMtXVsQ80hTZ9XkfEcm1n0S
 orR0nudtNEWioux2TH/BmzcDbRE/rxyUAzeC5Y6Be484DxyHtGdNjw1RxFS4WKD4ZJs8PaHivbf
 B0OcC9+Y6MuCpmZjh0N8Cb22uSIcdI9nfNP5iPdRJNBPgeWp0uaweU83FV4ew/fE7d6tYYYY267
 UwbX6qasCIKqbwQ==
X-Developer-Key: i=hezhy472013@gmail.com; a=openpgp;
 fpr=26CA97B1A229C229822278F254AF850165158959
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299763-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,outlook.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hezhy472013@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,outlook.com:email]
X-Rspamd-Queue-Id: 73A2D57803F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

K3 uses the FSL QSPI controller with the same programming model as the
existing SpacemiT integration, but has its own compatible string.

Add the match entry so DTs using the K3 compatible bind to the driver.

Signed-off-by: Zhengyu He <hezhy472013@gmail.com>
Signed-off-by: Cody Kang <cody.kang.hk@outlook.com>
---
 drivers/spi/spi-fsl-qspi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index 57358851029b..bb94fae32609 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -1015,6 +1015,7 @@ static const struct of_device_id fsl_qspi_dt_ids[] = {
 	{ .compatible = "fsl,ls1021a-qspi", .data = &ls1021a_data, },
 	{ .compatible = "fsl,ls2080a-qspi", .data = &ls2080a_data, },
 	{ .compatible = "spacemit,k1-qspi", .data = &spacemit_k1_data, },
+	{ .compatible = "spacemit,k3-qspi", .data = &spacemit_k1_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, fsl_qspi_dt_ids);

-- 
2.53.0


