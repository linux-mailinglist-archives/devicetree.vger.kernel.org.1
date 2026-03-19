Return-Path: <devicetree+bounces-277899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDSAHK0lvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:34:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 704C02CEE93
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:34:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 768433009E02
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A9D3E63AA;
	Thu, 19 Mar 2026 16:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6vb6vEq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCE63E868F;
	Thu, 19 Mar 2026 16:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937902; cv=none; b=rMSSpJ2Blk7rT7u/QGxd0nm0505cRZH4IjTRsjx/YD2/1nrTdY6fZ1saKi9X0CczQrzfbax0qai0qCRPvQiLa3SzA2iTEvmijZiRPHmhARFjwKG7APWBpGRPZQDALZn58na/KoELRx6CEuMReGIqO0OoBWwzCei+12Wbmp25NSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937902; c=relaxed/simple;
	bh=tX5CZ3K8Vq/igCccbXJWFNMbc/1E+klQ2HU03miDdJc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DeboPwuCgiSWm7TSpmSO/O6C0emmRC2heQZhRo+Ob5LwlBS82Vqa3FZw3qAHdu3Oq7nSGCiVax761IKVUKXBQ9UV26+pddc9QJkDtbJoWT96JkcLU32c1RC/hTVaP3vDb5fm6u153GqiA2WHRTy0ZsZL92U8hqVejaBCH4vfmek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6vb6vEq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42BABC19424;
	Thu, 19 Mar 2026 16:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937901;
	bh=tX5CZ3K8Vq/igCccbXJWFNMbc/1E+klQ2HU03miDdJc=;
	h=From:To:Cc:Subject:Date:From;
	b=K6vb6vEqnzVw1iwc1/6E75xCDqIxm/ECFR+CswBv5djrLb/XY708t6gpIMY/POpXq
	 q8IonaCwV816TcuMYINEFAejsXUVDQnj3bYJaCnNaKRn5ZtQQblXUpBiBY65Ntvcrd
	 8uHzuNz+e14H7uH3c5cMMDC2ZGbwPJD9v+uqNT049S04kB8cBS4YukJ9NxFlljJVQw
	 a3BYHilBlZqAKJXLEG9FuJy3GR2Uo9kdlhPlNB6apyVzwL5zr3hgFRg6f4Q+uwfiV2
	 VmC4kftfDKg+e3Bn3IZuG2+mUj6m13VwaGy7s+7/9pUXuQcB2sOx9kaDKSxIQ48Ufd
	 5rbBKYuVwKT9Q==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Valentina.FernandezAlanis@microchip.com,
	Brian.Burke@microchip.com,
	cyril.jean@microchip.com
Subject: [PATCH v1 0/5] riscv: dts: minor beaglev-fire improvements
Date: Thu, 19 Mar 2026 16:31:14 +0000
Message-ID: <20260319-outsell-hypnotic-94b480408ad4@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1181; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=IE2qHnLos3DeWsfckcYM89YQUbZK71dJp/VB4KAbbWU=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK6YrmnuEc4STq5O2bL5xzefpVbzhC4byqWtk5inu 3hC4LLgjlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEwkV5eRYebswGs/Fq5M7wiX 8Jyvt8X3eazPyz2XBdOvTuNw5Fs9T4eRYdbbgAJR/3e+6+zuWmivKe0JW7r349fauue/5weUTWO 4xQwA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277899-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.994];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,infradead.org:email,microchip.com:email]
X-Rspamd-Queue-Id: 704C02CEE93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

Yo,

Some minor improvements etc for the BeagleV Fire, spotted while updating
our downstream stuff to the latest lts.

Produces errors at the moment, as it depends on changing the
interrupt-cells in the gpio binding.

Cheers,
Conor.

CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: Valentina.FernandezAlanis@microchip.com
CC: Brian.Burke@microchip.com
CC: cyril.jean@microchip.com

Conor Dooley (5):
  riscv: dts: microchip: gpio controllers on mpfs need 2 interrupt cells
  riscv: dts: microchip: remove gpio hogs from beaglev-fire
  riscv: dts: microchip: clean up beaglev-fire regulator node names
  riscv: dts: microchip: add adc interrupt on beaglev-fire
  riscv: dts: microchip: add gpio line names on beaglev-fire

 .../boot/dts/microchip/mpfs-beaglev-fire.dts  | 36 ++++++++++---------
 arch/riscv/boot/dts/microchip/mpfs.dtsi       |  6 ++--
 2 files changed, 22 insertions(+), 20 deletions(-)

-- 
2.51.0


