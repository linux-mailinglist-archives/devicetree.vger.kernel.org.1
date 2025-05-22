Return-Path: <devicetree+bounces-179462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B17AC06BE
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 10:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0F014E2EF1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 08:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1746F263889;
	Thu, 22 May 2025 08:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=brighamcampbell.com header.i=@brighamcampbell.com header.b="elV1jIXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6315B22FF58
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747901641; cv=none; b=DzGUMNEl+Eg6ka989ZcylwkgqhtoV1c0NBkGPZlegQdCs0xgMGcBEZAtSjw1yMmIxu/SPOlJ+JEwZeZw+MTufmNYVDpL9WnjcrLujNlPWDhyqB8cRrN7JyrSrhz1hHyc7a/VD8HePdgbCNgUb5pA3VO/I1L2yvItZIpTjykmT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747901641; c=relaxed/simple;
	bh=qnh/L98cmCh06yFhdCD+49/1rYyJlK6mPsgNKSKJHOw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Pz5z2ldrdLHgWLDob3fk67bl2jtinBg2lrYS+znuDG2QaYWZlxMipiaCzXZyJoe2uQv++9NA/LP5n6f0bQfvKxxJo/oT+ZZ4Ouz+7Ru8ue5d29EkIc3VgmJkMDHKsHrd6/pJBmLEbICcEtMW0XBgDr04ht1OBxqEYE+rg50DtHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=brighamcampbell.com; spf=pass smtp.mailfrom=brighamcampbell.com; dkim=fail (0-bit key) header.d=brighamcampbell.com header.i=@brighamcampbell.com header.b=elV1jIXh reason="key not found in DNS"; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=brighamcampbell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=brighamcampbell.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-85e46f5c50fso676251239f.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brighamcampbell.com; s=google; t=1747901637; x=1748506437; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8fveunfssaG8fltpv/kYgW4QFBaP5Z1Q9jmR2Ucz+w=;
        b=elV1jIXh7uh8PDXK/kEkBs9YAdr7hqn+s9WqQ+zMcb4u1ylH4CWYkotahBvp31AxAO
         c7gHttphIbuexTKMAsruMs5ka6hrQv/zQVd6ZO75C6mKU8E0jR/mxGJB2cDLA/TGyT/g
         /nTbqkxb5l4BGcChI7hHbEp9FUH/pAlsUEzjAcuyYPqEjaX2QIX0Kler1KnymTObEArr
         9cJiqIeDDg/OqEt9CnkmDvxcI3DzUctO2di3I6ITpe4pJBKRbuxc9sEzBcGfgBu1nSIz
         /vWqZwTs+TFlejTtlJEkuCPt46dS8Mf4I4u1pA1cx/z3HsxZzENMLyU10dxmcK59S2fe
         xQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747901637; x=1748506437;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c8fveunfssaG8fltpv/kYgW4QFBaP5Z1Q9jmR2Ucz+w=;
        b=XPRjUAC40u0ygQP0+c/3ab23iSV/4SDFNjMf52krq0/7W1YQoUskJzDmR/eVcpdbVJ
         OgqBoOOjCjMJdUabFAB8TvR73asOGGg+JLgXpWV1+fQYCBB/3sijcMLycotW6mc7Pe15
         CTK2ycA5FmfW7vpBvJIi5iDtFcyn+GitjFKxtMvQv4E4yztzTd0UrvDR3v4pkS/AJewF
         ga4DORcjrUtHP9bX2o9xNbuIMkG+H5fS7DBS5cToubQZ3SK4BMrMbU/zp9me2lD2n5oR
         h64wFLFwof03kiIpZ2jVgbqlfcsUXnhmCWG4xuX+xvIswN3C4MguDwpTVmg3Up0cf7xd
         cqeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxNiraTFRScmkEoRQGoAc0pef0hCyxktmiApaOYeWFGfVEPA1QA9LsEk3SB4vM9Vj6KKCMRjQ5I2Nk@vger.kernel.org
X-Gm-Message-State: AOJu0YwtGA4t/tPMZknr6RJUBSVRSLtaYqrhF6Qi+szLUUcaxfnEFvKh
	AnNcDi1Ouf9qUVtICB+hVMXQhfMLT1ooBUUu8Jij+7tDyUo8oxJ2OX3gWynMm8yIKb0=
X-Gm-Gg: ASbGncuFhyrj4ERx+xTjuRgj+i0EQ6jADEIz4ZIscaLlkRUiDbWfNjrjksTZgellv7V
	P/E6JxiAjUuxmeSM36QvWBgzKJIKhgmwakVMAhPTIwvnyUN1LNenSRsRVuVX6WdYq+GY0pl5+0r
	7LSpXr1MrupFf54diChcFJ1XX7QNux5/HfQ1817o87m/8Xs29FHgtRyk8Z0ssgeuqiu+9ZUhKQ7
	ddIDtrGLgpvOqAztHeofY98PPmAXGWG2SCYJLNTWNYeSO1CBBWbYU2L2Wp2CksYoldDYU/erMRg
	X6p/YJgt0B1TG6nt5MKEYFtiXCDx47WaLz9ia/tjB6U40DSt
X-Google-Smtp-Source: AGHT+IGjlgR+V6jDNuVgn2VgB5uR3ziTvMUlyMDL1h3fTHRWO4bCzJmoSqf3GPL+uFJjXhgZZKrRUw==
X-Received: by 2002:a05:6602:4808:b0:867:6680:8191 with SMTP id ca18e2360f4ac-86a2306ee1cmr3484870639f.0.1747901637427;
        Thu, 22 May 2025 01:13:57 -0700 (PDT)
Received: from localhost ([64.71.154.6])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fbcc4ea5d9sm3017587173.141.2025.05.22.01.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 01:13:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 22 May 2025 02:13:55 -0600
Message-Id: <DA2JF2BN2EX1.221D1WL4QHH8B@brighamcampbell.com>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
From: "Brigham Campbell" <me@brighamcampbell.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Jihed Chaibi"
 <jihed.chaibi.dev@gmail.com>
Cc: <heiko@sntech.de>, <briannorris@chromium.org>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel-mentees@lists.linux.dev>, <skhan@linuxfoundation.org>,
 <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
 <62bd6757-c4d0-42c1-a76d-abea18a8a55e@kernel.org>
 <CANBuOYpRQNx+n6BjpAF0LufpUqRA3wU-GzSNygeWurohXYNF6A@mail.gmail.com>
 <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>
In-Reply-To: <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>

On Sun May 18, 2025 at 4:34 AM MDT, Krzysztof Kozlowski wrote:
>                        If you do not Cc maintainers, how is it supposed
> to be picked up by these maintainers?

While I understand that Jihed made an egregious error in not Cc'ing
everyone listed by get_maintainers.pl, I also appreciate the irony in
the subsystem maintainer complaining that this change isn't going to be
picked up by the subsystem maintainer.

How _did_ you catch this patch without being Cc'ed? Care to explain to
the uninitiated?

Thanks,
Brigham

