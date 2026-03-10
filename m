Return-Path: <devicetree+bounces-273180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NMiOsJyr2lYZgIAu9opvQ
	(envelope-from <devicetree+bounces-273180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 970CE24380E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2409305F7EC
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC242C029C;
	Tue, 10 Mar 2026 01:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P24SiCoe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F2C26A1AC
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105850; cv=none; b=WKv41vvnl2UYDfrfGgCz6789zN/udO8Reye/h7Q2T/YERiKCXuwmggFkvWFoNiG31cZ7BTqLmE+wWlftfP+T1k9+NSs+MbQaCCuofBrZQ+VMLCK2hLfsr8BF3O5yXUaGNFdAzx/tWAA/257fHzY6La0yX9Fq9p9ZoOab4MJ7Q6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105850; c=relaxed/simple;
	bh=TqqVjcOwxXhrFcWZZUIMRtdny0Tnu1HnL/f3vQhwcP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W13QPIAKk3jXsSqIHMTBL+creNvvXavGQR6KN7IM63npQgB8BM5rHujvgrYXiVO7pAueODVjE0b77FCHWmrt3xqZq5jp9JOPTC+fnSHxavu9EduO693ZjySMbeXkR+5L/roORk7d4yH4yrJ9psOgLycW67zY6oPUngA/8mg+Bm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P24SiCoe; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8cd7c372929so251560285a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 18:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773105848; x=1773710648; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QjZymS/A18myIOLroyWLFVI0pqNuQMdW1+eVNlgX5Y=;
        b=P24SiCoe2KIkxL3w5cTmMAbn/VbOTSQKYPVaMQN9M4C+R1Rw115Q+KV1SYS1Y2CHb7
         1T1Z6tB9LmeYHoECrpC40fPvcX61be1pHqDO93TfjOLbxq6ZATKmxAB/2cx/Pxdp8kRE
         N5xht/DAsY9bG7KQECyfbG8XAOZAC0nAnt7p07oFIYdEYVvVqSFqZ0CwrM5Z0lIayDmN
         DhWvc/30BWFKK25I2D5slczk5vK9EiBjD9kMw5/gfSkAjNw/od+CUkc3ZJv0+ICquF/L
         peJfNOdlr9nA6QI6ippzpw2UZrdJZCU1B2GPp81AOiL3gs03prMvkjabxfta05GT65Np
         TqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773105848; x=1773710648;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9QjZymS/A18myIOLroyWLFVI0pqNuQMdW1+eVNlgX5Y=;
        b=tHXOZ+2vs460bn6+m3uSCwGgil3hYL72tW6wdLQpDmOOVidiuTjegdJHt6XogXTGxh
         N2OPALAUX4MYiM5Ll8duXH23NjQA0ni7Ab+S27g539G2rFblFStGLGsFHHUeNyw/Bx/A
         Kof9ryHz9u/+Mw1hCQqmpAebPMU+XnBo7tFc78YD+pNTuFDk/EcH5MgIVujseKA/whDF
         WDcqsZ5Q9cMADMwmLY+hznIl9/eNwtaZP48R9S5URUVxYc+vt7zbGLUAwajflpb+8Qf5
         FGc5OrGfZQF48PtUsE7QcUqlMIqAup3jw5Fn7PN985BiplR6JvJ/Ohc34guZYPMj5SDI
         CKXA==
X-Forwarded-Encrypted: i=1; AJvYcCWvixJ77n5SeZnye1t1KgBo5jMrVchLxZY4Eaod8gqJfUGhl1J8bmXxMBwpayskaqqk5ShV6a908gzO@vger.kernel.org
X-Gm-Message-State: AOJu0YyE9t6i2CZ0sJdCnb80vzkhwyDQ4VUvx8fi36Vup1mq4H/HEp5d
	0H7FpZmQ/CRPeFv9vq9NUwtLxeq8qfxAl2ndYe5Gkvy/n4WgGj1Y/cJ5
X-Gm-Gg: ATEYQzz/e2SVTmLx3CvczX1oVhICx9Ci5G0ZF2WRrBhWTrb25JSIR+ZVB05u0wF5KXU
	i2rkgBiB4Alz/2JQ1bY7sC0zQbGtzuRqLW3I1BSeyjWenvaD3ZCkSxbUo/BMP4ibZ8gSxcqyPRK
	0tTyiYhs0Pp1/PZG81yFWrlCJT/2RVnDLzwtbnrbz71WRLj/EUAPPRvz2r+6fH7riXHxRqWDT1b
	OBmQhyOgy+R/6EYto31x5/gedUjTkH0RzwEF4r83lOybDwHzncQKV+DdkWUnplbRQfZnz8OlTHq
	but2f67UqM8PM0n3O55PDTC4TJxlcPAUC8IwrVpgAjwrXuQMPQFBQDMLIASdON5CUMGeclCD4Lu
	SBK55a10KmPd0ft6JmeXeIzUqaej2L38lK3kNZltMrP3NwpO/h+Qp6dO/odxrjR+4zw45qeoJDx
	TRnbkY/Rogs4Pbvp6XYT/r8aG/ePhgQU5/2po+4H+ctjSBXAJcGQXJWlszjEjfVnbrNER1OIFMo
	xHhLcnlzqchTqM=
X-Received: by 2002:a05:620a:4147:b0:8ca:2cf9:819c with SMTP id af79cd13be357-8cd6d441630mr1568727085a.40.1773105848148;
        Mon, 09 Mar 2026 18:24:08 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd7e857037sm488823185a.20.2026.03.09.18.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 18:24:07 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 1/5] dt-bindings: qcom: lpass-lpi-common: add reserved GPIOs property
Date: Mon,  9 Mar 2026 21:24:42 -0400
Message-ID: <20260310012446.32226-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310012446.32226-1-mailingradian@gmail.com>
References: <20260310012446.32226-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 970CE24380E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273180-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

There can be reserved GPIOs on the LPASS LPI pin controller to possibly
control sensors. Add the property for reserved GPIOs so they can be
avoided appropriately.

Adapted from the same entry in qcom,tlmm-common.yaml.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../devicetree/bindings/pinctrl/qcom,lpass-lpi-common.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-common.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-common.yaml
index 619341dd637c..0c3fa5d597e0 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-common.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-common.yaml
@@ -27,6 +27,12 @@ properties:
   gpio-ranges:
     maxItems: 1
 
+  gpio-reserved-ranges:
+    description:
+      Pins can be reserved for trusted applications or for LPASS, thereby
+      inaccessible from the OS. This property can be used to mark the pins
+      which resources should not be accessed by the OS.
+
 required:
   - gpio-controller
   - "#gpio-cells"
-- 
2.53.0


