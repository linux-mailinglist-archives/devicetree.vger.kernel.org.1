Return-Path: <devicetree+bounces-256279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 123DED388D7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:47:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69B503043A41
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A786D3054D8;
	Fri, 16 Jan 2026 21:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="hkCKxUxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250412566F7
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768600068; cv=pass; b=tUsnqN+dgKd8rQkq5jpkCYTXWy7+3LAUkyc4lmimURta+GLpl0CPDZHYUSLp0+ZQ3Ok1lHfgBu8ThQf7zHOm8dYm/MiqlhppvtTrEvzJKSPY1223Y0q8d0eW/gb2ySGUWCE6QbTiBfKe8YfaIMK9NfkOAl0Mo44Bp4mFX7h/NWM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768600068; c=relaxed/simple;
	bh=tsi2Uutd+qnFT/ht+Sd1qAbadQZ8wkdaqUZCkUYgK4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NPagKqWzJytCigjNRoP58keCPoPvSmSEHH5bsRrWSrGSoyh9mwYR4rP1jGBTEWWxf0+mhVBOMFXvs+M1D5VQBt9+Bghhnp/CFXMh6h3xJIhoPWHoPCvf/6PbYO8Na4nbSGb81CQmLk9z8Qb3OWqdoo+EQkGrFPFT808YThDIAAk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=hkCKxUxg; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6446704997cso2206831d50.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:47:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768600066; cv=none;
        d=google.com; s=arc-20240605;
        b=Hzh/ab5mVAnZXnSBpcZupCDFGGVzkz70pTe+lr3QK4hCdy91lyNdJCnpHxRYFXDpz3
         fSjqD16Zh7AuDIazjsDDML8YMXkeErVjeJjislX0Y8FClmD6jJKPnkiHXw37rmK9Kq7b
         a/roROngbdkNocUlgzPe0NIdcsPvBQYH1BwrII95m5L4uOke4zwwOE8hR1PPh/gwRkTB
         2IrtjlR6drL/uEKT8WNRRq8ZYUq8UBQepEdKxu7MK3mwpCrRSJkWBK7zxTWqLuo2Al39
         N70jZczTyDyzhOHtu4F/4u0FBghFHZoKwczrS9drw2bKK9fXvVU5RiG307sT13NIrsj7
         P/qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tsi2Uutd+qnFT/ht+Sd1qAbadQZ8wkdaqUZCkUYgK4s=;
        fh=6aKDNJyXqiOGNFeaw8wUMEtTWu0Qru3DXgxGQQI1q70=;
        b=PkURzrexH46zOoTVhl6SfFq+ylSxflfRCcmZYi7cLrTCe2HuJczOdhCw4x8unRu/vK
         KGy0RRwZ/x3Z+r7XsByZDQrceez+zw++/WbwifT2bpgQ2VKSaWTRJExQGU2xmZovL4OM
         ONZy/eI6h/sw3kPa7j02JWjTV/hp8WupfvRyuNcPFl9kofiykKYIO/Lu1171KMrxgLYO
         Sfift+fuOHywC8H5rtrGd0MPrFXUU1gWyp3eTHAO63AM9uKmQsXoG8/GnKDHfApNdCZh
         AieBPbhaCm1taPY+KKhn73OrwEjyFx7KurML/oTuAIUotmEmpigqk7ugy7zx6B4Mqk0n
         jQ+g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768600066; x=1769204866; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tsi2Uutd+qnFT/ht+Sd1qAbadQZ8wkdaqUZCkUYgK4s=;
        b=hkCKxUxgZRpUStfLYvUVcV6goumk5vlU/kHMAoeW0lEoFIBN2CXn2MFj8N4Hu8Yf+N
         krYgqjpylqZAZmNNs1FOp186VkwBxK8braLmkVLAbhDN8A5+NqkyIEbnyy4AJvVKwl3J
         e0HKFfMTEmD8U8C5ZUpAaOUmZNKp8sqP/pfD0iu34Qm669oXebgoaSbY16ObQT40yiho
         URgQ/AOwcqWZXkq7tpZw9hNt0zdWYYCIk15zgby/aopF0wDc4c/wW/ehnIIcbHb0hoDt
         7iEKYiqT08lJWrqWMfHXo1fkE/LuP0g8uEVEv6QjzWbIEXzYGy7zBEHH4gvf8hNkpFOF
         QUDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768600066; x=1769204866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tsi2Uutd+qnFT/ht+Sd1qAbadQZ8wkdaqUZCkUYgK4s=;
        b=fMd1Kv7Bv6kS3Fr3/4bI4ZrHvlKjDWtu8kMd34BFVMQ4h6av8MxTVaOHW7UrJdvItO
         pkv45CegHw92hqeQxHS9H3SUdpEEihLLeUNX5gBrEz3Im5fuTXunxKXqyHKrdKrF3ynp
         ZVz3xGVVL8NTdfvbVhPO2mgX91i2Q2A0JqXjSm99xb5I8RcZG7+NPq3YEX0MrxkaEVD5
         Vr2P7vUm5xlb7J3KP0IqXPTWrH1r67gYePUxA1rwyzTpYwYhfIHM1UwV893yxf7Zf6OT
         PPwGWoKsHwr1N1GVHCIkLQDuoWeCt4PA5JrgKahFEn6x6BXT9etrdXZEizgxc8W7h5rz
         z6tg==
X-Forwarded-Encrypted: i=1; AJvYcCWJYWJp+6n6wZjCEFzt6IIfPxXRODx2dTH3ZmACB+uj5OyGhh6EPWh20arn3k5oOVkbdeoL7ZmpC+xv@vger.kernel.org
X-Gm-Message-State: AOJu0Yweeldu/oDoG+FX/wPYGGsU3TR+jxdOiIWMspYZ7tHHwwYutC5a
	GmkvLUqlMlxrwwY71h0p7Bu063OUvz4H5uO3GGm5DSdLOHLekWw4eENUMbgX4HIg4AkNbohdZIo
	Y1Rr5WnJYjKbAefTPLfwZNybjccSxnMmhU0bCuiHt+Q==
X-Gm-Gg: AY/fxX7cWX1OJzdTTQvUhhpmPuyzYPdDeH6DhPAYbeBe1dkTc+AE/Dx/VzRUC1YNT+y
	Tm6WHK9jGnYBxlmFvcYLUvsapRBppuCb8CAR6o4oQvmurlw79kYciEvU0ZvOxVpKpBjXUCZGkUW
	WEKZecmXrpuUgSjHQJ9DzrO9bW23dspmRQId4MlrWjmaN4a9U6aA0MEc7CpffocDZczv4bFl9y7
	DKOFPg9aXgSSXU3tPGW7VZkoj331oMx2oio5Kn1O66F05C86NOYWrPyBlu+mnKcIE7NC2uf603w
	luuygyUIYoxkkMh8jUPOSTQGqK68PWBta64nzag+evdjJX8AknOZ3H5hA3VV
X-Received: by 2002:a05:690e:b8c:b0:63c:e3eb:20d2 with SMTP id
 956f58d0204a3-649164f7687mr3897690d50.52.1768600066108; Fri, 16 Jan 2026
 13:47:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-1-7356e671f28b@oss.tenstorrent.com> <20260116-sloppy-daffodil-ferret-b5cebb@quoll>
In-Reply-To: <20260116-sloppy-daffodil-ferret-b5cebb@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 15:47:35 -0600
X-Gm-Features: AZwV_Qj2Tu0a6isqrKjnGKdfFtIqrr7An-1ySaWl55wpht_7I4E-0awxisTnF4Q
Message-ID: <CAEev2e9wHvVGAhQJidpTNLyWPuMD91_p25V6QeCizm8Yh-qtTQ@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: soc: tenstorrent: Add tenstorrent,atlantis-syscon
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
	Joel Stanley <jms@oss.tenstorrent.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
	fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
	npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Fri, Jan 16, 2026 at 3:04=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:

> So not really a system controller, but maybe a clock controller - place
> it there. Otherwise HERE you explain the rest of the functions of this.
>
> You should post complete bindings, complete description of your
> hardware.

Understood. This block does both clock and reset. I will add the
complete description of this block to the bindings in a single commit.

