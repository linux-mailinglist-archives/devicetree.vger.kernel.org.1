Return-Path: <devicetree+bounces-163949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DEA7E88E
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 19:40:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0081F17E88C
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 17:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6AB254B0F;
	Mon,  7 Apr 2025 17:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dfeVt6TG"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B464254AFF
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 17:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744047220; cv=none; b=NdjZGiRS8dsE8NhJ4R+CM2kXQ+HZLGL/DLO6g+cwbJ1QzJNl70RWbZ27huioNHJDaeRop0rEVEagqsdF5PA4luQnafHd7B6jBKHSnTgZmmH+G95IRRj5qlRjuSQ2cZ12Fn9k+af/G1xZhPDLLY1/xrLLnc0jR/BD/dHD8R1uwLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744047220; c=relaxed/simple;
	bh=DRCfWmbveIiLL0d5tqLyI8lBbAe/vx7B4mNE/zCKgCA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fyxEYVniQXiVKgTr7IFOe6SWwj8nyw3McShPd00cnR9W+dRiD1oBm19oXcwGKs5WdkVHoXJH5oPsxe8I0evrzI1scZM/cH3pyIg2BD+8rWCf03M/Kig0dRglHgRmEleioM5HUXdJA8iFDqlh0NoW4ypWBhY8b6agyAKXoPovie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dfeVt6TG; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744047217;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yc4/9CW3rJH+yqhkuOfWo/UTCk+B5f4doeNIHMtXuqY=;
	b=dfeVt6TGLzxPLkpgr0ZIAYs9a/JSdJsP8hYxwIeCPETm9xk7weh3rnd91RYWq68RLEbL+l
	9QK2jF6EpsyhCd20Od9HlY7Wpbz3g4U8JdnI8qZ7UHTK7sMYu2DFNysafZGXnSp1RwWwnj
	MUQk6yWMiB533vT9GOFBgSYvDna9vh8=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-230-AeDdyyApPemMDy3V-V-27g-1; Mon,
 07 Apr 2025 13:33:36 -0400
X-MC-Unique: AeDdyyApPemMDy3V-V-27g-1
X-Mimecast-MFC-AGG-ID: AeDdyyApPemMDy3V-V-27g_1744047213
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8C11180AF65;
	Mon,  7 Apr 2025 17:33:33 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.4])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id EAF131828A80;
	Mon,  7 Apr 2025 17:33:27 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Michal Schmidt <mschmidt@redhat.com>,
	Vadim Fedorenko <vadim.fedorenko@linux.dev>,
	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
	Jiri Pirko <jiri@resnulli.us>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Prathosh Satish <Prathosh.Satish@microchip.com>,
	Lee Jones <lee@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 24/28] dpll: zl3073x: Read pin supported frequencies from firmware
Date: Mon,  7 Apr 2025 19:32:57 +0200
Message-ID: <20250407173301.1010462-5-ivecera@redhat.com>
In-Reply-To: <20250407172836.1009461-1-ivecera@redhat.com>
References: <20250407172836.1009461-1-ivecera@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93

The firmware (DT, ACPI...) can specify what frequencies are supported
for particular pins. Load the frequencies from the appropriate property
and use them during pin registation. The unsupported frequencies that
cannot be represented in device are filtered out.

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_zl3073x.c | 113 +++++++++++++++++++++++++++++++++++-
 1 file changed, 112 insertions(+), 1 deletion(-)

diff --git a/drivers/dpll/dpll_zl3073x.c b/drivers/dpll/dpll_zl3073x.c
index 07a547aaee0f1..c920904008e22 100644
--- a/drivers/dpll/dpll_zl3073x.c
+++ b/drivers/dpll/dpll_zl3073x.c
@@ -1246,6 +1246,50 @@ zl3073x_dpll_pin_info_package_label_set(struct zl3073x_dpll_pin *pin,
 	pin_info->props.package_label = pin_info->package_label;
 }
 
+/**
+ * zl3073x_dpll_check_frequency - verify frequency for given pin
+ * @pin: pointer to pin
+ * @freq: frequency to check
+ *
+ * The function checks the given frequency is valid for the device. For input
+ * pins it checks that the frequency can be factorized using supported base
+ * frequencies. For output pins it checks that the frequency divides connected
+ * synth frequency without remainder.
+ *
+ * Returns true if the frequency is valid or false if not.
+ */
+static bool
+zl3073x_dpll_check_frequency(struct zl3073x_dpll_pin *pin, u64 freq)
+{
+	if (zl3073x_dpll_is_input_pin(pin)) {
+		u16 base, mult;
+		int rc;
+
+		/* Check if the frequency can be factorized */
+		rc = zl3073x_dpll_input_ref_frequency_factorize(freq, &base,
+								&mult);
+		if (!rc)
+			return true;
+	} else {
+		struct zl3073x_dev *zldev = pin_to_dev(pin);
+		u64 synth_freq, rem;
+		u8 synth;
+
+		/* Get output pin synthesizer */
+		synth = zl3073x_dpll_pin_synth_get(pin);
+
+		/* Get synth frequency */
+		synth_freq = zl3073x_synth_freq_get(zldev, synth);
+
+		/* Check the frequency divides synth frequency */
+		div64_u64_rem(synth_freq, freq, &rem);
+		if (!rem)
+			return true;
+	}
+
+	return false;
+}
+
 /**
  * zl3073x_dpll_pin_info_get - get pin info
  * @pin: pin whose info is returned
@@ -1253,7 +1297,8 @@ zl3073x_dpll_pin_info_package_label_set(struct zl3073x_dpll_pin *pin,
  * The function looks for firmware node for the given pin if it is provided
  * by the system firmware (DT or ACPI), allocates pin info structure,
  * generates package label string according pin type and its order number
- * and optionally fetches board label from the firmware node if it exists.
+ * and optionally fetches board label and supported frequencies from
+ * the firmware node if they exist.
  *
  * Returns pointer to allocated pin info structure that has to be freed
  * by @zl3073x_dpll_pin_info_put by the caller and in case of error
@@ -1264,7 +1309,10 @@ zl3073x_dpll_pin_info_get(struct zl3073x_dpll_pin *pin)
 {
 	struct zl3073x_dev *zldev = pin_to_dev(pin);
 	struct zl3073x_dpll_pin_info *pin_info;
+	struct dpll_pin_frequency *ranges;
+	int i, j, num_freqs, rc;
 	const char *pin_type;
+	u64 *freqs;
 
 	/* Allocate pin info structure */
 	pin_info = kzalloc(sizeof(*pin_info), GFP_KERNEL);
@@ -1315,7 +1363,67 @@ zl3073x_dpll_pin_info_get(struct zl3073x_dpll_pin *pin)
 				 pin_type);
 	}
 
+	/* Read supported frequencies property if it is specified */
+	num_freqs = fwnode_property_count_u64(pin_info->fwnode,
+					      "supported-frequencies");
+	if (num_freqs <= 0)
+		/* Return if the property does not exist or number is 0 */
+		return pin_info;
+
+	/* The firmware node specifies list of supported frequencies while
+	 * DPLL core pin properties requires list of frequency ranges.
+	 * So read the frequency list into temporary array.
+	 */
+	freqs = kcalloc(num_freqs, sizeof(*freqs), GFP_KERNEL);
+	if (!freqs) {
+		rc = -ENOMEM;
+		goto err_alloc_freqs;
+	}
+
+	/* Read frequencies list from firmware node */
+	fwnode_property_read_u64_array(pin_info->fwnode,
+				       "supported-frequencies", freqs,
+				       num_freqs);
+
+	/* Allocate frequency ranges list and fill it */
+	ranges = kcalloc(num_freqs, sizeof(*ranges), GFP_KERNEL);
+	if (!ranges) {
+		rc = -ENOMEM;
+		goto err_alloc_ranges;
+	}
+
+	/* Convert list of frequencies to list of frequency ranges but
+	 * filter-out frequencies that are not representable by device
+	 */
+	for (i = 0, j = 0; i < num_freqs; i++) {
+		struct dpll_pin_frequency freq = DPLL_PIN_FREQUENCY(freqs[i]);
+
+		if (zl3073x_dpll_check_frequency(pin, freqs[i])) {
+			ranges[j] = freq;
+			j++;
+		} else {
+			dev_warn(zldev->dev,
+				 "Unsupported frequency %llu Hz in firmware node\n",
+				 freqs[i]);
+		}
+	}
+
+	/* Save number of freq ranges and pointer to them into pin properties */
+	pin_info->props.freq_supported = ranges;
+	pin_info->props.freq_supported_num = j;
+
+	/* Free temporary array */
+	kfree(freqs);
+
 	return pin_info;
+
+err_alloc_ranges:
+	kfree(freqs);
+err_alloc_freqs:
+	fwnode_handle_put(pin_info->fwnode);
+	kfree(pin_info);
+
+	return ERR_PTR(rc);
 }
 
 /**
@@ -1327,6 +1435,9 @@ zl3073x_dpll_pin_info_get(struct zl3073x_dpll_pin *pin)
 static void
 zl3073x_dpll_pin_info_put(struct zl3073x_dpll_pin_info *pin_info)
 {
+	/* Free supported frequency ranges list if it is present */
+	kfree(pin_info->props.freq_supported);
+
 	/* Put firmware handle if it is present */
 	if (pin_info->fwnode)
 		fwnode_handle_put(pin_info->fwnode);
-- 
2.48.1


