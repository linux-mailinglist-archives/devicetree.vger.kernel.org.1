Return-Path: <devicetree+bounces-274996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ODdF8fKs2n0awAAu9opvQ
	(envelope-from <devicetree+bounces-274996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:28:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3F527FA74
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EC7F30E6821
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EAD8381AE4;
	Fri, 13 Mar 2026 08:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMGGPc2U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E13806CA;
	Fri, 13 Mar 2026 08:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773390351; cv=none; b=YCcF6fuWG9CqanAGqOx+7MuSMzE5/d3KOdHdp5jlJKZLm5taSCUxf9hOIgIo9JHaXEVH3gKlSb3A6EhCY/XwR9xixmplID7kNHR5358bYVBtYMea0fmM5QTdwH62qW9rVEAx/N4fc0JWG/ODK0QMDSCyE9GQejpFSIXyXfqq6Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773390351; c=relaxed/simple;
	bh=e0tqqF6XkZYZpqUcuN1JR0OKYYyQ68kRuK7Q1mLhw+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJqyJ/CFa1F9PfzEZzmvxyT8T+pQ11xUWG/NZuZRsOKRUuWZtFREQvQAUCm1mVqiORQ9sC6VK3K5G46aNKzmqiK60qL1W/aLsA6/Jg0UctT0ozHVKMZiVWzkDqgs6iDCSaZhboV59MeWqE+My8caukDBb+OyX1K0FvLZBsJWyiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMGGPc2U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18DF7C19421;
	Fri, 13 Mar 2026 08:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773390350;
	bh=e0tqqF6XkZYZpqUcuN1JR0OKYYyQ68kRuK7Q1mLhw+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMGGPc2UegGprIlz956kluFuY01oBhvuv6TF3vxRVL/RmvaspfSjv+fdGgd9jiBHz
	 jVlSIWTfgl1NR8OI6EvFGP0oD9st5fwUmbnORdNY0Wm5PMd1zEmV3G7cRwKtym7goU
	 A6T0AmTgNoMLvtfIrt7eFkZfv8MFtj0aZ+xHuwlZYGanznUVoNB2QV05dOllFjV8eu
	 6/sgmuVAzRBrVa2uSO/EAVbBQv3T7YUBVbQcqioIgDwPvmu2Z/80Y7XuLCyHOjv18G
	 Kw7Iola19LzXHn7k+5fyt4XRAy8MQzwy7wBLuXm2EC5TSUVDgkBzw92n89c9Aamu5q
	 mqb97+lm3dmcw==
Date: Fri, 13 Mar 2026 09:25:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	peter.chen@cixtech.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: cix,sky1-pcie-host: Add
 power-domains
Message-ID: <20260313-piquant-robin-of-honor-cb9f39@quoll>
References: <20260313060308.1300518-1-gary.yang@cixtech.com>
 <20260313060308.1300518-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313060308.1300518-2-gary.yang@cixtech.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274996-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AB3F527FA74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:03:07PM +0800, Gary Yang wrote:
> add power-domains and power-domain-names property

Nothing improved.

<form letter>
This is a friendly reminder during the review process.

It seems my or other reviewer's previous comments were not fully
addressed. Maybe the feedback got lost between the quotes, maybe you
just forgot to apply it. Please go back to the previous discussion and
either implement all requested changes or keep discussing them.

Thank you.
</form letter>

Best regards,
Krzysztof


