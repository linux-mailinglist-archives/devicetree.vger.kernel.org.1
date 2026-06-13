Return-Path: <devicetree+bounces-311373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Kl0nJeigLWofiAQAu9opvQ
	(envelope-from <devicetree+bounces-311373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:26:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DF667F4BE
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:26:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZQkVXJeN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311373-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311373-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0D9B3003377
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7B482C3768;
	Sat, 13 Jun 2026 18:26:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78B427AC57;
	Sat, 13 Jun 2026 18:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781375206; cv=none; b=C07CHmXLWRkI+fkVSXMLWHnmWNFkbyqm48dka+u0rdNqmdqbAcFxOkrYr3zCqNYrDCQcOF3qX+2yIWgM8obpMiSYO2xr0EKrFq1OMOXBrYHACNj0aog2BlJ11GwTCbE5HySG5zB7t+JbGuj3fk2i2VtB9uOKDZ0nYMCpTSY8ry0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781375206; c=relaxed/simple;
	bh=ku69+QJTGLVIu+e2VCsIqu28fqjfc41H9M/G8zxv6Ag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gqwmUhYW3on8CoJLbY8XXAxKBu6mm2+UtDvPvhTMNteAymUzmAQbRSLFkd7kVqI+RY6knBR7zIKDdh9l3cpdb6h8kXv7me3gS/6dB01Muh0LCqK7pBIrYv7hNIi0dbhyqrKPGNP3zYTflznGJngPuvGZHA2h0JJ6Y6fk0X8HKJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQkVXJeN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E74A51F000E9;
	Sat, 13 Jun 2026 18:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781375205;
	bh=ku69+QJTGLVIu+e2VCsIqu28fqjfc41H9M/G8zxv6Ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZQkVXJeNXlV81XZi1WUGqWCSL0oIySiPC12pMIN5lENjd7geRmuLD1g/bD1qx8R2C
	 5p1btKdarR9A8uoPI78Xq8N7acGOu40PFJLO89mI+v79YPIi6jagK/dq9ex7/GPhvj
	 kB3AAy9Mmf07tM8pq7l46mQjpgcDU9b7wX2VIZ2ElUkenYa6E0YKXjDHZWUKohqQ+S
	 ns9G87k9DxpS7B7/gmF07gRpKXdy0zzPCR+DVUs1FaVPnhiK6puBPeny0VHiIMer7b
	 3d+7Ra8X1O3eZ1xsX7DX5nLMdueRgmPOz7G+bYCKgV3SB/sLx+l77d1Q4voaDHutW9
	 yAao8KY6h1hyA==
Date: Sat, 13 Jun 2026 20:26:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Charan Pedumuru <charan.pedumuru@gmail.com>, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: [PATCH v4 1/2] arm: dts: st: align node patterns with
 established convention
Message-ID: <20260613-meteoric-qualified-malamute-beea2a@quoll>
References: <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
 <20260613094844.EEA7D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260613094844.EEA7D1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:charan.pedumuru@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311373-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,quoll:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34DF667F4BE

On Sat, Jun 13, 2026 at 09:48:44AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Renaming 'sdhci@...' nodes to 'mmc@...' in the base dtsi file leaves overrides in derived dtsi and dts files orphaned, causing node duplication and completely breaking MMC functionality.

How many times Sashiko needs to provide the same feedback before you
address it?

Best regards,
Krzysztof


