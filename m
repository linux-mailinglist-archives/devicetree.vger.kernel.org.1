Return-Path: <devicetree+bounces-278114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJ3WExwGvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B232D7410
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:32:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 975C330168AF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DB4344031;
	Fri, 20 Mar 2026 08:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ru+NPk/4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AE01A9FA4
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995538; cv=none; b=CIS7W25A7v5gcIA4Mh6DTGIJi9flQfcMZdft1WVzJH3LTe5pk1zcuWyBRaY7mSos5vYHZDQAYWRFVw2J4sw2L0VuUV1g2eHhy0xrCQh/M72un17gz64eg/cklSrROibsRoKFGOIWmBpqYGZh8sVN2Mir/qnzmA/t/3/EfQsSjt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995538; c=relaxed/simple;
	bh=1D4fSyTvSEso8i2Ejp40j4xJBp907BVnO5lKtj86KL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JPSlLcFcaWOlma/94m5kV77DPn4SClYq0zdaWcbCLkMjvoia8F8PlZD64hjwQH8ON6ufxqreui6FhnrEAWluaQmhvlkOsQ8EvRp+bBXdSfYqV9Ckt9Vxwluv5Kk09/UZlvoHjMr23x4XINC+kVt7LxWroeHgC6yBuhYV3PGu7sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ru+NPk/4; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82a73593410so690100b3a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 01:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1773995537; x=1774600337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iLEs0e2qJIlqfw8fHUZzPP3Wzmar5tmvZs6TyzNUS+A=;
        b=Ru+NPk/4z5vTapoF/E6G8wVkMm7wqlspm94xE5e1qCvJdQyoURq3BZqwruiiQ1+p5F
         Oi5gHCcOAM7u5KPTuttlPuYMP3vvqUjuSnrMy8dW261Obs8H1dj9jUt2qr9dsIBWDEi+
         l5YihPIZhA2RN+fstB5wQniGap5jXWJLcDsnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773995537; x=1774600337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLEs0e2qJIlqfw8fHUZzPP3Wzmar5tmvZs6TyzNUS+A=;
        b=geyIzWl3BvGbBuObbq4cIHn8eW1LXxgt6ChXZJ6R+Ra5mqRSYcZbXGGPG2cfgtfGvh
         WNKK4wojp6lL/vTKjiJ1QWpqcHzGpxUoQBM/8RBI+HsOiAwjUzH0fcBIp8Evl1cMl72K
         dt8Gc3JYhhVx2NUXnbqgm34SXXSHL6XXaYNaHhwsluevaB3DUMym7UaTPYOHr8g8MGNO
         FcXmJYVDdtIZqHLfuiYze/PAJrw0P2MJAEi6VUGIpDa5G2Ji3+11slTBenmPDD2783h2
         Z6d2VkhXHNXYDahm6N8oHMv/vfRK8lP3CEmO76ndyND4KCtAV5PS6U6YkYt1HNYdTg3/
         IT3g==
X-Forwarded-Encrypted: i=1; AJvYcCUm9Uaqx3+jFnpnWekHT32FnCFCveUinXfw2qlyjedplSYUTe00nHWOY2fgbNYqOLsHpstljR0t0x23@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3nniHP2cKOP9khm0b3qr1yULYfdGWtQtDHhtFNz1h3otaBXze
	QXVm9YHahp1mLBsO4dhWMGp6YIkfv3ZnBKv+2W8+QEQTrPnSem/vcEkTLL19mmSlUi/nQTxJiTB
	blg0=
X-Gm-Gg: ATEYQzxX41hvVzVRfBfqvkxTZ/zZO418/jXnHCgB1ol0M+a4FMGN/xkKxuQI7mbl4M3
	LhSXEKdas5+RI9okCBUlkEGhAiPk0jjhXrFGVGlvL9yxQaTQBmKsS8v1WfAoXlFrzP2p69Fqz4n
	OIAIF6dnkIO8tzvZqfNH7s3AGpPmWiu6Zly5Cqra7YzHcd6PHqe0J936iZHxofcI5ZGDibV/mpW
	U9AMkS8RQWNhKlOJCQ8pR48E/yV7/ShlKXgywhvnj7r6KCfLzq5dTkdOMhLjMPWbOTO6cvjt49+
	ujDH9qKzU4NS8OdEz/EQgMMFZzL6VhKq1ciQKBXJd8X1doVwQ3TOaMiu3uT69UpXuLGYvKPKWwc
	Sq9ETJ7yQCq86TI+OlE+/KKZ4mRk0x0W8TDO5wQoNOCpXvRSc+tLQqoCPnY7Nmo4/eCMXxCCrny
	Ph5iKQXli8y5leSjc+3yi7aWJIGFKQs6EAL8gMIlvLZCFvkh4jRzC6PF3Gr+WgBy5aHszlkJ1yw
	6JHNBQjkFGwxJTrgJc=
X-Received: by 2002:a05:6a00:1a89:b0:829:9fa3:5c8b with SMTP id d2e1a72fcca58-82a8c3b91fdmr1755152b3a.55.1773995536642;
        Fri, 20 Mar 2026 01:32:16 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9cdf:e932:6f2f:c654])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82b040debf9sm1408816b3a.47.2026.03.20.01.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 01:32:16 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev
Subject: [PATCH 0/2] regulator: cros-ec: cleanup and add supplies
Date: Fri, 20 Mar 2026 16:31:31 +0800
Message-ID: <20260320083135.2455444-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-278114-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,chromium.org,collabora.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[chromium.org:+];
	NEURAL_HAM(-0.00)[-0.961];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: E6B232D7410
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This series is part of a broader collection of regulator related
cleanups for MediaTek Chromebooks. This one covers the regulators
exposed by the ChromeOS Embedded Controller.

Patch 1 adds the names of the power supply inputs to the binding.

Patch 2 adds the supply names from the DT binding change in patch 1
to the regulator descriptions in the driver. This patch has a
checkpatch.pl warnings, but I wonder if it's because the context size
for checking complex macros is not large enough.

Device tree changes will be sent separately. The goal is to get the
regulator tree as complete as possible. This includes adding supply
names to other regulator DT bindings, and adding all the supply links
to the existing DTs.

Please have a look.


Thanks
ChenYu


Chen-Yu Tsai (2):
  regulator: dt-bindings: cros-ec: Add regulator supply
  regulator: cros-ec: Add regulator supply

 .../bindings/regulator/google,cros-ec-regulator.yaml          | 4 ++++
 drivers/regulator/cros-ec-regulator.c                         | 1 +
 2 files changed, 5 insertions(+)

-- 
2.53.0.959.g497ff81fa9-goog


