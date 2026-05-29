Return-Path: <devicetree+bounces-304286-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPtXAAqGGWouxQgAu9opvQ
	(envelope-from <devicetree+bounces-304286-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 14:26:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E14C6023DE
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 14:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 958E73061E8C
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B963E0097;
	Fri, 29 May 2026 12:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSvu6ISc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA293E0730
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 12:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780057174; cv=none; b=afojKRAECaF2fDcVxAaVMnXLXQnoOJSHpWDHwrrFaSQ0SYfhl8NnwEulu7OgpY4N9lZTrFg5Pcp0Z9iVnmo3/M3A7qzlZwfr8kdTwhgn7OMGjx2JW9cLijyx5rBJs3Txajkqar4zu+ynJQSiLte96D4H6Q7c9YVlhl+rw/KQTPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780057174; c=relaxed/simple;
	bh=C1f7LT7xq+mc/G8nULeXpxjqCWgY9hmU0qd0FM+0fww=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LcovBw4FR7z82qj8wVQHx4udijsObFGkqQeOLEO9rH7xppvxpLrES1qREj4hHfXcEu+nZY7LeMxxsMn/ih+GSHatBqtDbuNiOJiFIBn0kUtRguRxanDy15SCX20DcRTn5NDdizMQFyr0nneNZcQUCvPlv5wyFzvDeqmYnl9RsDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSvu6ISc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67F051F00898;
	Fri, 29 May 2026 12:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780057171;
	bh=Hyjj+gyZit+iPbMkQP817ZdxRz7jqQu8MhqDUXtQ8CI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KSvu6IScLNWeT/nyVN1/kqyjkn4mEMGI6qU2cYm8GXgGehZrAgi/F3xp3qe5W6+mt
	 Igi2K7hq1F0/TwzB8qLYBjzaq1wJFilOrKX5r8HqvKBv8XO3f2a9Xr0np0D4hIzJEb
	 Vs784JSTVqK2lWQA50n5aBCqVQ9eYbGi/9UFZJmq30HrOzq8hCh+9Vq6BtX1lb8Cjn
	 w+ZiG0nDstA0BMRXtSiTAJlzoaWYnDCRTLL5tRVwz52oOwhV7B4yGTIOdOz8zJVGgm
	 XM8hKg2dNdcYQbZBq6ekVpK8YadRwqYdWPH9G7GF4lL7+V+jXaySqIKM0ewq1roDBU
	 BMXw4rzIHCZiQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 1/6] dt-bindings: iio: add OSF GREEN sensor
 aggregation device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jinseob Kim" <kimjinseob88@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260529121005.1470-2-kimjinseob88@gmail.com>
References: <20260529121005.1470-2-kimjinseob88@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 12:19:29 +0000
Message-Id: <20260529121930.67F051F00898@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304286-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 4E14C6023DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new entry in the MAINTAINERS file is not sorted alphabetically.
--

commit 869d40e7e24db8cc9824d50010506b2a425a4d29
Author: Jinseob Kim <kimjinseob88@gmail.com>

dt-bindings: iio: add OSF GREEN sensor aggregation device

This commit adds the device tree binding for the OSF GREEN sensor
aggregation board. It also introduces the vendor prefix and adds the
corresponding entry to the MAINTAINERS file.

[ ... ]

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6aa3fe2ee1bbf..5931d46fcabc2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19977,6 +19977,11 @@ F:	Documentation/networking/oa-tc6-framework.rst
>  F:	drivers/net/ethernet/oa_tc6.c
>  F:	include/linux/oa_tc6.h
> =20
> +OPEN SENSOR FUSION IIO DRIVER
> +M:	Jinseob Kim <kimjinseob88@gmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/imu/opensensorfusion,osf-green.=
yaml
> +
>  OPEN FIRMWARE AND FLATTENED DEVICE TREE

[Severity: Low]
This isn't a bug, but should this new entry be placed after the Open
Firmware section? MAINTAINERS entries are typically sorted alphabetically by
their section titles to prevent merge conflicts. Because S comes after F
alphabetically, Open Sensor Fusion should probably appear after Open Firmwa=
re
and Flattened Device Tree.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529121005.1470=
-1-kimjinseob88@gmail.com?part=3D1

