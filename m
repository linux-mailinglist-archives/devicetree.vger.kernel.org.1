Return-Path: <devicetree+bounces-256266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF18D3884A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22CC23057473
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808563033E3;
	Fri, 16 Jan 2026 21:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="RuhkY6M3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0F42FDC4D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768598715; cv=pass; b=LsSu3jy+BumhvQo43PcICEECUmJCVjs/4oMWTHjjBvr3Gag2L6VotsXV+7zIhx8EDrWu7uknYun/l8+3KGy7/LMAxB5HRVoBLGU05KH82YmWGe3Db2ED5ZQPGYWQR/5vm5WPDgbfpAyVqlvyHKvJSqduoGpY37bUHimEs43GPCo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768598715; c=relaxed/simple;
	bh=mxbIo9HjWFsmyBKBsroE0HUQk3fFrXYb/WE89O0U/gI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IvJPfemS8ED+958HRc4nHpmZeKSeMo8idHAA0OWRC15PQ9xJddA6P9tzsxuBeheaS6lpWSqcyLfeAwWT+NFCsGmzoNPInoiftd77iSXo3dxI7Mk66mVMsq6KQT/gnmgoGMHiVEp6wbAZP+i5UMfF6bno9x0+bHfPwuX8aVEgQPM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=RuhkY6M3; arc=pass smtp.client-ip=74.125.224.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-6446704997cso2191235d50.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:25:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768598713; cv=none;
        d=google.com; s=arc-20240605;
        b=foTDWQwdSf1O/yVI8n7awTwK59DW78fQPkBjHtfnE5PNK4rv86vFpO/K26CMjBDpdm
         pAHTFvqsx03vDBvHVx0Vp4b2PABNvlAgJDilPc9TwwoWoHojR+FL3Pz+Za6qMOPwCCg8
         gIE6amwXRlRyP3LLn0Uj84KUZn/7Dlh67GfXOZ3t3QBHwEvjPWLKeU+/YijuyXrUFud7
         K2zrh+ylUf4MRHNWG2aOV11obe+zg4U9cO//s0lzuWXhsvWc0y+OHfkHF2ukRDGw1vh3
         YRLe4sMmeKCHHrlFHHvn5qQVPZah0PqFhu5ZVBjzIWW2VUfq662D4lciq5pVIC72Lcnl
         lGFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mxbIo9HjWFsmyBKBsroE0HUQk3fFrXYb/WE89O0U/gI=;
        fh=SfUch8V50c07KNIjpTkTp7We6sjD0NeXJ0lDtmN670s=;
        b=bd7k+HfcmUgsn5s4Y/9IskgpIKrBO63N+u9bPDJCuPpJ+D/LviXTZht/JAyBqVVprd
         zyD44HiVF3J9sXtuNp0s29aMUOxWkNly1fbhOprwYGqwEA8gpHEND+O5fbmcQe2xYo/Y
         F0zUJnq5akNzVHrdKv/qzOUuLJauPJwc9Jab/uqw1Mpo6rVDT+0xQwT4C+tBHZYfffpR
         BVytVk8vfV67th1OoPHXxsCcacz0gsycgtC5KZKNbAB0xswgGGOtTMmoRUShUEqhk5bc
         h2zhsV/XQJKpcdOLEehukKE8OdwbemWee74jUTx69gpXnm32Bqa5g39hkNIt0pJ1eiv7
         UJ8Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768598713; x=1769203513; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxbIo9HjWFsmyBKBsroE0HUQk3fFrXYb/WE89O0U/gI=;
        b=RuhkY6M3Lx5Sra0DA2oYqNhZo5gByRGrQ2lrZ3OwQOjkheaCWQ1sQqZGdpIqCRpbLg
         zokuBeKMTkUNc8vvwB2bFe/j/bsmC3sdWTQs6LmRjRjLkzXDfXWQi66uRM2g2LyQWuHg
         kcYsrAgCEdM/aiBGPWVCEQdN/vjn/BBIfz01m7t1CCFo3iolJF6upUgM2cqmKoNox2Tl
         rKe+3kQSFdGzIMObHVliJ1zROULbR1BHggyG6xgiSL8ean3687ElE591XEpommXfsEpy
         GNOHWJN6n1maql7gHGJLraSLy/L9AE5UFOiSpspDAPVyBukNLSpkRdrsFb6nYJt1Tl+o
         cGag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768598713; x=1769203513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mxbIo9HjWFsmyBKBsroE0HUQk3fFrXYb/WE89O0U/gI=;
        b=u2yirBfCXaKssRkSfMNpG5MCOAvSt63AjahCdmjQG+uLk2Su3INU+UWSErqBGjQSlG
         lI200Gk6uuUfNfbRzLbn0SW+JnrJZSfvNgDGH61FtMWDSQVUgWJ1+dShAJWDcpgajp+B
         IyTb2Ps0yywnQOwuLJ4Y/e475LzvapD/ZDjoLThFhdpJhvh852Rexhc0MOUuUSq2n7sk
         Jbqk3CBdR73hOhao7DaoBj8EBOIvj9Je4+aDTqtqhIITWmS65q7qxGMCwNXKB1+6PE+E
         d1xWEqcwp6Erg3pcaq1sevn8aZshw7gAAbVyOPbliX5XUYP+0mwP8TBDrVDvs6PlgVEm
         n/zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZC5mUjqiNOnVEUj6ydrN2HxzhrYP+epPDRAxjMM+3ICXNTl+KIt/JA5XglbKZWGh5paH8LOCGPBZu@vger.kernel.org
X-Gm-Message-State: AOJu0YzDzxndpJ//lYcdJceZLJ2Q1T8yQl+OrG3u9jrQ1+mG/4svd3HP
	EWupV1xQFkb8UJ0tU7pgxFiZAyA4g+9Tn3lgLo1NYBMXz4Dc6t2xbDKjUBdIvApXwaJYouRELXo
	uU7D2QFVOU+YjeRgA868J6f0zhDX80W4zVcQ4UbBIug==
X-Gm-Gg: AY/fxX4ORLfm87IBNyVCDJGKQMiG6NYqR/FjOW0LOJlv+zpUrbjPB3AeJdSpjY8S1Id
	478Qv9jIy+s6SclKTmPR83s/rF+yCwva0TEVJC+MmGQOgbwOyMa6yLHsbSzFmc4J2bwOruP5ftP
	oPzk2Lz2BIxa9gds46ZAuhigzT9EWYSMDyEyv1MBp1kw6TV/oxgW0ByA1OKC2hf2UhY+FlFVjO5
	Tl0YUFnIWBAKKOmxQJij1TXKnztws3Uk24F0AtZ3ziI20SH5DM/U4Uf6TzrFq+cAb+WQjFJ7NOr
	ZBTBNrt0ZPzXU/kuIU21LmoqOWlKVwuKOvu8yNxQ2noHWRoJ/Cz8WnhDfy7d
X-Received: by 2002:a05:690e:1489:b0:644:28d2:a4a6 with SMTP id
 956f58d0204a3-649164f76dbmr3642894d50.47.1768598712888; Fri, 16 Jan 2026
 13:25:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-4-7356e671f28b@oss.tenstorrent.com>
 <20260116-unique-devious-elephant-e9de6d@quoll> <1ef5317a-93d0-4357-bfc3-ce780002734d@kernel.org>
In-Reply-To: <1ef5317a-93d0-4357-bfc3-ce780002734d@kernel.org>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 15:25:02 -0600
X-Gm-Features: AZwV_QidPk8Y4W8WRSMZEq2Ai2phZYkmta2y36cESHGQhYtUHli-ToYTUVaqpDk
Message-ID: <CAEev2e8i_4Dud-OdghjN+1Sp7n_9yNThwgDbirkREBJHChwscw@mail.gmail.com>
Subject: Re: [PATCH 4/8] dt-bindings: soc: tenstorrent: Add atlantis resets
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Fri, Jan 16, 2026 at 3:03=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 16/01/2026 10:02, Krzysztof Kozlowski wrote:
> Ah, because you just added it in other patch. Then obviously this must
> be squashed. Why would you post an incomplete patch and fix it up
> immediately?
>
> Please read writing bindings document - it covers this case.
> Why aren't you posting COMPLETE bindings on first posting? This is now
> ABI break for no good reasons - you knew your device has resets.

I will squash down the commits so that there is just one commit with bindin=
gs.

