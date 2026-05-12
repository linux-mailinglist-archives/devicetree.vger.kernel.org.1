Return-Path: <devicetree+bounces-296160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CL5kFnQEA2r7zgEAu9opvQ
	(envelope-from <devicetree+bounces-296160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:44:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F068B51ECAA
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 12:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 60848302C0FE
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 10:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39752383987;
	Tue, 12 May 2026 10:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Y99L9Yl8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C443E3803F0
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 10:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778582043; cv=none; b=sNSYWDR7InbYjVTBIzKRgngu+5m+qJ3wlYO1gOh6gXpGsOQ1bL35GwrGJvwkHn7hVWYFV2ipy5gf/bQGDnG7u+8ASVm3pmhCT9+MlDGmXp+VNBpenvtROEFo7rCOUTJ814qx5oOJ13UquIRI/3+LCRoQWJGsSLDePhZuNZIuC0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778582043; c=relaxed/simple;
	bh=46xjUdMKQocrxJlc5+IRfEvfu9q7FwYQ3DXrDmQIn8I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lfaipPHGBIM6N/G46IPqUhuPjIBLyoQn+lz89fuodlP0P6ZVogHDp2ST9vvfMM2m2xzKudJz9YGk0Ox1m9TVDxzEHqTLmvcCqVXXBkgM8tp/D1PnxaxYofhxQy2/HCo0PQ8AqKXHuzsF6KSP8gUW0UGxc36DeKXVj7J3F7LFqxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Y99L9Yl8; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2ba928852a5so35205145ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2026 03:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1778582041; x=1779186841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XuGkJpO8zbwPjFwZbzuJaMrl051lxnUzmCTtle9Ojzg=;
        b=Y99L9Yl81dk6FQjAYshJkFcJ/hLaIve+5OiO7Hbca8YGc+RcD+s4fAbA//aMpLZJLv
         QycOA8oApxaMRzmID9HNpWlNILxZbe4q/+JVm03MvtLD3P/+/mzJDgbXhGYhn02em4Fr
         x/ms93+Qb9m+np/kZGNFUW8FSlRtErEZ3S3C0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778582041; x=1779186841;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuGkJpO8zbwPjFwZbzuJaMrl051lxnUzmCTtle9Ojzg=;
        b=dhEUw4pNBFUe1Cgq2kBJjKkjoBsYf5ltGFx9Tlsw1ADZpn9IEjg0p+qsQoO/ygS8hr
         5OtniyPTfihWy4gzQLYbN+cashOg1q3UFk20p37G0eRsyjTA8P6sGjmjtmy8yA14WFgx
         GujjawZoDCiiGP7TpGFUxPgtxDznRaVCKFWW2gOoQYKkuWXsSkB2tgwYs3aoaju+6Rt5
         3He5wGpbT6N1q3CL/g3imOuKBdVI4QDCnYaylc+3+Z/zkI+PYt+ZGmhUTSEk11pBTs7G
         Q6xzgPopQiWUfBG+kdK3Sc/oeAE1es6eHoY6S34uvx9bSR6MpcrRfsRiJbUdkHCAzfEl
         YDsw==
X-Forwarded-Encrypted: i=1; AFNElJ+UmxKiDM8TSgI/b1X/BmZPfPkzJadfwV4W4yYQpS6hLi3gXauED21wmqQWyLDafdoUIMhWKUNF3TM0@vger.kernel.org
X-Gm-Message-State: AOJu0YyKlsj4vg2yXb32tt7YwQNIuYUVmRJ2om5BoSWcn1PxXqbvVA1l
	ty/PLZSklEJtJF1uSf6xK3rcEE5EIdiPgtPdivKAmJdedyLdy1eZMTSKJtrFSUj939qVqnTYPf+
	1EMA=
X-Gm-Gg: Acq92OGn2t/CyqjO0e71i6tazFKgGxS90nSiK/lML7vI4/NRBvNeakCoY9sdYgcsJDt
	/qs29GzwfcJ9VZdDns+vHWVDg4IY88KN07s0iADVruPr24kO95nmEhNbPjqODHkTh/LYbJBn0kR
	WeMquSuXezlgHSA5Rnjmsbc18XxGh7bKJjNUwWdP/6dTXlz+ELXJRWv5hlmtxHJNDGausSxLC2D
	6qma7wfXQfGDQSQp8twmeFVfcYl1zLNv+/luvFOy5xj5O8Ni2ez+1qYB1Wk7dprdIXXOfEVx41C
	Z+vS3cf4clQ85BbJi252YWowlwEtpxpH0XY1AXsK2MiouNL6L4xe7Tns4Ye4O1CQsGpq8OQCJ09
	55QwTR/yZ5UDdyRaGg8xJDsvcqHo3oOUaVhTQczQrljZL6A3O5XmPdwpGZfGA7XJtRSvd7v1iaM
	8rnulACoMDPk+GFl5VjIXmbgI7XCyJ4dkTfUTomXqyNCBj4TtIwM781BLjZKnTiKUhNclSAOGNW
	8hLKNPpoXifKAoTCn7b0VuF5X/CzQ==
X-Received: by 2002:a17:902:f650:b0:2bd:1905:e8b7 with SMTP id d9443c01a7336-2bd1905e9ccmr1997075ad.13.1778582041152;
        Tue, 12 May 2026 03:34:01 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:6606:2bd2:159a:55e3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1eafa62sm141597605ad.74.2026.05.12.03.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 03:34:00 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <error27@gmail.com>
Subject: [PATCH] PCI: mediatek-gen3: fix incorrectly skipped pwrctrl error message
Date: Tue, 12 May 2026 18:33:45 +0800
Message-ID: <20260512103347.1751080-1-wenst@chromium.org>
X-Mailer: git-send-email 2.54.0.563.g4f69b47b94-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F068B51ECAA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	FREEMAIL_CC(0.00)[chromium.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-296160-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.954];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,chromium.org:email,chromium.org:mid,chromium.org:dkim]
X-Rspamd-Action: no action

When pwrctrl integration was added, the error message for when
pci_pwrctrl_create_devices() fails was incorrectly put after the error
goto statement, causing it to be skipped.

Move the goto statement after the dev_err_probe() call so that the
error message actually gets printed (or saved if probe is deferred).

Reported-by: Dan Carpenter <error27@gmail.com>
Closes: https://lore.kernel.org/all/adjNaKB5KGpl6qIp@stanley.mountain/
Fixes: 1a152e21940a ("PCI: mediatek-gen3: Integrate new pwrctrl API")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/pci/controller/pcie-mediatek-gen3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
index 6f0ae946d501..ef64778bbf8b 100644
--- a/drivers/pci/controller/pcie-mediatek-gen3.c
+++ b/drivers/pci/controller/pcie-mediatek-gen3.c
@@ -1221,8 +1221,8 @@ static int mtk_pcie_probe(struct platform_device *pdev)
 
 	err = pci_pwrctrl_create_devices(pcie->dev);
 	if (err) {
-		goto err_tear_down_irq;
 		dev_err_probe(dev, err, "failed to create pwrctrl devices\n");
+		goto err_tear_down_irq;
 	}
 
 	err = mtk_pcie_setup(pcie);
-- 
2.54.0.563.g4f69b47b94-goog


