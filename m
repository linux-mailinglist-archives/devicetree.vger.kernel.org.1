Return-Path: <devicetree+bounces-245034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07854CAB961
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 20:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E330A3013395
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 19:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B50C2DC76C;
	Sun,  7 Dec 2025 19:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l9/nvL03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F3229BD91
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 19:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765135752; cv=none; b=g3Apr/HVJWhIIF8Jd4PDPo/rTWP7wfaAeEB/kuAkDu7R45peLzCRibaKc/GnC2yRvwaHXnvkuVQhBiZg3jshIOM5SjLCG91hdnNrWIqHjdZGhq9/xdmu9qzkz+pcBT0a87czK0AuySE3LULqYB/0vAm1Q+bPV4RVJsK7CDYZ/0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765135752; c=relaxed/simple;
	bh=Opu2+OL/DwS9JbMvMpOEdTVE51EH8OVgiRsdsv9c8zI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qp1aruB8rajJGtMG9ECTfktbAmFZeUxqZVoXbxQB+2xvEEUZSJnPTiyZQytT/0gisiE7DZAFjJE5GGvljHYiBY9tfBwvWZXUA+EZ/HiiFpJ3Gr6R8LwaqKSSKljYyGQ8jUvkiE/oAyax6I+aWRDpyhPId9Vx6tdL/C9X2PhkOlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l9/nvL03; arc=none smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-88054872394so55131426d6.1
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 11:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765135750; x=1765740550; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Opu2+OL/DwS9JbMvMpOEdTVE51EH8OVgiRsdsv9c8zI=;
        b=l9/nvL03OlUjc+W8pHAGIewQZ3hmxaw+QOPxfLip2V3rf8BJWOo34iNYq8+QBhWpke
         TR9rjcbXvNtbeEixSuhR0a8gdbRPPg0TcOjdPxTfm/hsLZsC/IDfQxYwl+41LniKd/x/
         d0OtEbhJ8HyqxJCZ1Bsi0pb0ow+dNyafzOqB0bU9edgmsnN22rEHvvCtt8q7AAzTiupD
         ivZLmusT/n2iDiIfZhM5IJ4+nSRdVVQ2UrPsUkQ20HDw1dQljH61yT9pSMkaR8NGQyBU
         TOPn4fSrjMfbyrsFehKCcudazqMYAWUurTrCR5OxwPA3pUwYJdWvITl/nWKJaAw/5mKr
         UM1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765135750; x=1765740550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Opu2+OL/DwS9JbMvMpOEdTVE51EH8OVgiRsdsv9c8zI=;
        b=OVngULJyWX/ca8W1CZV5HI4JcneMX6RBnkgXth1qaG5rOgcQyWCbgDuHwgJKVtVaCw
         ymABPlRNQU3XlhuPuNA7SkhBSBq7knZLHsZ9x+opkcxPuY29ng843o6uKizNheWIBFXI
         s+pBZwDNurKqDsJUL8qMcXjl7e0hcXmJVI9Iuc473VAoDWJEdOfMRvnpA7BQSTw8zjfL
         MXp2vnccnr5LalCemcSZejphZwLdgAAvri6B340D56TrIXtRZvKwfdv93dzP8BlC508P
         A6uEplrjjkx7/3p2DtGFdkSHZLHHxl9HeDiaWuFuKI3vkRYPvXiA1sS8vFueeITuh7ih
         BYAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpaQnCav+UkKAmz1MuG4Ry63EfFmvPVmlEtOOzuW6qbnpR14FM34rDnypmcQvf8T023rzM9QvfMKvD@vger.kernel.org
X-Gm-Message-State: AOJu0YwRiuHulpKYVwScasynCSGMdkJXx8I1h5fLoWgpNLOhlMfDoNB3
	nU5mvlyBkNWs/p84+Gah1h2M/162rlzI/Ej1pctvWt0ORweeJ+pW2Z3QyIL3tEdkGf1I+oD9vbs
	9zTrmFal7wr3yWQuYObxkbPLW6aNURv27Lz00+g==
X-Gm-Gg: ASbGncvJ/D4Dr0sSzOklUpUNYqy5wxG3/PSHFDM8weDx/3Kx9K92wSBH+aSic6nY75j
	Q2vLcy5+SkTO90k4N9YHRp3QmYEFrf+3eDDTq364wA5GWLBFD0jGq0xlUK9AOSeo2tNUtIYEDgf
	naEobyus1o4b6je5TFDXMMKNWcGMw6quUqIws/dU8cRjrhNxPcLVG9+G66wCOVYvDhrLeMbGwfD
	fiw5nwyg69CABOoNu79Hheq/xwNEHMcODquMJ1HF4CD6ZdU1eX6pD5ldJD0bVk/1qdXilJWc8vf
	HPZgG8vT8EbfSzGwsGYBOKvhtJc=
X-Google-Smtp-Source: AGHT+IHjR3mLmPnj9fRaa7D59Q5OP/l7CbN+/RdhM+PjFVUL8+kj6fWBqmoyD4tFOMFEsNhTEVep7TjIbtGOzuXKODA=
X-Received: by 2002:ad4:5ba5:0:b0:880:4ec0:417a with SMTP id
 6a1803df08f44-8883dc4c363mr100694556d6.55.1765135749856; Sun, 07 Dec 2025
 11:29:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201011457.17422-1-daleyo@gmail.com> <20251201011457.17422-7-daleyo@gmail.com>
 <7ea43ef2-b453-46cf-a35e-ea11ca1dbe24@kernel.org>
In-Reply-To: <7ea43ef2-b453-46cf-a35e-ea11ca1dbe24@kernel.org>
From: =?UTF-8?B?SsOpcsO0bWUgZGUgQnJldGFnbmU=?= <jerome.debretagne@gmail.com>
Date: Sun, 7 Dec 2025 20:28:33 +0100
X-Gm-Features: AQt7F2oFhC8Mb-l4_CfaR4BEBfSn1QIKcrxVG9maohU2gcvVq5WClxflVEf0V1E
Message-ID: <CA+kEDGEjR7cGA0zZfuKkYg37mJZs3Fn7eKbgkB6hdjDLtGxjRQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] dt-bindings: wireless: ath12k: Add disable-rfkill property
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Dale Whinham <daleyo@gmail.com>, Johannes Berg <johannes@sipsolutions.net>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, Jeff Johnson <jeff.johnson@oss.qualcomm.com>, 
	linux-wireless@vger.kernel.org, devicetree@vger.kernel.org, 
	ath12k@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lun. 1 d=C3=A9c. 2025 =C3=A0 08:34, Krzysztof Kozlowski <krzk@kernel.org=
> a =C3=A9crit :
>
> On 01/12/2025 02:14, Dale Whinham wrote:
> > From: J=C3=A9r=C3=B4me de Bretagne <jerome.debretagne@gmail.com>
> >
> > rfkill should be disabled according to the Surface Pro 11's DSDT.
> >
> > https://lore.kernel.org/all/20250113074810.29729-3-quic_lingbok@quicinc=
.com/
> > has added support to read the ACPI bitflag when ACPI is supported.
>
> It wasn't merged. If it was, reference commits, not random emails.

Good catch, It was merged in commit c6a7c0b09d5f, we will reference
this commit instead.

> > Document the disable-rfkill property to expose one specific feature
> > (DISABLE_RFKILL_BIT) for devices described with a DT, so that the
> > feature can be disabled.
>
> This is just a circular logic. Add property to have property in DT so
> that you can use feature.
>
> No, describe the hardware or actual problem instead.

Point taken. Would something like the following be better?

"For some devices, Wi-Fi is entirely hard blocked by default making
the Wi-Fi radio unusable, except if rfkill is disabled as described
by an ACPI bitflag on those models. Add the disable-rfkill property
to expose the DISABLE_RFKILL_BIT feature for devices described
by a devicetree."

> You still need to answer Rob's questions.

Indeed, we didn't answer another question, sorry. Here it is for
reference:

> [Rob] Assuming it belongs in DT, why is this ath12k specific? Could be
> for any wireless chip...

Agree, it could be applicable to any wireless chip, it should be moved
somewhere else. Would ieee80211.yaml be the right target file for
this property? Or any other file suggestion instead? Thank you.

Best regards,
J=C3=A9r=C3=B4me

