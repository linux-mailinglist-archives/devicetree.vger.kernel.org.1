Return-Path: <devicetree+bounces-258277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLjgDdfxcWlKZwAAu9opvQ
	(envelope-from <devicetree+bounces-258277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:45:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB9B64BE6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:45:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EEC2B624418
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7CA3A35DF;
	Thu, 22 Jan 2026 09:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAOSafwD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0047396B9C;
	Thu, 22 Jan 2026 09:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769074705; cv=none; b=Hq7cJNop8TSisOFNm2ob9d0yY+kELd82y+x6nMx0vlLHZhS4SWbzMVi06a+KkDVGjlzTnwOJsPIaog7hgbYw3ZnQcN2N4UsGz/vSwS/okqGi9/+6yVyFZKzpNOoqRKKc2uWuXbc1wBn9bubSaW9ICTh0Gi81wXOz6RI6tz5oK2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769074705; c=relaxed/simple;
	bh=Hq84LpvOFf1/vQuKeAQnCqf63YBB/YXyJlBeAj5UeDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tWlx4ap9ZrOl/a7UvSgxdGQavaXiMYJzcm3ODw5TDOJs6VUe1Ei5wvSv3p77lvdhuBXvMTYAD+t+AHKo57rp/jEcn3cj5jfFzUaq2mpdWZSB/BDWONbyRsUzRXpwKWOwVDkrBEoFLCM0iSokcpLLugqNVgHcl6lYQWIIk3K1//M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAOSafwD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A8B3C19423;
	Thu, 22 Jan 2026 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769074704;
	bh=Hq84LpvOFf1/vQuKeAQnCqf63YBB/YXyJlBeAj5UeDw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EAOSafwDF9dE3ulOzapkM5r5RTOOxZzFkjDXg0/spFi46+B4juDboTHcWWHgJ47T+
	 kUPzFQTqTDZhast/kSSQzFCBUgJrHTKlrE8IqNHdSRm026MngVShvQFwlgTcyqAcZQ
	 wT8OBU/V4teL9gmFXG710YsMDqMFD+Fn4cluLWlR6749NzRpMhEQ3Ay+ta5AGV5ulY
	 WjnF84QNFoz3HOxGQ+wXCDoJ4oX4wI7sewQ/PU3sNgtazUd80rp5eZjzj5iHJVzn8R
	 PC8V02NTzmXyaEfb59FStSimQM9hwsORbx9Hcqzst+UXK8iiSXDNM1lryXb89T3twG
	 Dg4Pv9vrTCKkA==
From: Yixun Lan <dlan@kernel.org>
Date: Thu, 22 Jan 2026 17:37:31 +0800
Subject: [PATCH v2 2/2] mmc: sdhci-of-k1: spacemit: Add support for K3 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-07-k3-mmc-v2-2-3c3ffef25e94@kernel.org>
References: <20260122-07-k3-mmc-v2-0-3c3ffef25e94@kernel.org>
In-Reply-To: <20260122-07-k3-mmc-v2-0-3c3ffef25e94@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>
Cc: Yixun Lan <dlan@kernel.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1943; i=dlan@kernel.org;
 h=from:subject:message-id; bh=Hq84LpvOFf1/vQuKeAQnCqf63YBB/YXyJlBeAj5UeDw=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpcfAE04NJvPNpshZPMp719z7XFGkqcX1F8qG09
 LO3iQFT2leJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaXHwBBsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+2rxg//XTOFckVTdAWaCqcQWPcmkXv/mT0KblDEiM+kGlOB37JXSP7NOORpt
 46ypuQNuL6uFvLD9A5lbu32qaZHNf9eu22AONUvGUN7q5jF5AKyQ38ArVihqN16a84bWQoiHYX5
 8qY/CVzND1zwX5pOA/bkaRo9DoBmblec/pn3JGLXbdIGr4WhuWdasv+54PATTh8QBnih7d5ziGD
 koX22bKSgVWkgieera7LxBT5dzRTZemFPtTR0FXEIUiJ2AtYIEp7U5ujIZSUuHmjFDkHHFsr2nU
 /GTGH47bsKhWMCV3/a2m0niYIVfF784ExfqcJpyYHyNXW7cL4IUw4o7wrQ8dT9ccjquAvEYXB1J
 9OeDc8g/yKOvUuF5k41Ev2RhAANrwlgWYX+YaMjEdTCa5cg9s+tw46dgNbmofQsMSDFECSupQxM
 HHd067bQ+uiuKaIz5O1s+O6hOXzuzribm44pMs/xUyZPM8cxi/JUjcy8kaCImVudK38cPm8+O8K
 SGhNNHpQUsgaPQ8wVvjjL8+EveKAqvJoCJV0SlHYTU72qGvrdlD37ne/gTxO7Pmxm1BoZQTcM49
 31P82i3BXnpPRy7gWPeiXrWLN1RtGVX8F5q3u/LTYff+E6qQl6O6ECoavT4YNNGbIvDRUf6gSpz
 OeZM+AiOj1xeGVOWpiWTTpy1NoMlxo=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-258277-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 1CB9B64BE6
X-Rspamd-Action: no action

The SDHCI controller found on SpacemiT K3 SoC share the same IP with K1
generation and introduce a compatible data to denote the change that broken
64BIT DMA issue has been fixed.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/mmc/host/sdhci-of-k1.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index a160e1d5d9bd..455656f9842d 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -259,8 +259,20 @@ static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata = {
 		   SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
 };
 
+static const struct sdhci_pltfm_data spacemit_sdhci_k3_pdata = {
+	.ops = &spacemit_sdhci_ops,
+	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
+		  SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC |
+		  SDHCI_QUIRK_32BIT_ADMA_SIZE |
+		  SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
+		  SDHCI_QUIRK_BROKEN_CARD_DETECTION |
+		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
+};
+
 static const struct of_device_id spacemit_sdhci_of_match[] = {
-	{ .compatible = "spacemit,k1-sdhci" },
+	{ .compatible = "spacemit,k1-sdhci", .data = &spacemit_sdhci_k1_pdata },
+	{ .compatible = "spacemit,k3-sdhci", .data = &spacemit_sdhci_k3_pdata },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, spacemit_sdhci_of_match);
@@ -271,10 +283,13 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
 	struct spacemit_sdhci_host *sdhst;
 	struct sdhci_pltfm_host *pltfm_host;
 	struct sdhci_host *host;
+	const struct sdhci_pltfm_data *data;
 	struct mmc_host_ops *mops;
 	int ret;
 
-	host = sdhci_pltfm_init(pdev, &spacemit_sdhci_k1_pdata, sizeof(*sdhst));
+	data = of_device_get_match_data(&pdev->dev);
+
+	host = sdhci_pltfm_init(pdev, data, sizeof(*sdhst));
 	if (IS_ERR(host))
 		return PTR_ERR(host);
 

-- 
2.52.0


