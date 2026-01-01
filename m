Return-Path: <devicetree+bounces-250948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FE3CED317
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 17:58:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C4CA3008FA8
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 16:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07E62EFDA2;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjFHcnYZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9744B299AB5;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767286714; cv=none; b=rMwvtYQ3ZXTo+R3b2aY3GXrrd4pxv/R3YoW1bdZM1kNLQpNQjLKahP/490h1JqM0ZFADtTgYy2toelckOqsYNGP91VXoeB5tcKLo2K0i91Nc3Wt5M+BdmT+nFiux1aymb8sdrfwL7UypX/trB0/l5XrB8P2DkU20hjCM94biPp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767286714; c=relaxed/simple;
	bh=nCUlGdy1LiHaJ2ajH+Pk5P8y8S4BG2jUiiD913ir+NY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sHY9QWKa+tTauqyDzD82TBUglQR3dZjhHbrA2ARNswn/Q0ozzxMreAxNI+GYSyuPjesVLQpnokYYhgAdQQv7CO+mDHRUPHGrpFdQA5/19NO/+IzaIo/umdJ1JhoTS+oQFwv4CpYUq2KvVso/cg9dlmA1jvDg8SXcJVkxV567KHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjFHcnYZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B845C19421;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767286714;
	bh=nCUlGdy1LiHaJ2ajH+Pk5P8y8S4BG2jUiiD913ir+NY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MjFHcnYZ3lNfodof9zJni+I+Poxg98qhWozF25MLd1/chhzIugur4kGZ5EK/q/TGb
	 sXu96qLZWwPHJauqsuaqm5ZaxSfJYDhtn2tsJcRBNIeagy3+dd3vlIAgpJMHTvLIhB
	 kp2v6WMBAOO8L6Ff3v8+Eo2WfM5yEPWPxBo6UW2S9jF7QmdCygDFqCLFRSg5hk003v
	 +RwLilEyZQYNM8AGtE2JePg1nsM3oU7665Bf2OD50+CLJ5F5Zxmbq/rNyJwAct7BpD
	 d1sANYpExn/+1e6vdYTYkF/uyMT2f8FGTOqoETo+/Eei0GzXIGqEjA2P97rHrCQNKn
	 /ukNevBn1NN8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 153EAEED626;
	Thu,  1 Jan 2026 16:58:34 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Thu, 01 Jan 2026 17:58:14 +0100
Subject: [PATCH RESEND v5 1/4] dt-bindings: mtd: raw-nand-chip: Relax node
 name pattern
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260101-ppcyaml-elbc-v5-1-251c7f14a06c@posteo.net>
References: <20260101-ppcyaml-elbc-v5-0-251c7f14a06c@posteo.net>
In-Reply-To: <20260101-ppcyaml-elbc-v5-0-251c7f14a06c@posteo.net>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Crystal Wood <oss@buserror.net>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 Naveen N Rao <naveen@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Christophe Leroy <chleroy@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767286712; l=1491;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=EJ9cqjRClj/DlBIVopL2aU8EyEf/7MEDGKU7+90KqQA=;
 b=A9xr4ME48fGE5vkHnKWyrFvYLcL0s+dUseugN8Gw83AijN/QlKngo22OaxGarXoT3Qyxw2L94
 bLaHIhO/qYlCR8KnKQJB4p/ihK5ryD2GW8WCNmCTmfZZVXw7dp3GEIX
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

In some scenarios, such as under the Freescale eLBC bus, there are raw
NAND chips with a unit address that has a comma in it (cs,offset).
For reasons of compatibility with historical device trees and
readability of the unit addresses, this format is kept.

Relax the $nodename pattern in raw-nand-chip.yaml to allow such unit
addresses. Unfortunately $nonenames defined in bindings that reference
raw-nand

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---

V5:
- Add Rob's review tag

V4:
- reintroduce patch to silence dtc validation error, after discussion
  with Rob Herring and Miquèl Raynal
- add some more detail to the commit message
- remove unit address format rather than extending it
  (old pattern: "^nand@[a-f0-9](,[0-9a-f]*)?$")

V3:
- remove patch after discussion with Miquèl Raynal

V2:
- new patch
---
 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
index 092448d7bfc5cc..d655f6673fc31b 100644
--- a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
+++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
@@ -25,7 +25,7 @@ description: |
 
 properties:
   $nodename:
-    pattern: "^nand@[a-f0-9]$"
+    pattern: "^nand@"
 
   reg:
     description:

-- 
2.51.0



