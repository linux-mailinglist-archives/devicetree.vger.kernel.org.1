Return-Path: <devicetree+bounces-266870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDlqAkonmGlqBwMAu9opvQ
	(envelope-from <devicetree+bounces-266870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B711661DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A10AD3051A8C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4ECF320CCF;
	Fri, 20 Feb 2026 09:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="N9gjeNYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E211731DD86
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579156; cv=none; b=jQPVmEL/CJ6acbeonu3TSrsCpcflKgYR0aaUkm1bEDaLSDtNq8Elqhu85Iqh3r5k0SFX2PwNSPux++FT/WzBydcF8SU8ix3zC9nuxnxn/wz92/niBHXhmBFASAku7iDl8isoIQTejCciqQNHlvsLk0Wj7R74XdKDpaYww4rNIgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579156; c=relaxed/simple;
	bh=isDjg2KdEDAWzS8eIlvfXGW5pS+9OiwjRNsGXauVrws=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kUqCPpGhW+vBJlAczhL7OhxUhJg0Ba8wl/jW295k7a2feRDxZ1uhdqdDWSKU2mr9wF7AU1wCv5IbO/4q1S2D1DRgg5DfWDEkh99zL5m8MtsZD4fzH3UN4xXd9wwNgFbu7NlOlVu/wnygGXwrqJchyt+KhN7jCgBOb3Twv0GuJ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=N9gjeNYo; arc=none smtp.client-ip=209.85.208.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f68.google.com with SMTP id 4fb4d7f45d1cf-65a1970b912so4716470a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 01:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1771579153; x=1772183953; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYkTpRjooi8HA/4JvTDsm3YoyWiVwSiSYVAVY34W7nQ=;
        b=N9gjeNYotHVttTLbIJ/8dDRB2Y6xz0zLJ50xkSPnY9oAweuDaRAgFdJtB54PuMzLt/
         J9REpQGOTlIzB5jetXjcWN7bx8IVE+SkDO4lfC5DN3Ycd/E8nxNiL72wO9iWf9UqouCi
         Xef1Ob1HSXJHwi90dLy1NoB/K4CU4AWSXkNW3EQOSioK6VI6QjyJsdr8cUeZkfIC7nsY
         CJTArJiSx9y0/ZlVg+ORCvBDpL+9zUPG0Beo2wtpcJfaawa7H67jz1fVWIkw4d0Lu/uD
         EtZdB4FlFFk1LJuWEZgK6e4RFtJDIvjfv/bdl9m+KOYlRUgJbSPUXBQ/Mvp4qN9JLqWL
         51JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771579153; x=1772183953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xYkTpRjooi8HA/4JvTDsm3YoyWiVwSiSYVAVY34W7nQ=;
        b=MBvDHAxg7SMXtQoHhptBuvStPlgnmZFiM66f8Gmp7P/B9mZ4d8f6h5+fiCgZ3oUZZ5
         K8IiW6BXYt+TFHT6XPvrY3OgrX4CsqxlQZEGsd1F/PFpvWTUBSQAZn/GtpWcCsmPAi2p
         vdw418zvQXpvgFcYWoUrbnGS4Z2y0IPz6t/Vny+IEH1KNPxVfDonkMoqG7I2l2+xe2wc
         23Ku7PR/Om23B7r167F3UWTfuLw0/9oeVfRo9ILdpo7czdPfBzWb0Q19aCYFAKR13M1H
         nRwB/fKjRDwbL1eiA7lo0v434bkoutIp3aXk0lZZO2pYzYYJY8EU+WqUbrw5J24btnsO
         C+Vw==
X-Forwarded-Encrypted: i=1; AJvYcCUkNY/EJuX1dEPIX89PZ/Jriiefx/nvdX932Nvr1f3rljbpsBbkCbBYIpVWr97eXACq8zIo7ARCF2Tn@vger.kernel.org
X-Gm-Message-State: AOJu0YyZmyPAB2aM5JX5T057pkEMYOjlFKGDPpzozwgVIYkWTYA0W/Wg
	D4p4nYRUQKxawOUmiM2FamxhyZvCYQMVsQ27VXkS1xNU3SDOM5sNspuzEKaXLRvIpCg=
X-Gm-Gg: AZuq6aJk55Nbfe1OheP1bpDmOD3SV0mo+sKRpPGS0JdF6kQgI3XNGsjng7nvlvvZHNr
	UDxPO0KFXTWKk/2NQncoLcn2ZPuIRvoL6qdXQu2AyAbwkg2S6lF3B/WIRi4mJtRXPP+keYT8cOD
	RGRDCW9uMrdsYfdVCpNjVLQEHwUtP9QcxHmtKHemwefzGw9Jj2nTpTeBHYtA4BScwdPcYUiq9Fy
	KPuFsj+1Dcb0PYsCA5oC32Ofq/mSnqqptWyJKmFvt+orKfKNkC2TGcgKIeAO5rrlGed6fFtlAQK
	M2Z41mpLHQ9UXQiCCqiQbyli12XZlutnBAYax2X6PUnVK7RSWiUz7dHFLL150MybREQl0HQwknj
	93dmZYZl+W+ozkPtX17jx07MGDUloSgid8VPTFxS72adsTrqlMBo9nGIR3JSBZy9IhJHZ/uKrar
	YU+Ogh6IwoIqt5coj2rkMsii33hZhnPdNo28qrqbjzVo7DsQC2QpUP4lRrkehw0AVcPtk6F1f9D
	hzX3MgB9bSXZeYr
X-Received: by 2002:a17:907:1c28:b0:b88:4224:815b with SMTP id a640c23a62f3a-b9073049b87mr76905466b.3.1771579152977;
        Fri, 20 Feb 2026 01:19:12 -0800 (PST)
Received: from [172.16.220.101] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc769111fsm667098666b.57.2026.02.20.01.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 01:19:12 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 20 Feb 2026 10:19:06 +0100
Subject: [PATCH v2 2/5] dt-bindings: thermal: generic-adc: Document
 #io-channel-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-bat-temp-adc-v2-2-fe34ed4ea851@fairphone.com>
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
In-Reply-To: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Hans de Goede <hansg@kernel.org>, 
 Jens Reidel <adrian@mainlining.org>, 
 Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771579150; l=1052;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=isDjg2KdEDAWzS8eIlvfXGW5pS+9OiwjRNsGXauVrws=;
 b=ZSVbqDHsSdLJsSwCkOzI7OsESGGyedhA0OT2p64wvJLLGx+vATaufPEQiebJ2HAoVmJZuf7QM
 fP2hUioU8+mB979BlBrTDKKHkKWw0KhWvQYmWm2xVr4I1nKLQZDoVeb
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266870-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4B711661DF
X-Rspamd-Action: no action

Document the property to allow using this sensor with io-channels.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml b/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
index 12e6418dc24d..317fc39ed46a 100644
--- a/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/generic-adc-thermal.yaml
@@ -24,6 +24,9 @@ properties:
   '#thermal-sensor-cells':
     const: 0
 
+  "#io-channel-cells":
+    const: 0
+
   io-channels:
     maxItems: 1
 
@@ -58,6 +61,7 @@ examples:
     thermal-sensor {
         compatible = "generic-adc-thermal";
         #thermal-sensor-cells = <0>;
+        #io-channel-cells = <0>;
         io-channels = <&ads1015 1>;
         io-channel-names = "sensor-channel";
         temperature-lookup-table = <

-- 
2.53.0


