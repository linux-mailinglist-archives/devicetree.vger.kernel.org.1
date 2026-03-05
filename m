Return-Path: <devicetree+bounces-271413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOukKQg+qWmn3QAAu9opvQ
	(envelope-from <devicetree+bounces-271413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:25:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0946220D6B3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C38BF3031CDA
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB50372ED5;
	Thu,  5 Mar 2026 08:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0gP836d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6335374185;
	Thu,  5 Mar 2026 08:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699098; cv=none; b=XScA2aJHOeCU75fsSIhOqJA8Ma6PCVQEdZx+R8hGkIyWe2moyVUmKavepTDQhnS9sF01o2/+/87GvJn0tQLsdMyXdf0/okY8lR0gtHzXcf5AIdS1v2gfyYUe8aO53+JsUWr+MQHuUMqZUs2tgpS12B6FtWpDejAFMdzVbiJooEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699098; c=relaxed/simple;
	bh=CcyQ0FMKZLYA3+oMSJy4e+mo+GRWCZA/Ac3gQFkgIFM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ennFETv80clM2CXazcTwMloMIAM8kEa+JK5k8DJJDY/M9bavA/cJlbWTC71OZKljI/qj99EXDZcHeLj8Tr3uLiG3vYc54jgoF+1KCWc0X33a9dqIE0S/CF+vSzTmBwConL7rUEx64rZ41woBXAikR846OLETfPKa/bXSwxWefDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0gP836d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A34BDC116C6;
	Thu,  5 Mar 2026 08:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699098;
	bh=CcyQ0FMKZLYA3+oMSJy4e+mo+GRWCZA/Ac3gQFkgIFM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B0gP836dyQqJ/ZqrtT88OSaSVc4D9DXhcHlGKUuLEMRd8+2YAyjR1SmTOaAMUGlgk
	 hGPF6vCIUcX+o+jB+AsE5h2zfe5oN7ihWTVXKE+oCzxSHhpiQxepHSddUu0HjjtXRS
	 R2fG7BV45RsVH7E/ZU/9Aq4bahlLxCJv4Hf0Pk53aM1PtfNOFLyouyvnvogCL9SJBt
	 OnPEtvFhgLRfivGZaY6jz/vxbMhkEfkEnx3ykjfo4ABkPPFZIZTAq8Umn0UwHOZyQN
	 gI9U+iOHW8+0LGEVLVTpFu7bQ/MQoffQ0+ZxZeG2UqdSPcXcGWeX1Bss4muwplFNiI
	 CMqTrpPYP1ALg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
 Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Andras Sebok <sebokandris2009@gmail.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260304-exynos7870-j5y17lte-v1-0-eb25902c84c8@disroot.org>
References: <20260304-exynos7870-j5y17lte-v1-0-eb25902c84c8@disroot.org>
Subject: Re: [PATCH 0/2] Add exynos7870-j5y17lte
Message-Id: <177269909539.19782.10813796455691399837.b4-ty@kernel.org>
Date: Thu, 05 Mar 2026 09:24:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 0946220D6B3
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
	TAGGED_FROM(0.00)[bounces-271413-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[samsung.com,kernel.org,intel.com,igalia.com,gmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Wed, 04 Mar 2026 22:56:52 +0530, Kaustabh Chakraborty wrote:
> This series introduces the device tree for a new Samsung Exynos 7870
> device – Samsung Galaxy J5 (2017).
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: samsung: add compatible for samsung-j5y17lte
      https://git.kernel.org/krzk/linux/c/135b55014109de2e6c8b9c5d52e5cfd7b765315e
[2/2] arm64: dts: exynos: add initial support for samsung-j5y17lte
      https://git.kernel.org/krzk/linux/c/a3a20c5f4e10f43e137ee32842639637c853c3a6

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


