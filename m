Return-Path: <devicetree+bounces-265027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL50ON62jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:17:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484112CEB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D923C300AB15
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD4A32938D;
	Thu, 12 Feb 2026 11:17:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB591E7C23;
	Thu, 12 Feb 2026 11:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895067; cv=none; b=XPDgLKKSN9794VwX9codXr6HNUGibF46U6oEevsxWOgf7FHNWT4dqCYXeB2G/+DWuRFAUp+EdjeKs+BP1VRGcr0lC1zsIo1xup5jxL3QuIAu1woAh7FyMmNDLfAizuXuIRj1ylvkwFbz7GUePNb0k7LCXxw1D08R97qLvMIrrfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895067; c=relaxed/simple;
	bh=d7YPEI0YKLrZbZeEl6CSXoCKS9It1twSy6+qSTOdpWA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u6UIeQeoeVZMq+1qOld59HVPblv5KWCx1dlFR1nat9AdUbJPuLy0a3M0s7heo+AHsHB2M4Jw4NylYvGxWF/g38VLE/P7xR8fTibAsCRFR5ngM6BYsmdks9UVatCUm/o5/lv8LiJipcUNWNMGq0FyL9lrA0LfVCP8pK4K/CmZoUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FE59339;
	Thu, 12 Feb 2026 03:17:32 -0800 (PST)
Received: from e137876.arm.com (e137876.arm.com [10.33.10.100])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A1BF3F632;
	Thu, 12 Feb 2026 03:17:36 -0800 (PST)
From: Debbie Horsfall <debbie.horsfall@arm.com>
Subject: [PATCH v2 0/2] Add Arm Zena CSS support
Date: Thu, 12 Feb 2026 11:16:50 +0000
Message-Id: <20260212-zena-css-v2-0-d33ea23cb9c2@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKK2jWkC/23MQQ7CIBCF4as0sxYD1LbWlfcwXVAY7CwKhjFEb
 bi72LXL/+Xl24AxETJcmg0SZmKKoYY+NGAXE+4oyNUGLXUvlW7FB4MRllkMc6e99NqM/QD1/kj
 o6bVTt6n2QvyM6b3LWf3WP0hWQor2ZNw8dtb583g1aT3auMJUSvkCkHrdHp4AAAA=
X-Change-ID: 20260123-zena-css-7b52f0f2a967
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Linus Walleij <linusw@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Debbie Horsfall <debbie.horsfall@arm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770895056; l=1193;
 i=debbie.horsfall@arm.com; s=20260123; h=from:subject:message-id;
 bh=d7YPEI0YKLrZbZeEl6CSXoCKS9It1twSy6+qSTOdpWA=;
 b=s6KardkWv64HT2C7lE3RSNYXac2BhltvtOpJ4A7Lu1wiqapWeGSooS9MnPHaNPaPMhBlpsD5B
 vGhYUER0UxWDRv1mHoWeGCUFobzv2RH0KWSZWFLiluCjVl7L6W9qxHo
X-Developer-Key: i=debbie.horsfall@arm.com; a=ed25519;
 pk=PHSQwhhwfluuPcWn1fk950OfqGxCy2cjbyQb7dfAcFY=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,arm.com:mid,arm.com:url,arm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[debbie.horsfall@arm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-265027-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 7484112CEB5
X-Rspamd-Action: no action

This series adds the Arm Zena Compute Subsystem schemas and
Devicetree. Currently, the only platform variant is the Fixed
Virtual Platform. More information on Arm Zena CSS can be found
at https://www.arm.com/products/automotive/compute-subsystems/zena

Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
---
Changes in v2:
- Moved the binding to the common vexpress file.
- Removed MAINTAINERS additions.
- Refactored Devicetree in line with review comments and Devicetree coding style.
- Link to v1: https://lore.kernel.org/r/20260123-zena-css-v1-0-34adb95cdf89@arm.com

---
Debbie Horsfall (2):
      dt-bindings: arm: Add Zena CSS compatibility
      arm64: dts: zena: Add support for Zena CSS

 .../devicetree/bindings/arm/arm,vexpress-juno.yaml |  10 +
 arch/arm64/boot/dts/arm/Makefile                   |   1 +
 arch/arm64/boot/dts/arm/zena-css-fvp.dts           |  55 ++
 arch/arm64/boot/dts/arm/zena-css.dtsi              | 777 +++++++++++++++++++++
 4 files changed, 843 insertions(+)
---
base-commit: c072629f05d7bca1148ab17690d7922a31423984
change-id: 20260123-zena-css-7b52f0f2a967

Best regards,
-- 
Debbie Horsfall <debbie.horsfall@arm.com>


