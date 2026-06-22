Return-Path: <devicetree+bounces-314341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bX7OMRoDOWqqlQcAu9opvQ
	(envelope-from <devicetree+bounces-314341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:40:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA146AE554
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:40:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tnijca6p;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314341-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314341-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79EE8304892F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 09:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6686435AC10;
	Mon, 22 Jun 2026 09:24:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33080CA45;
	Mon, 22 Jun 2026 09:24:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782120295; cv=none; b=CdVoPdCq1nCB5CjDFoC67KM4FWDWvxiW29oAfsP45YrFv69K4YXhmTJsn/L0p9ROXY4nvfMsQq38DcyrPuPrTvSXi3dxpeu+/uI37btTVPNv2Y3miDQa9oQZcZJCJvf+xZUWP1TWSnOmaPai0BVsdG5QNpMkUyGTzZt9JBoAIHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782120295; c=relaxed/simple;
	bh=/psBRO9a+1+vw71JPfTSql43m/kuBUfHerlJ0r9kBqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dUXpDudTn0SYSr0iUBXFgMnAcu9xsMMpCo5jATpqdACvM6j1/5uiWvXde3X1MGL5uveAWSusDnfJB84qIsEOe/Af8N11lVKfnAddDV4sIyFeDYXN/bh5Du6V5C73I+jf+QYil+ATIZN6NdSAqy/S3DKftRjD8W5lYAmAnMPe7LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tnijca6p; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE2A1F000E9;
	Mon, 22 Jun 2026 09:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782120293;
	bh=AJX+sPInRCDW8SROfrGz9/Dj3td9IksSJtySC4l5cCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Tnijca6pTeJfj1d0ffWt1sPKM1+PHPZDEcJyC4+HBB6uC6PQGFqG8dD3QF1fH5Vv+
	 0OBsnn7k/eJcnU7633ZPdA8MIhLYENaStsM+znWDF1dE91D00Yc/0xeWpGloHI1IlA
	 kMtL6xSkg1Bnicb6b8UbZrTKdENuDV+YkghV9TncCuVxjM27czPhdrbSAahZWNdgX5
	 X3GvHZrYScaFLCxHCCKd0DFhxQFmnCqt/cWN8U19SeC1z0ev6gQinv4nLN/n+Iq/VH
	 V9npCHHUQ1ecK9LSisBSYdfRROe+NjHuqUkPjOvtPquMi9Iq4z5wA6Oct5NKabEGmL
	 h9pJEoAYxJJZA==
Date: Mon, 22 Jun 2026 11:24:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ninad Naik <ninadnaik07@gmail.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, david.daney@cavium.com, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, me@brighamcampbell.com, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org
Subject: Re: [PATCH v3] spi: dt-bindings: octeon: Convert to DT schema
Message-ID: <20260622-auburn-aardwolf-of-apotheosis-82df8d@quoll>
References: <20260618180149.475658-1-ninadnaik07@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260618180149.475658-1-ninadnaik07@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ninadnaik07@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:david.daney@cavium.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:me@brighamcampbell.com,m:linux-kernel-mentees@lists.linux.dev,m:skhan@linuxfoundation.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314341-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AA146AE554

On Thu, Jun 18, 2026 at 11:31:49PM +0530, Ninad Naik wrote:
> Convert octeon-3010 to DT schema
> 
> Signed-off-by: Ninad Naik <ninadnaik07@gmail.com>
> ---
> Changes in v3:
> - Change the maintainer from David Daney to Rob Herring

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


