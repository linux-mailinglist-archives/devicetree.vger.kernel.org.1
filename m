Return-Path: <devicetree+bounces-275789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFupLjaptmk7FAEAu9opvQ
	(envelope-from <devicetree+bounces-275789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 13:42:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AF290AF6
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 13:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94ECD305808E
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 12:42:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F303359A84;
	Sun, 15 Mar 2026 12:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UriL3X5x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC4E355819;
	Sun, 15 Mar 2026 12:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773578547; cv=none; b=OZFCHEPYmz7PFAVyL2/gRTOXCBRjOZiWe/+weOmJydeL3Ywv8g3EMfzwFMparFNOP2gHX5KfM/nUh04lzUm/qxVc7U5F2ptY+sexedwpnucKWFOsr8zQDFPisk4F8L2AADNA6Jza9q4M5Pb7EuI5vFJBe7xG1zpzGnGLFSwfu/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773578547; c=relaxed/simple;
	bh=+stIcwyPY4/1GXALH1wHry1XyiOYNwNg0jESs5LxL9s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kWirIx8/o4e9r2W/+utezaae+LibU3GnObFCdgk8fhgwhLslNrmUHlTdoewYZE7K2xmJ4FzhYZBVSuy4QCtJev+qn/7g5PRdfjkU1JJEBSrgCP2bX8EbygqgJpefsXlTylHtX7M4ehUelyR9k19QgHCMB4VPf/Ivj6v4b2ARlbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UriL3X5x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11FF6C4CEF7;
	Sun, 15 Mar 2026 12:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773578546;
	bh=+stIcwyPY4/1GXALH1wHry1XyiOYNwNg0jESs5LxL9s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UriL3X5xSMrS3KP+dkmU5mxl5h7B/iAvhi1aTq+1XXXRCQNliV2f4s38EcHZsiIG2
	 GkCsSW0wdD4qR26NqyXeS8UDc7rX8HxycdSimDsflEdTD6hZh6I8lQEov5SXMbXE1G
	 NbU3H+/GLsiy5i5Enz3OVNp1wXlkpii7ZO9fib1IjDuwrZAupx62njOdnGqWkpvlTA
	 M4JX+71d6V/KeA9PEbZcGCc2q6IZu6aTRxYiPW8cznHpKImTbwbOKxolhXdjlQRoXE
	 x5yrn8+HyOtCS3r2hOFGBEW6sP305A7uYmUkNKVElIiAQYmwEGP91TMvrtiDUISuP6
	 8+sxChIcv3iFg==
Date: Sun, 15 Mar 2026 12:42:03 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Taha Ed-Dafili <0rayn.dev@gmail.com>
Cc: krzk@kernel.org, Michael.Hennerich@analog.com, andy@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com,
 krzk+dt@kernel.org, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, me@brighamcampbell.com, nuno.sa@analog.com,
 robh@kernel.org, skhan@linuxfoundation.org
Subject: Re: [PATCH v2 1/5] dt-bindings: iio: dac: ad5504: add output-range
 and missing gpios
Message-ID: <20260315124203.3c740f29@jic23-huawei>
In-Reply-To: <20260311094902.9252-1-0rayn.dev@gmail.com>
References: <a617bbfe-0339-4334-8b52-dc85de12c626@kernel.org>
	<20260311094902.9252-1-0rayn.dev@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1A9AF290AF6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 09:49:02 +0000
Taha Ed-Dafili <0rayn.dev@gmail.com> wrote:

> Hi Krzysztof,
> 
> I misunderstood how the Suggested-by tag is used. Since
> Andy explicitly asked me to sort the headers, and the DT properties were
> provided during the v1 review, I thought I should credit those direct
> suggestions. My reasoning was simply that those specific patches and
> changes wouldn't exist in this series without that feedback.
> 
> I now realize this tag is meant for original feature ideas, not standard
> review feedback. I will drop the tags across the entire series in v3.
> 
> Regarding vcc-supply: I made it required because the driver currently
> fails to probe without it. I understand now that this causes an ABI break,
> so I will revert it back to optional in v3.
Are you sure it fails to probe?

	ret = devm_regulator_get_enable_read_voltage(&spi->dev, "vcc");
	if (ret < 0 && ret != -ENODEV)
		return ret;
	if (ret == -ENODEV) {
		if (pdata->vref_mv)
			st->vref_mv = pdata->vref_mv;
		else
			dev_warn(&spi->dev, "reference voltage unspecified\n");
	} else {
		st->vref_mv = ret / 1000;
	}

If it's not provided we should get ret == -ENODEV then fall through
to the other paths to either get it or warn if it's not there.

Logically it is required, but we have been papering over the DT
binding not listing that for a while.

Jonathan


> 
> Thank you for the clarification.
> 
> Best regards,
> Taha


