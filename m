Return-Path: <devicetree+bounces-136198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0802A0432F
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57C3D161C58
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40E9A1F2360;
	Tue,  7 Jan 2025 14:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="PEvk+i1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47E91F1912
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 14:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261490; cv=none; b=EdeDZaXVTRbONOEhGgxkUwF7vEaDfzHIdZdFqvSefN6IjEMwJ66TbdJmawqzRau09ZZFhz0q1UJUL/YczpstWdjQiT7r0LTaI0VXBpY0shqhmwxCoZmXiA1q1foQx1VDvCT9ctAelPXML81IWb1nle9a9acsGBrCr3UCKudD2vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261490; c=relaxed/simple;
	bh=lsx6xzC1W4W7fhbKtFKD/IfwZf3VEg43jO9D4fxY2Gk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=kGwTeRBIpuvdFY2lqWKEo8g6y0eytPCwjlc+vMd6VVusPPTkI/bpJiC+w92BAk3c0NVv631YnwCxmMveAY0zOLjNLbuRZFyzeAdoAWo9YzLZFB2VZvLs9QemgIWcfVigOdxrzpQjhafHQ/bwC14ZdkeM1kNMTg4/dKZ7q9UR1RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=PEvk+i1P; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361fe642ddso163062215e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 06:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1736261485; x=1736866285; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivJlYnGnG+pM2S3C4JLEN5ZAnJaLqzAGTbAQ99JrZPc=;
        b=PEvk+i1Pi4wbInfaNwyWz288wgKVDwx4bhcwMbBFabBoW1Q9Piuqva0JAqw1VLQsSc
         N1wZPJb9/01uuHk/qF5gxsYNBMW9jRCEO+nCC4UwaVbeXzCW0RGh1cjSj2MT2q4dVSlG
         BP8Ew8OjWdtcwvfpkxuGJTtRgO8J0SqFEHybZsNHNnwOHQEbl1glpcQEX7Vl4v6cnS4j
         uYUfJWl4bF9XSWoIIu9tEV+/sX62OaJDNwjoOydJltOUYe/FGmYHa+zqFe4/U/IeJC+Z
         NBG7P5xA9PNrSvfyxqxv0CVgI8R8klBpW8MWFKQKl7wQiG5n3IJ3P2BFHxQhG/IuNMml
         3pag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736261485; x=1736866285;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ivJlYnGnG+pM2S3C4JLEN5ZAnJaLqzAGTbAQ99JrZPc=;
        b=VlcXdxnpP01xwJHO7unpmcEfeObpl8ak7UyqpzTjDMhWuhMzktsBuaaJZfdar/m2Fo
         TXK2oeBt4eJdbcT9lqoInHHMtuqOcboT4uaCNQMd7Z0LeJONn6fCKkD8pwKWY48HBMk0
         7euIeAIgMhR0sudvZ6TJhGLW19m+LxoN0usYg21zQFIhQB2Ge0aVL4aFkBopD/XY/J0c
         O/SDqLsRh5SpPTkyVBaXTNKddwZjKGdhWpxqQN6sUZ5gKVUCAxe2dMHhHSIpMG2c451q
         qZzOk+ICc7TiLqG6pw4vzayQTpHQh2XR7vPNYATZSeIEzjrTYFTH5XZOFXi4me0K3ukb
         JeVw==
X-Forwarded-Encrypted: i=1; AJvYcCVi84SUW7zRW+kajY4zTNulXM4QHY1MXLYwnLXsGCB7HvUEqbvupf3XTUCCcC0oTQgqMyxrFZuj6SBN@vger.kernel.org
X-Gm-Message-State: AOJu0YyixD4asQYJpyA9o/7M1EGyBdo5oX0bMON+Nj6oODYv4Vf2bk/w
	h/HFpeyUX3mvz9cR2YP9F+7arkTZ2N28wZ18b18DoubtZ9QIS3fnmork88A+n6k=
X-Gm-Gg: ASbGncvHv9g3OerTDGNWlgz42fkZWmYGTe9Bdjuq428+un9hldhvwhR7ltA8wRaumiy
	GeFAf6eUAiRx2OCf32hbgZNmk9dI4Fm+fCk7ScIRNKkE8seVCdhYjq0TiwehSG36ibF0YI0KQE3
	t7M3pelJaID2Xcob7lVTY7vb+aiP0XKlbCw+Hm7EXgVC5kq8PLoO3nvO/ef8YktEsWJt6RYq7t+
	4jmIBR9egK5rP1p2Y0213MpRvcdSqb/FxUhwowgHly0hRUYFfwPc29uNatPy7nxu9FgbQ==
X-Google-Smtp-Source: AGHT+IG6DoHlI1LoVqTkFEhOQwJ09Rw5vauC8jcR1dh2MNGolnpQfldcdMAWh/A7EYBjLtOfrhAcRQ==
X-Received: by 2002:a5d:5f54:0:b0:385:fb53:c67 with SMTP id ffacd0b85a97d-38a221e2743mr59160219f8f.3.1736261484825;
        Tue, 07 Jan 2025 06:51:24 -0800 (PST)
Received: from smtpclient.apple ([131.111.5.201])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436612008b1sm595570305e9.15.2025.01.07.06.51.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 06:51:23 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <bb0c95b6-760d-4de1-bc28-8f82e2fc5dd5@arm.com>
Date: Tue, 7 Jan 2025 14:51:12 +0000
Cc: Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
Content-Transfer-Encoding: quoted-printable
Message-Id: <45E38F12-3585-4AE0-8F05-431DB355FC69@jrtc27.com>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
 <20250103181623.1980433-3-vincenzo.frascino@arm.com>
 <CAL_JsqLYu_z6yNA-MgKgoA=nC5ftzOEH5UNkswA_=xTJiOB0+g@mail.gmail.com>
 <Z30kbmA-3h-Rhg7l@Jessicas-MacBook-Pro>
 <bb0c95b6-760d-4de1-bc28-8f82e2fc5dd5@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

On 7 Jan 2025, at 14:34, Vincenzo Frascino <vincenzo.frascino@arm.com> =
wrote:
>=20
> Hi Jessica,
>=20
> Thank you for your review.
>=20
> On 07/01/2025 12:56, Jessica Clarke wrote:
>> On Fri, Jan 03, 2025 at 04:14:31PM -0600, Rob Herring wrote:
>>> On Fri, Jan 3, 2025 at 12:16=E2=80=AFPM Vincenzo Frascino
>>> <vincenzo.frascino@arm.com> wrote:
>>>> +       cpus {
>>>> +               #address-cells =3D <2>;
>>>> +               #size-cells =3D <0>;
>>>> +
>>>> +               cpu0: cpu@0 {
>>>> +                       compatible =3D "arm,neoverse-n1";
>>>=20
>>> I'm pretty sure the N1 doesn't support CHERI/morello. Perhaps
>>> "arm,neoverse-n1-morello" if we want to capture what it is derived
>>> from and since "arm,morello" is taken already.
>>=20
>> Rainier is the codename of the core itself, and Morello LLVM =
recognises
>> -mcpu=3Drainier not -mcpu=3Dmorello (there's -march=3Dmorello =
instead), so
>> perhaps it should really be "arm,rainier". Though SMBIOS reports it =
as
>> Morello-R0P1 so it may be best to use "arm,morello" here.
>>=20
>=20
> We agree on the concept. It should either be "arm,rainier" or =
"arm,morello-r0p1"

r0p1 isn=E2=80=99t right. Boards with r0p0 and r0p2 CPUs also exist =
(although
the former are now only within Arm, but the latter are in the wild in
limited numbers, including a couple here at Cambridge).

> if we want to capture the information of SMBIOS. When we reach =
consensus I will
> update the patches accordingly (Please have a look at my reply to =
Rob).
>=20
>> The real problem is that the board compatible has changed to include =
a
>> generic "arm,morello" node, with the argument that a v2 board could
>> appear. So why not instead change *that* to be something like:
>>=20
>>  compatible =3D "arm,morello-sdp-v1", "arm,morello-sdp";
>>=20
>> Then you can use "arm,morello" here for the cores.>
>=20
> The name morello on its own is too overloaded of meaning if we do not =
specify to
> what we are referring to.
>=20
>> Though some of this may depend on what the FVP's DTS looks like; is =
it
>> going to claim to be a Morello SDP, or does there need to be a common
>> denominator compatible beneath that it can use?
>>=20
>=20
> I still did not start bringing up to speed the DTS for FVP but I think =
that we
> should distinguish in between SDP and FVP since not everything is the =
same,
> hence it should have something similar to:
>=20
> compatible =3D "arm,morello-fvp", "arm,morello";
>=20
>> Please CC me on future versions of this series.
>>=20
>=20
> Will do.
>=20
>> Jess
>=20
> --=20
> Regards,
> Vincenzo



