Return-Path: <devicetree+bounces-268170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBT6FjelnmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0964A193778
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 83894318F38D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C713101B0;
	Wed, 25 Feb 2026 07:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="heW0eD6l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5DC30F542
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004176; cv=none; b=S9+De+eI072ANt3klyqsi0b0XJg/jTbeSYcGqmwQUnwgoa3M35/Cxlf+PYYs3+h1RnFbYaOBhFEJ0ksmE5IxCjbfi+u+3lK+E38GuSInydxZ3/w+Z//Q+qDMOCxMHvzzDpK6fE01YCM7SjTiZveuX6l0fb+XY87u32Lad85hykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004176; c=relaxed/simple;
	bh=Sy39ajZQihbl7RlFirt5qjuCLJ/gL92X1DsDY6o0ANQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FYsvRmHRQICuJ70NJ4yJFjK3N4AC8Pi66MTt8yMvGzWidYnYbUA10JB0bZxOitaBPSzcxBkKV0XXeJA0yAuilLUxMU4CqAxIghUbL9KcKj6ODoOboEbrwUbxt0MmKEa6h+Ad9Zfy2QVuTnMOHR0LDxedwK8rSM3N52DrJvVWLTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=heW0eD6l; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2aaecf9c325so3963405ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004175; x=1772608975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B5DXCfdvJ1l3iaiyIVD67Vr2Fhjn3yvdCNDjCKNCXps=;
        b=heW0eD6lik+bNgzr+hAI+XS3GxAsiyaDrAvRZLeugXILPN61H95juZx6Euln6jMpAg
         MnS0pqKGP1+ISCY5mvFaBqQ2rV0tMK3trDTMmt2rYWCrL/dC42YKhVQAhOrIqgZ+BbuC
         kfngZkp22mX4jlALSs0KR+rJl3ikyQ8vnWvxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004175; x=1772608975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B5DXCfdvJ1l3iaiyIVD67Vr2Fhjn3yvdCNDjCKNCXps=;
        b=faXy8jKpWc6aEdm0Hq/TbzcpKFO81HH1f86y2kQZdffifExpkhTV4w8AqIcvBKV8hM
         l+HK1rEuMiThyaAOtLpzDkvfHyBZTIgddEyrlxIpxbpMucOfQb/hQfszvht+N5PSRvLT
         5F4ZM967msef4SU29mQjHU9cQ10NQ+Ph7wwIuVwJ9bBmyfvcnSBhE+J9o6m3T8ZeXj/o
         XA82qu/o93gTJOHjOZ8cISsU7s9JSx2MvoW0hpCExAYvaZU/ZFnVIgOPAHMQe512gBdt
         CBfz9YKOGh0UFxNgRoFXwVkJenkJE4nKezKzYNJWlxEiuWgOkElR/frk3Li/MAwiCNcp
         m2tQ==
X-Gm-Message-State: AOJu0YwRCp3LP8nAlm7rJh5hw/ZnC9ikhc3rsbuN8vcRlSnOMpuSXgM6
	ldZTJzjQyTRNXTyZUDQd2dMvoZi26OHig01JVVyTOhEG/MkZdfllDGlsF16fOT43nA==
X-Gm-Gg: ATEYQzwUvZskb3+9gTlpRB1JbyK2z9VFZGfkOv+X/0DrTJUfbOCytl9Ioc4NhIN7Yow
	r74INr3MKKm9SO2Gob5GALn005E18RREccwMRSUgBdchy3yJj3hwUBiHDDzF6lhhXQJtsTQdF+Q
	ETEPZ/uB1Radum3f0BiWgOFMjtgozU0uUWgPap1jt/wrXMh+5EsPcZG225EGvO6UZYFgb/y2iKn
	bv6c5nrQmNHZyp74VGThYr3EEu3Pusf4FZYUMs1FVLFFhgQEwY3o623Rs2PKF25eybs4PiEHqtS
	L2NF4JfCSpIV+iSNcuuFwpRbGpdYKhwpPRFjiKgDEjvTtqZjaA9F9CVZYG1P8nhAIxx1K1k7/+U
	4TklgJSq0vtDzn00AREK8AtVr3FhAlCjn5leblOzgCao698gSG4J5cBQjdKlw5Ca6fOegbv4CzO
	tH1itr+YbGX9zLAd+EGENs1TEP4sqJxVXikECAgTsBUuyxxYq0mmgDbzHe9XCWUFNjFleUwqGkA
	CC7cyAIVp298iH7
X-Received: by 2002:a17:902:fc45:b0:2a9:5ac3:a925 with SMTP id d9443c01a7336-2adbdc3eae8mr23994555ad.3.1772004174956;
        Tue, 24 Feb 2026 23:22:54 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:22:54 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/7] PCI: mediatek-gen3: Add error path for probe and resume driver callbacks
Date: Wed, 25 Feb 2026 15:22:19 +0800
Message-ID: <20260225072225.3345307-3-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
In-Reply-To: <20260225072225.3345307-1-wenst@chromium.org>
References: <20260225072225.3345307-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268170-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:mid,chromium.org:dkim,chromium.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0964A193778
X-Rspamd-Action: no action

The probe and resume callbacks currently do teardown in the conditional
block directly. This is going to get ugly when the pwrctrl calls are
added.

Move the teardown to proper error cleanup paths.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/pci/controller/pcie-mediatek-gen3.c | 22 ++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 1939cac995b5..f2bf4afbdc2f 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -1189,13 +1189,15 @@ static int mtk_pcie_probe(struct platform_device *pdev)
 	host->sysdata = pcie;
 
 	err = pci_host_probe(host);
-	if (err) {
-		mtk_pcie_irq_teardown(pcie);
-		mtk_pcie_power_down(pcie);
-		return err;
-	}
+	if (err)
+		goto err_teardown_irq_and_power_down;
 
 	return 0;
+
+err_teardown_irq_and_power_down:
+	mtk_pcie_irq_teardown(pcie);
+	mtk_pcie_power_down(pcie);
+	return err;
 }
 
 static void mtk_pcie_remove(struct platform_device *pdev)
@@ -1301,14 +1303,16 @@ static int mtk_pcie_resume_noirq(struct device *dev)
 		return err;
 
 	err = mtk_pcie_startup_port(pcie);
-	if (err) {
-		mtk_pcie_power_down(pcie);
-		return err;
-	}
+	if (err)
+		goto err_power_down;
 
 	mtk_pcie_irq_restore(pcie);
 
 	return 0;
+
+err_power_down:
+	mtk_pcie_power_down(pcie);
+	return err;
 }
 
 static const struct dev_pm_ops mtk_pcie_pm_ops = {
-- 
2.53.0.414.gf7e9f6c205-goog


