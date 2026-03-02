Return-Path: <devicetree+bounces-269903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALPTBeNrpWk4AgYAu9opvQ
	(envelope-from <devicetree+bounces-269903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:52:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 844131D6DDA
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 942873070152
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC53B3563E9;
	Mon,  2 Mar 2026 10:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="m6qHuL/T"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B152822CBF1;
	Mon,  2 Mar 2026 10:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448491; cv=none; b=oB2yuDfUWKlg3QBvFO3F9dMvlZb9t9nM9UYoxz84+Vpa+NibzF9ZQEMIKl3FJ6+7o8cdEu4MYcGfpTUYBRqAAKFhj7OE7HdLwtisba7tGbQ50EJpJiYmM+ruDV2zcLsmn1kXSlqrvcDLVWSJ2Fh2hDjbcFKm4lbC7ZfhzZJ8/0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448491; c=relaxed/simple;
	bh=TqIenPwt6OVbrGlBW9KR2jLxrOLkeSIALm72A1x7urM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=imVmj/qYJYZJQb/qdt21TIkMCREAQvaU8ZODmDjPyymrOYcsL4WVsr6zzBXUjkZkfKMiKGyUl+dNzYaThRdLJNOasaV9juhkQuiUekNGP1QJJLJZIdWXyJmH9A6/gNnsZ6bohW2s4O9Pf9zGK+bwFWZebi1Nt0MoGXXtk8dbKZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=m6qHuL/T; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772448488;
	bh=TqIenPwt6OVbrGlBW9KR2jLxrOLkeSIALm72A1x7urM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=m6qHuL/TKXNlqunZ0wzU29sKWp5+A2CGm4Kx+ly4uHO/jAO3VvfCwoejPNvlFTXJS
	 mCxxI+TPWBx37cvSLFnQRkcDExAy6xY2VUPA6y/9iXUPNrcqqhUzv+jhAz5F29Zhug
	 GTQ+8Z5iU9+GWIxlUpPOT3Srj46aFJZYApEcUcsEojDtSOpxHezS+SzfBtvCUTzPwG
	 TVFi64lAC+CIzR/EHccz6VR913PW9j06scywnC272KzCCSiEV9vOdeDfayFDbxPdl/
	 Btvx4z6Hh3lWdTyMOA7CUEZTUksq4envwyut40ic28XqPeTC4h2AHLY3oIDw2AzvuO
	 uVUknf3oA3roA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 75D3217E0D04;
	Mon,  2 Mar 2026 11:48:08 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
In-Reply-To: <20251215074609.4100-1-linux@fw-web.de>
References: <20251215074609.4100-1-linux@fw-web.de>
Subject: Re: [PATCH] arm64: dts: mediatek: mt7988a-bpi-r4pro: fix model
 string
Message-Id: <177244848843.35091.13923037073302766637.b4-ty@collabora.com>
Date: Mon, 02 Mar 2026 11:48:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269903-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,fw-web.de];
	FREEMAIL_CC(0.00)[public-files.de,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 844131D6DDA
X-Rspamd-Action: no action

On Mon, 15 Dec 2025 08:46:08 +0100, Frank Wunderlich wrote:
> Fix incorrect model string in Devicetree for BPI-R4-Pro.
> 
> 

Applied to v7.0-next/dts64, thanks!

[1/1] arm64: dts: mediatek: mt7988a-bpi-r4pro: fix model string
      commit: e4e6f0c5a4dc238684acef079e792c81d37e3226

Cheers,
Angelo



