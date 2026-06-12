Return-Path: <devicetree+bounces-310805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3RaYAbXMK2rzFAQAu9opvQ
	(envelope-from <devicetree+bounces-310805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:09:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C65467812C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:09:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OTeZSuyn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310805-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310805-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AB22130F62A3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D0B3B14B6;
	Fri, 12 Jun 2026 09:07:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5AB3AB47C;
	Fri, 12 Jun 2026 09:07:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255230; cv=none; b=IDALGwacVKiLyFq+NtgEqD1eKxqpiKNMr0c0pvJ6v9bZHsMtisTGfMPfcc64gMjcm/X5tk97dmxaB/nXFwJ2Ica1e6Q5VMHN6HdLZCxfT8PfYyunJTiSnxPRfP5T3i5IBnfZJ3l50YKuMQU9dECetrm+6wAEEftpIe392v5IRCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255230; c=relaxed/simple;
	bh=jz3RpjM8LIliaOB4qEdXmUbxdvP5m57QHCy/SO299V8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ATnll8LJGm7hWqDkn/CqYq4ElrHnBpjuDMxjKyOh5ccYAQKV4ur0KjkCJxIY25MzqEn8T7Wv4dV5ZBy4CiQyKsZoDEKhrcsD8FpoedQNyNsHfivvYsI5643kg1EsAZncg/ekpuAGDAUZENoMbKAtj7WMh/9mzkVAYSevYALPFhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTeZSuyn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC2F71F000E9;
	Fri, 12 Jun 2026 09:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781255225;
	bh=jz3RpjM8LIliaOB4qEdXmUbxdvP5m57QHCy/SO299V8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OTeZSuynCGpSJZoi4pMYJzzS2G0YQU+NGTGQIFES6m0efWi+bDQ1OdGrGn6VNgJZC
	 rW15LI1hPcbcXJFMdqzgAT9Y+/DpGzzzABuC5u6LgJXfBOJb4j1o+nGlvUqhEea12F
	 C+ncKyBzQ3f4XtKHeuM4vY4cjYZK8YJCS3jjWg37+jyL9QCMv1sFJN98JrK21Zzc9t
	 OeauY/xMWvpfUrBwVCiUew8CmlfJEx+AsbXKDjm/o+xTbr7nGVAoyWukrs0CH7MfVe
	 DYsJte8OFY3mgN0g3K/cydmo/v/+6v39TvjBNe3uLjETNOqsvvPnxevzjR06F8eNby
	 gzsPNLAB5cs7Q==
Date: Fri, 12 Jun 2026 11:07:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linusw@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: st,st-sensors: remove lis302dl
 and lis3lv02d from deprecated list
Message-ID: <20260612-mysterious-amiable-moose-0d64ea@quoll>
References: <20260611154105.3727-1-shofiqtest@gmail.com>
 <20260611154105.3727-3-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260611154105.3727-3-shofiqtest@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-310805-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C65467812C

On Thu, Jun 11, 2026 at 06:41:04PM +0300, Md Shofiqul Islam wrote:
> st,lis302dl-spi and st,lis3lv02d are being given their own binding in
> Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml. Remove

This is not supposed to be a separate commit. Removing compatible and
making it missing from schemas is not a desired change by itself.


Best regards,
Krzysztof


