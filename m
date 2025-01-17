Return-Path: <devicetree+bounces-139314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8D6A150E5
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8107C18883E8
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDC71FECA9;
	Fri, 17 Jan 2025 13:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVNuxdqa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F9725A654;
	Fri, 17 Jan 2025 13:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737121740; cv=none; b=CoeCTscRJZySAGyxLCYR8dBphgfEjwHgGCJvM7d3jFlzj1Kacwnl1LD4UWuqXcWIoF94kjPLWMVICJbR1wRcSyx7oGw1JXCRxd17AeSQRhMoqvFvbBWCxpbSk8bxSxHnHbYM5jaSTYPU4yNeRj4vobxb2FjATq+IsyzPVdLKCoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737121740; c=relaxed/simple;
	bh=xG4K/kqtCZ+Cx6W9UAHOPfFKwFE/ZRplt3zrkRNpb80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CEpOwzjOaunEHaL/5v3gh3G7QhrMLHMhE16FadRrry6H/+hmH1bCR/PnecPiyLgu2uw91grLjPftk8juOPqJzhZa/yuK6i6Pw9hjYSa1quawnzY5CKwlPV2fdf4HhvtxJ3E40N/YVf7p2iR44jIEtEynvXLQjmOkDaSkHeJ75LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVNuxdqa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CBA5C4CEDD;
	Fri, 17 Jan 2025 13:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737121739;
	bh=xG4K/kqtCZ+Cx6W9UAHOPfFKwFE/ZRplt3zrkRNpb80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MVNuxdqa+atZGDqCUtTs0/RRvUGccNctjCM2Z67HPOrKFb/u0z5x5HQ4ARIvYqRWb
	 7MXyIMT5IGHxQU9PO2CDlLg25w4FsVMpQLuU1EBfK//CFri0HhjOFa0QgswieP/SFd
	 weEW554b3qYAzMFNuMTkoQWP/yE445J7lpgl/iUz/Wxkq1KVNxYBj61ldwO1/zyECI
	 HXE9mITZg7Tg5xcq8YuXwew11qGp23ey98wITfgjyvz1hld23Wijxs//RletPAlwZw
	 JXW2NYBsSZTw/IU5m5XAGv8yCJj0By04kDUb20D/5ZHw3D92Ev/81+hg1b1OOZdMqG
	 qORHmLfB3Fj9Q==
Date: Fri, 17 Jan 2025 13:48:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH v2 0/2] Add support for power budget
Message-ID: <b1ab3115-e84f-4b17-bda2-c76666ba6ac3@sirena.org.uk>
References: <20250115-feature_regulator_pw_budget-v2-0-0a44b949e6bc@bootlin.com>
 <20250117130936.5a6b3d3e@kmaincent-XPS-13-7390>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BWKsia+3guvbz7Z8"
Content-Disposition: inline
In-Reply-To: <20250117130936.5a6b3d3e@kmaincent-XPS-13-7390>
X-Cookie: Q:	Are we not men?


--BWKsia+3guvbz7Z8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 17, 2025 at 01:09:36PM +0100, Kory Maincent wrote:
> On Wed, 15 Jan 2025 15:41:56 +0100

> > In preparation for future support of PSE budget evaluation strategy and
> > power management, we need the power budget value of the power supply.

> Is there hope this will be merged before the merge window?

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--BWKsia+3guvbz7Z8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeKX8UACgkQJNaLcl1U
h9AKUQf9HuMLf8ODTi+rS+0SpHIi7HCrhoQSaz4/5hl3sanLLUgWR7O7AUIEt+YL
tvvtoQGJ8BNMM2hiTCdueNUJHKzhrCmw4txB2x1vm5aj+lQyZLzPLcY96Z4qd5d1
MCdszvKQnQIZht+wgxHax5egRWGK1XGVXMCQgGkok85Qqkw6ZOsXzCpnA5vsUoZB
8pFWEwAHzk7OymHPRVF0ZxltesmiVrhZOEB6Nqvne3Qyy4bKiSfn26HGxCRSvC0E
/MdxEa84mAlQ9QwBJcVGmU3n87dmNOljv8VDg7LLz7fT8ICwi77mPhxLmynkxS6U
srJrZNVAA+HgfxN+j/3a5bq4ErdZZA==
=XgFT
-----END PGP SIGNATURE-----

--BWKsia+3guvbz7Z8--

