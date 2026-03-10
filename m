Return-Path: <devicetree+bounces-273175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4A2cGyJlr2koXAIAu9opvQ
	(envelope-from <devicetree+bounces-273175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:26:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1678924304E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:26:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 752123018F0B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722291F4CB3;
	Tue, 10 Mar 2026 00:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Goa2CZPU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347F01FBEB0
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102367; cv=none; b=frjibAJoVguxgWgz5EuJFGnylISrkFr37Rg8qlKw9/BfPtu7BSD5UIZeXYDCUdaINZDvAD182b1wRhA5d2S1lGokdWnhWmZ1uUlqwpxpXmwJ23ue25cVSJbe1Z6ZvXLHSmODCEkj+Vph9qVKxuDL4622HVbAxXX7K08WX2qqAGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102367; c=relaxed/simple;
	bh=X1qzc/nIJzA160wcE7pmFrjlw+6pYusD0HI28tV+tqw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DRWIqkp/kD73lq5EVRB2bD3PfUgf5KtDM2XIezl5yjlpmJmnqtXtlH5IlQuiN/UohIbRoqBI03RsbC+zKtxvSiOxbBjXim3cKjCdBOHx8TXZjNdcsXGIdfwPY6/IEk+Bm0BAPf2GR7cwWQabQ6BOjbfS06eiQ5ILwwsEsQ5OtW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Goa2CZPU; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-899fa9610bbso137760396d6.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102365; x=1773707165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5G48QN/VZ+uF+MLVtrv0+QLtpT3vFjLAIc/m9hMjl30=;
        b=Goa2CZPUduspLOd1iOWNm0mm+TsdtgzMvRBoP1RVcJJhHdndnDHay4aJRG8ImjWjdU
         e9YdsQqVd4xloZYaSdBQYqGo5UmxUwAb4jjVYise69b8bhvBodThWCHP4b5IY+U8dm4e
         7Eg8hmEjb95gjxOaB0iWVZYL3oivflwkX/qkicQdLFU2Nn4WEA6uyHOLrPg4RyAa2fwn
         srrWVYT8+rcOY8rM243lRx431KShrcfMm/kWVrNsoC4lMjQXg8rFBXqmKQDiU1MxEHOW
         G7ov3zk7Ve5TOzUqtDCMwMhDTpkydj4XKwQuPd7eyVlyPaqyWB134Ctog623u4vwa77L
         41Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102365; x=1773707165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5G48QN/VZ+uF+MLVtrv0+QLtpT3vFjLAIc/m9hMjl30=;
        b=wzYl+NdNwmoZisDa3Do/yIrH0SYWm4BH12aqg7QRktessk+dhz3KP77no2sykBstq3
         Q4U5IWMkc23/zk8jgUyR07ImcUZ0wJpLAaL+vgDEe8Y/vFfsmT756yI3rmg8HCL6Sup5
         kxI+L1fe8Ye+rOaam4M8eEVYY+ftmlwFM2teAQx22+rE8aCPQ31DbD1tloRmfwoduJub
         ShUi07fMqRFzCFOi3gDFST2x+QfMReDWUKWUjojvbwXo8Rp+20ENihFnG9aglCdG+/FV
         zXsSatI6Roj7LXaFvhn7mh989D+g7EVDa0vWcoa0EEMLFA1vaeZHrUxuxR4xAQsKeBI1
         pUCA==
X-Forwarded-Encrypted: i=1; AJvYcCUNBniTIdU2shyCH1jJWkWBJNp0jbvS3rw1zZwag3cNzhSScjpANGt9BTYZD2YFp8Ofk080NEitmAOC@vger.kernel.org
X-Gm-Message-State: AOJu0YwvadbkUSK2SZO2uwrGPLwkZ0q5vk/X33GpxqE7RPjuKt2C4MY3
	Ns52AGBzmKCmK0p2QKyAbbCusn+uoxCvtn+5UDAXfIIUGrWR/0NtN/B+
X-Gm-Gg: ATEYQzxlfYWPMnfBbD1BATgKO5DLf7ATugt7AGKEYdkdz0a9JwRZhq1GyawHtHgc6D/
	+lAuY13CyetCNuVWwkGI20x5pR7oBiA/URWiwSBwz2gkV4parHWTBhi6QNN+FdQkMlFsZSNiydi
	ULkRRSOXs2uPEGgJzRKSGe8KqLkuXNee7Hy8NyXRtMy92DfMvsr62T7SQlOIVZRhMv8ZlGt7X++
	T6bMAozdqWdu2uECi3o1kZg8ysha8cHfU7qumy2b5a3MLerpBjBJ0BcwXhs291s1PjrF841Q8A3
	HH5mn+SHCgr0LdSU11rJErccz9P+ZrRfbfD7EmZGVfOD40QTOEd4l/2A00lpnAWBNVBipTI6CWu
	nPpm0CcnM789Grr6RuZT9xMd71oFJtkEj1qZNNmHA0RlMwmH7E1iaaZLB4FZjQKYTXMUZLB3y5X
	dRV/9FZBrw9857YhXB60KPjsXF8X4nPoeOI6mA1GHWmAAh4hXGm/c290nBviYmKEwmjH0nF4854
	QoQCqz3D6o/Byc=
X-Received: by 2002:a05:6214:e4c:b0:897:255:d5c2 with SMTP id 6a1803df08f44-89a30a4d3cdmr196960136d6.26.1773102365255;
        Mon, 09 Mar 2026 17:26:05 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57c48e3fsm8094586d6.51.2026.03.09.17.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:26:04 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: Yifei Zhan <yifei@zhan.science>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 5/5] arm64: dts: qcom: add support for pixel 3a xl with the tianma panel
Date: Mon,  9 Mar 2026 20:26:06 -0400
Message-ID: <20260310002606.16413-6-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002606.16413-1-mailingradian@gmail.com>
References: <20260310002606.16413-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1678924304E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273175-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,ffwll.ch,linux.intel.com,suse.de,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

The Pixel 3a XL has variants with either a Samsung Display Controller (SDC)
panel or a Tianma panel. Add the device tree for the variant with the
Tianma panel.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../dts/qcom/sdm670-google-bonito-tianma.dts  | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f80b5d9cf1e8..7c158871ed1c 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -264,6 +264,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-fairphone-fp3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-motorola-ocean.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm636-sony-xperia-ganges-mermaid.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm660-xiaomi-lavender.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-bonito-tianma.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-sargo.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
 
diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts b/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts
new file mode 100644
index 000000000000..42ddaf53d150
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sdm670-google-bonito-tianma.dts
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Device tree for Google Pixel 3a XL with the Tianma panel.
+ *
+ * Copyright (c) Richard Acayan. All rights reserved.
+ */
+
+/dts-v1/;
+
+#include "sdm670-google-common.dtsi"
+
+/ {
+	model = "Google Pixel 3a XL (with Tianma panel)";
+	compatible = "google,bonito-tianma", "google,bonito", "qcom,sdm670";
+};
+
+&battery {
+	charge-full-design-microamp-hours = <3700000>;
+};
+
+&framebuffer {
+	height = <2160>;
+};
+
+&panel {
+	compatible = "novatek,nt37700f";
+};
+
+&rmi4_f12 {
+	touchscreen-x-mm = <69>;
+	touchscreen-y-mm = <137>;
+};
-- 
2.53.0


