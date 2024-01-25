Return-Path: <devicetree+bounces-35029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C83283C17A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 12:59:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB384B23D7B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 11:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 520E236B10;
	Thu, 25 Jan 2024 11:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="KjTozkX3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAED33CDB
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 11:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706183922; cv=none; b=cnHuVkHsxwRJXUtiBPyDbK7ieJKr6L7BP6DmgiKYbyYzOkwVi188q05R2ffk+JKRyFEtL7WKYNcchykJd8sBjU2dZpW+dbOIDdMqfFlfEIMfjymTCSKVKCgLBxRloPiR1yvnp0xeeh9dGhK+woMjzkd3LW/vwtOvs5OlpEv7yjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706183922; c=relaxed/simple;
	bh=c1MXNU8fBQIq7CZAvmDVQrraCezkC83dzdTmFADzH6c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=NKvBBhBpY8KXf3i8Pf14fif7Npd9MIu0DiTBW6eY/MFnzjdwfmv/lHDPXSg6UPgL4CfEK6gm9+85KsKYZWCE1+iVS5nr8fgXknCZUC6PiIUx+GEHp2pnsYt0oMad3gi390Crz78RRcQHDME8gtJbLqR6BdgCZVn5TLJ8aQFarLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=KjTozkX3; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5cedfc32250so3719333a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 03:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706183920; x=1706788720; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c1MXNU8fBQIq7CZAvmDVQrraCezkC83dzdTmFADzH6c=;
        b=KjTozkX3byEp4c7Cm9xbyivUYjZgNidkhHhNTgnASbYgx7RfDW47rOxGp9sm2SUFsR
         0btAmWE8iK8yKT1UbrZv3CwN/Ut4n3CKY8EyVEIImjzFWK5IJ+cRoMXNuVrwR1C9TECC
         2kqe/4FW9+U4yKb8uT659zR2V4ignmtJnaOd4dx38v5mFMc+7/vVysYYyfx3zfZYW28Q
         NFQC7wAoFyz7xo8uBz+l7q2RBDHKWrUHg/i9CHBfkzH6uVKpeAbm205xOWXpQIZv4FaV
         h/c8z/02x2SkNOPBkVRaGtyMFQWrHLKjEOnhlyelNb82F+AWomQLZYPgNtK91LF6J0Db
         3MMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706183920; x=1706788720;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c1MXNU8fBQIq7CZAvmDVQrraCezkC83dzdTmFADzH6c=;
        b=pgqF2+iJEXAqGiUbeyMTrJaA/kRaBnc25o6RGpDk0/x3T9IVKcEBhzI6qNaYI+ObVZ
         mv6jQbbLIp2rkLa569XXPcloYJDjekdNnE4c+9RvJ7+IpVowue2hYbKhFhz/Sz/Aba4o
         q4hP80D2lNjarrPius1UpBtVHkxi9NvRALUZ5+IDDV3bvIWNypGwX+GR4VBMwjYeYXUm
         ut3KnuLjGdBhIs97nqIJtez14oiyrl1ZDCr3dFuCFyTVId2F566nG2mOenhuHLW/Bxia
         Y1kzx+c571sbKndnNuyOTtqNflG7DtwkFffaSRBbjzfehWXiqs6mx0wQfuS2HwpxRvpW
         CCug==
X-Gm-Message-State: AOJu0YzGHNvUN/xccurL/cAcDIEVTrZFA3LTBGFDyNR3bLR1pS6yGiOx
	ApRREhtCJYyGo5LYRFBjJjRafnda3AdWfbiigkfUv2IbzYQ2h4PueqwuHRpEQnTTP0j0aX50igX
	yPrqPCPKFFLCXSxDqNTpAwrWV31bZ3WAfBM5ldQ==
X-Google-Smtp-Source: AGHT+IGVGqvZTn0517bIq0KM9GtuUE40zBP+m/ZFjGMQb49WTfSmNYb/qaIO9kLZQYy7D4bbUFW9PXU6IfiojJjRAd0=
X-Received: by 2002:a05:6a20:b809:b0:19c:5e76:d81f with SMTP id
 fi9-20020a056a20b80900b0019c5e76d81fmr628988pzb.66.1706183920112; Thu, 25 Jan
 2024 03:58:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220082803.345153-1-naresh.solanki@9elements.com>
 <ZYNTfKLFGrLq8qGY@shikoro> <497e6eda-a416-415a-b468-fe764c14a8aa@linaro.org> <ZYVmZXpwgHJhS8Nf@shikoro>
In-Reply-To: <ZYVmZXpwgHJhS8Nf@shikoro>
From: Naresh Solanki <naresh.solanki@9elements.com>
Date: Thu, 25 Jan 2024 17:28:31 +0530
Message-ID: <CABqG17jucw00M3PxjAUrmTUuHajFT4qBjNMx5BsN59bsRrDEXQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 1/2] dt-bindings: i2c: pca954x: Add custom
 properties for MAX7357
To: Wolfram Sang <wsa@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Naresh Solanki <naresh.solanki@9elements.com>, Rob Herring <robh+dt@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Patrick Rudolph <patrick.rudolph@9elements.com>, Rob Herring <robh@kernel.org>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Wolfram,

On Fri, 22 Dec 2023 at 16:05, Wolfram Sang <wsa@kernel.org> wrote:
>
>
> > Some explanation was provided here:
> > https://lore.kernel.org/all/CABqG17g8QOgU7cObe=4EMLbEC1PeZWxdPXt7zzFs35JGqpRbfg@mail.gmail.com/
> >
> > AFAIU, these properties are board-design choice.
>
> Hey, thanks for the heads up. I agree that these options should not be
> "on" by default. I am still not fully convinced they serve as hardware
> description, though. Need to think about it some more...
Any update on this ? Let me know if I can help with additional information.

Regards,
Naresh
>

