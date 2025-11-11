Return-Path: <devicetree+bounces-237230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE7C4E90A
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4752188D7A5
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0139332B9A4;
	Tue, 11 Nov 2025 14:36:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D50324701
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871806; cv=none; b=mtVNqkzDSL+dDiKUILyrkajCODynJEUiU3+tE5Q+tQdxw9Tuyk/Tda2yeGWsC+5rx4KitoSyJaLskSnAaOy5ah9YQz8s3TyFSPv0sljDGizxPIXyooGlwHVAv0I6zSigDaAuxdkb/OZFvyHRabWujJ9qI1I0jfbW6pRom1MXNug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871806; c=relaxed/simple;
	bh=NSHW+iEwcgPDJgnnlre4y7ZLL79WFUxR3azPJsCpSnk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SYmszJVdL1vAN5v/sSJeyOkHkiquwCFhVm4Ri9SJrh3SPHtk0jhciFq0LA35fR7D8VkWQa0elPjrTMFxJXkm5wUWDZXfkB7GZZ6HDCrG3OW691BTJFitnrWz2iyt1HHTYc6Vk1GtLD2NftBVkVydRsqL1DcOn6EvTRIIcAXQbzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vIpU4-0004Ul-56; Tue, 11 Nov 2025 15:36:36 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/4] media: adv7180: make VPP handling more flexible
Date: Tue, 11 Nov 2025 15:36:13 +0100
Message-Id: <20251111-b4-adv7180-vpp-sub-device-v1-0-9877fe9f709b@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN1JE2kC/x2MSQqAMAwAvyI5G7AuVP2KeOgSNRctLRZB+neDc
 5vDzAuJIlOCuXohUubE1ymi6grcYc6dkL04tE07KAFtj8ZnrcYGcwiYboteOkdone8GbbTpJwX
 Sh0gbP/97WUv5AKt6uGFrAAAA
X-Change-ID: 20251111-b4-adv7180-vpp-sub-device-bcd357a7a491
To: Lars-Peter Clausen <lars@metafoo.de>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>, 
 Thorsten Schmelzer <tschmelzer@topcon.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The adv7280 and adv7280-m have a Video Post Processor (VPP) unit that is
able to de-interlace the video signal.

This series makes the handling of the VPP more flexible. Furthermore, it
fixes the reported frame interval if the VPP is enabled.

Patches 1 and 2 add the device tree bindings and driver handling to
specify the (programmable) I2C address of the VPP slave device via
device tree.

Patch 3 exposes the registers of the adv via CONFIG_VIDEO_ADV_DEBUG to
user space for improved debugging capabilities.

Patch 4 fixes the frame interval that is reported by the driver if the
de-interlacing is active.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (1):
      media: dt-bindings: adi,adv7180: add VPP and CSI register maps

Thorsten Schmelzer (3):
      media: adv7180: add support for ancillary devices
      media: adv7180: implement g_register and s_register
      media: adv7180: fix frame interval in progressive mode

 .../devicetree/bindings/media/i2c/adi,adv7180.yaml | 44 +++++++++++++++++
 drivers/media/i2c/adv7180.c                        | 55 ++++++++++++++++++----
 2 files changed, 89 insertions(+), 10 deletions(-)
---
base-commit: b4fbb13db86adb0bae1d7f968b61ea8dc9635e33
change-id: 20251111-b4-adv7180-vpp-sub-device-bcd357a7a491

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


