Return-Path: <devicetree+bounces-205660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C5B29BE4
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0E663A722B
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192F62FF665;
	Mon, 18 Aug 2025 08:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=coresemi-io.20230601.gappssmtp.com header.i=@coresemi-io.20230601.gappssmtp.com header.b="JjCWV097"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E0C1D9346
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505310; cv=none; b=efBuGor9+MhlCw5PQkF7GbMi8dYZsIJDkkjDS/cpOppunWs3PgH+OiJLcMm/CuRwFlWaeVD5WYsxhFawqxUuWG0pf6CrxRObwr/ErzHftE1EbVgvp5ivowawZFv3WGjJrAOY2Baun8mfTv0Q1gSC7nfWtdDZaGMqPXNVoGYdfIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505310; c=relaxed/simple;
	bh=IC5yTS1+GELm3By1CHbJyAIU3wdNxNxaQGQ7ykHg1J0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=XTTVGGinXDKtWTPa2NxdHlyhSKPRUw2O9S2yn4MSHZ1VMKwRn0ay+SqRJlkcHj/xi4IMh1W31PRnswlSS/5Kxn7v0Wor7famBZohx13n3y67tXC3WPZNFKE31DOSbWIIrBv5aLFDAUmGF6hqYWwFzlFfTIg2/XNe5X2aVkeZbEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=coresemi.io; spf=none smtp.mailfrom=coresemi.io; dkim=pass (2048-bit key) header.d=coresemi-io.20230601.gappssmtp.com header.i=@coresemi-io.20230601.gappssmtp.com header.b=JjCWV097; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=coresemi.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=coresemi.io
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b47173749dbso2572577a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coresemi-io.20230601.gappssmtp.com; s=20230601; t=1755505308; x=1756110108; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZKOijlZJzzyFkYu3fe0Wcg1XOYl5AWE1Ek2P30jLzw=;
        b=JjCWV097prrKKxla50Spd7+zwWv2eqXSUgwdpjTzs3Y1jNvFsRCbh3eCdK9Mjs3H/T
         lMUlMcFVFxWK78lbxDfLu/7xZSi7fi8OR9te7eAgB5TvZx0xkIBwD5IPXOzyNwCROZNM
         Z2V3vtk6YSYmhHONEwtsj6ApzntDVv2tn/M2H6byASVS0up7z8CjrZTYi+usbW/qXstl
         9dKCak0cg3Oh5e1xhJYj20cr57nLz66heYlUmBFd7BquhMD1jxDMvCIPgCVcQKXBwFsX
         0k+qpPLMqMSwaWHjSCqnVD2RJVvm8/38A7XoXMZk2q7mLDU/VrqxLi1aqufBYEwf2RPn
         d48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505308; x=1756110108;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZKOijlZJzzyFkYu3fe0Wcg1XOYl5AWE1Ek2P30jLzw=;
        b=v+JaPef+gh0zOJ1D+2C/nTlE4oKSnmyx/PSjAR1T7M+1Fmpx+QU5D1weK1ldLL/b8f
         9z3MD69Scw+vGxq6jHZ6OpxMz+ByjHHV7ecIS6HJ2A1F6psiklupAyZmrJtsbwvJPb2z
         q+HRuVUSxut5EamBH67GeCUiWkkrgbXaGQmCVB4zkmDcDsTGBRvLpaOB4zHjBJjH3EUC
         SVqPVElkie+z3fAxJMMCwslrzq4X7asT8wNVByYZ6heqQPDnJl3lpF1UvoE8PaH4ZCK4
         5iETJTdEnm/5aKXn9oLevKH+yQS0ileDWX8E7uOv0rto+Sp42EJPlofwcisDjpNItLuk
         lm6A==
X-Forwarded-Encrypted: i=1; AJvYcCVbthj2g9kuXfYhTWMfBZI8MnRijwz/RaboXdGdXBHHMnF4VXJQY3Rx9XqLOpCAesOPCgP/++cTEQMV@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ/O2F7x/2Gij70qA4YYYRygbn5E1UCyqU7x5Dv1ehaPv4I2mr
	ChTKzJ0biuSLnhLDbfmSJXILCwPPKKQOvBzwZJrZsfhmtSqu616pFiPd27FnAazNQxS6c0q7bYi
	aSRWC
X-Gm-Gg: ASbGncuWTxmWFxj2P6wsVbFYbkohOTYbOPpjHRr7KX9gWiWjv1zJDq5D8Iz99T9LBDw
	IeFeqIwAJb0e4lcZEfTLA8zUg0Fn9j0hkcieZMgEqzhkWWp/A+TJqRcZYODIVx1XsgfaG6K+E3v
	CjxVvYYmMW7oARIToLpUeKqRMYpDAj/NsksystwYo9nNtDF1O5ENZtvmfLUzhrz2ioxgmIje+6K
	C0z3kyvqZ7OYxf7irNmbMFQpP6cvUoVjUCQEM8FkoLC5dNivIRCdXdI8f6tV+j0o9BLein88Z2X
	qe4acOSbXdbrLhd45vS/PnD5LrTYcLkwrW+pCeZtbJNqLS/WHUQ8rMnAIokeErLbNoUUwbn3oeh
	DxIhpk3v+5TUCauKOz4SaW/uC8e/Iq+hMUFxy+RLZvu/9FyPOs6FiljAieQkqBqhYkA==
X-Google-Smtp-Source: AGHT+IGpHGiItAdWLhYKN0tytxZOCv9SOXo+fu+nWJwB3baZRk3wfV7mivIDYOKu1TTapldDZH5Nwg==
X-Received: by 2002:a17:903:11c4:b0:240:3f3d:fd37 with SMTP id d9443c01a7336-2446d87ff62mr136968385ad.27.1755505307843;
        Mon, 18 Aug 2025 01:21:47 -0700 (PDT)
Received: from smtpclient.apple (p121132.f.east.v6connect.net. [221.113.121.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446caaa804sm73467625ad.29.2025.08.18.01.21.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Aug 2025 01:21:47 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH 2/3] dt-bindings: net: Add support for J-Core EMAC
From: "D. Jeff Dionne" <jeff@coresemi.io>
In-Reply-To: <26699eb1-26e8-4676-a7bc-623a1f770149@kernel.org>
Date: Mon, 18 Aug 2025 17:21:32 +0900
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
 Artur Rojek <contact@artur-rojek.eu>,
 Rob Landley <rob@landley.net>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 netdev@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <295AB115-C189-430E-B361-4A892D7528C9@coresemi.io>
References: <20250815194806.1202589-1-contact@artur-rojek.eu>
 <20250815194806.1202589-3-contact@artur-rojek.eu>
 <aa6bdc05-81b0-49a2-9d0d-8302fa66bf35@kernel.org>
 <cab483ef08e15d999f83e0fbabdc4fdf@artur-rojek.eu>
 <CAMuHMdVGv4UHoD0vbe3xrx8Q9thwrtEaKd6X+WaJgJHF_HXSaQ@mail.gmail.com>
 <26699eb1-26e8-4676-a7bc-623a1f770149@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3826.700.81)

On Aug 18, 2025, at 17:07, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> git grep jcore,emac
>=20
> Gives me zero?

Um, right.  It=E2=80=99s not upstream yet.  Thanks for your work to get =
that done, Artur.

>> If an incompatible version comes up, it should use a different
>> (versioned?) compatible value.
>=20
> Versions are allowed if they follow some documented and known vendor =
SoC versioning scheme. Is this the case here?
>=20
> This is some sort of SoC, right? So it should have actual SoC name?

No.  It=E2=80=99s a generic IP core for multiple SoCs, which do have =
names.

This is the correct naming scheme.  All compatible devices and SoCs =
match properly.
J.

> Best regards,
> Krzysztof


