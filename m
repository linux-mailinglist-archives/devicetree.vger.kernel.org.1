Return-Path: <devicetree+bounces-299021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NIFOVcPCmoOwgQAu9opvQ
	(envelope-from <devicetree+bounces-299021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:56:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B075563682
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A9D630078B2
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 18:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 047623CF046;
	Sun, 17 May 2026 18:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpX9zdF3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D483BFE44
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 18:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779044178; cv=none; b=RXGLE3y4tEz+TVpUYCkdbbrB77O2dc63wSjhkemoTWocVTWUo2014Cii+G/kdcMUTK4FvsHyAEq1w60uQSuapZ47rLVTFUk72YQkdEUs7FeMsM4+dkuNKVT4ues/dweeDriHfgVTNQ7ojSj7Uil0K7Hmcp0+umplns1CXrvzp2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779044178; c=relaxed/simple;
	bh=K6/BvimTQyyOmSznys6OVmN+CL5hDI3K0PrVDhk2JSE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NMT8vF3kWvqoAygN9RYScw4E8qOolBnUfsgqtr3zy1G8BsL7huGGLpT4xboW3idRY4ID08aK+4EYjCZEQBhXxiLaZxVx8aoNSS2ot1buhHdDjFDF42sYWxQcdSlyOxngwoSDOqbuJSv7KfPbWae3oFIaQj/sYvQef4y5hW7Y8zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpX9zdF3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4810EC2BCB0;
	Sun, 17 May 2026 18:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779044178;
	bh=K6/BvimTQyyOmSznys6OVmN+CL5hDI3K0PrVDhk2JSE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=cpX9zdF3I10dpV4QWTEZ29iSc7n3j8rTWHx25Yvtyc5q/WLW6aJbvpAh8JQ2vHsSQ
	 RvOAudZEdYiRTT/6gQlfE3Fc3WVejvJMGHzZR8+rJdNZ5/Ky2X8G/POBCAg78oMxyI
	 D8S21u3hE4wJVjEpOPxD3TwLHctlm2PJtam6Q6ipqIi44ejzl5ezeDvCAjUbMBznxW
	 NkvJm2EJu3epUas7qgIVojO9H+ABtPTOkYdnxATTdbl6Hg4KDLGXP9z9UKHQ9QNBFq
	 EDY+NtBb9YzSkpThx42OwnaMvmX/zQyFhLwcr9J2TcyWmDPqqx16RxUcjkX5Apzoyp
	 8ggGSq0uopzNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 03/13] iio: core: add hierarchical channel
 relationships
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260517-ad9910-iio-driver-v5-3-31599c88314a@analog.com>
References: <20260517-ad9910-iio-driver-v5-3-31599c88314a@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 18:56:17 +0000
Message-Id: <20260517185618.4810EC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6B075563682
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299021-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,analog.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Exposing the hierarchical relationship via channel labels create=
s an ambiguous UAPI for userspace.
--

commit 64c6f961f1d7645c58f732e4bd4c11200b999e93
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: core: add hierarchical channel relationships

This commit introduces a parent-child relationship between IIO channels.
It adds a parent pointer to the iio_chan_spec struct and exposes this
relationship to userspace through a new "parent" sysfs attribute that
returns the parent channel's label.

> diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-c=
ore.c
> index 5c8404efd0a56..348ac7a597385 100644
> --- a/drivers/iio/industrialio-core.c
> +++ b/drivers/iio/industrialio-core.c

[ ... ]

> @@ -1263,6 +1271,31 @@ static int iio_device_add_channel_label(struct iio=
_dev *indio_dev,
>  	return 1;
>  }
> =20
> +static int iio_device_add_channel_parent(struct iio_dev *indio_dev,
> +					 struct iio_chan_spec const *chan)
> +{
> +	struct iio_dev_opaque *iio_dev_opaque =3D to_iio_dev_opaque(indio_dev);
> +	int ret;
> +
> +	if (!chan->parent || (!indio_dev->info->read_label &&
> +			      !chan->parent->extend_name))
> +		return 0;

Is relying on channel labels robust enough for programmatic parent resoluti=
on?

IIO channel labels are optional, human-readable descriptors and are not
guaranteed by the core to be unique. If multiple channels within a device
share the same label, how can userspace definitively resolve which specific
channel is the parent?

Also, if a driver establishes a hierarchy where chan->parent is set, but the
parent channel lacks a label, this attribute is silently omitted, hiding the
relationship entirely.

Would it be more reliable to expose a definitive, unique identifier (such as
the parent channel's sysfs prefix or index) rather than relying on an optio=
nal
descriptive string?

> +
> +	ret =3D __iio_add_chan_devattr("parent",
> +				     chan,
> +				     &iio_read_channel_parent,
> +				     NULL,
> +				     0,
> +				     IIO_SEPARATE,
> +				     &indio_dev->dev,
> +				     NULL,
> +				     &iio_dev_opaque->channel_attr_list);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 1;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517-ad9910-iio=
-driver-v5-0-31599c88314a@analog.com?part=3D3

