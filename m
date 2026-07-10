Return-Path: <devicetree+bounces-324444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B3EwNNfoUGou8QIAu9opvQ
	(envelope-from <devicetree+bounces-324444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:43:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D6773ADDB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:43:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=hugovil.com header.s=default header.b=YJbFJRUO;
	dmarc=pass (policy=none) header.from=hugovil.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324444-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324444-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 77DCA3007894
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3611F4266A8;
	Fri, 10 Jul 2026 12:43:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEB93F7A95;
	Fri, 10 Jul 2026 12:42:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687380; cv=none; b=P6TfJrNieltivl46OKY0WIy81l2mgyS6tYQ2tAJXmtVfHFQxs5v0DoeJhXEow6LaiWtuGOEHwuSwa2ygGt3ZTvdg6BkWorx5UeymedxZ+G2fo6kXPVZRmOQlGwO3dfrIinH/03SAdbd1t3PxyNvBOydVtN6nN1+cF+vFwL7OByc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687380; c=relaxed/simple;
	bh=UgZyIbQNVfmbsugM1aplo+EGpxTGXDDCBBHdnB8E4Dg=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=BzqtUnWI+e4hqN/+oXIHuaWudhfd15Ti0n6fzJHkBF1Im1ZBzKsWHVaFUeRMFjzEzr6q+eN21+YTGb8FFL7Pw83hGPvjkdqe/HcKykwyGxYvAwiXS2d/pTlqUXCK1jv6HqycuuGv5an653h1eyorFyIQjkkd56AarJUIka9GBVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=YJbFJRUO; arc=none smtp.client-ip=162.243.120.170
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:Mime-Version:Message-Id:Subject:Cc:
	To:From:Date:subject:date:message-id:reply-to;
	bh=VEHZiw/6FUwIOcw6nopxjpmpqjEgZaz22mSg/mOI1Wg=; b=YJbFJRUO9MQC3B6n1gRS8uE86o
	B56pj0ySGiaf7ycuwUQfJBN80TsAfGIPookWRJjcOyVclYlrAQtqpjQZG39xaVBX/eKK5LqZ2prY1
	LIT0wTqNE7pVS1iEiV8F+8rw7KZDh9xzzIUGpIpX03LxCYaiVVE54kZ5T03rFxPnlZco=;
Received: from modemcable061.19-161-184.mc.videotron.ca ([184.161.19.61] helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1wiA4M-000000002Nf-1gr5;
	Fri, 10 Jul 2026 08:11:03 -0400
Date: Fri, 10 Jul 2026 08:11:01 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Manuel Ebner <manuelebner@mailbox.org>
Cc: Hugo Villeneuve <hvilleneuve@dimonoff.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: input: fix bracket
Message-Id: <20260710081101.55994bcac1c76f4d3113c204@hugovil.com>
In-Reply-To: <20260710090153.431170-2-manuelebner@mailbox.org>
References: <20260710090153.431170-2-manuelebner@mailbox.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam_score: -2.0
X-Spam_bar: --
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[hugovil.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324444-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[dimonoff.com,gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:manuelebner@mailbox.org,m:hvilleneuve@dimonoff.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[hugovil.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,aka.ms:url,dimonoff.com:email,hugovil.com:from_mime,hugovil.com:dkim,hugovil.com:mid,mailbox.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09D6773ADDB

On Fri, 10 Jul 2026 11:01:53 +0200
Manuel Ebner <manuelebner@mailbox.org> wrote:

> [You don't often get email from manuelebner@mailbox.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Add missing '('.
> 
> Signed-off-by: Manuel Ebner <manuelebner@mailbox.org>

Acked-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>

> ---
>  .../devicetree/bindings/input/gpio-charlieplex-keypad.yaml      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> index c085de6dab85..c6842c017934 100644
> --- a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> +++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> @@ -11,7 +11,7 @@ maintainers:
>    - Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
>  description: |
> -  The charlieplex keypad supports N^2)-N different key combinations (where N is
> +  The charlieplex keypad supports (N^2)-N different key combinations (where N is
>    the number of I/O lines). Key presses and releases are detected by configuring
>    only one line as output at a time, and reading other line states. This process
>    is repeated for each line. Diodes are required to ensure current flows in only
> --
> 2.54.0
> 


-- 
Hugo Villeneuve

