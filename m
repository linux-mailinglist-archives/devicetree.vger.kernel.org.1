Return-Path: <devicetree+bounces-261234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJROGPC0fGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:41:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB75BB3D2
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04A9A300BB86
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0222F314D1E;
	Fri, 30 Jan 2026 13:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="blZoQbm1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2797B308F34
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769780443; cv=none; b=uPUzRCR4Ndt/M9UWQdgLTuMeQ8BVenoJNH4AfWygzWPNjBMAp5BDH38etP8gVl1sCj19SS5xktM9vfgOsdAhLQZHGr3bmjPeN4GhDL877nXZTpGvaj61B5QT6UGXhwTY+BCFeDqN/yh80tXX4yxT4IRO+0CGUQAtY6sK6exjXBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769780443; c=relaxed/simple;
	bh=95iIyzopFkQ9D9uWqLqTERrAIhio7k7WYfD1g3owJoI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cviMhwAAkbRqBqmanMHQpyQ8MaueEsBbyE/Wur8cpGDhv+0H4BnV45tByPpK+zSKksAjI7R8jEb15gAHN3FJhotHU4aleULRQNo8PmG2s5m7tEktKqBc1/FRPTK/UcQJGIqnnGZ4uifz39zlLipiENndWSBG50LyoICG6eBuWns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=blZoQbm1; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso17923445e9.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769780440; x=1770385240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32vh1XyNdNiMvWqowSj9FrbYVVxs5wH5KyB1e47QLpA=;
        b=blZoQbm1TGnULKAvX7Dt5nuA4UhwXpAbj/oSkSN/YzqSYHtxdgDspU5rX9/y3iXM2p
         N2S9cHYz9ixV5IzAbx+I7bZkoL+tBGbhL/U5Zl9j1nqOsOF5Cuu5JDk8Emnf0Dfn/TY/
         5YvkF0lca4vm5Q4Bi3kkShPX2rlwfdsFwX8kNaP8mrASjwbzTN9yQjcvFP6fe9zp7x6h
         G5QlPCWxvbsoWccwIKv7l+VPZ6taHAEgwnR3MWa2jGG4ce+p1K8MBFrTcsqgnaQDX2/w
         Q+lvLBYWVPzdtD+yIwOlSfbX1f+/pOjliIBt+HD5K19qWbcZlbOd5Za4rqB+xt44d3y3
         eF/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769780440; x=1770385240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=32vh1XyNdNiMvWqowSj9FrbYVVxs5wH5KyB1e47QLpA=;
        b=Rya/7z9/d9/yGPZxdFQwwmB2TrigJGIZFGmSuMI7aH3i19DR7smYIz/Zk4S3/vZgYx
         v70LAiydb1zC9ESt6dNXPxHYAcut/9ouhCje62scFsrt4ZltglqP1X5ihvCk5zmqAass
         GxgYftZmUqAWv/eOIOmH2F4BT9wG7YiUYzGAUhEg3lyYYaeJ50q9QSw7yH+VQxIMgENo
         2JKMxg1l5p35QTfBglUyFGQBshwEln+U+vf11wQmGvqrJUZE7+WKwvJoGOkpEq2i8dpU
         nCTYtgHMJYsFfF3NLIwTrF5EK+FxsQ3xL4mdDRY/QxJJ7WKRiN88Gx4OfZ72HJ6UgrVj
         lP6A==
X-Forwarded-Encrypted: i=1; AJvYcCXxdQ+n8E61uz/u0cl/ZKhVTIKwaEgd/G2F8Sq9RksTsEsDh5T5aiAVneanV6wSU+uI4ot9FtTy4Fvd@vger.kernel.org
X-Gm-Message-State: AOJu0YxOoDnh5RHL17MALLVQ69JHUdyFquvsmAuLUXcEicMRgcT1o580
	gO8wyj3VaWskjLFD/i9LkCaTYy8wOKJnQaMmAqdTnoQiajJS+o/Jd3BN/vDNPSiU
X-Gm-Gg: AZuq6aLZ1eM5vNhvch5ryxg5+Wy45GQKSlq7VfZsV+FsVu30kuVIZCn0kHMRlAtSTFj
	dhsimiu0vavj6G4FqMFJdrHPjNHCYbI7eoq9FY8qwBhSMFnQKa3LKR33IWhV0NnBzX5YdIekcYi
	1Q+Qv78xS1pgiDPTmu9tzdUQ7zItFtIGXToBzjsge22/KCC1kk1zTR5D9NMaDpD7cZ3accilLTi
	EBMqr8WpvQ++C8kvHLji5Ynv7a8z+x3/eUGpz/s1O44qLwcOzGveSY9DCLz13N9Stnx+ly9Dylf
	Q4EXz0GiHJ91yweIN9PH0KbLVEBUcZ9VQd0oKbVG8WraAGTyX2E3KkgdiqJCqH6bbSCVGYiW/pz
	kXGmoxd0NUP88YvfSFNZ5T9umiFysqlb2qaevmyaCSYZcjIDXZ3iv2SQEZ41LLo2vX3gvsVSu/v
	YN
X-Received: by 2002:a05:600c:5289:b0:477:abea:9028 with SMTP id 5b1f17b1804b1-482db44931bmr44744325e9.6.1769780439546;
        Fri, 30 Jan 2026 05:40:39 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806cd8fadfsm199106075e9.0.2026.01.30.05.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:40:39 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: power: supply: cpcap-battery: document monitored-battery property
Date: Fri, 30 Jan 2026 15:40:20 +0200
Message-ID: <20260130134021.353688-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260130134021.353688-1-clamor95@gmail.com>
References: <20260130134021.353688-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,atomide.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261234-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0FB75BB3D2
X-Rspamd-Action: no action

Document monitored-battery used to describe static battery cell properties.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../devicetree/bindings/power/supply/cpcap-battery.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml b/Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
index 694bfdb5815c..6dcca55d6d90 100644
--- a/Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
+++ b/Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
@@ -55,6 +55,7 @@ properties:
       - const: chg_isense
       - const: batti
 
+  monitored-battery: true
   power-supplies: true
 
 required:
-- 
2.51.0


