Return-Path: <devicetree+bounces-82837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C41D2926064
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 14:33:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01C821C22BD6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6682C177981;
	Wed,  3 Jul 2024 12:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T2JZjCn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDAA176AAF
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 12:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720009989; cv=none; b=bmYuKqy9WotZgrd86aYGOZ5Ar0fxMjbBaBaKZAPJxP2Yq/PTxTeUpOTCcMTOBS2e0PTYE6Y64AdZemIjwJzPIaKB9k3PGlvT4OAPkeFsMIL4+3SE2eeOp4pfPD5gb5KQqklu5/ud8MAOrMeyBZUsuj4Su0EwebI4/oFvpHznErM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720009989; c=relaxed/simple;
	bh=vSqtvzn0M3C5j7Jfg2sByI7qK17/t+Y4ps+yPOtX6zM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EtHA0JSS5ID0WZMmGi3YQaSz8lYbj97cM4hCzi8zThcZQkNqls1J3Vv4Kw67ptK5LL7gZmND3tXOLDG1828wJnfQIxOAAgfq0CB7Wp/fWONm/oAwJ/3+gVY7EgPRCG2FjpK1b8dossx3NOoQBJIOdaL1keWla0aOM7FfUFNSP2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T2JZjCn7; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec6635aa43so52986801fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 05:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720009985; x=1720614785; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSqtvzn0M3C5j7Jfg2sByI7qK17/t+Y4ps+yPOtX6zM=;
        b=T2JZjCn74zERrn3toAtkV5skfQEMISGuyIkNd99xJrCaIvnYpMDE6AArqlXQGe5x8g
         Mo3Q84DQs3x3pXLH/4pzSVdRgeLtkD8Fu1aQ8brqRN+WskSRqGN9CmducP7s7I+/dRZb
         O3dMbLgfN1n8PWewOBS48B/eoA9EAL1Eg3c0lxJrIN/hX5hR0gT++4RiCaBVv/lv5+JP
         g0xboyF5AgZzkOhTrX8Dus88WHkqubi54/HANpZoTsfDjANrLgs4B51qECC1OLqiek0k
         qy0anD/xtdWM0FSUaLEYOZlDUHAF1epXVEeJmkfvjho8lYE8zGXT9csI1Mf7C3p5y6tI
         AAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720009985; x=1720614785;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vSqtvzn0M3C5j7Jfg2sByI7qK17/t+Y4ps+yPOtX6zM=;
        b=vHSDhiX/T2aR2BIDg/REKb7fXbLBBSav7mY5MpFagmcwwKhTCmNyMw5RResgpefL5W
         tLkvS4QkUG+G1cEJGxWPWg38iKLe3aCR3aeb/pt1tWCVlPgYeJ7CyTW21sczi3RJM81C
         UlTwqw0wNE/QZgtgjPVxJDXlMGG0HzEzEOTHP1evEJ5Ujflmvcr/vQ77VGp9iF0brvYQ
         fTyKq2mo+QMz/Fxt6LGnBThLoqKP5ixAu4vHKDGcIedAQ0bucQdB1X7s57ZbjyCtBpzR
         1F/lbEBrYuIoCBEjR7dOOBDh2mRcP821Zwl0R5ZAgoH2J3fWASMWAMgfshNiUySvQx1E
         uIrg==
X-Forwarded-Encrypted: i=1; AJvYcCWqD9CBNo2b58BlzV5zg+wDordjDFVenxNDTnIgSw1ruKnfyCASrjWHYWvIeTx8VVj3LYOeKu3HKrY6QauzLFukOSq3M+HTPjO0IA==
X-Gm-Message-State: AOJu0YwEAnh9KrITKYewgRoram87D1Q8u+3LdVPfoXmDQ+hs2Xxyv8CJ
	lYOv/ncFA5QKy73Kh6aXDRu5smqFuF/AhyFVD9v7cGcxCA373wlcMQjG0fO1FprMmFWjLu5K9Eh
	dm8dGtXE4RqoF59Nm0n9Gu0Oh/BOeGuZ398/czw==
X-Google-Smtp-Source: AGHT+IGbnlRShz/3hXmtetfc+0EghD2fIMBX7fxnDCTNRN+4rKt0LgTOhBhEx8FxkTdV4WjFp2QkGDn2ZSiYPJqUaMY=
X-Received: by 2002:a2e:a58a:0:b0:2eb:ef78:29c8 with SMTP id
 38308e7fff4ca-2ee5e39400cmr79485811fa.14.1720009983878; Wed, 03 Jul 2024
 05:33:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240612-sm4250-lpi-v4-0-a0342e47e21b@linaro.org>
 <CACRpkdZyupZmV+e=L0KR8ospH9P=wdUrMFvBnGXyfhLhW3-=PQ@mail.gmail.com> <4106f2be-be0b-4263-9e61-c3a29e837a7c@linaro.org>
In-Reply-To: <4106f2be-be0b-4263-9e61-c3a29e837a7c@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jul 2024 14:32:52 +0200
Message-ID: <CACRpkdYAXGfAdrDeDArB=fqNGt44GyY1Xq3PAToExcP1vuBP2A@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] pinctrl: qcom: add sm4250 lpi pinctrl
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	alexey.klimov@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 3:42=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 26/06/2024 12:04, Linus Walleij wrote:
> > On Sat, Jun 22, 2024 at 6:49=E2=80=AFPM Srinivas Kandagatla
> > <srinivas.kandagatla@linaro.org> wrote:
> >
> >> Add support for sm4250 lpi pinctrl.
> >>
> >> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> >
> > No major protests against v4 so patches applied!
>
> There was a protest from Alexey, that driver does not probe correctly.
> Can you still drop it? Not sure if worth revert, though, better to fix
> incrementally.

Alexey sent a patch so I just applied that.

Yours,
Linus Walleij

