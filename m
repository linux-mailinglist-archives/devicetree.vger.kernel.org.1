Return-Path: <devicetree+bounces-275107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOQOE2Tks2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB1728150E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:18:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67A8830FD3A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0D638D014;
	Fri, 13 Mar 2026 10:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDSErkRo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D5E38D00F;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396882; cv=none; b=un/HWG31JMMp43Rn99QjHtbjZ4jeAfNTxfrRmlHuy00uXT3vF+eSoQgOTJUCRSPs4DlRNPZ91PnnmpwCDpjcvLlXgjj3IdDOehNLvYJH1SSG9W+464Q4jvR/NnizrsVonCCGJUo8PT1pAQwcAfP8YiLSTEbv34L79AdAw14UN84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396882; c=relaxed/simple;
	bh=Kf6XOEnYm2GvG4lKYi0o2kULPxTSxS+f7wvZBuUn3qQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=HiCKtKTXcmEnKtyyEzTFYDTKQr2RcCKUecV98smamMLzYfC6qJVnCGu+zV//iOBubg278Aa1LFupqqGWPR0B/7BJBAF2ZmLYWju9kVZJGiKaKm2Q+PEJj2hk1mn4KAKZBLM14juBI4/DOgaqMnF2V5+BXURqKThF+/20xSuxXIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDSErkRo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F82EC19421;
	Fri, 13 Mar 2026 10:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396882;
	bh=Kf6XOEnYm2GvG4lKYi0o2kULPxTSxS+f7wvZBuUn3qQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=RDSErkRoUtRZ8DCUAT7+b/7KfmS5lk1ldfy7Qt4fxyJvKU5/NCXa2/u40tycui2H/
	 DcJ44Y6isRjXXqZix9VVVuQ5zHyF0qaoAX1p7LVHqkvCWuZkctZit/+SCHRzKQe2XT
	 lHlXUyTHkjSO6MWlNubeHBFQlDje0YOxK03M96yzzPYp0mT74ycL6jraWiSraAyAzC
	 L6oIh8t6yTgxKRhJZtajnbLRvzgK1jPqJbbS/xdqeFQP0Cu+Ra40JBjmMRAIbDEdST
	 hOuoVNhiwS9VefQsdJIWyvf5gCVSj9FmVznscvGPXSB9ASojgcWB1A6Nl4JCUSQ29s
	 TLN6hXgXwTCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1465105F790;
	Fri, 13 Mar 2026 10:14:41 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Subject: [PATCH 0/2] Add missing model properties to PowerPC DTs
Date: Fri, 13 Mar 2026 11:14:22 +0100
Message-Id: <20260313-ppc-model-v1-0-bf19b3d1b65d@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAH7js2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwNj3YKCZN3c/JTUHF1zUwNTY3OLJEsLS2MloPqCotS0zAqwWdGxtbU
 AL1hY3lsAAAA=
X-Change-ID: 20260103-ppc-model-7505378b9893
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773396881; l=1021;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=Kf6XOEnYm2GvG4lKYi0o2kULPxTSxS+f7wvZBuUn3qQ=;
 b=KR6jIkoaxRRvaO5H3NOKWTIZDnjVVcw5alUG/E6A+QYykmdXiuqYmjGMGm67s0m6z8dNfL+zI
 K4Mx3SvUePHAb20hXi6kVl5kuVpjjL7UiiBDmsK+6H8I1U1SRyG9Eq3
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275107-lists,devicetree=lfdr.de,j.ne.posteo.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linux.ibm.com,ellerman.id.au,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	HAS_REPLYTO(0.00)[j.ne@posteo.net];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[posteo.net:email,posteo.net:replyto,posteo.net:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9FB1728150E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The devicetree spec requires a /model property, but many of the powerpc
devicetrees don't have one. This series is an attempt to fix it.

One practical advantage is that scripts/make_fit.py will no longer throw
an error when invoked with the powerpc DTs.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
J. Neuschäfer (2):
      powerpc: dts: mpc8315erdb: Add missing model property
      powerpc: dts: Add missing model properties

 arch/powerpc/boot/dts/mpc8308_p1m.dts  | 1 +
 arch/powerpc/boot/dts/mpc8308rdb.dts   | 1 +
 arch/powerpc/boot/dts/mpc8315erdb.dts  | 1 +
 arch/powerpc/boot/dts/mpc836x_rdk.dts  | 1 +
 arch/powerpc/boot/dts/mpc8377_rdb.dts  | 1 +
 arch/powerpc/boot/dts/mpc8377_wlan.dts | 1 +
 arch/powerpc/boot/dts/mpc8378_rdb.dts  | 1 +
 arch/powerpc/boot/dts/mpc8379_rdb.dts  | 1 +
 8 files changed, 8 insertions(+)
---
base-commit: c9849854bc5ce9afca21f97bb17b7ff763fdf159
change-id: 20260103-ppc-model-7505378b9893

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



