Return-Path: <devicetree+bounces-7149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B8B7BF6B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22CC51C20932
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 09:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1B315AEB;
	Tue, 10 Oct 2023 09:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQllbwYC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB08E15AC0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 260AEC433C9;
	Tue, 10 Oct 2023 09:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696928526;
	bh=72C0ZN0WQE7pBi1Wuy8CUeVQX+MYR/mu/Fga9E36idc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=WQllbwYCMVDDXPg25og4dgKD0nFSfCQDh62zLSrTlzUruv+apvKswmyuPEknOuWfq
	 ApwL2uocObUAWnxv/ZK8DVDagCDo7t+J+p8yBOlHbxuAouLTD9GcM88YWoUNPA+Y0e
	 gTTygtQ4PahDjgq35ELj5duclTia+agT8ZI7UOvyWigXinUBjGbu2xWMhTmuU4nnZH
	 y/O4sRdSHitxNxDUAnzS/BO4gVSjwnuES28RGtfOu3iYDfiCJpkCes7xGpjcNDqZOo
	 2Lwjd/+oNAkZEdjr1PpslTZJNhSwO/IH9ImoO7vU0COpcxhWiwrAGajf3ZM9WYS10b
	 yZnT0ilK7EjmA==
Date: Tue, 10 Oct 2023 10:02:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, lars@metafoo.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC 2/2] iio: imu: Add driver for BMI323 IMU
Message-ID: <20231010100216.169f573f@jic23-huawei>
In-Reply-To: <CAM+2Eu+94awdDtC4RVuCe6Nq_QXj_A5-nv6=iuPLzgybHu1qSQ@mail.gmail.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
	<20230918080314.11959-3-jagathjog1996@gmail.com>
	<ZQggiuLyLGq/ekMS@smile.fi.intel.com>
	<CAM+2EuKXW+FsgY6rp=ugU03owJS6ReeWUNWOcMKiUfomiY_a2Q@mail.gmail.com>
	<CAM+2Eu+94awdDtC4RVuCe6Nq_QXj_A5-nv6=iuPLzgybHu1qSQ@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 8 Oct 2023 11:55:32 +0530
Jagath Jog J <jagathjog1996@gmail.com> wrote:

> Hi Andy,
>=20
>=20
> On Wed, Sep 20, 2023 at 4:13=E2=80=AFAM Jagath Jog J <jagathjog1996@gmail=
.com> wrote:
> >
> > On Mon, Sep 18, 2023 at 3:34=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote: =20
> > >
> > > On Mon, Sep 18, 2023 at 01:33:14PM +0530, Jagath Jog J wrote: =20
> > > > The Bosch BMI323 is a 6-axis low-power IMU that provide measurement=
s for
> > > > acceleration, angular rate, and temperature. This sensor includes
> > > > motion-triggered interrupt features, such as a step counter, tap de=
tection,
> > > > and activity/inactivity interrupt capabilities.
> > > > =20
>=20
> ...
>=20
> > > > +static const struct attribute_group bmi323_event_attribute_group =
=3D {
> > > > +     .attrs =3D bmi323_event_attributes,
> > > > +}; =20
> > >
> > > ATTRIBUTE_GROUPS() ? =20
> >
> > Okay, I will use ATTRIBUTE_GROUPS. =20
>=20
> The ATTRIBUTE_GROUP(bmi323_event) macro will define two variables,
> bmi323_event_groups and bmi323_event_group. The event_attrs member
> of iio_info is of type struct attribute_group*, which means that
> bmi323_event_groups will remain unused. Since I am using a single
> event group, Can I keep it the same way?

Yes, don't use that macro as not appropriate in this case.


>=20
>=20
> Regards
> Jagath
>=20
> Jagath


