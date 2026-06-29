Return-Path: <devicetree+bounces-316774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jp7NNA8qQmrL1AkAu9opvQ
	(envelope-from <devicetree+bounces-316774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:17:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD786D7635
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:17:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=superkali.me header.s=default header.b=XZ7uOx38;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316774-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316774-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=superkali.me (policy=reject);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80579301F5F2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA61D3DFC62;
	Mon, 29 Jun 2026 07:59:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99D43E1687;
	Mon, 29 Jun 2026 07:59:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782719986; cv=none; b=jVu3QlE8fbcIfrP+pqT5I/MU5NdQ1xuegalRr6qzlN1b4HQGFXmYOe9oCN8/ZASoUF5kiCK5SgoQ84E5Fq9k3MrJfAT6HCg8fx/GsjPEEkAuFKlLchQWDaUmiklbMCaYn2FWbNT5XvkMeL7T6zHm/OdVTPOFIA60iEzJyBVBOt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782719986; c=relaxed/simple;
	bh=/nvwFv0JfmjK2NA5Qy4Mb1EPkG5HgybnUNzmPA+S75k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CepP+0D/rnoDdHNmNKfHklzud7Ke1agemmlziqfKGssA4ZtNvvnQbFOgxYes8+t1ozi2QPokNCS9wzz/lBsHo54jgpR9S4TpE7R1wOYRBq4Xs+Ue+KVT6QQFYf15ho+lu6jZqmVrEFG5FJfqYUMgnsmlFD5KQi62Qg8VIjCsH94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=pass smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=XZ7uOx38; arc=none smtp.client-ip=92.42.104.18
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/nvwFv0JfmjK2NA5Qy4Mb1EPkG5HgybnUNzmPA+S75k=; b=XZ7uOx38ZJ4O0V7qpLnD5cQ9u2
	SDJkMOPnuHSkURQBGK3plOCj0HwhIB1h6EHGKY33vhCwHwnAtQ3lsx3BnnFj9IEb6mf8m26gLfll2
	JHvM1KU0xGpVutlRiy7ATGXmLnD5H6e59Qrm7Ytfye/w58z993n1aP2Ofgk5EShtWNafl+oNbzU9H
	wvPMf7/bCt2XsIMfuaopzXLbqekUfWLDeS8RGHOfbUf5Zf1xKheGerDQrJQgePpAQCz/13RY8ygU1
	bxwIl/cma034VcE8fDYA/JaDi/A5nT10QMyCOgvuKoGMLvNMS2VlVfoXo9FczLilL7ObcVaN/hxUO
	tLMVAU9g==;
Received: from [81.57.40.39] (port=42644 helo=superkali.me)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1we6u1-00000001mbW-18ue;
	Mon, 29 Jun 2026 09:59:36 +0200
From: Daniele Briguglio <hello@superkali.me>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Youyeetoo YY3588
Date: Mon, 29 Jun 2026 09:59:34 +0200
Message-ID: <20260629075934.518649-1-hello@superkali.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.54 / 15.00];
	DMARC_POLICY_REJECT(2.00)[superkali.me : SPF not aligned (relaxed),reject];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[superkali.me:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	HAS_X_SOURCE(0.00)[];
	TAGGED_FROM(0.00)[bounces-316774-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_X_AS(0.00)[hello@superkali.me];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[superkali.me:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,superkali.me:mid,superkali.me:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AD786D7635

On Wed, Jun 10, 2026 at 03:58:57PM +0200, Daniele Briguglio wrote:
> This series adds support for the Youyeetoo YY3588, a single board
> computer built around the Rockchip RK3588.
> [...]

Hi Heiko,

Gentle ping on this one, it's been about three weeks. Conor acked the
vendor-prefixes and rockchip.yaml patches (1/3 and 2/3). The dts in 3/3
hasn't had any comments yet, and I'd hate for it to slip through.

I know the dts queue is long, so no rush. Anything you'd want changed, or
is it OK to queue for the next cycle? Happy to respin if there's something
to fix.

Thanks,
Daniele

