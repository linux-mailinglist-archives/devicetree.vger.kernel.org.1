Return-Path: <devicetree+bounces-2200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 254D87A9B94
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4DB7B2118B
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C33C68839;
	Thu, 21 Sep 2023 18:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9C8918B00
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:58:55 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 382BA5996A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=I7NSZPgvRGTTc2
	riAVIRP/TQHhIimIiHu/O4XMZmGlA=; b=cfZPJFOminR2KHwOu24XI0gELNz3Yt
	HNSc2iB6gs1xSTeUMyeuiZCBJS4aYVff5a02+pLU+A+HbWgf67/kSq9zcGzl4qDR
	VrYp1F4kMOJy0hdjofGk5cLI5Xf4utO37MaeYjncNwcGKL5E49k5dBT3SFg+aJ6a
	hZt1WqZF+tKPIE4IrBtUSj+ORn0YFpXOqEPtx3H0BvdKVWloN5IBIMVIsLE7BrkJ
	9v19Q2FyZ1IJdWQafzem/w6GBSrjIz1oUjZbknW6bTvoGd42fPXvzkcbcbeSbNdP
	RhbmZtM72UBwafBuz3+6KzhQllHxNJvszYovztE9S99cNuX+kGSQrd8w==
Received: (qmail 964352 invoked from network); 21 Sep 2023 15:32:10 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2023 15:32:10 +0200
X-UD-Smtp-Session: l3s3148p1@xrnXhN4FsEQuciJ+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] gnss: ubx: updates to support the Renesas KingFisher board
Date: Thu, 21 Sep 2023 15:31:58 +0200
Message-Id: <20230921133202.5828-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

For that, we need "reset-gpio" support (patches 2+3). But first,
simplify regulator handling with a new helper (patch 1).

Changes since v2:
* rebased to 6.6-rc2
* added tags from Conor & Geert (Thanks!)

Wolfram Sang (3):
  gnss: ubx: use new helper to remove open coded regulator handling
  dt-bindings: gnss: u-blox: add "reset-gpios" binding
  gnss: ubx: add support for the reset gpio

 .../bindings/gnss/u-blox,neo-6m.yaml          |  5 +++
 drivers/gnss/ubx.c                            | 35 ++++++++-----------
 2 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.35.1


