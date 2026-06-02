Return-Path: <devicetree+bounces-305800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8scrI5AlH2pziAAAu9opvQ
	(envelope-from <devicetree+bounces-305800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 20:48:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E698A631330
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 20:48:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=RtevXQnJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305800-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305800-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0551B302733C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 18:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2133998A4;
	Tue,  2 Jun 2026 18:48:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216CA372056;
	Tue,  2 Jun 2026 18:48:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780426124; cv=none; b=hxNPHXiecxYK96MpIncAyl1d7ckWVassNAHOSwTccTyGyvR+UOOe1DzJUZo4e2ZeuDAT/g3J3XuG+SX9e0MoUHLxaS1JR/sb8Po6Uuhe2XAPNtL2KyCnMXmyWWdY/f7RdtCW2OSzZqED2aZTm5YZBiagoXSNj3cmHucHZ4najzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780426124; c=relaxed/simple;
	bh=C7jcWsCoDxMib2WPuCJeJn5VGHypERJema709z7ZOfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=e4IcuGdEbV7U0KjmlU+j4n7sIWX74v5asYesmsbdyr1AC4S5JFhLudOHXeN9vVz2iXi7KAeQAdvs7J9GXHAyaE0Az8T2AWWThRHyPzgaZHNsAlpiD0MaHrT4osQywTLsujw4tSRuyCkGov4igUU2ceuiqMcSTT72O1l9XR54VhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=RtevXQnJ; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=7t8xpC2Gxg1/a7tRUHOdz+cAWyjmba/5I1131NwRPwI=; b=RtevXQnJEupgna/t1cryNL51nL
	QE1dJsLsSaPtEpHaoKVwHDdtSNKLrInOY0dpzA5f5y0T9+brriRqSMoKyeQl9Ppa5xgWbzbMFQ7zn
	isA2qHcGnQFLiF3KJ3wCQs08TtKaM50hvDMPJ4l6duzc+tft3ZJErZnz8iUFWCJjwQ1c4zabBnQdu
	AspqR0kJgK/TiTydibe6VnsuWMC1xxXgJiAmAVRom1E8H10fr4rbJOmM1xchdGY2efwMTWcEbRt/m
	BaOfy5uAKFfyS8i/a5OJRctOFfh1afjyXW135jcMURA6cLAT0JAbju/a5PYvNHpR21KSvutrb4CFj
	OfrQVXSA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable button for Radxa E25
Date: Tue,  2 Jun 2026 20:48:29 +0200
Message-ID: <178042610721.614536.13908287937215191728.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601101000.2076721-1-amadeus@jmu.edu.cn>
References: <20260601101000.2076721-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:amadeus@jmu.edu.cn,m:heiko@sntech.de,m:robh@kernel.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sntech.de:mid,sntech.de:dkim,sntech.de:from_mime,sntech.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E698A631330


On Mon, 01 Jun 2026 18:10:00 +0800, Chukun Pan wrote:
> The Radxa E25 board has an ADC button. Enable it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable button for Radxa E25
      commit: dc98bd71f41db3666aa8505cc8c72d02653d2980

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

