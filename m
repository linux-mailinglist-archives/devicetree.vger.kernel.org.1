Return-Path: <devicetree+bounces-271925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yA8GO+mbqmnPUQEAu9opvQ
	(envelope-from <devicetree+bounces-271925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:18:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A8A21DC6B
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6AC33021EB4
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DB733D508;
	Fri,  6 Mar 2026 09:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k0WT7vE3"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF67F1F4C96;
	Fri,  6 Mar 2026 09:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788680; cv=none; b=En1so1m8QQGrQ/wVZ7CXEDz4Lq5t/j0ydFjEo+DOmVnkJVWJTqWYDNJ7HgcrVv5ANhkdqYmT4X6QTUt6e3OQCzYWCZoKFw5MwM1QW7Uf0Ey4LXg31ESGYhS4x3zF2fLpodKPo0fdBG7RzZCtMv9/z+Sy9Ha/5mkA+XFBCpOHtuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788680; c=relaxed/simple;
	bh=1hD4+b8VMh7S3KyWIMiJ64I4vBMqNIB8iASlNyy/O0A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mxxh/gat2Svf6O97uxVgiQo/Z8nycucNU5GZmoVpcrDCPlIJI6D3luqAU6NovVMPTKfEObNgnSq+Mwh3a3K4WpYkXrw7dl22afJCaCaJ4wQKqeJxUAW40n2+vnibMC5mAI5nX8zUQp4iWcnLvPxJqB1qK4cdHoxyXkYXdw/f2eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=k0WT7vE3; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772788676;
	bh=1hD4+b8VMh7S3KyWIMiJ64I4vBMqNIB8iASlNyy/O0A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=k0WT7vE3t0S3dQiDruUXCEZ5tMz5XRoQV64OAtgKDznHM5eH5hPkgSAwix3YoruGU
	 z2hGMCtH3tjjytSA0CARwZVAEpxD4gPKtIRcbPO4wLkSjbu5Oi1cX++vYS06R/2/dQ
	 i4ODKJFVyKZhC+jm0K6JPcXENOQsMz6H4lwuaWMdscXwD/9em1IUL7UZl1Y6iOI7l+
	 VtaBNAKyLh4tQUpvbTeYdikq/U7ZRX1joZQcaFTVgmlvfqEmkx8ONJqufiWzRkMz3C
	 eYVNoiyUMlq1g5s+wrCiF7Fv0UUZzK1RfCLYlwplXglrA2NnFQhmXNUi4kXnBhMr6X
	 tK5sHZ5e25t9Q==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 67FE517E0D4C;
	Fri,  6 Mar 2026 10:17:56 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Eugen Hristev <eugen.hristev@linaro.org>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
References: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
Subject: Re: [PATCH] dt-bindings: arm: mediatek: audsys: fix formatting
 issues
Message-Id: <177278867634.21830.7291005999999398202.b4-ty@collabora.com>
Date: Fri, 06 Mar 2026 10:17:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 43A8A21DC6B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271925-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,collabora.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:dkim,collabora.com:mid]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026 12:58:05 +0100, Louis-Alexis Eyraud wrote:
> Fix indentation and drop duplicate newline to resolve the following
> 'make dt_binding_check' warnings:
> ```
> ./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:52:2:
>   [warning] wrong indentation: expected 2 but found 1 (indentation)
> ./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:84:1:
>   [warning] too many blank lines (2 > 1) (empty-lines)
> ```
> 
> [...]

Applied to v7.0-next/dts64, thanks!

[1/1] dt-bindings: arm: mediatek: audsys: fix formatting issues
      commit: 67549df87fff2a3dc7639439e4aff128b814f109

Cheers,
Angelo



