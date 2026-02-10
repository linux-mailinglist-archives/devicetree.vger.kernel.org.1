Return-Path: <devicetree+bounces-264302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBOrK/f/imnJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:52:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D79111928A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CAD630A303F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F4107342537;
	Tue, 10 Feb 2026 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Icqf5Huu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A0B341AC7
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716970; cv=none; b=MF73KFxb9sctaZ0IY0tFitGkRHJDZEk9AZlv3FUsHAzf3SJagOud/eDQzQXksk1AOnWveauiBCyQwgErPJGGRojP4JtBhpkEw08KaRozIu7q3izy4j4f0Y4etBWuo5UZVrHwQDS6gf/Ku60BGXqMHQMbbbthelDD9EH5K6ES2nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716970; c=relaxed/simple;
	bh=yCXs77136XUDSF5gi4NbN1ndGjnJitNQS1pBWK3ZSq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NEGJL8HoQ0zxFxy0iwklkPXd7C2eSVtsJ/IA+ObhGkskeF5DRFtfh3U8IRwZFmOcuQHoo8JeZ7TPEBkpeqYvKnGV4ksR79zVMOSsGpzeYEmdFJsFbJsSpHmC4VqSEYot6dRoSkRGW50UV1NRBqu1knMkS1nLpopG9+QJgaP8k6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Icqf5Huu; arc=none smtp.client-ip=209.85.167.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f66.google.com with SMTP id 2adb3069b0e04-59dd4bec4ecso694458e87.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770716968; x=1771321768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MMvCNjWR7MERKti0fKDG3wrcg24MnDacQ8c/Hcdig+U=;
        b=Icqf5HuuxNR8bp23MQFC5h54wtFKg1OpAQsTa4QKxnVYQb8JRaHU5JPx1C+YAp96h4
         5oi/KWkaQ7kGqnOQAApVDoKqaDhCSeoMy+am/UVngEdqp7yhbDy2aXnu8BmS2c5Ogcdu
         swvfshwPhkL1btaDaRccwC3MuuHClVWIREmgjDt8+k2Tjl2+fZX1VYT3fTTfG61sxEFi
         W79nf+Q6C7u3ZYhpqYDX+sLtJsgVWIJwgfmv0/JLohoLk1wGYGf9NmZS8eRuKqebEMVl
         AqqVmzwyV3KKnUZOjVea1Fp+6MA7IoPMhkbqbBmiVrWKbcnowU/tLuGM+8pn85a0d453
         So7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716968; x=1771321768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MMvCNjWR7MERKti0fKDG3wrcg24MnDacQ8c/Hcdig+U=;
        b=G+Z61L/zDgk2tFH0+NTsKUbAW5zXJveHl6YRwFZH2QGrDIAjeP1iSrCFLzon8eojck
         Q99h5JSfF5WeFmQ2tAnugQkQ72RFaU4n8sT9foaEi2aAA3NUF22A/DFdOGc7jTuCxCd1
         a2rmqWBuMwtBPnGtakTdOorXBLmcwAAWwHyVzyz91tztMFIixz7+pcZ2xRN58sAY7pKz
         jFYN7Ilf67stPqsNCqOW8rewEvS/3HGZWMUZ8GMculhJxIvb//W4m1U0ODvKJLMDHdSH
         J715N/mcvojbfXLb/fQXrPE9A+HpMaaJwWA0peZLVaree41fYqDsH1Z8M67GaECUNjro
         hEyw==
X-Forwarded-Encrypted: i=1; AJvYcCW/tJUeXlrFS47J75iKJl3f8mMY54DNT/NISopmqu41/bpSQTQtQxe+1hzxBWkOpPmapx4ZQsRnT6qa@vger.kernel.org
X-Gm-Message-State: AOJu0YzOyoCme+zsQz1mk1dRfG93rW+32UHHvLzKzvC6rxXWAoII+8+o
	Lw0lmePOWFnmbXpRERNLmNRygEreSdhFpfPfefNFH2wG677YqPpdEwWR
X-Gm-Gg: AZuq6aIuLXCtGz+959GHSxbAuMNhG/qGKRANsT+ZzeAlCf3vHh/sVn4Z5Pj9BOSS0o1
	Cay1TD3hTjMNkzXjf6dh7KNqqlbirL8U/sg9pABnfCAO2nyNNpefNA6IEGbj050ygIC7dwKAK9j
	Y0gnZlTt09sVzD2YkyPW2FOzs/GBkrNCbX9XQ8gSaXoiW7pIJTm+vUfWYz69B+Yt2EQDdInaYsB
	J6uCBYAFNX434d2LXmAWWuyI76z7em3LgQcMXcL8vz2Aa7asJdrdm1uClbQ5DY6QbeHOQ0XbnTZ
	Pq8VOATTaVfhynt1GzywEKjrZQqtHfRhV7UG+fKUtHTJvt0bG1l4mnt4D4Sj9x1aiaM3nnF4iO8
	jCs3Z7Kqz1IEmNPvNYBKdfIYWOK4ruMt2BTRssdAl7yHPb5ApTegw1JMeXOD1dXhz2uWZte1NGa
	3rbgrsVtFugbJ2
X-Received: by 2002:a05:6512:4010:b0:59e:3e8f:ccc3 with SMTP id 2adb3069b0e04-59e45153338mr4748050e87.32.1770716967558;
        Tue, 10 Feb 2026 01:49:27 -0800 (PST)
Received: from xeon ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e231d5sm3191691e87.81.2026.02.10.01.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 01:49:27 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: display: tegra: document Tegra20 HDMI port
Date: Tue, 10 Feb 2026 11:49:07 +0200
Message-ID: <20260210094908.14276-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260210094908.14276-1-clamor95@gmail.com>
References: <20260210094908.14276-1-clamor95@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264302-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D79111928A
X-Rspamd-Action: no action

Tegra HDMI can be modeled using an OF graph. Reflect this in the bindings.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/display/tegra/nvidia,tegra20-hdmi.yaml | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hdmi.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hdmi.yaml
index f77197e4869f..f33b700bf0ee 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-hdmi.yaml
@@ -82,6 +82,10 @@ properties:
     description: phandle of a display panel
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  port:
+    description: connection to controller receiving HDMI signals
+    $ref: /schemas/graph.yaml#/properties/port
+
   "#sound-dai-cells":
     const: 0
 
@@ -97,8 +101,13 @@ required:
   - reset-names
   - pll-supply
   - vdd-supply
-  - nvidia,ddc-i2c-bus
-  - nvidia,hpd-gpio
+
+anyOf:
+  - required:
+    - nvidia,ddc-i2c-bus
+    - nvidia,hpd-gpio
+  - required:
+    - port
 
 examples:
   - |
-- 
2.51.0


