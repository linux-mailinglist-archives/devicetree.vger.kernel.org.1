Return-Path: <devicetree+bounces-6216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB07BA3CE
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 00439282E01
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5753399F;
	Thu,  5 Oct 2023 15:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Ck3ZN1IJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC02C328B5
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 15:59:18 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99AEE7285;
	Thu,  5 Oct 2023 08:59:16 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 838311BF213;
	Thu,  5 Oct 2023 15:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696521554;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ozTgRpH7t0hBveOF8yXGnBl2vT15HtovIkhQFtR9B74=;
	b=Ck3ZN1IJji2OY+dMnjA+DdC2x6VAfE4ZZp7r6kuL50L/U58uuF4Frsm3crOYTr2Xr6QRD0
	+2km3T173WAQtA58ghw76qM5qNQ+nteaRCDHz1tugcKisNuWXIpTq8+UDJ1G8xw6o/VNT6
	CzzExtKtwXEV5OrA0fYuK9Hjz/MY2F9mGltJW1omwlUgWWk3MUpjiZdlF3IOY4yGTFdMik
	9M1Yp7SfHZwOfk4rh9oJaJdvXJUj6rEg6HvBo6kKScUGUobTXOrdG3JH3y3h2LsBM5yL0Z
	4+V8yieOVFLwOKkYmxKjHHkXDeL7yw0rt57oMPF6CufiaU2NdAxEhjAINHjiKQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Walle <michael@walle.cc>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	devicetree@vger.kernel.org,
	<linux-kernel@vger.kernel.org>,
	Robert Marko <robert.marko@sartura.hr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Randy Dunlap <rdunlap@infradead.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v12 2/7] nvmem: Clarify the situation when there is no DT node available
Date: Thu,  5 Oct 2023 17:59:02 +0200
Message-Id: <20231005155907.2701706-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

At a first look it might seem that the presence of the of_node pointer
in the nvmem device does not matter much, but in practice, after looking
deep into the DT core, nvmem_add_cells_from_dt() will simply and always
return NULL if this field is not provided. As most mtd devices don't
populate this field (this could evolve later), it means none of their
children cells will be populated unless no_of_node is explicitly set to
false. In order to clarify the logic, let's add clear check at the
beginning of this helper.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/nvmem/core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index eaf6a3fe8ca6..286efd3f5a31 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -743,6 +743,9 @@ static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_nod
 
 static int nvmem_add_cells_from_legacy_of(struct nvmem_device *nvmem)
 {
+	if (!nvmem->dev.of_node)
+		return 0;
+
 	return nvmem_add_cells_from_dt(nvmem, nvmem->dev.of_node);
 }
 
-- 
2.34.1


