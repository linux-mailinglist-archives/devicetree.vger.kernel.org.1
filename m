Return-Path: <devicetree+bounces-265480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEATIpWmj2kVSQEAu9opvQ
	(envelope-from <devicetree+bounces-265480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:32:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DE3139CCE
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 23:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 604AD304971E
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 22:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABF2A315D49;
	Fri, 13 Feb 2026 22:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XdTaxu1V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com [209.85.167.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035C130FC33
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 22:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771021948; cv=none; b=BB6/90Ir0ppLQDegZyp5qrloqksHI8e56QbUaoaxPZXlDC4XCnl/qaxG0Hv6ZEQQ3pv4IXjbgGVVNazLSQi6L7qJN/27PvylI0lmu4MHfqwN03abhMn46GQir+3GdO7sE7u0HRYTcDwBRQsQEbi6nY0e/sV/4IjmHt8BZAfAIaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771021948; c=relaxed/simple;
	bh=q7Fqxy6e28lycA/LVu+rFivt886Ak4SzXlJ0a8MnRFU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CXvvoBFCVxlfs+dvn/E2q/elvUYrjmKytuXQYp8I82cShM3Ra//OD6ra1FgEMKzzxL+tc5MH/dW5BQtY/pOdsM3JjwkW6KZMwklHYrMuaFJ61ZEkgcFPioDBuT2azSEB8xPxmQr6Lx+Npnf8XHOGJLzafN7zA0d+WyaG72jFlvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XdTaxu1V; arc=none smtp.client-ip=209.85.167.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f193.google.com with SMTP id 5614622812f47-45f0c1f1b54so851180b6e.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 14:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771021945; x=1771626745; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOA3Fq3qeW/ssDTBL2Z818pHx95UW3MtdV2Mwb98UGY=;
        b=XdTaxu1VmPYH1rxhp8+a1pS3xM8rJAQZfndOCRgCPKigyXexENG7mdFqY2kvO6Tx8N
         T2cxeuvh5xDXV0HpxKKyKLSPVs+OeOEj9fQxqtygY7KfBltz9Hz8rRpp6p4xSISKLfK2
         b+ET300jcGoX5jf50tvMOpavQ+M3FOTLrxfeI8PSb/ndkRtA7X6M49HbDAi119eeUY7T
         iQBDWx5yh9QLgozhk5vcLqgSE/Xu3YXinIO/Ife0PNi9CWOg2OpwXslG/K5l/uokdLFr
         NmdNTCmGdNBD+moZZcST3iXJaqmhpDNqWGVDCdJ6wGahdENGRPMc2GYsRUIVx0dsdINm
         fIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771021945; x=1771626745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pOA3Fq3qeW/ssDTBL2Z818pHx95UW3MtdV2Mwb98UGY=;
        b=e30svTDiZyetjt1864rraz58M8+XSf5fvy18WfSNIATy+340/d30IXqzNhgka/vcI6
         8ebdWZFk8B8o+s4DH/ArSZ7Mu0ayDeInrFxZiBDEd/JxvnTnrcFLV/iYqlBucgQZf5ME
         bf98ZmrMlL6bSPEcs/AiR5ryZGkeRRDshsoyI5AhGzZBgVw1hq0nMgdRJGmuAzl12iXi
         KjZXtdvaRFJ1hnMnusQDRdS8Jfe2mkvXxDxZF6/ydCsaJexEOfiGVa0zLgqjgCnwp/X7
         76dkvgXd5700MNLG/JHGRP7tBolZoBwzRawV6iuJKMqxq7VmS+1iyNbiO7Ky7/82RD+z
         1XqA==
X-Forwarded-Encrypted: i=1; AJvYcCWaFxy6HY7LEmJso258co81P/qGdb9NLHUvG4BCUnBpdrBPAlSrUdtXE7dPlCQz1BjUQNwrVDrAtBa2@vger.kernel.org
X-Gm-Message-State: AOJu0Yymzo4SkHG3+3WnrGoIvQaqvHvpARPOTpOqDts/HTJ6YDzcQ9xD
	8ObxwukS9SyaSFYLl2/Ov0zuMx0B9fxM4he/bIpSIE04ztBmVrkU5OI2
X-Gm-Gg: AZuq6aJ0f5GPZDH6vMzgHqcaWnMwpL1570XQ6Pm3oMw5dowGD10lAt9wuL2Yaiw3gO0
	FLMeoNNwmJe46nhKGHpRqCaX0F7Dv3wInoqHSslebEe4rTFbSRnrd09XKqeob2PUbx8cCf8RkJz
	gMfrKeIVeSL6xxiwhMugEWC3GBtqCsyGrGeEmCKtPOWGBbIj81Ir9GdL0Fo2QO10rIZ7J5753DO
	8k4aKVqfH7ymtKdtuvgLmqMufmWqB+MI6KIASScA8ERAu2fgV5c45m+Fktr7Iho7jtmiI6qHuTy
	/YUzG+2OIUprZ5hvhu+/YaFcewsWgi9UCjHnMT4sg/KlIfBdfiABgHZR4Q+DJcbcCIRocl4iqaV
	vEOtBcxXSgot5TH1x12OdQQ1tZnsXGzZQj5YcdUWI4M1XDmcR87fRPPzGAhGoEcvF8GHGEOIliU
	jtqiCnO43nmlRrc6nzz0RRrnjA9iOdXF2g4vHcXtTTaMSG1VmvKpkf0myEWLimidQ4T23IKtgCu
	Qy/XkAIQzXbUS+cvaA5AKgy1Adw73XHaV+QI74/a2wNeR7zNHGOj7JhnLCde2k=
X-Received: by 2002:a05:6808:c18e:b0:450:d143:b79f with SMTP id 5614622812f47-4639f281395mr1478351b6e.66.1771021944958;
        Fri, 13 Feb 2026 14:32:24 -0800 (PST)
Received: from james-x399.localdomain (71-218-105-26.hlrn.qwest.net. [71.218.105.26])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4636b0c8606sm5446923b6e.18.2026.02.13.14.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 14:32:24 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
To: linux-gpio@vger.kernel.org
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: gpio: document gpio-line usage
Date: Fri, 13 Feb 2026 15:32:02 -0700
Message-ID: <20260213223204.2415507-2-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260213223204.2415507-1-james.hilliard1@gmail.com>
References: <20260213223204.2415507-1-james.hilliard1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265480-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 28DE3139CCE
X-Rspamd-Action: no action

Document gpio-line child nodes for GPIO controller initialization
without line hogging.

Describe gpio-line-name semantics for both gpio-line nodes and gpio-hog
nodes, and update examples accordingly.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../devicetree/bindings/gpio/gpio.txt         | 47 ++++++++++++++-----
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio.txt b/Documentation/devicetree/bindings/gpio/gpio.txt
index b37dbb1edc62..cf591954eafd 100644
--- a/Documentation/devicetree/bindings/gpio/gpio.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio.txt
@@ -199,28 +199,41 @@ gpio-controller@00000000 {
 		"poweroff", "reset";
 }
 
-The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mechanism
-providing automatic GPIO request and configuration as part of the
-gpio-controller's driver probe function.
+The GPIO chip may contain child nodes used for line setup at probe time:
+- gpio-hog: reserves the GPIO line as a hog and configures it.
+- gpio-line: configures the GPIO line without reserving it as a hog.
 
-Each GPIO hog definition is represented as a child node of the GPIO controller.
-Required properties:
-- gpio-hog:   A property specifying that this child node represents a GPIO hog.
+Common properties for gpio-hog and gpio-line child nodes:
 - gpios:      Store the GPIO information (id, flags, ...) for each GPIO to
 	      affect. Shall contain an integer multiple of the number of cells
 	      specified in its parent node (GPIO controller node).
-Only one of the following properties scanned in the order shown below.
-This means that when multiple properties are present they will be searched
-in the order presented below and the first match is taken as the intended
-configuration.
 - input:      A property specifying to set the GPIO direction as input.
 - output-low  A property specifying to set the GPIO direction as output with
 	      the value low.
 - output-high A property specifying to set the GPIO direction as output with
 	      the value high.
-
-Optional properties:
-- line-name:  The GPIO label name. If not present the node name is used.
+	      When multiple line-state properties are present they are scanned
+	      in the order shown above and the first match is used.
+- gpio-line-name:
+	      Optional GPIO line name for the configured line.
+	      When present, it sets the line name for that line and overrides
+	      any existing name, including names assigned by the controller's
+	      "gpio-line-names". If not present, any existing name is left
+	      unchanged.
+
+gpio-hog specific properties:
+- gpio-hog:   A property specifying that this child node represents a GPIO hog.
+- line-name:  Consumer label used when requesting the hogged GPIO.
+	      If not present the node name is used.
+	      This is independent from "gpio-line-name".
+At least one line-state property ("input", "output-low", or "output-high")
+must be present for gpio-hog.
+
+gpio-line specific properties:
+- gpio-line:  A property specifying that this child node represents GPIO lines
+	      to configure without hogging.
+Line-state properties are optional for gpio-line.
+When no line-state property is present, the line direction/value is left as-is.
 
 Example of two SOC GPIO banks defined as gpio-controller nodes:
 
@@ -235,6 +248,14 @@ Example of two SOC GPIO banks defined as gpio-controller nodes:
 			gpios = <6 0>;
 			output-low;
 			line-name = "foo-bar-gpio";
+			gpio-line-name = "foo-bar-line";
+		};
+
+		line_c-init {
+			gpio-line;
+			gpios = <7 0>;
+			output-high;
+			gpio-line-name = "foo-baz-gpio";
 		};
 	};
 
-- 
2.43.0


