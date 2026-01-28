Return-Path: <devicetree+bounces-260261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cICKLyvQeWnezgEAu9opvQ
	(envelope-from <devicetree+bounces-260261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:00:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4639E8C4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BF3D301C8B5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2981933AD9C;
	Wed, 28 Jan 2026 08:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="HSw7JYbK";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Ae9CZ5wu"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8503F33A9C9;
	Wed, 28 Jan 2026 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769590645; cv=none; b=lIBPPhvjGTFmPzcZVNfx/3KXNRfj4NZSXBuUOF51EdUA24MZ6Bc1jrlI0GdrdaT/GURZ6P1BE43s2XpDuKgb2qCk4hdNv2O9MZynJ2zo6tQP1NGzrQnnXgv6cnzwbITUiabMSB2RUEyYBYn5xnfWL4w0OXjWaAxyeyWDYVeJcL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769590645; c=relaxed/simple;
	bh=lSCd9224ugKISLFYLWd468PqALwjXlK5iifgzV8hY5Q=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=heXSAWteSiyz1yAC3K+qU25YXfLnayTm2gJ+VjVR1whUhAtLeC8BxC6FEPhczfnxgWLzBmA5CHeO6NR90cdSNWyyfdvan2DnhTf03ioNu0wuwuSUgnM1EGRz10GA6kFNdhGaqeVSEHgLEETwMgCXgVkM1/AKshFdAqWe6C1qtCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=HSw7JYbK; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Ae9CZ5wu; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id A2A511D00090;
	Wed, 28 Jan 2026 03:57:22 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Wed, 28 Jan 2026 03:57:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm1; t=1769590642; x=1769677042; bh=AW
	q/HTw1YbVVTLbDtDcQ/JJUIzFiIOVRXqodj5LKW5Q=; b=HSw7JYbK+PBrJm20mW
	/28ngXbf+wjRthIM4pYDD5AdrTQoBVektxX5gEaBE4928XVSRMjXOc6eIkF0osjl
	nzREBD4GIY1o3si1HrtciLsm5yFY0MdYmnzsWn9jBAhBxtSCqfUb5UbadvC9Sunu
	4PE+PRlVCjBsvNhOz+0SqThH0TY50U1jpscMGD6s/0fBb1UTKXJ9zIa2jMXwPTOQ
	yy0YMb6s6lbs5i159N9Ug34C8dxGEyC2DFsbV2GZNove4hC2PqZRLhPdt5kFjMQz
	FU1uqyyDvbMKTj6RONuvoWacXMGJGQ8Kz8Gkr3PpBkThJB7MvxhZrqijCzJ1JwIJ
	x7Zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1769590642; x=1769677042; bh=AWq/HTw1YbVVTLbDtDcQ/JJUIzFi
	IOVRXqodj5LKW5Q=; b=Ae9CZ5wufqDtP7AwGtiztITsDPQf2ItJPhd5OjABpZTi
	hbBMcoMJOExkajxDdLbQKJqr14AcJvp7yBU+KIWCQkm1UZXsCWfYAbECelBZILEC
	nFoxUGoZo8S03HWDPOVpv4r41EM7HWGZMjsmBUx+UC3lnpAgwYT9r8CC0D6gberS
	9GNN4VXn5tvnDbckRFoRasYlo1CbFt8ImREV9xg3RLLZn8Bbc1WYajywHRM4yL7C
	Lmq8x+Lq2F5j1zJwhSBVlGs9Z6B8ym7LGf4jbKkVVBU2FWwMIvvx5WkPGPG4W8Qn
	8LnDwlLLfQrdkqLtXULPUoWrlaiahNf/BuFj/qGh+A==
X-ME-Sender: <xms:cs95abPp_AmSkebm8N6W3YpghxAW5v__-hAKruhyfwuVBtCLL6J9LA>
    <xme:cs95aRy-2-L58I259z-UucZHKNP8IEGLQEGJ5HArXHuhiYHL_uTruD3JTao7YSZsO
    c1EFmaqK503GpbD54P85Gtg3hUZn6GkBluwrT1OkfdG3oPEhg7BaaA>
X-ME-Received: <xmr:cs95aVpTflY7dqXXAO2ZmdplCiiHXFg_sbKLRgtA3tcAI_SKYZptNGvNAPPKGXzU2UvVsiICVzZOkjVa-fhVVSBehyXj1rQZksUNEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduiedvleegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpeflrghnnhgvucfi
    rhhunhgruhcuoehjsehjrghnnhgruhdrnhgvtheqnecuggftrfgrthhtvghrnhepudffle
    ejffefieeigeeluddvgeeklefhffeigefhudejieevgffgkeeftdffvedunecuffhomhgr
    ihhnpeihrghmlhdrrghpphhlvgdpkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhesjhgrnhhnrghurdhnvghtpdhn
    sggprhgtphhtthhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepnhgvrg
    hlsehgohhmphgrrdguvghvpdhrtghpthhtohepjhesjhgrnhhnrghurdhnvghtpdhrtghp
    thhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopehtghhlgieslhhinhhuthhrohhnihigrdgu
    vgdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfh
    hrrgguvggrugdrohhrghdprhgtphhtthhopegrshgrhhhisehlihhsthhsrdhlihhnuhig
    rdguvghvpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghl
    rdhorhhg
X-ME-Proxy: <xmx:cs95aZOWUmjwrmikHWfn_JQ6RJUhR_ZX48NjX4lVtHykN9JMKmjF2g>
    <xmx:cs95aRfFgC46CawEmYkvezHnVuQv-XANTjRIC1-Q47zcMauIJqUK-Q>
    <xmx:cs95aXVmGUxsIZDTdUozKWVoitmwom1a7kr9jEb_BmhE9tJlqbegwQ>
    <xmx:cs95aaDLUuz1AdGxWaA4gprdx3DK8CBjwRRYNiPmJ8ObQ5nFNoLUZw>
    <xmx:cs95adeJ6FlANp17K-v_9vr7w4MU3WynIU6MwzLEW4W1mgrJV2JhOz2d>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Jan 2026 03:57:21 -0500 (EST)
From: Janne Grunau <j@jannau.net>
Subject: [PATCH v2 0/2] Add Apple interrupt controller 3 support
Date: Wed, 28 Jan 2026 09:57:07 +0100
Message-Id: <20260128-irq-apple-aic3-v2-0-b4bc8e16c997@jannau.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGPPeWkC/13MwQrCMAzG8VcZORtpOy3Mk+8hO8SZuoh0tZ1FG
 X136/AkOf0D32+BxFE4waFZIHKWJJOvYTYNDCP5K6NcaoNRxiqtO5T4QArhzkgytKhavXOWyNS
 DOgqRnbxW8NTXHiXNU3yvftbf748y+38qa1RYGcfWkqVzd7yR9/Tcep6hL6V8ANXyWSmtAAAA
X-Change-ID: 20260119-irq-apple-aic3-0314f6aa2a2a
To: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Janne Grunau <j@jannau.net>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2081; i=j@jannau.net;
 s=yk2025; h=from:subject:message-id;
 bh=lSCd9224ugKISLFYLWd468PqALwjXlK5iifgzV8hY5Q=;
 b=owGbwMvMwCW2UNrmdq9+ahrjabUkhszK8wV/Wau4zuj82sZ4u/p3XeqqZ8smzbpQUzu5/Pvs1
 2pbFrNkdJSyMIhxMciKKbIkab/sYFhdoxhT+yAMZg4rE8gQBi5OAZiI7DtGhiOHsxaeP1pwRFb+
 hPTeiQc8WFacEjlw7970C2czDzo1bH3NyDBtjoSX6MeanW2dshd2fEiym9vyYdMcbhPWupYuto4
 nwdwA
X-Developer-Key: i=j@jannau.net; a=openpgp;
 fpr=8B336A6BE4E5695E89B8532B81E806F586338419
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm1,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-260261-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN_FAIL(0.00)[10.253.234.172.asn.rspamd.com:query timed out];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jannau.net:email,jannau.net:dkim,jannau.net:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,messagingengine.com:dkim]
X-Rspamd-Queue-Id: CD4639E8C4
X-Rspamd-Action: no action

Add yet another variant of Apple's interrupt controller. This one might
to stick for more SoC variants than their predecessors. According to
Apple's device trees it is used on all SoCs since the M3 (t8122) up to
M5 (t8142). This information is not 100% reliable since macOS uses
different kernel builds for each SoC variant.
As far as the functionality implemented in the Linux driver it is almost
identical to AICv2. The only noticeable difference is an increased
IRQ_CFG offset.
AICv3 uses the same device tree bindings as AICv2 so add its compatible
to the existing apple,aic2.yaml.
Apple's device tree added many MMIO offsets as properties for the
"aic,3" node. The offsets are the same for all released SoCs with AICv3
so the Linux driver continues to use hard coded offsets.
Compatible strings for AICv3 will be SoC specific like
"apple,t8122-aic3" so a potential future SoC with different offsets
would use a new base compatible string for which the driver uses
different MMIO offsets.
While the offsets are the same on M4 and later SoCs access to
implementation defined system registers will require different
compatible strings.

Signed-off-by: Janne Grunau <j@jannau.net>
---
Changes in v2:
- allow single "apple,t8122-aic3" compatible in the bindings
- drop leftover #include <linux/of.h> as it's not justified by the
  contents
- comment and white space style fixes
- sort cases by version in switch statement
- Add Sven's Rb:
- Link to v1: https://lore.kernel.org/r/20260125-irq-apple-aic3-v1-0-a2afe66a6ab9@jannau.net

---
Janne Grunau (2):
      dt-bindings: interrupt-controller: apple,aic2: Add AICv3
      irqchip/apple-aic: Add support for "apple,t8122-aic3"

 .../bindings/interrupt-controller/apple,aic2.yaml  | 45 +++++++++++++++++-----
 drivers/irqchip/irq-apple-aic.c                    | 24 ++++++++++--
 2 files changed, 57 insertions(+), 12 deletions(-)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260119-irq-apple-aic3-0314f6aa2a2a

Best regards,
-- 
Janne Grunau <j@jannau.net>


