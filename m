Return-Path: <devicetree+bounces-194674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61705AFF0E7
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 20:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A90481C4549E
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 18:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9359623958F;
	Wed,  9 Jul 2025 18:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b="H8ME28SI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7DF230BEC
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 18:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752085709; cv=none; b=gaRGHCpfJLrnx7POjKxAmcnyzDLJndiKxexfY9kIm3e1zW9qwAwXkEwUFRqMrBujRXYhGXfPB5Rgxhcr8GHCZCSAi/aX0JXc0aQFDC8xzgEduefFKaTge5IKOcBj1O3mDnl1B+OWPvm2voAK2/8fztf7O0k7eHLi4iOuw8P5tXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752085709; c=relaxed/simple;
	bh=EF3tKvm/yLMAj5ER680mB6JtKaeBj11j3qvBwe39Xuk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OXj0wxL1bbSllEC1wQLuFRnmDZ9Nyyw0mK2m3TM3jNqu2L05ZlSaKOc4rqUTP6hdmvcRarOZKlb6v47iQVqFk/aezKbNrAX43dRginBD038RbI8dknKKu/raVq6ixpZhaUHj8yA0YksbBiV55NYNWtMhfy5GusY31Y/ofKwL5LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks.com header.i=@gateworks.com header.b=H8ME28SI; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2da3c572a0bso151389fac.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 11:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks.com; s=google; t=1752085707; x=1752690507; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EF3tKvm/yLMAj5ER680mB6JtKaeBj11j3qvBwe39Xuk=;
        b=H8ME28SI88T7KV4iza04m90UknkvT+YN8pex4F3nWv2uXe56mZIrW6VXM2Y0gAY13G
         zDC1UJW8vizf9I7paUec8GHzd6uh2JsOustKLeCIi5uQGCTH5Lo3ivRnYm/bYuBYt0b6
         tP57WdPXwiL/oozU0fIaanLSFYHRVi4edFz57EEh/aOvf+9X5pbLLUBH7esDux8U3cfm
         zte35ZplHrfvUoEYZ90ulCkMV6wymsYM0SNz7QatYP4wAwKVY3vk5emz16jOi6djb3Nl
         A7aHjZOqMlxM4ItyLu8mF3eR4mE3rk5TI5Y0oHcYnCpGB9MbHhWG33dQsLwAuohdNeq7
         GbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752085707; x=1752690507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EF3tKvm/yLMAj5ER680mB6JtKaeBj11j3qvBwe39Xuk=;
        b=YP0sidlbK0xqVo2TpfJT4PV/DNbmbgEIp4dlG93HzTiWGHc8n/jsVyByKpmDidli9y
         u6h50FbvN85ty3/z3Eet6BC/0FZ+Zmd5fYQOotfS1axLiSKNhU6cmrPPVZ3nfA0HXS3j
         c5huxSIFGei8i/d+AWpdOErfgGIFOFlaQkYFhkCGAx/1hnXzanalWWbH4jKaNM9sVbBr
         6sY5TpS1ONXURKzX7hyeJoyZUGM37yULm/88b0CxdcvzGhsGqzNgzoeTuCEodlIjxpXV
         cj+bs0gu2pJ8Lvj0g+FTP23bVyWArBh0tsUnq4hoffw/uviZJ2HZWGMRynsWOE4K1mgA
         H4ow==
X-Forwarded-Encrypted: i=1; AJvYcCU/ACRgsFKtu8qw2x730fiXCX5UbJk9WusnizCXuEbQlJhABNP4E4g9cupL/hzN2Ns0QjKDgsFqSBQC@vger.kernel.org
X-Gm-Message-State: AOJu0YyWS8FgYwQljbeYEx8Qrr52awAv0RBC61lRgfwZc+sTAHe3FsgX
	23xVRCGffGSU7xL8/qJ8BVusxUZpshjcH9XUv9EC7HAT+26W6d2ruEz/9JA1fkrM8hiWxxBE9WU
	3SxDc9eRSxoaRzx6lCd6SUETH0NDnf3HRM3XXZtA0+Q==
X-Gm-Gg: ASbGncvbmORV0Y1J9uYPAYxE3aZ3Dm2nFu5cnOwZ+zro+SxAqfSkeTuAwx5izIsI3tE
	q1MyI0hiprVCyD3ga5tRRE1kFcINM5iZMXV7GIDl1p+hP2uig6TfM2sB1e1wNwIrg8S8ARrdvtg
	8yqSqLOgfpT0pgpqQuueyYW5PG+msVKjZey3yIF6OhwW4=
X-Google-Smtp-Source: AGHT+IHA/hKgmN+ZQ0rDeLHDX1FbU4i9gta+XOUEkPAn4h5OjDz1rrmG5m9UAzx1iDyyI0XUhyXd80xd6NkdtMblp0Y=
X-Received: by 2002:a05:6870:3329:b0:2eb:a8fb:863c with SMTP id
 586e51a60fabf-2fef871c3b9mr2622993fac.19.1752085706812; Wed, 09 Jul 2025
 11:28:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250709-gw-dts-lic-v2-1-ac3b697f65d5@prolan.hu>
In-Reply-To: <20250709-gw-dts-lic-v2-1-ac3b697f65d5@prolan.hu>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 9 Jul 2025 11:28:15 -0700
X-Gm-Features: Ac12FXwOfyTS8C_-y9vSRPj-Ar_ANH_aFSj6ux_UPjsJxqIi195A9XgvWe9uzG0
Message-ID: <CAJ+vNU2JZCpRdJqUn5mki31oziTMvmpz=oBjGcJoWhDTcvTHMA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: imx6-gw: Replace license text comment with
 SPDX identifier
To: =?UTF-8?B?QmVuY2UgQ3PDs2vDoXM=?= <csokas.bence@prolan.hu>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 9, 2025 at 12:26=E2=80=AFAM Bence Cs=C3=B3k=C3=A1s <csokas.benc=
e@prolan.hu> wrote:
>
> Replace verbatim license text with a `SPDX-License-Identifier`.
>
> The comment header mis-attributes this license to be "X11", but the
> license text does not include the last line "Except as contained in this
> notice, the name of the X Consortium shall not be used in advertising or
> otherwise to promote the sale, use or other dealings in this Software
> without prior written authorization from the X Consortium.". Therefore,
> this license is actually equivalent to the SPDX "MIT" license (confirmed
> by text diffing).
>
> Cc: Tim Harvey <tharvey@gateworks.com>
> Signed-off-by: Bence Cs=C3=B3k=C3=A1s <csokas.bence@prolan.hu>
> ---
> Fix up Device Tree files by replacing the license text in comment blocks
> by a `SPDX-License-Identifier`.
> ---
> Changes in v2:
> - Fix msg
> - Link to v1: https://lore.kernel.org/r/20250702-gw-dts-lic-v1-1-7aac2d00=
488f@prolan.hu

Hi Bence,

Thank you.

Acked-by: Tim Harvey <tharvey@gateworks.com>

Best Regards,

Tim

