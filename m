Return-Path: <devicetree+bounces-295277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONPGMkpPAWp1UgEAu9opvQ
	(envelope-from <devicetree+bounces-295277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:38:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B02507ACC
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E06130075EA
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 03:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09AF336D4E1;
	Mon, 11 May 2026 03:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/s+ZgoO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0F132B9A8;
	Mon, 11 May 2026 03:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778470727; cv=none; b=qpwErNHQCYJj1S7L2MraBxB743qnEBKIQnb5kin8y95sXuLlrs9XhqqBDoXiHC/vE1egL3QZ/xqYGggpI3rTTye3bURhn0GaNuMLEQQjqzHJHHGJBU/llpP+AlcxdrpmoyOkawFGl7pQBDHUgAeWEa7bpUySnnevHFrkXhU2kKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778470727; c=relaxed/simple;
	bh=5UGYZDvgH7+LWWEIacfJiFNR/NrSOGrocturbbpTTZo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UTh3rd0+DWHQhuF4HsSG5/WbUAy4YIoqXpr1VXqaJC1TAgpYiUWD7S6JSV1+atVl9ytPHBkDYqX2sNXpsrjpd/e//4UbODp+rxtBN8NNFy3Ap1vBbSELBHUToOZWlJB4+Snpu44EfSw0pjVf0dQHXmZ47meDZ9XNEjszPfrvQXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/s+ZgoO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8B9C2BCB8;
	Mon, 11 May 2026 03:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778470727;
	bh=5UGYZDvgH7+LWWEIacfJiFNR/NrSOGrocturbbpTTZo=;
	h=From:To:Cc:Subject:Date:From;
	b=S/s+ZgoOkW+XAfVwwvk83MIROjdnH88nx/bOKZWjSAJZeR0PTJ34tqfwGETA45Onm
	 q4jsxzIIEJilXg2B9A/WleCypDR+wSaC3XcIK2MfJ0Cp1GeFH5YlS3NgPG1kwTl0th
	 krReXY7+Tx+aGlWIIuy8hCfdh8cCt5FUpKGqX3qn9d13GHeRliVDdqBgPjEaIDRPPW
	 MtrlD+yGSSnrv3WuVS6Vdnp26PJYTJv+0UXguLZHngZhMBbdHK8oxxFSbOckJvNYWA
	 37VWXVFAAVmK0tcLnxb+8m5+Q82y+RzImD0mBWCbkSL/EYEIfU77dcbnYvR9NYEuvy
	 Ph7yJM0WlLNbg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-i3c@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] i3c: dw: Add apb reset support
Date: Mon, 11 May 2026 11:19:42 +0800
Message-ID: <20260511031945.3228-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 55B02507ACC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295277-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Add support of apb reset which is to reset the APB interface.
The first patch is to document the exisiting reset dt-binding. 2nd patch
is to add apb reset dt-binding. The last patch is to add apb reset
support.

Hi Frank,

comments to question "why not name the reset as "apb" instead of "apb_rst":
exisiting core reset is named as "core_rst", this is to align with its
style.

Thanks

Since v1:
  - add dt-binding


Jisheng Zhang (3):
  dt-bindings: i3c: dw: Describe core reset
  dt-bindings: i3c: dw: Add apb reset
  i3c: dw: Add apb reset support

 .../devicetree/bindings/i3c/snps,dw-i3c-master.yaml    | 10 ++++++++++
 drivers/i3c/master/dw-i3c-master.c                     |  7 +++++++
 drivers/i3c/master/dw-i3c-master.h                     |  1 +
 3 files changed, 18 insertions(+)

-- 
2.53.0


