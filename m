Return-Path: <devicetree+bounces-243854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ABAC9DD34
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 06:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A15914E0358
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 05:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED442874FE;
	Wed,  3 Dec 2025 05:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gzMtvuKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B6224B04
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 05:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764741307; cv=none; b=huooFaOYhw7ZgqpRT2kL21JxOnC4rJJQD4JMcxCI+oMcHEdotQJ9rOkhvG9iCrqkyN5vH/JlLAqXuBq4qJmywRjlg0MOKVigxxCnPjBIt0mDohXwjgSqhDOULRq8Q64mJI1Ylx/DA2v0oGU8Hn+PUNQqJy0pnkSHVcGOmmP8aUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764741307; c=relaxed/simple;
	bh=0X0DDNFH3Ev9aVYRbKGBfspeldcgABI3ElaelHXqkTw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S5JNA98t3ommD5dQ7aNyLb4f1xlyPKj3pa7x4amMtt5R1UaB1XOA4SsboEh7jZjx9udlLQxXfmwF2H68dCOMvrWGuHm8dIOe0/XExyiJu/I4zH+nWihJPteVGy/wgBls5jacTWPVEv8JyuxZM/QUFnz169VUYKTQg1AxPQYHVSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gzMtvuKG; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-297dd95ffe4so55845265ad.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 21:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764741305; x=1765346105; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0X0DDNFH3Ev9aVYRbKGBfspeldcgABI3ElaelHXqkTw=;
        b=gzMtvuKGws1eSWGAuq+PAOrpjYnXSEWR1923QSHVzqc/szvr9Xr2kJJ020AVaowwZM
         A5HtM5Jc+zPImXspecbkpBgDgiN61pjkxspzYcw6etxTedWcqJ6RtXoiqWPJFh37wVG6
         l1RyGtpJ5HzY1Sxm+l+va3oqS9HBtRI9cGJYgMocvjFO8i+zu8Gm7ZbwdEXS/hDfrEag
         eLOYthrEKrQ6r18vpIRQGIPOo7pHLgIjMwHqKPGXMeWIw0ba2NTS0aoY4ib611+lqy4w
         KAFNToYwgneiXrpNHTEGmf5BgOaYjIamv6Kir8mFD74YlYaFAzjId5O1VIvJGU1xJE71
         +jwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764741305; x=1765346105;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0X0DDNFH3Ev9aVYRbKGBfspeldcgABI3ElaelHXqkTw=;
        b=uLuIv1pIqfxAppuWs1L1GpNL+fYNtmepu4j13zE0Y8YwcnO5i4si061SY4qvG9NHxH
         r3tL45Nxu0CSTq/C7oGYSCyvr5V/rk6In2C5WPu44UsJhXfQWPhSRmQu2avcFqCK1iLK
         0Ht1c8VDzBRuoN02T/9tzYy4tHYIDD2KvGoc4TfiT3uGW5o84pyuD/GbFxQbpgq47XIF
         S3CyJopUEcVnG+6vO7rnb+fUInbcEfntyS1UAOcckPQOmnO6U1vdwlUBtkfQ9u107xzH
         RjIHVYE6KOimlKlomi+d4wQhtkE5l+X+GM56PLE9gV7s9dUEpO2GAX9Iq4wuop3b7RjT
         UVYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrDZ3QnZjNm0Z+vny8w//3Pb3VB7wTZQp0NH/9N9rGvGVsO3Daiq4eaL9SjympsLAGI9stheSkimoO@vger.kernel.org
X-Gm-Message-State: AOJu0YyPD1oRTdpY339LOE2k6VB7NWS9QT+q66iqhV8g/c9z9Jx7LIGI
	iC/mRMfudYjcYrD0dTQdyRKbxe2FC98ma5fZQiAcJdMBg2FzOVp+EJ8MYyv4mnJIudgYL4IdmJ0
	Xv40dgDfdcRCEjyFe9rG8tYethQybAh8=
X-Gm-Gg: ASbGncv1xuJrokk6BadwwtKqrH9C2C7Nm0eh5Tx8YXNsRoscQnwnc0fGN3M4ySpsT/K
	ckbSjUqsVv3VwaGtZX9WoccoxyruyHCz5RLg2q5+xC+VHAbwQGx+2uf5uXlMh22yRNv1iDqJRkp
	idBKK8ZQhM9mOjLbKjKrQb+1CFpvHFg4nnlLkbhhysbpMnVU+TmK9R8lDyJYlZGogUqouylbfwO
	upVJ+oy5ga1ZHvHTVN0gYeF9IsuSeB7X8i/XZ7ixjkJoeGr3VNKHh3bsp6+suIal6ZtMuOv8DBk
	J757qA==
X-Google-Smtp-Source: AGHT+IGlBCnAtK53Fk8wZM5iFBeVBzZOXmCrnKhJ1FO8Z5h+6EI5r7eB09cypqHALV0pwNkVTP+iK5FPn5ouvpjv7Mc=
X-Received: by 2002:a17:902:ebc8:b0:295:f508:9d32 with SMTP id
 d9443c01a7336-29d683bb11cmr16122865ad.37.1764741305338; Tue, 02 Dec 2025
 21:55:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251202061157.1710163-1-shengjiu.wang@nxp.com> <47e32ef5-cfcb-44aa-9045-52d84f7686d5@kernel.org>
In-Reply-To: <47e32ef5-cfcb-44aa-9045-52d84f7686d5@kernel.org>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 3 Dec 2025 13:54:53 +0800
X-Gm-Features: AWmQ_bl9yg-cNfOsr1ZElVdBAxzvXXRK42GyUZlfUtv0M-hIMz1ZXcfuqHhfSek
Message-ID: <CAA+D8ANHFOi5ksBEyZSvFhmp21XbBD1Lgyg+TJgjRX2xBcc_4A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: cirrus,cs42xx8: Reference common DAI properties
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, david.rhodes@cirrus.com, 
	rf@opensource.cirrus.com, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	patches@opensource.cirrus.com, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 2, 2025 at 4:06=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 02/12/2025 07:11, Shengjiu Wang wrote:
> > Reference the dai-common.yaml schema to allow '#sound-dai-cells' and
> > "sound-name-prefix' to be used.
>
> ... because CS-foo-bar device is a DAI?

Yes. cirrus,cs42xx8 is codec DAI.

Best regards
Shengjiu Wang

>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
>
> Best regards,
> Krzysztof

