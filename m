Return-Path: <devicetree+bounces-281956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FuJUJWzCx2nPbwUAu9opvQ
	(envelope-from <devicetree+bounces-281956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 12:58:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA4134E4A7
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 12:58:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A79683008D18
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2026 11:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3563A37F736;
	Sat, 28 Mar 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3kz+VH2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1340019E819;
	Sat, 28 Mar 2026 11:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774699113; cv=none; b=q8yylkICcMfIrTzM7v+063MmtKJLBYiZh/bsBwTXy7nbG5tlINrINAsCGtuYsW5PqTkDyGHCaejFMT6J0CKFAIyjG+bu3VWKfxPLr1G/OJlwYaUThbNQ00z1fHesXOdS4NYWjLMrtSJhScnfctcfv8oUTJs7+gXOw+SMe3rDrvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774699113; c=relaxed/simple;
	bh=aKSI85W7e5aae8HFSxnUvwcHSC42QqF36u6/l7UjKlk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QHcYF48Ll9ary5ZNaAbCVfgN3Zqp22xWxs+wDgNFRB7LOlnRVVwumh1VnrZl1e1aksWz5bsUCULQ5w/eyYx8F3ay3LTVtCWVejha38z4YjaBvBsLEheEeBQMclbGZn6Z+GU3mfd0ne6DnuWY1ez/pflqVJEKfpeTdxa24aIf0qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3kz+VH2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DC49C4CEF7;
	Sat, 28 Mar 2026 11:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774699112;
	bh=aKSI85W7e5aae8HFSxnUvwcHSC42QqF36u6/l7UjKlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z3kz+VH2Bg1He7nLaytZbI8ZFkhuVOeknQgyLu3iV7ka+njL21SuyNKvLCL+i5xuR
	 S+T3+ec/bwBAZMcRRBiIyy7LjGuJcA6NuoWhAg/jyiFjAZNUlryZmo9pdgwRbHqeNh
	 AV0NTQoQa3hWOWAc+oVj8Lv7LOaFdwk6XTwmGQDn30+b/m8qDZiRxaPFt9O3QSlCoo
	 DPsmOfVX2bGR2tBQLiZ/PqpvADI/VW8RqnMgDNZAaLEH6931Mwbmv6n/st8vjKrRQ2
	 1KeRI66qewnSbbgEV/XJHhneO38I1EPaFxiGjHtImn+ud/qIImqJvb0Xp6SpujAnSD
	 JxLm9YKgBrGNg==
Date: Sat, 28 Mar 2026 12:58:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Udaya Kiran Challa <challauday369@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Subject: Re: [PATCH v4] dt-bindings: arm: mediatek: mediatek,g3dsys: Convert
 to DT schema
Message-ID: <20260328-economic-blond-termite-daecb7@quoll>
References: <20260326181726.64957-1-challauday369@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260326181726.64957-1-challauday369@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281956-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 0DA4134E4A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 11:47:26PM +0530, Udaya Kiran Challa wrote:
> Convert the MediaTek G3D system controller devicetree binding
> from the legacy text format to DT schema.
> 
> Signed-off-by: Udaya Kiran Challa <challauday369@gmail.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


