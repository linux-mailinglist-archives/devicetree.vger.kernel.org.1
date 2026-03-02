Return-Path: <devicetree+bounces-269784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLrKF9//pGmpyAUAu9opvQ
	(envelope-from <devicetree+bounces-269784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:11:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FBE1D2A4C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:11:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A975300EA91
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A7A29D267;
	Mon,  2 Mar 2026 03:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLzWJvEp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718A915539A;
	Mon,  2 Mar 2026 03:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772421084; cv=none; b=BGDj+1ak+ze4menuEgGBKpjVF+FmMkmwkOHU4nM535XEpE03ZTHMxBNBxXmt3RJnFG3hL3kinBFLDTKqYdPUGgEPokagZWnyS+3pSpMS4CDxmEK5baSpyDgjU9mS32hkWbUx/NJLYt/LcMhHeDkovFm/cYpKuhqoOdE5+yGiB4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772421084; c=relaxed/simple;
	bh=VjD7I6E51OlHu+EsXmHswCKFpLlZJ2k8SacV21baGj0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=L4D3oYEbWLXlSqkS2JB36G0SbT4KK+lzB9IFD37I+OcNaq+0gNhLeQr7g8ivK7eaL/BvSpX1o0yq07XvATTNsA1e1iQ3qj2YbUZtS8D+ej/LDrpCcAfrtaMib+BZi3qwcHU6z5GRaiW9aU2wbPCwdEkok72TceMknnyjaBjg4O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLzWJvEp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E45D3C116C6;
	Mon,  2 Mar 2026 03:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772421084;
	bh=VjD7I6E51OlHu+EsXmHswCKFpLlZJ2k8SacV21baGj0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PLzWJvEp+AsKTb/UTc21L5WWH2u6BnxdVzfPNPB6vCOFfACHY5pn027oR8sUZvJVH
	 72gRdItmVnDO6fW1pZPMTpsvzUYiHZ5V/PFCw7AX1rMRDRBeUziPxRfQsy9rlsFn09
	 5a4WajbsGVllB3hhij+OazilLVOHTA4FoRPJKP67X4iwGIbJU8ULnYbPvlWEHSHUHE
	 Ka/WGeJxAVnntcNl+HOEus6JJKrl0GJ+h8urDbKgf8gs71/KjTy+y0AAxJ4/1k5bRU
	 uSPQGQiCfkTbYRoz5k7UODX2/DvfuYZ8LfaL5uQIZKH6p78l4+r9qjtUWThwOn07Uo
	 S2yS44FiPBDfA==
From: Yixun Lan <dlan@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alex Elder <elder@riscstar.com>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>,
	Guodong Xu <guodong@riscstar.com>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/3] regulator: spacemit-p1: Support board power tree via DT properties
Date: Mon,  2 Mar 2026 03:11:15 +0000
Message-ID: <177242105514.25569.9323033923721110918.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
References: <20260206-spacemit-p1-v4-0-8f695d93811e@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269784-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B2FBE1D2A4C
X-Rspamd-Action: no action


On Fri, 06 Feb 2026 10:32:01 +0800, Guodong Xu wrote:
> The patch (Patch 1 in v1 and v2) fixing hardware voltage constraints was
> applied to regulator.git for-next, so is no longer part of this series.
> 
> Patch 1, 2 and 3 (previously 2-4) enable flexible power tree
> configurations for the SpacemiT P1 PMIC. Hardcoded supply assumptions
> are replaced with explicit devicetree properties. PMIC supply connections
> are board-design decisions. Moving this to DT allows supporting varied
> topologies without driver modifications.
> 
> [...]

Applied, thanks!

[3/3] riscv: dts: spacemit: Update PMIC supply properties for BPI-F3 and Jupiter
      https://github.com/spacemit-com/linux/commit/108c77b34b929e6bdb7ac9613ed65c90da8bcb9f

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

