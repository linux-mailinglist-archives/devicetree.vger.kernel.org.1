Return-Path: <devicetree+bounces-301750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AZBGU09EGrzVAYAu9opvQ
	(envelope-from <devicetree+bounces-301750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:26:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B74445B2F69
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59E203032CE9
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F793D47C3;
	Fri, 22 May 2026 11:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qx1ulHm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083013A6B83
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 11:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779448831; cv=none; b=cF8fA5ZnZdHjgmXYATKlk1jbPL1usZ1eACntFPWUK20uiCh4QBc54LxWx6UJTbpQBMvF3/dTfncpW89XceMjGum8nOXPOb5Vw+WtHgEpgveJd/vrliBhQw7c4kEyJm3l1KbSevCjg03xAwPwYd8cWqo3DDDYx1bytFG6ZivlqNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779448831; c=relaxed/simple;
	bh=2dMtwqfr2ZGbuWNME1mjoFf1yb2LMAL7HBAwNxavaO8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=K9sjKSLIrbV7GeYL9WwjExZ/A+82Ae1ludIEM1e3T+hZ6eCJ0SNWaIrZjMg0eCPGPAfeu9o0zlzrYNeJl/JB3skSWzZSFTY6VSPZX1d8kGoc0ostxPmyoydtr5+o3whtEmjVvZvcNHNeVM2oYzcyGrLvwgiWPZfeFOMRaB5URds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qx1ulHm+; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4893940bb5eso40302935e9.3
        for <devicetree@vger.kernel.org>; Fri, 22 May 2026 04:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779448828; x=1780053628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XwywBvEJpsm1f+bVDJtLQZjSntFIsWCaI5FtaThXLqY=;
        b=Qx1ulHm+f2y1feqh5j9jNlHWR9uXFM2UuOzZyTgarDV+H203L8Df3r8rUx3vpMCqiY
         w8w3KrXsPgjFZ39QJSSNpIHuAunTpuJiGw7DfS1pV5B9HP6ViBvTkaZ6aCVaBwqZZ2WN
         +pxDzNWLRzcIrnHudwyCE6wS+wcQSKYAMjMy050wdoI4jPDxVCDhXZu9AQtYgAhJ6bnq
         YKjvU6mPKRIuY8UORO2ItIhszgiAmD9ylqSKvyntu8ToQc3dvMayYTc+BsZZVDoqOV89
         ift3BfYQyurW4lV7Caza0e8Cu+k2rpNikmA58WSByh43248BgJiKINoMoZMqHgyQy05Z
         RlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779448828; x=1780053628;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XwywBvEJpsm1f+bVDJtLQZjSntFIsWCaI5FtaThXLqY=;
        b=LNkE0jnqLbiaX2y7VanUKFQvf+nuGHbiUExvYYz6SB5ytQ4vOQtt69PVRy+aImsOei
         3KpmgXFZgfudKDvy1kIAArGzSdYSZFz+5cQlPHHjwZ/qfd3pSzOLceMfYySkS+4z/mXc
         zk4yInTRLgByDx8Gh/PnOuoZO7bXzbX7jbdAMmNB+F5p0IMErGvF1RGI7SxsF8lADlZL
         EzovzywzfqU/8/Dzyt53SldmLaL598jn75mZymLRpqR4M0yqDYffXKtEdkEHJTvTZUdr
         UOrjKCGM5U0DwNKyxnCw2im0IVw6NocPxgx3TcwW7uSk04FqDWNrPyvv9gIrtiOyNHgu
         fcNw==
X-Forwarded-Encrypted: i=1; AFNElJ+yhATaneS0O5UTeNvFPMUj2MYLHtRUJO9quZZjiNrBBs3IoWxckR8yVq52EYRgupVhZuXyI4VWW7A7@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg3+1itHWHtBtftLlLbLRrifAmVoec7y9XJjWOPjPm/V+qtNHD
	j9pKfxrRV6rimRMMTXfyvutu0sIhGXzpUrP/+M126oyk5/xnQRPik3xB
X-Gm-Gg: Acq92OFW/CFLkWc7fDKqxsHoI4FQmIk8v7bLy+4/gABGc1Q3nnqGZ6KkmqA6dm8QXe5
	PSIwDW8NmKy5RDJweCY5s0ewrD3/Zgfbih3SzQv6UbLJLr6ZMaWw6WJKehCozEm2fFN6IkWAJSV
	E8CPG0YYsO2QMBxVvMYiHg2BXWnF9m7Ww0JlpIkCZXatnOE2IFIFCM4uPEbs5fft6ZT+cgEV3CG
	gPU34MtthW6tdws/YkdgqPvhZVwX5KLoEiuTTZfrofhI1AeK95JH8sMC9YDOQod2PV6cGeU2i6v
	ZJJ0+82EzBdiMEyA+XG0BTAIbYGHd7jiX47AQZdlxjYfVUbi1ogh1gYj/4LgQDjcKGiG8sTJwPI
	CxVvF7wJKHYZSPmGjCP7ZisKtFxW9v0nk6miMFhSHWGvqWk2BiCOic+oN7O/U7Gr6Pt2iV6y6HW
	BY4y752oakyASjz/wvcXq5I0Sg3//8vBLo7jRmg06UE9vnuqe+TCh5+XsSHc+E
X-Received: by 2002:a05:600c:1c21:b0:490:44eb:c1ea with SMTP id 5b1f17b1804b1-49044ebc2edmr37709105e9.24.1779448828096;
        Fri, 22 May 2026 04:20:28 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904526ca21sm34388355e9.3.2026.05.22.04.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 04:20:27 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Fabio Estevam <festevam@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Add RPROC support for the MX95-15x15-FRDM board
Date: Fri, 22 May 2026 04:18:44 -0700
Message-ID: <20260522111849.783-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-301750-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.975];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: B74445B2F69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Hi folks,

As you can see from the title, this series attempts to introduce/enable
RPROC support for the MX95-15x15-FRDM board.

For a while now, the imx_rproc driver has been using the reserved memory
DT nodes as the carveout names, which would force DT writers to go against
the DT specification's recommendation and use non-generic names (e.g.
"vdev0vring0", "vdev0vring1", etc...). This series also tries to fix this
issue by introducing the "memory-region-names" property and using it in
the imx_rproc driver to figure out the carveout names. The driver will
still allow the old way of doing things (i.e. no "memory-region-names"
property) but a warning will now be printed since this should be
discouraged.

Laurentiu Mihalcea (5):
  dt-bindings: remoteproc: imx_rproc: document optional
    "memory-region-names"
  remoteproc: imx_rpoc: fix carveout name parsing
  arm64: dts: freescale: imx95-toradex-smarc: move CM7 node to SoC DTSI
  arm64: dts: freescale: imx95-15x15-frdm: remove common rmem regions
  arm64: dts: freescale: add DT overlay for MX95-15x15-FRDM RPMSG usage

 .../bindings/remoteproc/fsl,imx-rproc.yaml    |  8 +++
 arch/arm64/boot/dts/freescale/Makefile        |  3 +
 .../dts/freescale/imx95-15x15-frdm-rpmsg.dtso | 65 +++++++++++++++++++
 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 21 ------
 .../dts/freescale/imx95-toradex-smarc.dtsi    | 14 ++--
 arch/arm64/boot/dts/freescale/imx95.dtsi      |  7 ++
 drivers/remoteproc/imx_rproc.c                |  7 +-
 drivers/remoteproc/imx_rproc.h                | 19 ++++++
 8 files changed, 113 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-15x15-frdm-rpmsg.dtso

-- 
2.43.0


