Return-Path: <devicetree+bounces-278385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH3CAJF9vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:02:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B672DE2CB
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DAB0B3091158
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4683D4129;
	Fri, 20 Mar 2026 16:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htEpj31a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DA83D522C;
	Fri, 20 Mar 2026 16:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025257; cv=none; b=oSTWJrZR0epsu4+i9MqQ4uOn2UpFgcRmg2hQZ1xqtQ0FvMsH/7RGUtJr01QKdyDasSHojY92k1ItPG+hMgImf98gzPpa2oJXRnbcasrVul8S09TzSXlusm0iA6p0BE32iAY9mTUWXxQSFbAdoZzqa1//Cw1i3fJXXF4r943/sWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025257; c=relaxed/simple;
	bh=WdWA2hrSgUxDYtn4CcB4fFRlpQtCztod+x049Hswyq8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F9FQqXIIcELLR2OWQcZ7la1QHi851Fy/Al2WNmeKtjAl4qPq1ncN/0+my3qU1G7HdinGsWOv7aWE5O1a9FZgJeSy5v7DcUiHuCJi2XsVIIkI78WBZ3GPQTvhs2sQQiJkuEd9V9/9sCWzanBNYF5OhFrGMo/0FRrJVexvlvF0apc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htEpj31a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEC66C4CEF7;
	Fri, 20 Mar 2026 16:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774025257;
	bh=WdWA2hrSgUxDYtn4CcB4fFRlpQtCztod+x049Hswyq8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=htEpj31aiKAuapJGqKm/+82sWRo93k2qQvg6dk23Id2j0YXbzHjbKKYAOH4410OAi
	 jYQ/FJqdrZbmGkeBhFB1fcHNPpBu4rkQaBf/F3t5+DNhFtxfH/GZTuXihRWeVPDMd2
	 R+2SvqgC1xd5YiAc6BUwr+7wOGfC1joW1Ug6ghdNWsPMn33JXc57OPBf0GlWN3M5Wu
	 Wk9nE/3B9tuCor7kl+LYZXh0JC6XGOPjIlLFvx1cQNMj8BZDBWhSIndcf/5dLRhSCQ
	 I5tlmEYTnOEvkkaMUXZRqnFrsSfqc0gbl6DYl3dUJqONJfHEFshubD51S+O4xg7zJf
	 yTPhKB/0r/mMg==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Fri, 20 Mar 2026 11:47:15 -0500
Subject: [PATCH 2/5] dt-bindings: npu: arm,ethos: Add
 "arm,corstone1000-ethos-u85"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-dt-corstone1000-a320-v1-2-a549dfcfe8da@kernel.org>
References: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
In-Reply-To: <20260320-dt-corstone1000-a320-v1-0-a549dfcfe8da@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
 Sudeep Holla <sudeep.holla@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Frazer Carsley <frazer.carsley@arm.com>, 
 Hugues Kamba Mpiana <hugues.kambampiana@arm.com>, 
 Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278385-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.7.a.0.0.1.0.0.e.9.0.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 91B672DE2CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Corstone-1000-A320 platform contains an Ethos-U85 NPU. Add a
specific compatible for it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/npu/arm,ethos.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/npu/arm,ethos.yaml b/Documentation/devicetree/bindings/npu/arm,ethos.yaml
index 716c4997f976..d5a1fae4db9d 100644
--- a/Documentation/devicetree/bindings/npu/arm,ethos.yaml
+++ b/Documentation/devicetree/bindings/npu/arm,ethos.yaml
@@ -30,7 +30,7 @@ properties:
               - fsl,imx93-npu
           - const: arm,ethos-u65
       - items:
-          - {}
+          - const: arm,corstone1000-ethos-u85
           - const: arm,ethos-u85
 
   reg:

-- 
2.51.0


