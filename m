Return-Path: <devicetree+bounces-17211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9987F1929
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3806B2188C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4FE1E51F;
	Mon, 20 Nov 2023 16:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLyu5V0q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3371B294;
	Mon, 20 Nov 2023 16:53:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8550C433C8;
	Mon, 20 Nov 2023 16:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700499192;
	bh=zs15E1OcNNyL45f6quUF04b0RzI6DpNzgDk0OvGXqlo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rLyu5V0qjSwjcWJyPTIiI6XHa4czbgyciF3ncBh1XimSWk4pTx3IpjRrLk5csBvLm
	 OtDtuuw91Z12qAuzTIuxBEyYRVXiyl/esEolinhjDxku9puhgfPMDDZOo5GSkurNAr
	 HqLAHQN5w94qHX7zY1I3+UG3R/J/YSIKtC9hbunWZdQFLgvpb7scoFBmlEjqTFnJ3p
	 gpDPeILvdzlYe+mRErkdVhTqU4mIc1YuJyIC4lKbiKqOC1JTpFcTdz/32VKALt8IuJ
	 RW59sMlqcauIWSbOKhFz4RB56xR4kYrH+8euOTson9wOSLhgbRqEuDUT0UYpmlazHw
	 e7/ADxFDIyb9w==
Date: Mon, 20 Nov 2023 08:53:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?S8O2cnk=?= Maincent <kory.maincent@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet
 <corbet@lwn.net>, Luis Chamberlain <mcgrof@kernel.org>, Russ Weight
 <russ.weight@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 5/9] netlink: specs: Modify pse attribute
 prefix
Message-ID: <20231120085310.5ff6efca@kernel.org>
In-Reply-To: <20231120111914.36a5ca73@kmaincent-XPS-13-7390>
References: <20231116-feature_poe-v1-0-be48044bf249@bootlin.com>
	<20231116-feature_poe-v1-5-be48044bf249@bootlin.com>
	<20231118155702.57dcf53d@kernel.org>
	<20231120111914.36a5ca73@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 20 Nov 2023 11:19:14 +0100 K=C3=B6ry Maincent wrote:
> > You need to run ./tools/net/ynl/ynl-regen.sh =20
>=20
> Ok, should I also send a patch with the newly generated files? Or is it
> something done by the maintainers?

It needs to be part of the series. We don't have very clear guidelines
on how to carry the regeneration. But for small changes like this you
can squash the regenerated code into the spec change.

