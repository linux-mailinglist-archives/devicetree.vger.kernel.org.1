Return-Path: <devicetree+bounces-21968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F948805E0E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:49:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 26DEBB20CFD
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE7E65ECC;
	Tue,  5 Dec 2023 18:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="X3OP25Y9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA0FE1A1
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 10:49:03 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d0c7330ad9so1882875ad.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 10:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1701802143; x=1702406943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PAOApdPILCdz/7NHT0OHgRBW5hnPP0BdQ0o84+NjOww=;
        b=X3OP25Y9cGtbJfxd/TpsfVR5t5AMcrx/bRiB811CBgxscBISvPbkE8Qxdxn/E/ee8f
         d1IIsu88aXlGnr2n5/Eh5ozyuumTFbEhOu4V2pfu1d8+efJgUiLG7kIJS23upwVl88+5
         y1XvRxGzRPoHyQIR5D6LsHM/wUI84w1gRWP6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701802143; x=1702406943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PAOApdPILCdz/7NHT0OHgRBW5hnPP0BdQ0o84+NjOww=;
        b=RaJPDdP/BFX5rOhbJ+885OH50aSjGgIL6aA2/vM0lRfuHj2H+CaeqYxLIJfmDnc5xT
         bZyfQNR8eGcl3FTEp45opY9IfBtzoWwsKhpN9Ecy9zgKxOEOcORiQyIuHG1oDpEyxIPs
         L8NSy+Ni8vJOIPQLVCIo3edf6ddGVuc3AT38Df7/l7zbZQgH3ruj4/BSlK7zZX8sWjiu
         VEHZlyDOXWtfqB26k3VgUkofleJA7t2XgfTaWI2NsrguBpGZxpmGSxs4hG0l8tILUZPG
         9tTHRqCZfC9mx86gouwtSrm2ijyVy+iqxAmBCCnlyRET9IQCyV7xR6+IOOCvylINEvnu
         vh0g==
X-Gm-Message-State: AOJu0YypywQC4srahmlP0pc5A2rg8dmnxYAA5fSAVLlJqNkRDqR9EepQ
	ryh1vjVe96z6gMGvKwWKlQW6Vg==
X-Google-Smtp-Source: AGHT+IEZojP/nyAWpgMigLVhprQ+6SsnFxupIzO7E7slzYCKwS+2sSVt+xGjKRttOqRPDieBqvJUCA==
X-Received: by 2002:a17:903:1cf:b0:1d0:83bc:5648 with SMTP id e15-20020a17090301cf00b001d083bc5648mr9728581plh.2.1701802143229;
        Tue, 05 Dec 2023 10:49:03 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id ik12-20020a170902ab0c00b001d06b93c66dsm7219130plb.233.2023.12.05.10.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 10:49:02 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 8AAEBD08; Tue,  5 Dec 2023 10:48:37 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/4] memory: brcmstb_dpfe: introduce best-effort API detection
Date: Tue,  5 Dec 2023 10:47:37 -0800
Message-ID: <20231205184741.3092376-5-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231205184741.3092376-1-mmayer@broadcom.com>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a best-effort probe function that tries all known DPFE versions to
see if one might actually work. This helps in cases where device tree
doesn't provide the proper version information for whatever reason. In
that case, the driver may still be able to register if one of the known
API versions ends up working.

Caveat: we have to skip "v1" during our best effort attempts. This is
due to the fact that attempting a firmware download as required by v1
will result in a memory access violation on anything but v1 hardware.
This would crash the kernel. Since we don't know the HW version, we need
to play it safe and skip v1.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 58 ++++++++++++++++++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index 0b0a9b85b605..15f4ee3b8535 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -879,6 +879,50 @@ static int brcmstb_dpfe_resume(struct platform_device *pdev)
 	return brcmstb_dpfe_download_firmware(priv);
 }
 
+static int brcmstb_dpfe_probe_best_effort(struct platform_device *pdev)
+{
+	const char versioned_compat[] = "brcm,dpfe-cpu-v";
+	const char v1_str[] = "-v1";
+	const struct of_device_id *matches;
+	const struct dpfe_api *orig_dpfe_api;
+	struct device *dev = &pdev->dev;
+	struct brcmstb_dpfe_priv *priv;
+	int ret = -ENODEV;
+
+	priv = dev_get_drvdata(dev);
+	orig_dpfe_api = priv->dpfe_api;
+	matches = dev->driver->of_match_table;
+
+	/* Loop over all compatible strings */
+	for (; matches->compatible[0]; matches++) {
+		const char *compat = matches->compatible;
+		/* Find the ones that start with "brcm,dpfe-cpu-v" */
+		if (strstr(compat, versioned_compat) == compat) {
+			char *v1_ptr = strstr(compat, v1_str);
+			/*
+			 * We must skip v1, since we don't know the hardware
+			 * version and attempting a firmware download on v2 and
+			 * newer would crash the kernel due to a memory access
+			 * violation.
+			 * We make sure to match "-v1" at the end of the string
+			 * only.
+			 */
+			if (v1_ptr && v1_ptr[sizeof(v1_str)] == '\0')
+				continue;
+			priv->dpfe_api = matches->data;
+			/* Fingers crossed... */
+			ret = brcmstb_dpfe_download_firmware(priv);
+			if (!ret)
+				return 0;
+		}
+	}
+
+	/* It didn't work, so let's clean up. */
+	priv->dpfe_api = orig_dpfe_api;
+
+	return ret;
+}
+
 static int brcmstb_dpfe_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -923,8 +967,20 @@ static int brcmstb_dpfe_probe(struct platform_device *pdev)
 	}
 
 	ret = brcmstb_dpfe_download_firmware(priv);
+	if (ret && ret != -EPROBE_DEFER) {
+		/*
+		 * If the information provided by Device Tree didn't work, let's
+		 * try all known version. Maybe one will work.
+		 */
+		dev_warn(dev,
+			"DPFE v%d didn't work, reverting to best-effort\n",
+			priv->dpfe_api->version);
+		dev_warn(dev,
+			"Device Tree and / or the driver should be updated\n");
+		ret = brcmstb_dpfe_probe_best_effort(pdev);
+	}
 	if (ret)
-		return dev_err_probe(dev, ret, "Couldn't download firmware\n");
+		return dev_err_probe(dev, ret, "Unable to talk to DCPU\n");
 
 	ret = sysfs_create_groups(&pdev->dev.kobj, priv->dpfe_api->sysfs_attrs);
 	if (!ret)
-- 
2.43.0


