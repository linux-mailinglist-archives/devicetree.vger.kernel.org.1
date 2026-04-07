Return-Path: <devicetree+bounces-285133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIzQFcek1GmkwAcAu9opvQ
	(envelope-from <devicetree+bounces-285133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 08:31:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 000623AA4CC
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 08:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1F12301CD9F
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 06:31:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A650335BBB;
	Tue,  7 Apr 2026 06:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ogx4blcb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E1818B0A;
	Tue,  7 Apr 2026 06:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775543492; cv=none; b=e5IOGMHGmlQqYKKMSxhYXymVD6qjzj2+6SMkvdDJqkZtuvFEQ0638TtS76GOju76o9vMpMnQYYd0BlxjwmAuxpqwvoGu1mC35WDDHCNVPkmZhde3S5pJTAfis2DwHbu16WAN0q4ghpSHxIPuCiYeyhelJ+wEALAQ2Bz5tbWxTb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775543492; c=relaxed/simple;
	bh=bXTcwbNDsiXrFc3ljW48JmyQKwUopmkQMOxR6xsSBnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=idlV8XZDy/TTNXRba0cA4oCc/Da8F5TKSiflj5C0L3e+NnZS5De6BcoIFHU/NIvtlvFwQsRR2UxgALBbheg8s9W7o5roSfMPY0lnd1r4aO3glCjoIc3rbIFcCzzHKC28mP7YoUG/Dt6QgHXLkTMIJMHrjxBMpfH9Z/wpurlZXmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ogx4blcb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82AF0C116C6;
	Tue,  7 Apr 2026 06:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775543492;
	bh=bXTcwbNDsiXrFc3ljW48JmyQKwUopmkQMOxR6xsSBnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ogx4blcbI2hcCwHaWTU0fh2IzbKd4n1tVJSTIgDrAMtZAIttlH5Emg7jUbClX6rr9
	 GCzY86cIq8/ujUsTidEZEeVQVBLHHlMH7hNKI9OlX+bX9lV44SrPgDMzCtcgsfos6H
	 6N/pU1fNUOGIZE2jwCqk+rD2GGB8Ixuz/c7nkH0wGyishQdNKHgPgQFyxDDswvDPvo
	 2uxdburmuPMp+mXcA0bsxRMeqTZ6hJrUC2F81qbCDf6nFsuVftxybLHRCXLRtjpbTS
	 K/My6q4mzBW4Wh6U3cBeDWC6ZvMNOzB7FqS4AzU66A6UKX24Kzqj8yKueB/Ju0vbZP
	 UxIpvRQshtJkg==
Date: Tue, 7 Apr 2026 08:31:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: nick.hawkins@hpe.com
Cc: catalin.marinas@arm.com, will@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: hpe,gxp: Add HPE GSC platform
 compatible
Message-ID: <20260407-tactful-roadrunner-of-competence-feaeaf@quoll>
References: <20260406143821.1843621-1-nick.hawkins@hpe.com>
 <20260406143821.1843621-2-nick.hawkins@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260406143821.1843621-2-nick.hawkins@hpe.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285133-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 000623AA4CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 06, 2026 at 02:38:18PM +0000, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> From: Nick Hawkins <nick.hawkins@hpe.com>

Duplicated From parts.

With this fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


