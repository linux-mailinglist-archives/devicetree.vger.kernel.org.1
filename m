Return-Path: <devicetree+bounces-260323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKY3JX/teWkF1AEAu9opvQ
	(envelope-from <devicetree+bounces-260323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:05:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 183AC9FEAC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CC9C3006173
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:04:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B4F27B32C;
	Wed, 28 Jan 2026 11:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkUk405v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF4321FF2E;
	Wed, 28 Jan 2026 11:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769598250; cv=none; b=r3XFI1DHQmMBepODYtv7fhqe32lckUVqtRSlJCoT4iV+CuswF5GRKdh93mWcjoGt5SVMzOaNdX6h7dCP/gnH7CD6NEV1bfCVYo8XLM00A5XgWHmS4jHzzF1YlC3a6rvvE9gBsku5pIEGShWfGqsrpnonZYtYj8z90rr6Z05x7RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769598250; c=relaxed/simple;
	bh=g+DcgaV9vvajzIjNngoxQZBjOrt714zE+t0gjBetTQM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FRSgmHrsckhju3hd7h2jnkCHSfV2dLxBtCTdNi4DYalm5F9N8rbi0TxxDMF47loT3V2/eN24prJbhLDCPY6ohH7sPURYcvgqZBybQUeOIx2W99whR8uX4ZgOmmeuQGOHRcnAt2Fk5iXG964MA56Edb9HkAeuSmpYRmyYkhOS2G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkUk405v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31454C4CEF1;
	Wed, 28 Jan 2026 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769598249;
	bh=g+DcgaV9vvajzIjNngoxQZBjOrt714zE+t0gjBetTQM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RkUk405vHf2xBFoT/TUH5O1r0/VcIUy5lvckzSbRkQ5wmvNzLw/9bCxUsbVn5BDJ/
	 Ig8Sn6SwqT1wR9/FijXtQBpZzQBdx3uvq1AVBeNL82EKaRAgBJOdBQM5CzTtVn7K2J
	 yCx6nZRUxqj7+rRAcRI2G2sGn2CWpIRHa9G+tPl+XAgdYUB4a2ceZgpqimGHPJ5ReV
	 JkzAKWhToYM4q4C0ZC7+quoWk+yi7oSYEueF/zs+yYkFESlUYLEUtA07bxBCFCtxIo
	 EKSjgSTMELRCCrbRpiaxrPo1bBsnSmyz5/U6BThs2WP6WLiH0OEsiQ+Vl+wyYLUEPo
	 pqBJTTXh7Ffbw==
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
To: Qiang Zhao <qiang.zhao@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] soc: fsl: qe: Add an interrupt controller for QUICC Engine Ports
Date: Wed, 28 Jan 2026 12:04:04 +0100
Message-ID: <176959816683.2069840.8945134159377635375.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
References: <63f19db21a91729d91b3df336a56a7eb4206e561.1767804922.git.chleroy@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=622; i=chleroy@kernel.org; h=from:subject:message-id; bh=XGgvbaf5H9k+ateqB29Q3mR73UZredPzMwVmw4XGytU=; b=owGbwMvMwCV2d0KB2p7V54MZT6slMWRWvlU5F3urWPzNmlPsYTkWh2/ovPF+vkpiKi+zdejEI 0HS8w2cOkpZGMS4GGTFFFmO/+feNaPrS2r+1F36MHNYmUCGMHBxCsBEvn5mZHh2d1bp5UnpBq4B LW6rlqz6VfdIquXBrdC5H1Yv1HZRv3SCkeFNa9Svrk2rHq0suegcUaAu9VfmfYDsKpfszhwJ4/x 3+TwA
X-Developer-Key: i=chleroy@kernel.org; a=openpgp; fpr=10FFE6F8B390DE17ACC2632368A92FEB01B8DD78
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260323-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chleroy@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 183AC9FEAC
X-Rspamd-Action: no action


On Wed, 07 Jan 2026 17:59:09 +0100, Christophe Leroy (CS GROUP) wrote:
> The QUICC Engine provides interrupts for a few I/O ports. This is
> handled via a separate interrupt ID and managed via a triplet of
> dedicated registers hosted by the SoC.
> 
> Implement an interrupt driver for it so that those IRQs can then
> be linked to the related GPIOs.
> 
> [...]

Applied, thanks!

[1/2] soc: fsl: qe: Add an interrupt controller for QUICC Engine Ports
[2/2] dt-bindings: soc: fsl: qe: Add an interrupt controller for QUICC Engine Ports

Best regards,
-- 
Christophe Leroy (CS GROUP) <chleroy@kernel.org>

