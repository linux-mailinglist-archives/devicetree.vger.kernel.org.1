Return-Path: <devicetree+bounces-264223-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNaoF+eqimmbMwAAu9opvQ
	(envelope-from <devicetree+bounces-264223-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:49:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB528116CD6
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C90A300A8E7
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E661A280329;
	Tue, 10 Feb 2026 03:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lz4bT/4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99B3211A28
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770695396; cv=none; b=Op7PDl2+GYGXBSqlkB0sOcITy58ym3iWwJ65CLCRKPIYJf3nCpSF7x7wz7/C5V7rV/dAt+WI68wPCNSo6i21Pr/E6TFU1CJlCHanqvj/hg/D4aw6FgwqBVz/Qv415RlJuszW42/ESRTzHNpLlVqgWLHFF2uAIrDSvBHIjl9QqYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770695396; c=relaxed/simple;
	bh=grerL1X8PEltlDn9bZfsY+C9u7ePqpUQ4WeAgoThNzU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dxjrGkACfWhQzNAOXJ62yqffM0O3zNFi5tyC4lxqVYZ4DjLSsWlGN1ZbbjMrujH3KtDrssFd5UK+JitWnug3ya94pbRibjJ/Av3tC2HwNPwh0mBZiRMzn2ofO9vw53gOJiv8vlMLzlzcCPowTxqDZb4CBWm96fzWznuqF0a3wik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lz4bT/4k; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-404254ffe8aso3313584fac.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 19:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770695394; x=1771300194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHuCRRLW/wv5+lOhXnCHIBJ8PNubsec4dQmyfsYfdCc=;
        b=lz4bT/4kx4LRkjMaVG5SsLrEDet7YG5d0U1gy5W2vt9sIu333TOykQmaChBFX4JcFJ
         0tU8a7FbVcC1CJ0RDHloquA9HZzBjTfhZ/kXyjQtD/1sDIPGq5X+hvzMq2Rt83hRnCml
         2q4ZEy9ALlomhYsDyh6ksr1jObUQCn7nCWjA9etuWVVYxveGfPSLZao+YI9jOdUyq0Ce
         1N4pqDTecrEFFdjU+DHuCb7zBbglQ/qF84Db1pYPQAzNLsGlHWLdtsBN3JS2+klgbXJs
         CcXwMIi/RjsyaA1REXYKn19lKQtrL45wk5Jh4E/YWjfjA8ogbaz+5bPE1pdrLDNLNJ3w
         xb3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770695394; x=1771300194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oHuCRRLW/wv5+lOhXnCHIBJ8PNubsec4dQmyfsYfdCc=;
        b=F/AR0LbGchvZ79p5iDz0siwaoSmR6vYHlRGJFp3AFxuP0NR3Q4QgTEnWWFl2oBhdnv
         redfoLao/koGeGelAkeUkIpw4V4EjdFWPJxTQxk9be3cE26gv19qloBExstCRXGsZjH5
         yghRtoYdTgwfud840YW+TcAz45o2JyLfGZm7yxu1WuAK9RGxdIVASo2cCSlx429z/BGo
         1ZyJKSyzgUmTiDFFfJwZvIDf7Yk/GrRSEQTeuEFSHk7Uos8k7U4VHtV/ah12SIfAKb9D
         3s6qCwdPOwMdH7ua33pOOHXc7IeAMUwsDxCrtRyOpfdNjigS+YjVVGM3K7j9gCy6awtU
         Dsbg==
X-Forwarded-Encrypted: i=1; AJvYcCVsw5G4G7vxw03GrLInocVsC8lUNJLr/SkAEmojaDwQTJd10ImTPHx3DTqifyOTMoBeUCv/D9JWSo/W@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8N7idzAwYnXN2Nqor/LOIM7OzGEbhZ/IztLjV2VX0eWJNISI3
	/yBhCZmORwSV0k6qDJijA5eTKiNXCY/lkccX7oo0/6RPA2XHTSipRNMhxOsHnA==
X-Gm-Gg: AZuq6aJbxLqqv5XsvrxhcFN5z7jXBHxF6eHxZXFnsScT3IA7jWRgIEX5Yhyne2Is0Ba
	9FwX9TYqZkEBXseztSQtm7DvmGUdd+hzoyw3h5Th9ij86bz5DW1GtG2BSP+qIhf34E7fW8VOde9
	+XoP1VNqK/8pZtBVlkDt2j99X+epllNICj7sFAoaSxD3uqVAANG12xf1Blpgs6E/upjPY3+n5v6
	1aXe9XzQXQ9bA9fKYQNyHn9jEPa0iQVp1N/cp4cj/U/5J4jvOb7XvkxxGH4K8L7h+++3Wu4QiQx
	RgNd2L4F5WVjUryBvDby+ZkdgEtpCfY1rowJQZCuSZtc1tiykedOoF9Yvr451RntZipAWu/DOVh
	7PX0SRYOLLiOmZwB9t3owdho11LErYKshdb3AaWpnxlnlRACTAlu+ceA9S0ilwHbWE1o7YxXAAP
	ZJMa3YhRLLtVJKG98wHFvA0uA5Op21ppJzvZVmi2qVfsMpx0Zoeox0jhUhRN7Nnr+WmAhgUwRIG
	/KxuI/QRYirTw8=
X-Received: by 2002:a05:6214:c62:b0:894:6540:9112 with SMTP id 6a1803df08f44-8970d9da94emr11081586d6.33.1770688893108;
        Mon, 09 Feb 2026 18:01:33 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf9ee8593sm926749385a.36.2026.02.09.18.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:01:32 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v8 1/7] dt-bindings: media: qcom,sdm670-camss: Remove clock-lanes property
Date: Mon,  9 Feb 2026 21:02:00 -0500
Message-ID: <20260210020207.10246-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210020207.10246-1-mailingradian@gmail.com>
References: <20260210020207.10246-1-mailingradian@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264223-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: BB528116CD6
X-Rspamd-Action: no action

The clock-lanes property has no effect on the hardware configuration, as
of 336136e197e2 ("media: dt-bindings: media: camss: Remove clock-lane
property"). Remove the clock-lanes property.

Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Link: https://lore.kernel.org/r/bbf0dcd9-d0f2-49a6-a2f2-6ec9376f2f59@linaro.org
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/media/qcom,sdm670-camss.yaml           | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
index 35c40fe22376..78b9e03da06b 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm670-camss.yaml
@@ -116,15 +116,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@1:
@@ -139,15 +135,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
       port@2:
@@ -162,15 +154,11 @@ properties:
             unevaluatedProperties: false
 
             properties:
-              clock-lanes:
-                maxItems: 1
-
               data-lanes:
                 minItems: 1
                 maxItems: 4
 
             required:
-              - clock-lanes
               - data-lanes
 
 required:
@@ -308,7 +296,6 @@ examples:
                     reg = <0>;
 
                     csiphy_ep0: endpoint {
-                        clock-lanes = <7>;
                         data-lanes = <0 1 2 3>;
                         remote-endpoint = <&front_sensor_ep>;
                     };
-- 
2.53.0


