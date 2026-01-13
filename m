Return-Path: <devicetree+bounces-254286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 21555D16EBB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68286301672D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1CC369236;
	Tue, 13 Jan 2026 06:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gD3VJHNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD83369220
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768287412; cv=none; b=X54jf5X7em9i0ygNIvB7zwa2gBKa/1RVmahbKjhv/EAGKq/8aHDXndyRrMUwK9kIBYCiJ4rJBYIxLpqwncKgFYCwWJTN9YQh49dgRwggGrAnftOEXmK/V/4DNNNIzbcxXSDhZWtnYOhtB3EAylW83i6yqAY+Lhge0jjlLvHP/To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768287412; c=relaxed/simple;
	bh=abhT9zdfI53z16gEnLFDRXmcfz8+OiftmY1Xh0czSK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IQKAEJU2sxVyN2fB4yXgvtw0xyjkpAn9/eLxKrqGhra1GxYWGSHhjbO15wY/5hsn8Wb0axo8VT+WnEir79415c0SbgOK5qbtzrgVRV2GGpl9qV5PwEijQY+/f8o+/fAQ5t2CTNH6cAqQwl3Mq/FGO8HdznUTY6Wun+RSHRw2SG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gD3VJHNy; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b86ef1e864cso325810566b.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768287410; x=1768892210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abhT9zdfI53z16gEnLFDRXmcfz8+OiftmY1Xh0czSK0=;
        b=gD3VJHNyVjKdJLyd9twoLBsZUQ+rPHTsuLltxNjx05cnz5xFADN1OJEUOS3407CgdX
         QzH6wouP8kEQ/FMfKs50TcpD3cYeQ4eVGwOG/SaYGGbgybWbr+wQJHHfsgk+Dk7vA/Vd
         P5VhiEBr0DRb6PZYbCJJVScEPgWCGmeyU3fGtxmgSfTYhdTJmzoiEFu0a4B/SnZW3Y3E
         I6A/i5R2+MuBe2u5FiKCOp0x4HYzSLzo/pcMGqchMnMMcJ+fKN0ux4n1CZOeUSVEW5pi
         nzBq2Cpf+r0LpolIXK95OtepnhbAKDUGmSpXbpavMXwBzU+CQGJavHfEBSmHsz+8+zLS
         2w8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768287410; x=1768892210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=abhT9zdfI53z16gEnLFDRXmcfz8+OiftmY1Xh0czSK0=;
        b=poNV8D+nqRMSyHoEh0NUGhC5wCZhWptaFkKI8ricSU5FRkl7TtGr1W+fte2w1ijub9
         qbU4ts8lQh9pBuJl4iKlYQr3cO8iberaGRactzKQHMKB5IMiWNuQhkPJkG65b4Fz7abS
         LRsMDjyhcZrPO1/wQ5vH/697GCCP/gQjKnnKUvVlvHKATq0GCMzhayvRq82uAGZabnS+
         3kr1KDxDdJPtCCXftcVtEq31Q2u947lDlIvimfP4NXCpzOfJlPdAmQnHFXOyGIWxvRHA
         OHCf4j5tgaTRw9/BbHubbghsaL/x/b6NpeIUE8bawWyi3Do29xT+39sdx7RtkDYt2Og3
         saYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0TA15f/Zlj8S/+qqIjAflcrYkvs39JQqGXLSRPbhXIsKGJh/kj2qpTnwX8HwScsGUG1Xk4mJHXrX+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywpjt0m56LGYRe4Ac0tFIv8XFGEyWHhQEmLC2AA6/iiojr4G9Yc
	zp6P1swFiFW9Vo0DAU5sp/x7tt5WLHvvrBVhs+c8jhRUwJV39qFsgY0eX+OmRWapZnqdQMLtLim
	iZNvQLdQZKHvqR+CHwL9Eub3adBZvycU=
X-Gm-Gg: AY/fxX7dDKtWBN3+Dxfxs+2fi96kkVR6RPqCRhSyqQOwZHw0eLZdpaaKOm/aGrNPMlh
	9humcON53kSI6sCFrdLht//RqOH/hPoh0RVf4iiZQOPVkMjTX5klUubfS5zhp09Y3pjA39/A87b
	rSGQLunakxf1pQXy0sfNlwwqtIzamfPZ7h2YcfrPRczA0SM+ZF/bIggqVxhw8papwtU4s6vkU1J
	ki0LRTuDyxg20DemAoYScMlSxBVOByb9ztoqoAaGIHOXG3yYiObg2y0PZpHMFsh9tG+sadRl+oP
	r1v60ULx71PHvvMbNF69mj6Ul6wAuDjovsLQDMBY9S2V2Kogezx8dBgAxM+Su1nD8wrRG2M=
X-Google-Smtp-Source: AGHT+IHZcmYbLMULw90nC5oNXOYzMycqaLcTOjKvh1sKYhyMZiXBvxY+uL4GJRFSYM2dx6vZeLyGmL90R1Ee8oFt81Y=
X-Received: by 2002:a17:907:25c4:b0:b83:15cb:d491 with SMTP id
 a640c23a62f3a-b844541e387mr1950606466b.53.1768287409494; Mon, 12 Jan 2026
 22:56:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113040242.19156-1-email@sirat.me>
In-Reply-To: <20260113040242.19156-1-email@sirat.me>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 13 Jan 2026 08:56:12 +0200
X-Gm-Features: AZwV_QhIvOmyQI-XGFbcDhe2w95juxzg1Ctfk1QKvy9-wzPYMxDrINkJFWhx7kE
Message-ID: <CAHp75VdGNd9HY-ihhgjPXv5rtiMrtKgxtvve1RcCz1x+Fj6ZKg@mail.gmail.com>
Subject: Re: [PATCH 0/4] auxdisplay: Add support for TM1637 7-segment display driver
To: Siratul Islam <email@sirat.me>
Cc: andy@kernel.org, geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 6:03=E2=80=AFAM Siratul Islam <email@sirat.me> wrot=
e:

...

> Note on implementation:
> This driver is implemented as a standalone platform driver rather than
> using the auxiliary display 'linedisp' framework. The TM1637 protocol
> requires manual handling of the decimal point (merging it with the
> previous digit), which is difficult to achieve cleanly with the current
> linedisp character buffer abstraction.

We need this for 7-segment + dot point anyway, so consider extending
linedisp to cover this (via callback to the driver or better way).


--=20
With Best Regards,
Andy Shevchenko

