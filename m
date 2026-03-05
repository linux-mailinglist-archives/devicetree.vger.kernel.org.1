Return-Path: <devicetree+bounces-271633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH2iHHCsqWn0CAEAu9opvQ
	(envelope-from <devicetree+bounces-271633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:16:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A41F921549D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:16:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E8C0C303A46A
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659EA3CF66B;
	Thu,  5 Mar 2026 16:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W+u5aIke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F120925A2C9
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772727065; cv=none; b=DYCuvS2dEq/ffimwsuFDPBfe0aPHlLi+6FrUes2NUNQmhR163UDR1njI0OhqgAWZrQlkwu2WO7zxCtShkRjRlLz26q3kvFWgjtJ+W4hfYU4ipkoVwUjzQdA9MBGYp2sKv6RsBydWI4lrOlNDkd2jG+F+nDvkaNdzuXDRGvXeGNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772727065; c=relaxed/simple;
	bh=RMwhwayoSzcK4Bl6kVqQCuvR2QJJ4r8CrZZvWWNojTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VqHDkTRv/414MjMpbzZoyfpju8NoHe1F5RQ5C0G0gGr+g+Z5jaXqdTDvTfaa6kPBOC2EKTbOhAIueOY8vMfDwutggx+hYpMxrwHppyYqIT92OzCeriz9LLeTA1vzPCy15QAb7YAaTVzeuNjvWdW3T85zXslFyGrsy7WC2btn3uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W+u5aIke; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so5142547f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772727062; x=1773331862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Dy0HnPVie7HgXpLwSqXJDHNxRmTEZFh3hOUd7M+N2Y=;
        b=W+u5aIkeovVWa24RrD5fVhl4XkH5RQKxd2BN0kiIi0AG/vnw2y6SZUWhp8vAsDPm21
         2cRIlc7LgkMvcEHwThjasu6zAN6gqBYTmhON0fhkTrezMJFKPZD+k980rkg/2VfwJElD
         /D6kj3rES/Tra73tMewZv8qpNYXdYO9BJkUBMac30H5E9tcvxDOBHCLPs1BvDqqIVsKt
         SxKrRPUr/tREMXGMVTz7B+MB2qKcfD4KCSJ17pAqYdUQoIQQ6VOLfOe2I/HrPuIz0RvC
         Fl9htQOxGeLJwoIo+FsK/bMaF0bO+1RSHp3JQRRk7M2LIa0q5OAaA9p6okTc/fWi5SkO
         +rpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772727062; x=1773331862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7Dy0HnPVie7HgXpLwSqXJDHNxRmTEZFh3hOUd7M+N2Y=;
        b=VAkdcrdO32B5JI4PAnvqa3TueVoxYt2hEYJbpr53oTeogCjtPMDmkDu0uRjqeKlH9P
         yEMsVSvQrTTSQ3HMOcQ2sTF+UhSlJ0Y+6KSnb3gQgEmr62Ivku5sDWHE7iKsG8bJiwn4
         97F+agGMoYyxL03xrWD6FS+7g8ydoCmIKkRMaq7KFwuBl3F3jMqrjOvK42lZEi/omSGt
         CshByHg47xawNpoWE8+s1oiyDfaM3SYhqzcUxGgdrK+0sidusgmnJFAAen5Py9+Go8Tc
         hCP3Zi90g7zx0VmHzAK/QxschAdTQBO0UDGNea7msPEaBURH6HeGWET8NKFIIamsaxVr
         WrFg==
X-Forwarded-Encrypted: i=1; AJvYcCWcx6uWKfi90dCDUHRAiOkDK/LOtD16qsv/eyGlPKIgxuwTTxtUpGSbBIhQjO7veAlvItsgd+sYidYz@vger.kernel.org
X-Gm-Message-State: AOJu0YzGNL2326AZcQ/OOvcjLUOr2Zy2CABZL2vPiFrw3JWfUiUnOJdx
	JDR1YlZ1TFIUqMU286sKbMwITebNhY7gReRHbm8D3aNME1LaFAsQ8tGi
X-Gm-Gg: ATEYQzxM82QTNbinPy+rAw2eAx1UrNTcV4QrzyoMeXbqPGA/YPdsotKHz3n66AlmlBU
	Fnt1hRKfwOTZmLD/yzsDdMHQ486i/Vmrdsb6FbdkrCxZokGKWbqi7VU0nKaRKMN7VOJI+fV/scM
	4Zz7Yeltf4N6S4ApQeJHJrixYmGGA2YAmRKED97PZrtOq6Ka7MoM+WpdhSrFlyPJnfWrvAxd6N3
	/tdrvtMX0xC9z97qgZ0NhIuCscSXBonlihT7Ka7mZGK4gSN7fkQY8WOQtkvrR59+jo4NYq68R0L
	bsLlONkBa34oZD3sAuYy78fnwQCKEwUqd9M9uJ89BE/laoY7qM17y4nhw2yNjBObdoo0GSBt0XK
	RrI6/mttmRyhueq+WkCbmwJt9az1upDvt9Py7yq7SomkY80oo3S8Tdr9RJE9lP+vRsRmibrQECS
	pzCSu2RfCs3VwT
X-Received: by 2002:a5d:5f50:0:b0:439:c157:2577 with SMTP id ffacd0b85a97d-439d7247e84mr671194f8f.34.1772727062286;
        Thu, 05 Mar 2026 08:11:02 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b8807a4esm31426496f8f.4.2026.03.05.08.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 08:11:02 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: display: tegra: document Tegra20 DSI port
Date: Thu,  5 Mar 2026 18:10:34 +0200
Message-ID: <20260305161035.64548-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305161035.64548-1-clamor95@gmail.com>
References: <20260305161035.64548-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A41F921549D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271633-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Document the optional port node, which is required for correctly modeling
a dual-mode panel.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/display/tegra/nvidia,tegra20-dsi.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dsi.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dsi.yaml
index 59e1dc0813e7..0f4837648d17 100644
--- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-dsi.yaml
@@ -83,6 +83,12 @@ properties:
       gang up with in order to support up to 8 data lanes
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  port:
+    description: specifies the connection port for the dual-mode panel
+      and is required only when the panel is operating in dual-mode
+      configuration.
+    $ref: /schemas/graph.yaml#/properties/port
+
 allOf:
   - $ref: ../dsi-controller.yaml#
   - if:
-- 
2.51.0


