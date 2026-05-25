Return-Path: <devicetree+bounces-302798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AGhAa2dFGqpOwcAu9opvQ
	(envelope-from <devicetree+bounces-302798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 21:06:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD15CDEC0
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 21:06:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8975300DF53
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 19:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F82F380FC2;
	Mon, 25 May 2026 19:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVtq6iXv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302B737AA6C
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 19:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779735978; cv=none; b=cKkOBbjXNGuGuQSsssEDSqVbiwqWO8LacCe8H2X//wG1qy8cnQpQ+1EZBn5cfoGUeR2eXHQqVJLhGv66WsNME7aUxVSobwZOI2Fxjo4fSfRQ+HUZrX1nIcj33NZx7r/SpQFt68+NeBhYtdPFWtFZmLTBUs9wVZTEAgqaho7vJwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779735978; c=relaxed/simple;
	bh=d+1knqiu/eegqYy/ZGU+FkxwP7shorm+zQ/fkq4+o3E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M6UrdKJCmoKuNwZTs1oA+NuYW6rJ5Y01Tdlzjws3loOLvyY5VNUp0WJCUCfRXJk/e0B7FR6WbGFIXQJ5rGepkM3OTj681Y5kR7GD0BDjSQb9EFh4y8wbHnaCpcnPIVoEk/6UONcQCD/Yk2Ng35O1HLDsovscNczP3DBo6/lg6Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVtq6iXv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 272A41F000E9;
	Mon, 25 May 2026 19:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779735976;
	bh=uwpdm9kVYdqrwslbrqjTS6ZLO1VWDZ4FpDWSEfH3jD8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MVtq6iXvrN2qLnCrIzHNZuRB16f7yqkyqcW7in/8DXd1Ro6vIvWiLNUkATlkK+ca5
	 Xw97+qXltM7081zuhX06oye32+lyR2rHo6zBPr+Lw8jpXX4MLUgnlbdSnCBiWNcPGp
	 0OQY1FFElfIBRerNN/H9QqSO99CVTiK+7VeAe4bIJ1Bl/8UooEMAEizo7H26zIKOLY
	 q/YGDkZNwYVJFaCgs6XM6c8OluzJCU7b7PFuzrjSvxHgz3scY4UbKI3K/ninnYn5Nc
	 Fte+pSfUWDP3luH5H/jzlaizZAbXzApeRWJz5auNny0ZsPFkBjpwGs+4r2Teyzu4mM
	 mIKJpMPYizoSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 9/9] iio: temperature: ltc2983: Add support for
 ADT7604
Reply-To: sashiko-reviews@lists.linux.dev
To: "Liviu Stan" <liviu.stan@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260525164013.118614-10-liviu.stan@analog.com>
References: <20260525164013.118614-10-liviu.stan@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 19:06:14 +0000
Message-Id: <20260525190616.272A41F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302798-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 4BFD15CDEC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Integer truncation of `num_channels` leads to an out-of-bounds wri=
te on the heap when parsing device tree children.
--

commit 482bc8c51e04185002511817885173bd265542d8
Author: Liviu Stan <liviu.stan@analog.com>

iio: temperature: ltc2983: Add support for ADT7604

This commit adds support for the ADT7604 sensor, repurposing custom RTD
and thermistor sensor types as copper trace and leak detectors. It
introduces new structs, parser functions, and hardware register mappings
to handle these new types.

> diff --git a/drivers/iio/temperature/ltc2983.c b/drivers/iio/temperature/=
ltc2983.c
> index 130ab7fddc2fe..fc65d8352d120 100644
> --- a/drivers/iio/temperature/ltc2983.c
> +++ b/drivers/iio/temperature/ltc2983.c

[ ... ]

> @@ -1348,7 +1672,7 @@ static int ltc2983_parse_fw(struct ltc2983_data *st)
>  	if (!st->sensors)
>  		return -ENOMEM;
> =20
> -	st->iio_channels =3D st->num_channels;
> +	st->iio_channels =3D 0;

[Severity: High]
This is a pre-existing issue, but does st->num_channels silently truncate
the number of child nodes since it is defined as a u8?

If a device tree is provided with 256 or more child nodes (e.g., 257
nodes via DT overlays), device_get_child_node_count() returns 257, but
st->num_channels truncates this to 1. This causes devm_kcalloc() to
allocate only a 1-element array for st->sensors.

The device_for_each_child_node_scoped() loop directly following this will
then iterate over the children and write into st->sensors[chan], resulting
in out-of-bounds writes on the heap. Could num_channels be changed to an
unsigned int to prevent this memory corruption?

>  	device_for_each_child_node_scoped(dev, child) {
>  		struct ltc2983_sensor sensor;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525164013.1186=
14-1-liviu.stan@analog.com?part=3D9

