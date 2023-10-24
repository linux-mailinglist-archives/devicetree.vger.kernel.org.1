Return-Path: <devicetree+bounces-11364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 082847D5709
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:57:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 362091C20A22
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C2638DD7;
	Tue, 24 Oct 2023 15:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=t-8ch.de header.i=@t-8ch.de header.b="aK7qefab"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAED374D6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:57:05 +0000 (UTC)
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7146F10FC;
	Tue, 24 Oct 2023 08:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
	t=1698163020; bh=BNVJRacOEROOJUbOi3+VHcE+dWCyfrMR1wZHRSbWoM0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=aK7qefabd1HYLkS2rsJZke9BfVu/vDcyrJRTkRqhCctijuPOl27YWMUK0xzwwgZD5
	 8Hnf4FIfOL37zBXuKz6VYkKnjsiSMvqtSihMZm414gVikRARfNR/ju5dcQOQNDWpU9
	 +QutV/PKBIwRHkhBgW/Oyoz9TVZ6JYpBVrap1NJg=
Date: Tue, 24 Oct 2023 17:56:47 +0200 (GMT+02:00)
From: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh_?= <thomas@t-8ch.de>
To: Jeff LaBundy <jeff@labundy.com>
Cc: Anshul Dalal <anshulusr@gmail.com>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Message-ID: <51c4ab9a-1d45-4665-bb27-0214a9588a1c@t-8ch.de>
In-Reply-To: <ZTbklpRhpMIPey2j@nixie71>
References: <20231017034356.1436677-1-anshulusr@gmail.com> <20231017034356.1436677-2-anshulusr@gmail.com> <ZTWza+S+t+UZKlwu@nixie71> <00d2fcbc-3fd8-477d-8df1-afec20b458b6@t-8ch.de> <ZTbklpRhpMIPey2j@nixie71>
Subject: Re: [PATCH v5 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <51c4ab9a-1d45-4665-bb27-0214a9588a1c@t-8ch.de>

Hi Jeff,

Oct 23, 2023 23:24:55 Jeff LaBundy <jeff@labundy.com>:
> On Mon, Oct 23, 2023 at 07:55:52AM +0200, Thomas Wei=C3=9Fschuh=C2=A0 wro=
te:
>
> [...]
>
>>>> +=C2=A0=C2=A0 err =3D i2c_master_send(client, write_buf, sizeof(write_=
buf));
>>>> +=C2=A0=C2=A0 if (err < 0)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return err;
>>>
>>> You correctly return err (or rather, ret) for negative values, but you =
should also
>>> check that ret matches the size of the data sent. For 0 <=3D ret < size=
of(writebuf),
>>> return -EIO.
>>
>> The driver did this originally.
>> I then requested it to be removed as this case
>> can never happen.
>> i2c_master_send will either return size of(writebuf) or an error.
>
> Great catch; indeed you are correct. Apologies for having missed this
> in the change log; this is good to know in the future.

I guess it would make sense to also adapt the
function documentation to be more explicit
about this invariant.
No need to complicate every caller unnecessarily.

I can send a patch somewhere next week, but
if you want to send one I'll be happy to review it.

> That being said, it's a moot point IMO; this driver seems like a good
> candidate for regmap. If regmap cannot be made to work here for some
> reason, then I'd like to at least see some wrapper functions to avoid
> duplicate code and manual assignments to a buffer.

Ack.

Thomas

