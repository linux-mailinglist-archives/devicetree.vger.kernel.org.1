Return-Path: <devicetree+bounces-250327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC86CE86FE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:46:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F9793011ED8
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 00:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3019223875D;
	Tue, 30 Dec 2025 00:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X7vPe+6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DD882899
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767055607; cv=none; b=Yn4MC97LyHJmWEHKgbmWdFSI72UTBJKpQaSCa1wNLYsbKY3xVuYK/ikoCR47SwiOneD4hRUojFcs1123XspQamnJqelbLODc113P6F1rmV4Qy8RWbzhx6KINkifxLnvwr1MRDHYzfbcYuaTEeUFgmtzR1GyZ42b5/6Cngs2RwR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767055607; c=relaxed/simple;
	bh=FD8BOdm0C6NvNTSiTMHv2tWzOHtbHLYKbUmjxds6sCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cyCHe6edxJmZ0bcLcQhGbRggeEnHgM58S9GAOsRTK1vvin38gW/FTuCgXZ8wwpify5vpoEsWvXAfamtOvRqtH5ADl2cGk0O6hQC1BcOoNFcn6bP9kK39XJqw3o0rjjJOQpbO54aJe4OWgPihVMoBxIaVFhjCYWE9akYbrrSYRVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X7vPe+6Z; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64b560e425eso12462432a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 16:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767055604; x=1767660404; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mrajWW+k38T62aCSKtqL5GHN39b+zeq3Bmum7GUMmgU=;
        b=X7vPe+6Z8TWlYwXHvrXvamaScLmo9d2Hr328xaSUzD1oOQw9hS4zkJRw8rYp6D0ADW
         YuC111tLNzeQu5+T8n1kiyC9k4x/C/eq/qVkQZf2hcfRyI8my1x/BQDnthb59NOLbJbE
         RZmHk5uuWylZF0znRCxXkHjyOWIRg+LhwJWnmzdROEHc7Cx02nVmwMCgOpFXRRL0oAgW
         o22YZZlCBQEYrTQOyfpd0vTMu7vgJhKVTLjGThhXR+NclhHaAGYfAtLKewMRs0aNc0Ws
         IjSkTrvw5bcLhqZvrQUHMjjf3u0KlPQMrQfmaJymaWVQ2lemgOA0H23aaN8M6uj0FzaN
         srSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767055604; x=1767660404;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mrajWW+k38T62aCSKtqL5GHN39b+zeq3Bmum7GUMmgU=;
        b=m/RkSnMk1VKN8B9Ip1nnx1QJSAmobsZeGXyiHUfHBkx23h6mK1qN9VIW/RDu37rLYd
         hMFb98FVz/JwUItTnc3TXIaoO2WdvARReoTKGrUk4UujURS8qqGc0orUvWbDRQGHYMm3
         Bl6c4brhughcru+3ZdtRrN7UrdsvSLyDDDjF7gQFYJgG1aYKVW5Uru6oDtf79Ph8lKw6
         523KAX4vBEB+ye6VzcGhbPUDTG8x8vYZ3xnfIPBUUwzJNl+EqmeuuQ8ygkBFcPb7bsOF
         kx2AhaRXnEeXdj07lEeYVk4XXOJM0JZonKtsB0PChMD14M65DiMQbLXWJczarnGpQJDa
         bKtw==
X-Forwarded-Encrypted: i=1; AJvYcCWKLjB+5WkCW+gkDTj4TRmyqifAb8d265jjBbxLeFQ/hOvcmLlAXjfxeyvIdg3FYmhPh9MkJ4NAu1RV@vger.kernel.org
X-Gm-Message-State: AOJu0YzN42O1oB9oYPNWi3fqB7t7o8NmGKsuaZx3n6faEkvywSCqFIt2
	SYtc40yYDvuPzLMHB2lHWSNMddvjhfgq9QvM1/T88tZSgPIs0375ujMZECtKcMw8sPUKQts+Vhw
	P4LuRIzaTWA/sMqAjLMFbx+YWLApZBYc=
X-Gm-Gg: AY/fxX6GzFsKBpsvMO5Uh34Esw6gEUr5Xy+/0ljnNPjPo1TBjVH6XzQ3mgdKYxeStIh
	jd1ueXLPEkE3KaSZghZE/NSMJ7dMzp+N9AVyw3iChNagXgKHsWO6TpxZL6NyvPD72rcusEAohGS
	SuGicLEXewie7tIy8hIOnfXiehKLeekpopjPhVbE6BLoCZ+H8dEXP0tf+FSCkN9Y7KJAz82m8B1
	iA0HwjOS83bQuDBDyMciP/MesDQ+cGLwB318jEMiYYcCM2wSVTswF0+b6EdrEDVZItJvymTC1lT
	CspynCU=
X-Google-Smtp-Source: AGHT+IEOyGQkzZzbQkEggQ/1Ve2hgGBI2wjKyv6nKIRJeoHyKsYX7C4aBvjrvWCQCKl3vF99LAW+3maWzes8lpP2kpk=
X-Received: by 2002:a17:907:d07:b0:b83:73ee:993b with SMTP id
 a640c23a62f3a-b8373eea4f2mr629416366b.57.1767055603517; Mon, 29 Dec 2025
 16:46:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229103956.120184-1-hsu.yungteng@gmail.com> <e714157a-ce8a-4b1a-9882-ca437d772fec@roeck-us.net>
In-Reply-To: <e714157a-ce8a-4b1a-9882-ca437d772fec@roeck-us.net>
From: Yungteng Hsu <hsu.yungteng@gmail.com>
Date: Tue, 30 Dec 2025 08:46:32 +0800
X-Gm-Features: AQt7F2oshiBPS1_H4rxGWznS3goxYz-ZNuKnTBp18YuhU2Y7uUwGpu_7TAc9YMA
Message-ID: <CAFT9tymWkg+1Rp0rbWjjtenJmUKbcu_cpeY1MVRxMUTYGbRWDA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: hwmon: add STEF48H28
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Guenter Roeck <linux@roeck-us.net> =E6=96=BC 2025=E5=B9=B412=E6=9C=8830=E6=
=97=A5=E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=885:05=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, Dec 29, 2025 at 06:39:55PM +0800, Charles Hsu wrote:
> > Add device tree bindings for the hot-swap controller STEF48H28.
> >
> > Changes in v5:
> > - Move the change list into the commit message.
> >
> > Changes in v4:
> > - Fix an incorrect datasheet URL and update it to the correct reference=
.
> >
> > Changes in v3:
> > - Move the STEF48H28 Device Tree binding from
> >   trivial-devices.yaml to pmbus/stef48h28.yaml.
> >
> > Changes in v2:
> > - Fix the entry in trivial-devices.yaml by correcting the comment
> >   and compatible string ordering.
> >
> > Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
> > ---
>
> First there are no change logs, than this ... change log goes here,
> after "---".
>
> Nowadays it seems that 80+ % of my time is taken up with such
> trivialities, distracting from the actual code reviews.
>
> I really need to set up AI code reviews to handle that :-(.
>
> Guenter
>
Sorry about this. I=E2=80=99m still getting familiar with the expected
changelog conventions.
For the next step, should I put the changelog below the --- and resend
the patch?

Charles

