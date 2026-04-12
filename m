Return-Path: <devicetree+bounces-286788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kC4eAF5j22lrBQkAu9opvQ
	(envelope-from <devicetree+bounces-286788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:18:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDF93E33F5
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 11:18:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D405300A50B
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 09:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5235330FF21;
	Sun, 12 Apr 2026 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDRBhUsq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E73419AD5C;
	Sun, 12 Apr 2026 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775985497; cv=none; b=mtqDi1zTRi4DH78NuHd0k6JE9u7PvPy0xE0l2REBsu2pgyNwvRtR6vvufJmm9s5Tc7dwfB9EUaOljjHwdZSPgxa7SkJW7JGJCrGbwgFyU7CYqO+f/iM/arfuw9f4sJuMpgC/aXuNFR7gWbeCi0tSJhz98GyYVq334IqpIjkOM7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775985497; c=relaxed/simple;
	bh=9zcRZ+5PCI5Z2fw1/LxfwKyquv5HdTAAezig+TuHOzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qpZ0hs/zIeTV9hmq3irl8D66UUkqyny3q3VDSeK8u8zlvAnf/sCuHdJ3Tk9eSG4MCXq+ySHJmnwr58Quee7GC6LD4HiANcM3GC/KW0deRudyNVgwmo+NvcOFF44QPHAlsfnbDP3N5QIuz1qFU8EcmtDap7rSw+iV7FNnUa6ETCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDRBhUsq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77DE4C19424;
	Sun, 12 Apr 2026 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775985496;
	bh=9zcRZ+5PCI5Z2fw1/LxfwKyquv5HdTAAezig+TuHOzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RDRBhUsqCCWSwAssF/9giJVfEb8/z/9qKI5PWbBTN+5sPXpuOjuHnOTZ3cDbKPaqB
	 Y+vUW2vqRh2VYtf7OuZr0RHzIssPLLTkKwl4FBdgDStY/+N6EPT0VZM58zq8iJR4sO
	 rHzFE2KK/WkWpiH88A4e59PO/3tbCkEI7YC8TXxj8mrdKp6j2BsRIDnige6nfDAs/7
	 yaPl1mljvJcy1+Wbtmdlushm72R01n3Pbp8XFKiXRTqqhtm89pxiGeZKIL59klnOma
	 egbPQm3K8hOYdjBx6HpLNpkDFVBVdZnzJwPdmE4/UPKtlT+FdEmqsDaJ6O5o9chcK5
	 vE6dgrJlsPVDw==
Date: Sun, 12 Apr 2026 11:18:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anushka Badhe <anushkabadhe@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: rockchip: convert rk3399-gru-sound
 to DT Schema
Message-ID: <20260412-copper-hummingbird-of-saturation-cdde95@quoll>
References: <20260410055532.60868-1-anushkabadhe@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260410055532.60868-1-anushkabadhe@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286788-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sntech.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 6DDF93E33F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10, 2026 at 11:25:32AM +0530, Anushka Badhe wrote:
> Convert the rockchip,rk3399-gru-sound.txt DT binding to DT Schema
> format.
> 
> Update rockchip,cpu from a single I2S controller phandle to a
> phandle-array. Add an optional second entry for the SPDIF controller,
> as seen in rk3399-gru.dtsi, required by boards with DisplayPort audio.
> 
> Signed-off-by: Anushka Badhe <anushkabadhe@gmail.com>
> ---
> Changes in v2:
> - Fix subject and body: "YAML Schema" -> "DT Schema"
> - Fix title: "ROCKCHIP" -> "Rockchip"
> - List items for rockchip,cpu with I2S and SPDIF descriptions
> - List items for rockchip,codec
> - Update descriptions for rockchip,cpu, rockchip,codec and
>   dmic-wakeup-delay-ms

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


