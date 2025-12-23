Return-Path: <devicetree+bounces-249154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D7629CD98B9
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0E61303EBA7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 14:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C58C2F1FE7;
	Tue, 23 Dec 2025 14:04:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0422FDC2C
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498684; cv=none; b=QpMQxWNZO5iL7JGyKOF26yg6+jwqamgS2qQ18oIPT6ESnDrTrdA2mL6Nf291VprkJ3HH2c/4gGHzytufa1ALwiIRjgclrezXEdAFItruZTdB2sOsnXp5EMrvjsRhCPbn+IlQhUWgeJ19TSXzGaUrPSyd2Im0LCIIZUPJL3msgpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498684; c=relaxed/simple;
	bh=+jtPilWYFm5ncAYTgsqlqGBVAaL3UvMzNugfZf9EGfM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pf+l5Yw0+j9VuRJfwqHrjSJhEsCM381O7D3W2RxO1gQsIjtpJqE3i8+Hl/3M7rdErnCboZ2kVLJ7JYuUsKug1EKvwotLL93LUZQaBsMNsziegkbicu267NcgCley3u3DFlWzxT5ajBbSKycsNztxtMKL17w5lVUFv3lUWAvO5Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dbd9c7e468so2035282137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:04:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766498681; x=1767103481;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKvJk7e7tJ7TSRXYxuvnx2VLhgvs9PdFoo0OZwEpm8Y=;
        b=cQ37kQwxXZyHiigSkNb/qtPI2RfpSQMed9fFfa4OUS5+m6nY6gHubjPdGqR9q9qb2m
         Vm8PGSJBwdmkJYlvl2OzKQQ9pGDQk7zr73olIAAFjE4a4rtPu0l8tOUDxHB/kcXY3wuA
         2dwqlmacED9T1PkU/rIv0kGXzzAQ1/z4edm5k6Fy1XOB+QCeyLHkLH0ryvE6sfOpw4S/
         pjTPoNveFfVfBHtLWrJQzFcYHXDQ1xoMzIoMhVMxF9mYUa0dZGhP+/4odyFK1zxZjD9b
         e/Exz7+HyPKXpl4TZKMrGHVr8TUEIAOBXn4CvIQmclOc3WNyBhkfn/2BevnDb8aC1mSh
         o2kw==
X-Forwarded-Encrypted: i=1; AJvYcCWHtpw4zMWSqLnTAs8V2BSXsOUdB07hoLr6xt8wo6e5h2Hc0XnzT/svH3Aj3wzdcMqT3YBQh3iFSMi7@vger.kernel.org
X-Gm-Message-State: AOJu0YwyfT5Qq9wBEH4m2yHviKmD6Romd6j89W83C5akxEkTldAnlBeW
	VCxvD3nOfNgRwXafdjCiYg4wg6QU/1ryB+YAVfnShnaH20puBAFLH8/eMVwvVr6c2WM=
X-Gm-Gg: AY/fxX4ETkAbSCwFZBZkrZt65rQPOaOdlYmmfu/NMjApuQSfjsIve8Xx1d7i36KMO0m
	zy43V/nNTYzZTWYAOb9M/PzP644bcDkk79bqrHv8fXelKog0iJq+LAzvbuzs3nJEdO8ecuKGVvM
	YP+Ni1iuTDMUdUJf3QrBD2VroeXCq/IaaoSFYO99Ra1CpGIjcWds2hIz3Qg1VxmmWbpHplGPWhL
	H+5gmjYcqj59GwjkHfOXXmJHYfW6SGHi324JpxZihTvtVd2a/amCB0iOVaQb6QmgmzdOHJG0Erw
	Jv3Savy9WeOgT3qCED7irTg/i6wSuki1lWXbnNjynUBQ1OHS5uPcnRUKLwgMf+1aqB3myy4EUOv
	8zOb5DZrUvkb7yJW++lv6TJvCa9pMVjwhSWpwIznqKeab1jWhjz9G4h/q+6bUrnyFjKFedpvcbX
	MZOlZ6DTAAUPCQKFNX0KUk4hJox0a+MfJ0uKpXVSDn+3w6JqxI7K1z
X-Google-Smtp-Source: AGHT+IFjfVj3b+EO26/newHAhHsttVW8tMAzIvuh+GO+sK9Ek8sLOWpM71qC+Xefo1q88G2i6FYtYA==
X-Received: by 2002:a67:e7cb:0:b0:5db:d1b2:c0d4 with SMTP id ada2fe7eead31-5eb1a81843bmr4103023137.31.1766498681198;
        Tue, 23 Dec 2025 06:04:41 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aad0d1csm4425926137.7.2025.12.23.06.04.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 06:04:41 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55b26332196so1316774e0c.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:04:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUsPcFBk0GPlfzAGqBpZCTsgOS2e0JQwUeXYaBUHdt1u0g2k3fl6TKHIkyVCohF/5OciOHzLmMmCSiA@vger.kernel.org
X-Received: by 2002:a05:6122:208f:b0:55e:4bcb:6baf with SMTP id
 71dfb90a1353d-5615be2e21amr4350349e0c.11.1766498679648; Tue, 23 Dec 2025
 06:04:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215034715.3406-8-wsa+renesas@sang-engineering.com> <20251215034715.3406-9-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215034715.3406-9-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 15:04:28 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU2S9ivz-tCJ0-+ukDiX1XJ1W6PYhXMDiwjrPx25DtACQ@mail.gmail.com>
X-Gm-Features: AQt7F2r9Kt9kfh9d8NWv8LptzC6R88BS41HsAN8NK9CC46GU246gmE1I-VG_VJE
Message-ID: <CAMuHMdU2S9ivz-tCJ0-+ukDiX1XJ1W6PYhXMDiwjrPx25DtACQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: renesas: r8a77970: Add WWDT nodes
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:48, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

