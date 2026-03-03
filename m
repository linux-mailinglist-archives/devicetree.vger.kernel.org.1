Return-Path: <devicetree+bounces-270325-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOzKHa6OpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270325-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E67D21EA33F
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E993230E66C6
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C81937419A;
	Tue,  3 Mar 2026 07:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOUv7iZA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4AC32E126
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522982; cv=none; b=O2nOk3EuuqJ4iOAfrWpRebwYCXwakZE0fMeO/QAAWac+P5oxzKGYBJ+GkeSPIAEkb1dk6YRgarClEO9MXWVootETIbyUs61Fat678leiCIYYx+j2hAAQv0ZV2SJ6JYSiBgHj9T9euTPOolTZIYUKRTTooN8wr3N8pUmlF652wVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522982; c=relaxed/simple;
	bh=YyZ0/QyOn8tE5obx99KeIpMwB/Zi+4Oct6cmtNgDxTM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pzhpGy7K4fh7T+/sqInSdmhYOjBuBHMO49yvpWYfswWeq+NePojSUsCUQm74L+0yzvm+b5C1zGi3JS+5j+D5sGS8kPM8+2N6kBSurS5i2iWGmvrW/KrqflnjNe99FQ0stegJhxRKztQFZt+0WmzKtrwPAxx46XBHYmPVDsXxHYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOUv7iZA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F545C2BC87;
	Tue,  3 Mar 2026 07:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522981;
	bh=YyZ0/QyOn8tE5obx99KeIpMwB/Zi+4Oct6cmtNgDxTM=;
	h=From:Subject:Date:To:Cc:From;
	b=aOUv7iZAkOxJN6tZhZdGrj74l+tbJfrv94nv3u3I2hjQh7iWL5hXlux1wKa7YGBPe
	 pqIddRTg0UyLtq3D86jtCSjatrh/zAOIaJLWMuidfMuJcEIVmgNoYy94BUMFrDYonq
	 7kXU2EKCCxba+CsT1Zr3Q2DxVL8DOIkWSs3MI+3u90X/G5+fBki/lrnWrrE5ntTYeY
	 JefJTrYuOswINMQ07VchepsS0qSv+DO+70vSc1d89zc48ZCwCTnl/GuCz0qPGkIi7Z
	 TEwfD3n4cuP8kBPfVUFI2bMAOKDw+pDIbZnK6Y1MqMa1LKJIkiudBIy96TAUf3A3mD
	 bnl6NtGx8p7YA==
From: Linus Walleij <linusw@kernel.org>
Subject: [PATCH v2 0/8] ARM: dts: gemini: Additions and updates
Date: Tue, 03 Mar 2026 08:29:32 +0100
Message-Id: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WNwQ7CIBBEf6XZs2uAGlI9+R+mhxYWulFpAw3RN
 Py7WI8e30zezAaJIlOCS7NBpMyJ51BBHRow0xA8IdvKoITSQqoWPT05MNo1oeMXJWwH17WyM2e
 jCaq2RNqLat36yhOndY7v/SHLb/obU6r7H8sSBQqjnbbCjafRXu8UAz2Oc/TQl1I+YxIWHLEAA
 AA=
X-Change-ID: 20260123-gemini-dts-fixes-3af8318c9c6e
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: E67D21EA33F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270325-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This augments and fixes the Gemini DTS files a bit based
on some upstream work from OpenWrt.

- Add the SSP block from the bindings already merged to
  the SPI subsystem.

- Add Verbatim Corporations vendor ID and the S08V1901-D1
  NAS.

- Add Raidsonic IB-4210-B DTS.

- Fix up errors in the Teltonika RUT1xx DTS.

- Small fix to the iTian SQ201.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
Changes in v2:
- Designate the two new devices as "new" not "missing".
- Link to v1: https://lore.kernel.org/r/20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org

---
Linus Walleij (8):
      ARM: dts: gemini: iTian SQ201 need to boot from mtdblock3
      ARM: dts: gemini: Tag disk led for disk-activity
      ARM: dts: gemini: Add SSP/SPI block
      dt-bindings: vendor-prefixes: Add Verbatim Corporation
      dt-bindings: arm: Add two new Gemini devices
      ARM: dts: Add a Verbatim Gigabit NAS DTS
      ARM: dts: Add a Raidsonic IB-4210-B DTS
      ARM: dts: gemini: Correct the RUT1xx

 Documentation/devicetree/bindings/arm/gemini.yaml  |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/gemini/Makefile                  |   2 +
 arch/arm/boot/dts/gemini/gemini-nas4210b.dts       | 205 +++++++++++++++++++
 arch/arm/boot/dts/gemini/gemini-nas4220b.dts       |   1 +
 arch/arm/boot/dts/gemini/gemini-rut1xx.dts         |  18 +-
 arch/arm/boot/dts/gemini/gemini-sq201.dts          |   2 +-
 .../dts/gemini/gemini-verbatim-s08v1901-d1.dts     | 225 +++++++++++++++++++++
 arch/arm/boot/dts/gemini/gemini.dtsi               |  17 ++
 9 files changed, 470 insertions(+), 12 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260123-gemini-dts-fixes-3af8318c9c6e

Best regards,
-- 
Linus Walleij <linusw@kernel.org>


