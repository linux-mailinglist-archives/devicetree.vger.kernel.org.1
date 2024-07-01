Return-Path: <devicetree+bounces-81901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2F91DE09
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 13:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15DC6283D3D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 11:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 328EC1514DA;
	Mon,  1 Jul 2024 11:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NhLEq7Ck"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA31D14C585;
	Mon,  1 Jul 2024 11:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719833525; cv=none; b=C6Vis0r41ZOr4h1bPoZGjQQ4VWcwpp+7xgnEeMK8CNmzU/fs7srJKE9NiAJ8sZSB5mevgOx2jCVUdhe/02po4xlZC4l6LHEyCzKWaX9uMLEb193i0gi16yS9L3yQkwq85dM8+xRAdE0hlqBalhjhKwEZS7f2EO1cCFz2KlNwYzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719833525; c=relaxed/simple;
	bh=D7OEHiuwtCmqscXQl50KmY2kl3bSEyKNKVR8ivbxxAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QkGULIlYWHmMw6ojZHhe4rsqdQygeRUakfhLL9+/ZU6bu+eHsePwwqPIkIgbjdp0qA93d6V4xLVPuvG1mMUr/CtAv5FwIMd50WOV1yhT9WMb7gXXNoRjw60DtXJ8S1LaS3S/jNpLIbv7+5FMZh2NiQfwVo9PDPEtaN1qChIBgz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=NhLEq7Ck; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 52553240013;
	Mon,  1 Jul 2024 11:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1719833521;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=whVnLEA8ZlMjzaDgw2XCJrm9u7TT3FhF+CXLz0Vls7M=;
	b=NhLEq7CkU8wxtHpprCD50uFD85Wl6dF6F+fncT71vMCc7u9QHMXp8q8QuyJlxCu/b4dAkD
	BU8F/aGL2Drp8gFthnSuqt+Efo8otL4s/fYM2fmc4KuCwmdu+mtEL678tjvvrogpYp/QRz
	nAUqYQTDT7a06Df/GVQe1438nC9H3K8RiEDvATwunATYSV6nCx6G2CMMR9j4j9im6ZTbCp
	qlHqwn0Qi6FMlIzdNLvK+ZaTAkaPYl6uVNwk+lKlhZ8YC2bD8deg5O4ae7hVIzRpOAoaQI
	ANujLhl7u7nt5c8Bs0kief2IElhSRPVNLdH+6sw9c99MCFGQk5yepN3jXyHDJA==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Qiang Zhao <qiang.zhao@nxp.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 07/10] soc: fsl: cpm1: qmc: Introduce functions to get a channel from a phandle list
Date: Mon,  1 Jul 2024 13:30:34 +0200
Message-ID: <20240701113038.55144-8-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240701113038.55144-1-herve.codina@bootlin.com>
References: <20240701113038.55144-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

qmc_chan_get_byphandle() and the resource managed version retrieve a
channel from a simple phandle.

Extend the API and introduce qmc_chan_get_byphandles_index() and the
resource managed version in order to retrieve a channel from a phandle
list using the provided index to identify the phandle in the list.

Also update qmc_chan_get_byphandle() and the resource managed version to
use qmc_chan_get_byphandles_index() and so avoid code duplication.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/soc/fsl/qe/qmc.c | 19 +++++++++++--------
 include/soc/fsl/qe/qmc.h | 25 ++++++++++++++++++++++---
 2 files changed, 33 insertions(+), 11 deletions(-)

diff --git a/drivers/soc/fsl/qe/qmc.c b/drivers/soc/fsl/qe/qmc.c
index f498db9abe35..e23d60018400 100644
--- a/drivers/soc/fsl/qe/qmc.c
+++ b/drivers/soc/fsl/qe/qmc.c
@@ -1777,13 +1777,15 @@ static struct qmc_chan *qmc_chan_get_from_qmc(struct device_node *qmc_np, unsign
 	return qmc_chan;
 }
 
-struct qmc_chan *qmc_chan_get_byphandle(struct device_node *np, const char *phandle_name)
+struct qmc_chan *qmc_chan_get_byphandles_index(struct device_node *np,
+					       const char *phandles_name,
+					       int index)
 {
 	struct of_phandle_args out_args;
 	struct qmc_chan *qmc_chan;
 	int ret;
 
-	ret = of_parse_phandle_with_fixed_args(np, phandle_name, 1, 0,
+	ret = of_parse_phandle_with_fixed_args(np, phandles_name, 1, index,
 					       &out_args);
 	if (ret < 0)
 		return ERR_PTR(ret);
@@ -1797,7 +1799,7 @@ struct qmc_chan *qmc_chan_get_byphandle(struct device_node *np, const char *phan
 	of_node_put(out_args.np);
 	return qmc_chan;
 }
-EXPORT_SYMBOL(qmc_chan_get_byphandle);
+EXPORT_SYMBOL(qmc_chan_get_byphandles_index);
 
 struct qmc_chan *qmc_chan_get_bychild(struct device_node *np)
 {
@@ -1827,9 +1829,10 @@ static void devm_qmc_chan_release(struct device *dev, void *res)
 	qmc_chan_put(*qmc_chan);
 }
 
-struct qmc_chan *devm_qmc_chan_get_byphandle(struct device *dev,
-					     struct device_node *np,
-					     const char *phandle_name)
+struct qmc_chan *devm_qmc_chan_get_byphandles_index(struct device *dev,
+						    struct device_node *np,
+						    const char *phandles_name,
+						    int index)
 {
 	struct qmc_chan *qmc_chan;
 	struct qmc_chan **dr;
@@ -1838,7 +1841,7 @@ struct qmc_chan *devm_qmc_chan_get_byphandle(struct device *dev,
 	if (!dr)
 		return ERR_PTR(-ENOMEM);
 
-	qmc_chan = qmc_chan_get_byphandle(np, phandle_name);
+	qmc_chan = qmc_chan_get_byphandles_index(np, phandles_name, index);
 	if (!IS_ERR(qmc_chan)) {
 		*dr = qmc_chan;
 		devres_add(dev, dr);
@@ -1848,7 +1851,7 @@ struct qmc_chan *devm_qmc_chan_get_byphandle(struct device *dev,
 
 	return qmc_chan;
 }
-EXPORT_SYMBOL(devm_qmc_chan_get_byphandle);
+EXPORT_SYMBOL(devm_qmc_chan_get_byphandles_index);
 
 struct qmc_chan *devm_qmc_chan_get_bychild(struct device *dev,
 					   struct device_node *np)
diff --git a/include/soc/fsl/qe/qmc.h b/include/soc/fsl/qe/qmc.h
index 2a333fc1ea81..0fa7205145ce 100644
--- a/include/soc/fsl/qe/qmc.h
+++ b/include/soc/fsl/qe/qmc.h
@@ -16,11 +16,30 @@ struct device_node;
 struct device;
 struct qmc_chan;
 
-struct qmc_chan *qmc_chan_get_byphandle(struct device_node *np, const char *phandle_name);
+struct qmc_chan *qmc_chan_get_byphandles_index(struct device_node *np,
+					       const char *phandles_name,
+					       int index);
+struct qmc_chan *devm_qmc_chan_get_byphandles_index(struct device *dev,
+						    struct device_node *np,
+						    const char *phandles_name,
+						    int index);
+
+static inline struct qmc_chan *qmc_chan_get_byphandle(struct device_node *np,
+						      const char *phandle_name)
+{
+	return qmc_chan_get_byphandles_index(np, phandle_name, 0);
+}
+
+static inline struct qmc_chan *devm_qmc_chan_get_byphandle(struct device *dev,
+							   struct device_node *np,
+							   const char *phandle_name)
+{
+	return devm_qmc_chan_get_byphandles_index(dev, np, phandle_name, 0);
+}
+
 struct qmc_chan *qmc_chan_get_bychild(struct device_node *np);
 void qmc_chan_put(struct qmc_chan *chan);
-struct qmc_chan *devm_qmc_chan_get_byphandle(struct device *dev, struct device_node *np,
-					     const char *phandle_name);
+
 struct qmc_chan *devm_qmc_chan_get_bychild(struct device *dev, struct device_node *np);
 
 enum qmc_mode {
-- 
2.45.0


