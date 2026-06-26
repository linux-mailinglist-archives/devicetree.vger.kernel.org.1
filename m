Return-Path: <devicetree+bounces-316101-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GsNhCOKAPmpzHAkAu9opvQ
	(envelope-from <devicetree+bounces-316101-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:38:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B33386CD82F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 15:38:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WWuD0BH5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316101-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316101-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9A3630332CC
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 13:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C663F58F7;
	Fri, 26 Jun 2026 13:38:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06893F23D7;
	Fri, 26 Jun 2026 13:38:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782481116; cv=none; b=dET+rhgjFmjgRL+gtyXShE6aQBORfoAnxUzQaYQBXttDjNkmbBN7Q48GEdOje/sHWfCajsCK4U9IspjKm9/+iBBVkC97XpQOACDE864cEFSJElYkRLt9gJxa9rPoP4iwn/xg6dTh/SeEuCVRfVnRL3QeFr1fJuWyYrDSyaNEiDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782481116; c=relaxed/simple;
	bh=ygNoSlf2LfIxfSlf2nQQCdhAwsp9v2K16sdxAnS6lUM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EiyJq+q3bhggIStaw0q4qF11f07uij3FKTgcjlFXMeAIWba+xCzWpdjS/PFKcE+xxunCc180zE2sp19Ou99OvRT/OKRMOWgmBcn867SLcrKEvViPYVXzt2N5IrFw+jAndOKP0raAUK7/mQu81OW0w4Q8jz46i4KODpbX9wckLhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWuD0BH5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A8D1F000E9;
	Fri, 26 Jun 2026 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782481115;
	bh=C67f53Dh63EGgDB2fjJoregeFYfRvPyb/AeNtEL4DXg=;
	h=Date:From:To:Cc:Subject;
	b=WWuD0BH5DoDCb0nHd4fUaO+ybkSBNQKH5Icjzhn2ffArIiQNCHT3zm+qxMFMk56dD
	 Fwy5b09qfuXfTl01Cyv90Qw6cnevgsOQPaI2NbdAiXxxFeukwsBdrpIxinszgDkEWh
	 mQIL10tTSeS+AWGdOgJIXdYGdSO0aniNu/RaGhYUolFl7+gTE7MMb38ZiVGXPCwfpB
	 Wdp/he2YMI19zEtLOBUnXYGL86g/PXw8TbOhcqIABmXCxiD7152xNrR4MXsmpp88LO
	 m3llWl+tv60qi5h2b8hG9C+PaNDi8i8Zvr0Fqoj7hoVnBzs5BtTayu6yDU0Ke3eSw+
	 SR+wCiUIb0XRQ==
Date: Fri, 26 Jun 2026 08:38:34 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v7.2, part 1
Message-ID: <20260626133834.GA2142045-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316101-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:saravanak@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B33386CD82F

Linus,

Please pull DT fixes for 7.2. It's based on your tree as of a few days 
ago to fix the warnings introduced by amlogic,thermal.yaml changes.

Rob


The following changes since commit 840ef6c78e6a2f694b578ecb9063241c992aaa9e:

  Merge tag 'nfs-for-7.2-1' of git://git.linux-nfs.org/projects/anna/linux-nfs (2026-06-23 18:36:41 -0700)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-7.2-1

for you to fetch changes up to b39a6b2e9d5bd6a3153aed4c7440172b8f6a739e:

  dt-bindings: mfd: khadas,mcu: Drop type reference from "fan-supply" (2026-06-24 08:48:09 -0500)

----------------------------------------------------------------
Devicetree fixes for v7.2-rc, part 1:

- Drop unnecessary type reference from khadas,mcu "fan-supply"

- Fix clocks in Renesas R-Mobile APE6 example

- Add missing Unisoc SC2730 PMIC regulators schema

- Fix Amlogic thermal example

- kernel-doc fix for of_map_id()

- Handle negative index in of_fwnode_get_reference_args()

----------------------------------------------------------------
Alban Bedel (1):
      of: property: Fix of_fwnode_get_reference_args() with negative index

Krzysztof Kozlowski (2):
      dt-bindings: thermal: amlogic: Fix missing header in the example
      dt-bindings: thermal: amlogic: Correct 'reg' in the example

Marek Vasut (1):
      dt-bindings: clock: renesas: div6: Use ZT/ZTR trace clock in R-Mobile APE6 example

Otto Pflüger (1):
      regulator: dt-bindings: Add Unisoc SC2730 PMIC

Rob Herring (Arm) (1):
      dt-bindings: mfd: khadas,mcu: Drop type reference from "fan-supply"

Vijayanand Jitta (1):
      of: Fix RST inline emphasis warnings in of_map_id() kernel-doc

 .../bindings/clock/renesas,cpg-div6-clock.yaml     |  2 +-
 .../devicetree/bindings/mfd/khadas,mcu.yaml        |  1 -
 .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++++++++++++
 .../bindings/thermal/amlogic,thermal.yaml          |  5 ++-
 drivers/of/base.c                                  |  4 +-
 drivers/of/property.c                              |  8 ++++
 6 files changed, 59 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.yaml

