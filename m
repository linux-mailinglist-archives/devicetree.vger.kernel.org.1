Return-Path: <devicetree+bounces-303511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAXzMDobF2ov4gcAu9opvQ
	(envelope-from <devicetree+bounces-303511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:26:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 293215E7BF1
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 18:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05C643059334
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 16:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E702428495;
	Wed, 27 May 2026 16:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoczDKjX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073373D9666;
	Wed, 27 May 2026 16:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779898798; cv=none; b=iKRBXsp9kW/5gm01c/Zuu7aWtb6ZGyR8Y9z7vUkWBSpL/XBk0BHQ+SWm3h3dJ8Ck4YfPn+4vLrR1xNv3dftj1cOyK/p8LIxJNV/y16JieomXhJXTyfwaoqZkf8IyuuyGlhfnBBNRYOUK2o+z7o3MYJKl/kjQAMaUnUGtOhQmR4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779898798; c=relaxed/simple;
	bh=diw6DfX3hqqSnCF/5WnRkWxmMOKFIUOdvBXDdtmW/UY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=E5uEOwKwoSDFIj9Ja+yXe9HOvs1LkVtfTH0y4dAQjBJaKs8sKNl2wxs4n4UQvysW2ViWBSzeKhITsge3l8bPbZp8svHbe1DCioHRs/HQrGjlFuNKN623SJe9XNK1VzERNBuz1L/iA0e9E5pTZIHKzgCUQJGi1XvOeOBqaLHB8yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoczDKjX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 705631F000E9;
	Wed, 27 May 2026 16:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779898796;
	bh=cfPSPvTQxiWwPSDOrblA3fessS8xjp+I+8xBSFClGFQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=GoczDKjXXmJvGuYc/P7zy2HU72zYWnF9hcIzRRIW8HPotw5uyL1K/WkrO90O1PBHU
	 gYiLp14pG3xleJbvOigCgjVbueVk9qh4sqNv2u+FUObLl+zm9Q4VO5Aq0IJp9Vvyla
	 K8HP8i3N7bMejVmkdAv6j9aiZ551NVvxSxKbLXIMmd5nrGtDoqqOftTsIqQRAWqihy
	 Z8oPRVhNJTWKYB/VM8FGXFi0RUibltK/f5IxItXYrvWLa1laAZXsL5XGMUgu/+fhqb
	 zR67VF9EVvqlh2+skDpKVTZ3Fvn3CXqOhiE8ufrkR5Lsw1kePSsQPu4pkGH6diik9f
	 RDXLRcY5ccpQw==
Date: Wed, 27 May 2026 17:19:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 6/9] iio: temperature: ltc2983: Use
 fwnode_property_present() for optional properties
Message-ID: <20260527171945.152279fa@jic23-huawei>
In-Reply-To: <20260525164013.118614-7-liviu.stan@analog.com>
References: <20260525164013.118614-1-liviu.stan@analog.com>
	<20260525164013.118614-7-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303511-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Queue-Id: 293215E7BF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 19:39:33 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> Checking fwnode_property_read_u32() return value with if (!ret)
> silently swallows meaningful error codes when a property is present
> but malformed. Use fwnode_property_present() first so that absence
> uses the default while a present but unreadable property returns
> a proper error.
> 
> Signed-off-by: Liviu Stan <liviu.stan@analog.com>
Applied,

Thanks,

Jonathan

