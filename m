Return-Path: <devicetree+bounces-274794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OuxCMEbs2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:02:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 943C427869D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73AE7301C6C1
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4231B401A1E;
	Thu, 12 Mar 2026 20:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="SkgWdm7R"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40ED26C3BD;
	Thu, 12 Mar 2026 20:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773345724; cv=none; b=cL5gRyuy4jOC/0vfJflSAkqz/XORfn9mZ/0tc+7Ax6zkojISveF0RQwMhjS3Py1LR/oSbVAxS60OKKqOLt2k2byK4mB9/tgLkFT/wKMgYb4nIaRiQIhfYBTzFcr3VknIFkw4quF1M4EHkf5fkym0qLMWq3Ma2tONkW9u9Ar7Mzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773345724; c=relaxed/simple;
	bh=vYH3B6K37XlC0p6soe0fXJhzuWEA7a/tKsBpaSAj4Zc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UirfwlgHZXp9OCDIpe5QZkJXMGCCFxXmelBvWppnQZ879euzy2dTS7XP0F98oLLY4XXuCpRpVGBdcwSl+4KbWg3B3xLuscu8Y4tepygSr6L0fg8zEnFLGN2MgKKoJ6Q5ucV3/3fN9BzENYkm+lrKosZSKwOYqpZAMzgO8ZMlL/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=SkgWdm7R; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qgyqOHCPScAfR4PRcc+4ddmSV9FhJ0HZJ8pbHHXAdu8=; b=SkgWdm7RdLobc009NpMp0Wmyr2
	iBA+7oe4KL9k/yQ3Y9C42IDxyK/u03CLbpB9tNrJcxSyNIq+6S5JnjP2yzzUdRCCpY7brm5rpMWr+
	iOdFCqyiLoqX77ioib2rVNovayg7Ar6cpUOuvRDSpZ0QTPc6GJS43FJb+q1FUxu+LwUeiXx2se892
	a7l8zqRbkMCsam365uDYQAwQe/naWgBO2n2oKMs4qfrqFhSTufR/Lb8/0kbDaEJVFZvMPTKPn0Wnq
	o4uCDJxwpjb5Vr+AbFpi+i1WZM0YPCV+N5lQc3tgs1+nnNQasuwXQ8h7YvSYDKSnNSawHD3+m2Zh8
	p7OZuFnw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add analog audio switches to RK3576 EVB1
Date: Thu, 12 Mar 2026 21:00:56 +0100
Message-ID: <177334565370.2520391.4310192190507174351.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
References: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274794-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:email,sntech.de:mid]
X-Rspamd-Queue-Id: 943C427869D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 11 Mar 2026 20:25:02 +0400, Alexey Charkov wrote:
> These allow selective muting/unmuting of inputs and outputs, as well as
> setting mutually-exclusive rules in ALSA UCM.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add analog audio switches to RK3576 EVB1
      commit: 9d28af133ef2de00239dc8a8b7878aa4f1b3ecb1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

