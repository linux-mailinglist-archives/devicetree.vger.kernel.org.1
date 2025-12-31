Return-Path: <devicetree+bounces-250773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 423DBCEBC28
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 107B530285D4
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 849862DF12E;
	Wed, 31 Dec 2025 10:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b="IdFGl2j5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7779286412
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176281; cv=none; b=iWXDIrEfaei6fpXRabQtbWQbIBVdgzaaluBtds71CIpVqqNfpcQgqH6xt8iszbZxWspMnNjviAnH5LruH/Twzqqsi4WovEGUD71v8clITdNhWeM6AjtRCMjOFXXdkGnR2A9oC6ons/enHTsecCDYTNo4kM/AhRkS3zY//EXfGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176281; c=relaxed/simple;
	bh=edldj1KY5bUh/cjL20OP/olpoho9tkurt3S+4pPFkxE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hokh/+YwU8gCq7Y2ZUoujHvcAqxFdgHUjEYfThxNB9HkN0fjheVdEPrv/tw0/gmnT3G+kDe3CfwocK6sZzefU+JBeHiggb7NHFVcyX6J55bFB5MRvtBKWf1TnTYRkBfIwGSn2iY2gIvZfIYRgf52GZjCwMXnlgddyp4dC6xHp7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=0x0f.com header.i=@0x0f.com header.b=IdFGl2j5; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0x0f.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-34b75f7a134so7848479a91.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1767176279; x=1767781079; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=edldj1KY5bUh/cjL20OP/olpoho9tkurt3S+4pPFkxE=;
        b=IdFGl2j5acrXStdmCQYa/Htfr/buwV5PpsoaeHi7BnTrKwoml6T/eFFnVXW/OcsVNT
         C+akdUBsA6Im5Uv48ab5DWNbe5w1vprYCghLzmQEBsIlErYbUPMAe8R+O06RpNbXFAvE
         27tv1hegik0HVZltX4kMhBjlTeDHlZsZ0/wY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176279; x=1767781079;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=edldj1KY5bUh/cjL20OP/olpoho9tkurt3S+4pPFkxE=;
        b=Pi9L0ZsOfrJefkeTkVDvq7QTbvvFQ71vwPZK/y1oBOFKwgq46AU1A0SUv30I/Sqga1
         jnZfR9vgCx4QzjcIzsF5UMUqZO/3LYUyyKB8LK2tgyA9Jb6rKwjOksX1s6G+XIG3BGEt
         EQHEbx/VZT+dRi9OnqOk8xAfi3tx/KdINA0L2oaYdKMoB6BcJVjsQh6PGbJ4xNbsD3vU
         paZqPN5e5V1WYMvvd1z93FVcNPdg3TLaUPq4B2WbJWIsDXwQPfT7gmBRT4RAg7C/rdrI
         AggEhrcvmAOgc1gZFmIsfOS2g+xKVpoCUWhYVzSK8QRAElf7/zqkPqRxbP72OPP+ZXRa
         BJVg==
X-Forwarded-Encrypted: i=1; AJvYcCVqh9meCw+o52HM5JgoqDNExiQVkX+UJOCZHwssizTHZyPJ2rwnFr3NfasMRGf8bbj+h7uOsR2plVOC@vger.kernel.org
X-Gm-Message-State: AOJu0YwWhuTj523pnzwJjThj3x2VTi/qzjtwcazfZ6tMzl5uR+leT8zj
	/xR1J3FjcKuI8b81+NsMGcEnIpDk4QYs1t9+jolbX0ufCXpTEseDTU4BpNag9p5QCsKdomtGYHm
	qzEjRs9dutjnJVHElnfbwduVrMRGn7ezk+fB+H2M6oQ==
X-Gm-Gg: AY/fxX63lo5tRRV0Ycfo/MBuaOV4Kpzz+MaBDJ34cGGmexnfU8b8FiohIROHA/5IG+q
	uS/nK9FoddiE4pJpD82DGNnpVKdGVE4jTtDZjAKKDh0qndUsSaO4XyV3IJmlo1HXV9/hA6IP5pM
	a1v5C1MEcw7dss4j2Ikggu9C0zcV1QlNoAywY6WhUEr+x1wJdHdQ16/UrD31Fq909Psz95n4Gnp
	elzKUPykXejO1vcikw0+dbdtwp0mUT1MjJU+3Q3DZuxwUrpmzYQIUQ6aO7ypoR0FPowIxRKJA6J
	7k2D7Gw=
X-Google-Smtp-Source: AGHT+IG/0csjHsO9S2ju3J4aBxBy0l7c//VGhSAhrGmNUzKzPjS4uC7Pu6z2O1RgSMxmdexSSTPAzAT6Rul7lscbpnM=
X-Received: by 2002:a17:90b:524b:b0:340:f7d6:dc70 with SMTP id
 98e67ed59e1d1-34e9212a312mr30321494a91.13.1767176279136; Wed, 31 Dec 2025
 02:17:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251231025502.1139168-1-daniel@0x0f.com> <20251231025502.1139168-4-daniel@0x0f.com>
 <ac0f8b8d-f6e4-4d60-9931-e820417c1abc@kernel.org> <CAFr9PXn_-Ep9HzwTEErZ4Wmm9X8Q2ZkRP1LfmaAMhbYNfJVFuQ@mail.gmail.com>
 <499ce4ea-c6bf-45f1-ab68-c37397196084@kernel.org>
In-Reply-To: <499ce4ea-c6bf-45f1-ab68-c37397196084@kernel.org>
From: Daniel Palmer <daniel@0x0f.com>
Date: Wed, 31 Dec 2025 19:17:48 +0900
X-Gm-Features: AQt7F2qzGbjHCviKYuVDLUPYd2TLUiteeq9BGPgHCi8GDpn6zqZXXjgSMg0gybc
Message-ID: <CAFr9PXkn=ZMd6v=yX_KbfynKq7quBKUnCBDJBaU0LyYYMbKEXA@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm: dts: mstar: infinity: Correct opp table name
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: krzk+dt@kernel.org, romain.perier@gmail.com, robh@kernel.org, 
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Wed, 31 Dec 2025 at 18:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> I meant, two commits should be rather squashed. If you intend to rename
> the nodes, fix all names to be generic, not only some.

There are 3 commits that correct node names:
arm: dts: mstar: breadbee: Correct regulator names
arm: dts: mstar: breadbee: Correct LED names
arm: dts: mstar: infinity: Correct opp table name

The top two are in the same dts board file, the bottom one is in a
different dtsi file for a chip family.
Should I squash all of them into one commit, squash the top two for
the same board into one commit?

Cheers,

Daniel

