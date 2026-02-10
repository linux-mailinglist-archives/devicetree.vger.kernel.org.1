Return-Path: <devicetree+bounces-264301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCfQGef/imnJPAAAu9opvQ
	(envelope-from <devicetree+bounces-264301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:52:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D8411927B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F1053090B36
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 09:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED46342510;
	Tue, 10 Feb 2026 09:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RorJjAvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E29303C87
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 09:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716969; cv=none; b=TlOjTtIZzRZbRZfUQMXpjK4cVQ9QiIdAxdOgTvo8Rgjr6F3K25kqiLMA8mcWJMzPLYLHz/oObnFQPR++nc5MWPdSvYkAZH0gLbC+4vh1uC1nD0CmRFL5jmSt4wXpHYblUDSDKBi9RAfdaRtjzLLHCYH+jTTM7aXQ0fLDKTtFj2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716969; c=relaxed/simple;
	bh=UUaAifV8pKmY/5z3VMyzUPljTU1pUhWWb1wDaHx/g7Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Oaohc9RcYEGom1GdJN8xOqX7Z3iUaN/9HksBklgbGuHbTmJCA3/EEPxf47XByf7pgBlTi9s4NXe6Hh1klSWl33CKGKftHM40F1VvXfqRr1t2EI6FeLDVqtJndT9CQ40H49/ZnsJKEnDHW4jgy/HtbzyeK3Aj33vOkCWozRNE4SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RorJjAvl; arc=none smtp.client-ip=209.85.167.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-59e0d5c446cso634003e87.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 01:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770716967; x=1771321767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5XThuayVTw6ykMsIyLNH4e1i5wnYl+TBF/gMfeuCJW0=;
        b=RorJjAvlyLGMQS3wsJrJHkbdJSYtBCpUXtUawufkNTlnKEbX4EmH3Ar5bW+z3RKVvh
         IEGmPvsR8fOux5mmK4bY46NnipR2xcCm/BTaJnR2cdlm1Mi28/9M4lP8cCHheZ6Pxkee
         2qj5BFBtSALRgGkB4+byFpaWYfHpYZkgP6eEVKwjnEPpQyWDA3yRpwkRKtE7n7Pb/G/E
         t0Mqo5kyb/ZVGIwpVmof+UK51ow2vo6WjYGvavg082B87Yxp+ePSNGj4wrVDqHaKSSWz
         1YoLwFBJZmsfJ5Wa735iOMQzVN2r6gt3olgvGr23dZLlDC1F4LsAbfER5u3gCV15A1Hp
         U8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770716967; x=1771321767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5XThuayVTw6ykMsIyLNH4e1i5wnYl+TBF/gMfeuCJW0=;
        b=oR2eU87D3NCRw8+9ZMLcz5FD8GgvidSXaIkoNY1VmvakrHQGbQ8QoUPc2NqMEugey+
         UP7hBOG4WgDBZzBFxMVBf8U2VbmZPVHalZAoilCCMfO/hS/bVZbaZN3JsezogIQe601T
         RP87WA0skoSjS6taSaJmd1aSvxZD3O+ubN5UqJfa7TcPmYHQUEVXClcE5J8dap33ikXN
         E+Pg+HC0Zci/N1j8HHMBukI6YXtvaX49VRngB54ZNvxwYYz0Fw2W07+Sjir8W48WswZJ
         kmCpZvF/y8KhMq7MnPFmYNs6alWlytFpPki9XX0k4+9HkIwS0SYYHbSlMfhhYcu0xJAA
         fwLA==
X-Forwarded-Encrypted: i=1; AJvYcCUgbtEXNkwu0xG5zIIc1N7qud02L3ZwR2MOXVK551quxv5wLAbfOO1aXjIMYQBhO7ZeGypxJuLiGGHN@vger.kernel.org
X-Gm-Message-State: AOJu0YzQm7T6sqyhVwzpACEeZsAnpTOt7c6qivLnHjkECziwwR75vSc+
	ghc6HEGxamG1TGNRGtvQvDlSkiTKHhPa5vjGC9kcQoHcdohLMHRYwqHnHURq33Vn
X-Gm-Gg: AZuq6aIRpwVpE/rXfg4+fgWaJH19uQHq3p70WORK367p5h/2/+AywoUdIixERDbtyen
	bYv5xGMOVG6Ba3Okb9+5/l59k8DRdgFbQ1VEyoKH/vnrt/aJKPC3YuvROrSBytoT+Vg//CE733i
	M3c7VyR7xX2oaKZz5XfxM83jBsCF31LUFu+x5eGJb2dYf5G8KQ8uakqxTJBlyvlw4dL4M0h8lEb
	O6rErTgSNtYgX7ZU5TQRWjrZ0Clll6NXuYLQ9fr9VYu8ZNI4Pxf+4Id1B+3fnGhRAt9azrzkI9O
	l5PHbIdipu3nPt0JCWS7FUSWD5ai/ZDpWuai9TR/TVZBRdonG3bdQHmZc5elKCW0msQKd78RM2x
	h/PgyD653LUDzQHI+8fBxmVsGYKYVKYfMnJo9lr0yR5PHFM3LkeSFl8iGJZYKW2HzywkynljzOm
	lXErQrVJWDL9ho
X-Received: by 2002:a05:6512:3da7:b0:59e:92e:7d07 with SMTP id 2adb3069b0e04-59e4515a360mr4728661e87.24.1770716966455;
        Tue, 10 Feb 2026 01:49:26 -0800 (PST)
Received: from xeon ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e231d5sm3191691e87.81.2026.02.10.01.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 01:49:26 -0800 (PST)
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
Subject: [PATCH v1 0/2] ARM: tegra: document Tegra20 HDMI port
Date: Tue, 10 Feb 2026 11:49:06 +0200
Message-ID: <20260210094908.14276-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264301-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 12D8411927B
X-Rspamd-Action: no action

Document port which can be used in the HDMI to model it using OF
graph.

Svyatoslav Ryhel (2):
  dt-bindings: display: tegra: document Tegra20 HDMI port
  ARM: tegra: transformers: add connector node

 .../display/tegra/nvidia,tegra20-hdmi.yaml    | 13 +++++++++--
 .../tegra20-asus-transformer-common.dtsi      | 22 ++++++++++++++++---
 .../boot/dts/nvidia/tegra30-asus-tf600t.dts   | 21 ++++++++++++++++--
 .../tegra30-asus-transformer-common.dtsi      | 21 ++++++++++++++++--
 4 files changed, 68 insertions(+), 9 deletions(-)

-- 
2.51.0


