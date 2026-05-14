Return-Path: <devicetree+bounces-297789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEqRNP4kBmqmfgIAu9opvQ
	(envelope-from <devicetree+bounces-297789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:39:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 366145466EE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79B913016EC9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21F63A9618;
	Thu, 14 May 2026 19:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChX3TwhD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFD33A5E82
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778787579; cv=none; b=kjy33sUGETg1Ml6YTNuV2oo5ik7wWPGRQwsrmOW2gdvTHga25wqynaJEAHmKEZ2VoyWUyDJjohaAORvPwqv6s8Ou3qiXqJJdwHJirKL4Y8OPzZi8t7fdggRckHkwPEwXp4ieW/dmYHg54kG8yymIqxW67R/PgPLm0NmBrhviuGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778787579; c=relaxed/simple;
	bh=msSf4L6GiQrO/DKqO+RtEyg9I1CF0NW45IDKWijPB0E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=C9tMzt3ed8TKUyLVVlzgZ29F+luqZn26Z+jiRoEZVxJEcmHhmvn+rw91WkAQEbRqxFdeJxU1vkXIkHMEr7XYdf+YF0MJqJ0BVXiNV7U8JwJWMoqlhmWXfTjamzUqoqwDGaO1svkKiz8o4X6XAk7oYBLU5Ng9k5vzr0rc79UDL5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChX3TwhD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04706C2BCB3;
	Thu, 14 May 2026 19:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778787579;
	bh=msSf4L6GiQrO/DKqO+RtEyg9I1CF0NW45IDKWijPB0E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ChX3TwhDfNIqMHwBtVQFZPOVq08iyinzpBOMtPIqVZycEkq9ppP8ADT3QqUr0Ti+t
	 M+RhOtn888JvheSqrTfxUR+u4Hd2n2FhweKkB62jwrCas9yjXyAIOIHZZU/SpSuNwK
	 uKYVWPPwG4OhfjxVWrjTnZk5CAVnKuAQJwiiumWHWm3dg4scRL8kTJGhfJXjk8V+wA
	 QsdKFwkYUBO+kTTAAPWrGPrWUlJBH2uBHNpAG4qMPAzYQlDGd18/26uB6EAeSsL0iC
	 OFkc6fbu6wnepiMuP830bYydD++nOkEDIEGSTFgmUq1TAfaHSYthN/y+iBCcoOb86o
	 HVe4R8NZzpF9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/7] iio: temperature: ltc2983: Use local device
 pointer consistently
Reply-To: sashiko-reviews@lists.linux.dev
To: "Liviu Stan" <liviu.stan@analog.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514144712.64374-3-liviu.stan@analog.com>
References: <20260514144712.64374-3-liviu.stan@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:39:38 +0000
Message-Id: <20260514193939.04706C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 366145466EE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added 'dev' variable in `__ltc2983_chan_assign_common` is=
 declared but never used, leading to compiler warnings.
--

commit cab83c99167bc9d0ae1294b92a3bded27d02aabf
Author: Liviu Stan <liviu.stan@analog.com>

iio: temperature: ltc2983: Use local device pointer consistently

This patch adds local dev pointers across various functions in the driver
to replace bare references to st->spi->dev.

> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/=
ltc2983.c
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c
> @@ -351,6 +351,7 @@ static int __ltc2983_chan_assign_common(struct ltc298=
3_data *st,
>  					const struct ltc2983_sensor *sensor,
>  					u32 chan_val)
>  {
> +	struct device *dev =3D &st->spi->dev;
>  	u32 reg =3D LTC2983_CHAN_ASSIGN_ADDR(sensor->chan);
> =20
>  	chan_val |=3D LTC2983_CHAN_TYPE(sensor->type);

Does this leave the newly added dev variable entirely unused?

It looks like the dev_dbg() call immediately following this still uses
&st->spi->dev instead of the local dev pointer.

This will cause an unused-variable compiler warning, which breaks builds
configured with W=3D1 or -Werror and can harm bisectability.

While this oversight is fixed later in the patch series in commit
7aff450fb9c7b5749766cff8040dd8d12bc74f0c, each patch must compile
cleanly and independently.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514144712.6437=
4-1-liviu.stan@analog.com?part=3D2

