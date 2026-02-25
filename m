Return-Path: <devicetree+bounces-268168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMkfMiSlnmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:30:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43287193768
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 053E631868F9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B86304BB8;
	Wed, 25 Feb 2026 07:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ae73mxMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637E62F5313
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004171; cv=none; b=oAWzVmg1jno0WhF20/dqt4DXZ8hR6D7/mjgePsWpZtYrtLYYJ0xny1CcDRz19bGaC3y29l6g4lMhNMjrJMczg/4oQp4/Bug9K7wU6L0ElxkaJxOVebIiPEzEl0T0B4Ah9RexVshgrSFTJXgvo5OyqiDXYp7orE9DdfuFRxHpPBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004171; c=relaxed/simple;
	bh=sHRk2Hp0rmz6wExMNKvWvTKY3R8Wd/8NMckreGOzltQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E1akcyQv5DrY6MUbqwW2JfZ9cXSN0jfo1KawSMr2cwfJl/EPChPIqqMY25bxmFvmkCs+uaojetRWxJ8uCPvr6emCLseVEGDbqUqONUDQdpvuRbpNLyE+I/NLLvuG6RcVesM37g0J/n3TITDC3ZM4fchijcGbGNQq0x31Ub65KPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ae73mxMS; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c70ea5e9e9dso116748a12.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772004169; x=1772608969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k8XpTwYaznTB7X95a9deMFZcsmj1UdrXkb3hcBiKjSk=;
        b=ae73mxMSi5L8CeUNzD2aLd/NRhtOAZX/KbcSMYIXNZ6u5BeXVzr6QlvwIpvADjwSuJ
         9bgD0MTYy/dQe0bcLODfzntuQETAANLQfbbgGzUEZkZgi5Oi7LASFJnavnWaij7bp0PD
         1Xq9vnWR6b3mQrgJZd44fq2znQ6p/XmOtfWxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004169; x=1772608969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k8XpTwYaznTB7X95a9deMFZcsmj1UdrXkb3hcBiKjSk=;
        b=nY0ddnxMtDq3OVMcgjpYD/hGSc6jfhUkW6B/CS+cb3DIPuzB8mLH28VNubbk34Gx1F
         ks1IySYHTKnoGihmEK5CUkYIhK4sx4Dl2b/Ap8F8ZY3D0OXniF7yObyWDSrSmAhtwfON
         BTm7rOkPzzqZzvrHc1ZlpE8QT6QT7T+b0Ibq249q0OlCoD0PEcVbezRspAE5+pIeWB3j
         2tpYaeVBk/nfoHVYtluABWsxuQ8fovnhKxIO4ZgVhSMvKpzNy30HVlbY4EZXnwuT0BHB
         vxBAvzmuhObSHT8+kkYVtH4FDIR9NDUXUW8smqWMKuZlspfy2vjPt6z4uDOGShbAlBIC
         A8Lw==
X-Gm-Message-State: AOJu0Yz/ei9ItGLiWW1K63COiZJZjFTcV2BnoD9J9Ns6UVA1AOflYvkX
	pz6YBAXQzEzkoO4EwvqpMVCA0EjkCF3HFRTbfiE2TcUcx5onQaHB2lOpZEz0qhPgtw==
X-Gm-Gg: ATEYQzwZvxx/AQ9H3NzMcMS6hfjpXaN4VDpDJp26XQVSoaLifQLMqPVnvzXpHojcMVL
	RL6jWVKAAH+RUFiJTVca487q5RQ/YzIZ73JbtsPo+I/b7J6FntGW5hGym2Aur6lkQxj1DoZmpp9
	Cobkogl+rr8GlPx7KnyV9cA2cIX8BkGtLSGvNXiOWnPJdoSk8SwB4ncNmsSQCaa2V8EpqE9Z1To
	4zjXFABno76vxCi9CC3KMNmEP0fYFlzq53Lml95y4bm4YL7IdNrlGhfps2RacuecqGSu61dk3hk
	ToE+t3ZbeBU5L1zr0/lmS9NWCDlHWLA5j65yOhnePw7e6heifRDg7MgHJCvwPs1XNhwlxBU+aZC
	WDMgM/e/14V5bbJDsMQjx0E3wDJnwy7M6USRfeuc8IlnKsNNe6DmJzlgkrzDByZ0sDPKp73+MHx
	z0T3I6CIqznkjhv2n4TkqLK1HE/qjPVvwcBHym8Xeg/piLyHsg/ESwWwkupiErHrSIjfwXt/iHZ
	uxeSA==
X-Received: by 2002:a17:902:e80b:b0:2ab:3ac6:8d01 with SMTP id d9443c01a7336-2add1382e48mr18547135ad.29.1772004168768;
        Tue, 24 Feb 2026 23:22:48 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:9d6:2e6a:941b:690])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503fdc9sm130814435ad.80.2026.02.24.23.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:22:48 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] PCI: mediatek-gen3: add power control support
Date: Wed, 25 Feb 2026 15:22:17 +0800
Message-ID: <20260225072225.3345307-1-wenst@chromium.org>
X-Mailer: git-send-email 2.53.0.414.gf7e9f6c205-goog
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,mediatek.com,kernel.org,google.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268168-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.996];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:mid,chromium.org:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 43287193768
X-Rspamd-Action: no action

Hi folks,

This series adds power control support to the MediaTek PCIe gen3
controller driver. This allows proper modeling of WiFi and NVMe
adapters in the device tree and control over their power supplies.

Patch 1 through 4 are cleanups and minor improvements to the driver.

Patch 5 adds power control support using the new pwrctrl API to the
PCIe controller driver.

Patch 6 adds the WiFi and BT power supplies for the MT8195 Cherry design.
This is actually a M.2 E-key slot, but support for that is still WIP [1].
And even with it merged, support for the USB side still needs to be
figured out.

We can either merge this as is for now, and do another conversion later,
or just keep this one out. However this is still an improvement over
the current device tree, in which the power for the slot is always on
using a pinctrl setting.

Patch 7 adds the M.2 M-key NVMe slot found on MT8195 Dojo Chromebooks.
This change actually makes use of the M.2 pwrseq driver.


Please have a look.


Thanks
ChenYu

[1] https://lore.kernel.org/linux-pci/20260224-pci-m2-e-v5-0-dd9b9501d33c@oss.qualcomm.com/

Chen-Yu Tsai (7):
  PCI: mediatek-gen3: Clean up mtk_pcie_parse_port() with
    dev_err_probe()
  PCI: mediatek-gen3: Add error path for probe and resume driver
    callbacks
  PCI: mediatek-gen3: Split out device power helpers
  PCI: mediatek-gen3: Disable device if further setup fails
  PCI: mediatek-gen3: Integrate new pwrctrl API
  arm64: dts: mediatek: mt8195-cherry: add WiFi PCIe and BT USB power
    supplies
  arm64: dts: mediatek: mt8195-cherry-dojo: Describe M.2 M-key NVMe slot

 .../dts/mediatek/mt8195-cherry-dojo-r1.dts    |  38 ++++
 .../boot/dts/mediatek/mt8195-cherry.dtsi      |  47 +++--
 drivers/pci/controller/pcie-mediatek-gen3.c   | 185 +++++++++++-------
 3 files changed, 183 insertions(+), 87 deletions(-)

-- 
2.53.0.414.gf7e9f6c205-goog


