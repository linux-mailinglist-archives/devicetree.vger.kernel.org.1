Return-Path: <devicetree+bounces-93395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E17950C07
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF593B249AD
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 18:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA3D1A2C1E;
	Tue, 13 Aug 2024 18:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="l/gk0oci"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.208])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB2D1993AC;
	Tue, 13 Aug 2024 18:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.208
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723572900; cv=none; b=WUhhulGzBJY0LjuVM859kArWCrIMMpa4SrUoccFcmHBuF3pvLjDvBS8hZbZnJTIPT3lHFTUc4Ljk1o3zx/sQBkei2FMbN7zOl+oxhFLkVZyrZ7+cwxYKHeANVXtKu43Y7B1xD5O0NV5S1m8ngKaZGd6jYbzPKrqSg5fnwm/Oe/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723572900; c=relaxed/simple;
	bh=JvTEShpEcA/48jrCX1sv5imVU10NR7KciDBLqDfV0e0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YM9LZLmrGTF/aqkwJ7M2MQmEl3sHLM0MwCnlhl6VGzLBowQyD35yM5nQtg34/6fMmZGf0wy/6fWcJNMR652kvkKfAAVR1nhHCEvRVmCUYwc3pDq6KsDwFeIgGzXxf54FgsqMQNXz5hj7rfuqCDTTV1kVPN2/uBdudkQyYvJ++q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=l/gk0oci; arc=none smtp.client-ip=192.19.144.208
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 366A5C0000EA;
	Tue, 13 Aug 2024 11:07:49 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 366A5C0000EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1723572469;
	bh=JvTEShpEcA/48jrCX1sv5imVU10NR7KciDBLqDfV0e0=;
	h=From:To:Cc:Subject:Date:From;
	b=l/gk0ociroF9tWEQ8wC2FgTwJfC0ZWHs3OAY6sc+t/cTfQ+kbdNMndDDKxz27+Eu0
	 5E0AtT/hLy4yGLd7R5Vuq1NN1jYf3U6+qJjRU+spGxI+Zj9j0qd33v5iLPuisn/by8
	 rj0gDMfx8CP026JJZnsq+KOP2/RHZJ16ZbEVzBAU=
Received: from stbirv-lnx-1.igp.broadcom.net (stbirv-lnx-1.igp.broadcom.net [10.67.48.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 60F6218041CAC4;
	Tue, 13 Aug 2024 11:07:46 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-kernel@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	arm-scmi@vger.kernel.org (open list:SYSTEM CONTROL & POWER/MANAGEMENT INTERFACE),
	linux-arm-kernel@lists.infradead.org (moderated list:SYSTEM CONTROL & POWER/MANAGEMENT INTERFACE),
	justin.chen@broadcom.com,
	opendmb@gmail.com,
	kapil.hali@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 0/2] Support for I/O width within ARM SCMI SHMEM
Date: Tue, 13 Aug 2024 11:07:45 -0700
Message-Id: <20240813180747.1439034-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We just got our hands on hardware that only supports 32-bit access width
to the SRAM being used. This patch series adds support for the
'reg-io-width' property and allows us to specify the exact access width
that the SRAM supports.

Changes in v2:

- fixed typo in the binding and added reviewed-by tag from Krzysztof

- determine the correct I/O operation at the time we parse the
  'reg-io-width' property rather than for each
  tx_prepare/fetch_response/fetch_notification call

- dropped support for 1 and 2 bytes 'reg-io-width' as they do not quite
  make sense, if we can support such smaller access size, then we can
  support the larger 4 byte access width, too, and there are many places
  within the SCMI code where ioread32/iowrite32 are used

Florian Fainelli (2):
  dt-bindings: sram: Document reg-io-width property
  firmware: arm_scmi: Support 'reg-io-width' property for shared memory

 .../devicetree/bindings/sram/sram.yaml        |  6 ++
 drivers/firmware/arm_scmi/common.h            | 32 +++++++-
 .../arm_scmi/scmi_transport_mailbox.c         | 13 ++-
 .../firmware/arm_scmi/scmi_transport_optee.c  | 10 ++-
 .../firmware/arm_scmi/scmi_transport_smc.c    | 11 ++-
 drivers/firmware/arm_scmi/shmem.c             | 81 +++++++++++++++++--
 6 files changed, 132 insertions(+), 21 deletions(-)

-- 
2.34.1


