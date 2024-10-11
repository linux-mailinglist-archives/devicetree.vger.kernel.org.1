Return-Path: <devicetree+bounces-110254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89503999D3F
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 08:56:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D3391F23A71
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 06:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D30209F32;
	Fri, 11 Oct 2024 06:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sOxRR7lG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE472209686
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728629761; cv=none; b=h760zpTFWIs+Quk9+zGwJ6XxnL3axNjPC3XrF8zCD+ynrRsUJ5yNOQWcKWKg/n+GIAQuKUzXHQSKd7EMdh1OmfqFzGOt2zjLAXpm0YMP2IRD7FSqHIgfu3NAnShP1nBzuYSBmr7t7dB5b8vg8MPqfjBGDObFmEW7eJ4Ah4Dean4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728629761; c=relaxed/simple;
	bh=F8PNJMCeifo1mZC3p7Img0xvI++DpTEFPppXmyi/ygU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FxVzouypcT0ILUP5uzSOR057/NF/R1zeIMOc4fMYpjdTAx2W0pEzA3LDUw6zW4EwyfRMjNKl8v6dLDy2CTy5FKJCH2LT2Dq0zK4dJB6VrysuvWu9ksoaWZWRZqdXuqFasgHYHk7wXn0Aony/dT4BFnJ/oUcTg6YNCrSKMbgTpN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sOxRR7lG; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fac9eaeafcso19047441fa.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 23:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728629758; x=1729234558; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8PNJMCeifo1mZC3p7Img0xvI++DpTEFPppXmyi/ygU=;
        b=sOxRR7lG4GZ8XNzKyav1mSZtUduN1dqQoEnq+x1UM5OJ8o7fAhFvav3d9tvbmbQHtK
         bW7jbWicQy7aXhjfFLbxTihfFRmnX+dEgG1J7EIsP4fbAtZ+2xVFypU8RuEarkCQFGt6
         NVW3eqjG9gWjlfe7bGOS8aadEQvD7Y9NecFCqhn9ZtL3B9IwM6ge5OokqiRR7rpsDm7O
         fzscolRUl+tSv5H5uPAzaezNsdIYvPR+fpJ+Gul9AWsKkr1Qw9n+LMiGi8Ilm0uPJyHM
         U/nKC7zHbj+GdsVxx0Q5ypV7G6N5Ikgo2FvsIGbPG85kqeE7p0WLtvGSONovKz0j+bth
         uIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728629758; x=1729234558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F8PNJMCeifo1mZC3p7Img0xvI++DpTEFPppXmyi/ygU=;
        b=EPCnoSSGgwvA2lIloMj6sXknB3Dp7AugJYYad2tiX35lAMJDAS1RdLA9V+xMGCZU1g
         Be+lR0tYD9qdlsFpUsFnhw3/FBIn2Ck3i8JXjg4t84h85U3lragvJz+dDQfzzfZKg6Vj
         ABAY5aKz7HnqbaHKJrTDznYzWerivTarlDSPibXBHL0G7zjgHIE+j6LSsEdgDYJVWbl8
         mdeL9ett8eBBY4Gro7o9IZy0uLf7wbUei0M51zgG4Fyfa77gzPkFHx+9J9g4cF3V0cLu
         7qRFpX4WS2UtPSnTHgvxdVZlHULL6Rdn56iCe2tN/NNGXHATsDD773sHB/9QgY3dReYs
         BlHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAeazBtdbr6mIloaWKiXyvbpX0OHmf1H8XXiRx2IsbXEaYrG5ALgZcKx/Qeqe7ah6IvAoM0hzMqdjj@vger.kernel.org
X-Gm-Message-State: AOJu0YycI1NXXfiFZ+o3BI0TSZJ/IQ1QLtE3P+uxO+5rK4lFIbu7NOE/
	U0jNSL+bpoHexywsN6xCgRY3HGL3XG0aZfk3LlvGnL10Ie32OpX3sVOklYmFdiPDjDW84hnorz0
	UVPsinaTGfiGXP2QyEMIC5knjPPrOYs0Y9Tbbcw==
X-Google-Smtp-Source: AGHT+IGAJQcnTAvA+r3RXsjp0iw1c7SqYN+B51Y8atK6+YUtmDx5vB64aMCbLw6zGbSXsSVgP7l2P1bZrjq3Vgn+Ce4=
X-Received: by 2002:a2e:be0c:0:b0:2fa:d31a:1b8c with SMTP id
 38308e7fff4ca-2fb326f5589mr6826791fa.2.1728629758000; Thu, 10 Oct 2024
 23:55:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
 <20241011-genexis-xg6846b-base-v1-4-f04d6f6f93ce@linaro.org> <b542b2e8-115c-4234-a464-e73aa6bece5c@broadcom.com>
In-Reply-To: <b542b2e8-115c-4234-a464-e73aa6bece5c@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 08:55:46 +0200
Message-ID: <CACRpkdawVVt8_2jRfJebUHBMLPCUaj76gieM=FqBbEL2yxwsbQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] ARM: dts: bcm6846: Add MDIO control block
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2024 at 12:11=E2=80=AFAM Florian Fainelli
<florian.fainelli@broadcom.com> wrote:
> On 10/10/24 15:07, Linus Walleij wrote:

> > This adds the MDIO block found in the BCM6846. The vendor tree
> > calls it "mdio5" so we assume the right compatible for this
> > particular version is "brcm,genet-mdio-v5".
>
> That the same IP block be present on systems using GENET and BCMBCA
> routers, absolutely, but it is not really the same. The one present on
> BCM6846 has an extra pair of registers adjacent to it:
>
> LVL_IRQ_CLEAR
> LVL_IRQ_MASK
>
> There are other differences like bit 13 defining a "free running" MDIO
> clock, that has never been present in any of the GENET or ASP variants
> of mdio-bcm-unimac.
>
> Therefore an updated compatible string would be in order IMHO, thanks!

OK I fix!

Is it the same block on all the BCMBCA variants so I should call it
"brcm,bcmbca-mdio" or is it bcm6846-specific so I should call it
"brcm,bcm6846-mdio"?

Yours,
Linus Walleij

