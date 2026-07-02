Return-Path: <devicetree+bounces-319182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Whg+BIQxRmoXLgsAu9opvQ
	(envelope-from <devicetree+bounces-319182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:38:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D0E6F55BF
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 11:38:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=DaKKuw85;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319182-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319182-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DC74301F5E8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACCB478E5E;
	Thu,  2 Jul 2026 09:22:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083DE478E42;
	Thu,  2 Jul 2026 09:22:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782984134; cv=none; b=BcHF0+7QDW+p1DMl0rrikvcG+6JayHPnvPDuGxUeGXiYEyKz//C2xr9uTwhNnke9c51eLTAOS6pFv28QZFJ/2wsAQqMhBOyTPVX1NDjIAlQCO5YPlA1gHmq6Sf6E9CD3aYZkm4OQvnsFrq3POgMmH2n2gT2rrWfoaWsh+m/PKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782984134; c=relaxed/simple;
	bh=XGlT1jN6iisVzEuux46Z6HtG1CBC/tpAdAu/EfHF0jg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mVOe/wG2eg4+9T+sg8yFiJi4V4/gEixMou+N8aQEfaUGPDU7yuBSNhX2li5VA2fnayXEeyIJlVPjZUJIqQxBGSwXUlvM8i3XyDpVXGLlxCRr8cW1XfVFU4ZFpUT/UzjbMl8o6IzgNc79F7/vGYPbBHItO6jgL0VvoTMXi5kvP7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=DaKKuw85; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782984131;
	bh=XGlT1jN6iisVzEuux46Z6HtG1CBC/tpAdAu/EfHF0jg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DaKKuw85Hjs+C8RjHJwl5F5HAy/yXdJ1/go76l64bs7S+VaDQKNEtfAJO/09CC+rU
	 RjMy9V4PezUoYVmHtwA+Ej4cq6c3OIZy3yQ/jcwBf7CiB8LpshGQz14VGV8cvxlLNz
	 dm1Det0iNUKtZzDduzUkA4GI5/8+uNpQMdikwRlE9vYZ6ENXRMRNk7O8WCknnGY33w
	 /ZxSBHKVw3clKA4yzckeyaNzBXzhHxoPUGtuxMB6xh5gCG/KW+aPUCqwSw54Yo1CQu
	 3JkQkChne59Zo+qmyFe86/Bpy7NN/fWmYb3asa9dFVWYjxND1a8pX7v037FMc4OkWU
	 9lbQ8btTf+Q4Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EDC9B17E0CF4;
	Thu,  2 Jul 2026 11:22:10 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Mark Tseng <chun-jen.tseng@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com
In-Reply-To: <20260529100514.52082-2-chun-jen.tseng@mediatek.com>
References: <20260529100514.52082-2-chun-jen.tseng@mediatek.com>
Subject: Re: [PATCH v1 1/1] arm64: dts: mediatek: mt8186: change CCI OPP
 scaling mapping
Message-Id: <178298413090.12161.3103328089271135521.b4-ty@b4>
Date: Thu, 02 Jul 2026 11:22:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:matthias.bgg@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:chun-jen.tseng@mediatek.com,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:Project_Global_Chrome_Upstream_Group@mediatek.com,m:krzk@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-319182-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52D0E6F55BF

On Fri, 29 May 2026 18:05:08 +0800, Mark Tseng wrote:
> The original CCI OPP table minimum frequency 500Mhz is too low to cause
> system stall, So it need update to new version, 1.4G ~ 0.8G.

Applied to v7.2-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt8186: change CCI OPP scaling mapping
      commit: c41cd028e8fb138aa6243d224d637db15354ea95

Cheers,
Angelo



