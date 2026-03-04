Return-Path: <devicetree+bounces-270889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNAcA6Pnp2mDlgAAu9opvQ
	(envelope-from <devicetree+bounces-270889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:04:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2341FC22D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:04:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B2C8130C0852
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 374AF382286;
	Wed,  4 Mar 2026 07:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7K/eX9b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD863845AD
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772610620; cv=none; b=umunABY3hiQALSD7RCektDFfBOWE3puz0g3aqPuHAP71AUE+Pr9ACYjqsRvFr6LDqLAUsPPW8pdwsMtZQm1lNkEr06dwvZS+34EOyanAQeADWeQyiwnw+f8J3y5sZ3fgz1dtFdbNva4WLz73OCsfb3WHYim3Ixcbl+CR+iBLPhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772610620; c=relaxed/simple;
	bh=jYBgxHBKSrzORLOTAIs5siOxD+JvNIgj5Q3UqAteHXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gFhEqXVBrMC55FX/j0wtR65b/PTGmEMEimFmTud7d9ACPz0IVyixQxHi7vsZvw8DbM6Bow8+JpnumCWSkcrggAoINAmGjYox73URmbJUboVbYFhvMhGiQ2fhYxvx3xqqmEa6T5QowNAaD+6sM37HnYKStBVK3C7Yg/ZD2sEOk4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7K/eX9b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C08FAC19423;
	Wed,  4 Mar 2026 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772610620;
	bh=jYBgxHBKSrzORLOTAIs5siOxD+JvNIgj5Q3UqAteHXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F7K/eX9bT9AgsGQ423eMvmnxXx5tTxZ7usQQaEreAPzdpfQBarSeI89j6LNPRUtiY
	 OsbGtT2UDW6qv1Pws62sUc+SDSNFrK35dOr6rasyZuTLjxbLIFhAP059r5m8frSvHu
	 inKkexTSlv/hMw/43DKc+Cg+I69SCtbx54389SEx/Q32L/9M5mfjjmxgTr6pz0mjMz
	 Rt2CvSPbIc1hfz+PPQpWQeR2b8EF3Tduv3ZcnWrFo1yQ0mM971NUZu5YlpPtpeRLy9
	 WG03t41e22O1zcfaGMLBqDb7iFCBwz+QIdgE2BzRd2DIVTFbLMPnvZTWzxDTBANPUY
	 poQ6HVZebjhwA==
Date: Wed, 4 Mar 2026 08:50:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/8] dt-bindings: arm: Add two new Gemini devices
Message-ID: <20260304-quixotic-military-flamingo-ea3fb7@quoll>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
 <20260303-gemini-dts-fixes-v2-5-5b92ced841ce@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260303-gemini-dts-fixes-v2-5-5b92ced841ce@kernel.org>
X-Rspamd-Queue-Id: 9D2341FC22D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270889-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[googlemail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 08:29:37AM +0100, Linus Walleij wrote:
> This adds the Raidsonic IB-4210-B and the Verbatim
> S08V1901-D1 Gemini devices.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/gemini.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


