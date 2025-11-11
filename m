Return-Path: <devicetree+bounces-237221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CECC4E820
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 15:37:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C1D434EED54
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9ACF2D8764;
	Tue, 11 Nov 2025 14:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="EMWNWpo7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD02882B4
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 14:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762871641; cv=none; b=dAbJmNugorvbwvRgx0/dBEWkpuTf2ldhdU6OqfKpCn8QBsMsdNfFm9+MQ2oet2C1KCJJx+DaH+7tDV+nvit1UbCxVr0olk03pguwP3ldJ/4l2A3a9jDMHrNNpqCU4dE5dsWw9oYibwCoYgVuHZJsAzlcN5H+9AOKiiUssjKyKRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762871641; c=relaxed/simple;
	bh=6fqjiymZU7rJ6YDsRxp09VBdNfoKHNs9ZL9EQWO5qpc=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=etDfgLepKkeBAApeNyL3LnP6gXz4e9rOmZoTzFiqSjF7cKxHdpgJLPJj6BKA+uVeRCHr569tm9BySQ3Gm2mp0tKeoKFoEQQQZV1pjELuWTH6AVdLbpkJHltI24EhDqkveHtUOjvN26ubfxtBkRXoBK3U7b/CAebOUy9gbhODFDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=EMWNWpo7; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 9B76740FD6;
	Tue, 11 Nov 2025 15:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762871636; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Pti+hAPvZUGNEVWiBJ60p7rB+MkbfFfCjP1hWGU9rPk=;
	b=EMWNWpo7VeISPV67uOpkuS1OFaM75AYaCiyR08gxSyse08aOM1mUcRuhCKgIrckPtv5wXO
	mqTaDwgugg1iS7CSe8RC1skyCxyyVAP19eJiQEK78Am4ORr9/uNZ9uKQQ4Ff2XvDuTbd9Y
	KQ8CS58SETI9D4WCRxf+7tshkW7FvvuatPsROv0rv9xbLREQALyl5a8hAlviEILBVZWNBM
	AUW1CqOpVgncpdwg2S/4vXRXCncKAW94UnPyR1ZlB8NWsOuEHsbgSvyrV3kyC7feJNeY+k
	MF+FThzUVnex2BQUGdLEgn6h96VJZe5XO0AlfkyW7mE5rwMhJszxfmbdnbQ7qA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com> <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
Date: Tue, 11 Nov 2025 15:33:49 +0100
Cc: "Joseph Kogut" <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 0/3] Add Radxa CM5 and IO Board
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello all,

On Tuesday, November 11, 2025 12:52 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> On 11/6/25 02:48, Joseph Kogut wrote:
> > On Wed, Nov 5, 2025 at 4:15=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.c=
om> wrote:
> >> I'd like to clarify the situation regarding the v6 patch series I =
submitted.
> >>
> >> The original device tree work for the Radxa CM5 and IO Board was
> >> authored by Joseph Kogut. I took over the responsibility of gettin=
g it
> >> upstreamed with his agreement.
> >=20
> > I'll confirm this. I've been in communication with Naoki. They made=
 a
> > large number of revisions to my original patch series, which I thin=
k
> > have technical merit. I suggested they submit the patches themselve=
s,
> > and gave them explicit permission to add my Signed-off-by and CC me=
.
> >=20
> > I assume this was the correct way for them to continue the work I
> > started, but if not, please let us know the best way to proceed.
>=20
> Can anyone help us?

I'm not exactly sure how to resolve the current situation, but for
Signed-off-by tags to be present, in this case you'd need to have
Co-developed-by tags as well, because the final patch versions,
which would be submitted by Naoki, would differ significantly from
the versions that Joseph actively worked on, if I understood
everything correctly.  Though, for Joseph's Signed-off-by tags to
be included there, he would also need to participate actively in
the development of the final patch versions.

Another option, technically a bit simpler, would be to include just
Originally-by tags for Joseph, which would indicate that Joseph gave
up on the development of the patches and handed them over to Naoki
for future development and submission to the mailing lists. Though,
that would require Joseph to publicly state exactly that.


