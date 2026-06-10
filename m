Return-Path: <devicetree+bounces-309633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S5ByIOMtKWopSAMAu9opvQ
	(envelope-from <devicetree+bounces-309633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:26:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F3559667D3C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:26:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nF78ithT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309633-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309633-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D42AC30736FF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212AF3B9DAD;
	Wed, 10 Jun 2026 09:10:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366040D567;
	Wed, 10 Jun 2026 09:10:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082650; cv=none; b=RcI3wg/SBjv3Vv2o7cjpDQ6DU1pU9whv6Iyb5B1E3qK1IdkfXNJ+6I8LCz+GDA2f0Z2CNsO4m8NaJC2auc3PWVSylkjUYBBw/WfWtCP88Zi2X622wIA739heKNncIeh9IX2GLOxhsE/pIK6T03JK1AcKS/Qzm2pv69RoZQjSLZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082650; c=relaxed/simple;
	bh=jmGnU31rnzSYSXnwKpzH1l48Mfh7V4bzSDCW5RSUDJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Va/VJn21MafaioNk46ibkd/6hAuwRPHCBZDsi3dYZfs+hUyXvaRsxZlSrScjcqZEdYYqALMqI1qRbwJhgMhhyztFIBsVyyzMyzdULz/G+f6HpwR8w8t0n07EPlv0tHsMq1gpbqyfQLQVR/wIko8DMpjl5H29iChyryoxeTVlv7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF78ithT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A92211F00898;
	Wed, 10 Jun 2026 09:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082648;
	bh=jmGnU31rnzSYSXnwKpzH1l48Mfh7V4bzSDCW5RSUDJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nF78ithTpjFdj+qxBpWsFyWYA+8z1kbkCU9EowR+VE5tVsa78RmS+OCY4PHQ0tHNF
	 evegwLofTWtycLQy0ES+/lNr5rc+TAJG9fOolW4muxG/b30+A5oRGrI3uigNkGAZlb
	 pnXjdaWdT8L4EE4ock96dVWfPPgshNaol2FPSmvrS5dW59ip9QXuMiicn5ehbn83Ov
	 uQ08ZB0P7fOlDY9W2qjlbZcUHzBbvXlMJBFSTBiyu+UoPQIugmGAREhM+GCEmDdKjb
	 jSnQ/ZyxDXzgwmCT9yXgKjav0Ew/8w6p/udiASeU8nAVbq/8AbAEgTIX+ITmERiKuO
	 OBrSJOloGxpgg==
Date: Wed, 10 Jun 2026 11:10:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maxwell Doose <m32285159@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Tomasz Duszynski <tduszyns@gmail.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Add myself as maintainer for SPS30
Message-ID: <20260610-turquoise-marmot-of-research-c3c51c@quoll>
References: <20260609161701.52513-2-m32285159@gmail.com>
 <20260609161701.52513-4-m32285159@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609161701.52513-4-m32285159@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309633-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3559667D3C

On Tue, Jun 09, 2026 at 11:17:01AM -0500, Maxwell Doose wrote:
> Tomasz's entry is no longer valid, as he is not active anymore. Add
> myself as maintainer of the SPS30 to replace his entry.

Same comments.

Best regards,
Krzysztof


