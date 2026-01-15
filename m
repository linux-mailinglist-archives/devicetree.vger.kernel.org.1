Return-Path: <devicetree+bounces-255341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1E2D225EC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE4B8302FA1D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D7A2C21EB;
	Thu, 15 Jan 2026 04:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DXfy0WH7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32922417D1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768451918; cv=none; b=UTVY06ItvNNfvjcuyQRTGWKk6ey/rS5iNWD0BngqPHQ6KIxtBT2zywROplh5eNJbZjwru/ubRoyJP6vsHbzyawrrj+zE+NrIfoty+7+9HkEWzNWAhRKudRLYqA0DYzmyy8BbQC6Ag7QvNpWrtje4qSg55xZkWcWqHoxZbJQQjgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768451918; c=relaxed/simple;
	bh=K6fjjXfXdXI+f3gfu+7LUUm7YVOdAS+PartG2/fB8Co=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GYSmtJBe39Mm7j/6eaU6nh+0tG28P6NINJfSTitYnK1G5r71TM2FeQ3EmQH+SquaKZ1qbmVTaKV+/tWIHIq50LT5ItNn250q5w3cxIpEG+YT6qd8lcuJ2fPE5c7w3F3jtvUwSkOQFPSDurnSa4zrMZFwn1q+BvlXpEkz4s8BhMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DXfy0WH7; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-121bf277922so673418c88.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768451915; x=1769056715; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6fjjXfXdXI+f3gfu+7LUUm7YVOdAS+PartG2/fB8Co=;
        b=DXfy0WH7f4bF95SrZzqV1rgYupQSz/cBJp8i8/tDdejaIk/+E4E+/kNcyOA4f7fW4m
         ftM30Wrr6bV2cQ8J12dCcuIYh0Iv7rZ7kiUXKLSopJOjtOSon4AkgCF8FkoBAeH4cT/y
         CogAEeVdsA99E7qXZmOQuNHHA0vPxFUR3y+ESyPZshRp3brSAKFinjso9LawPZHHkykg
         sMYS+zD2kvrCv+7zdeE64mJDCETS8aW6g4OaouiwsK4W72rT63Ai42EsI+Trf+i7lty8
         0ZP/4YoFZN/62qy2bAiRDqELn/1Wntz2ome2KFdyo43qLZJb4QIXVwEeqNzAewTd9Xtr
         SpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768451915; x=1769056715;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K6fjjXfXdXI+f3gfu+7LUUm7YVOdAS+PartG2/fB8Co=;
        b=FiC9sUkIVhSAEyGS9JmCOyXxc6FCSxjglUcUcLYMrWzp76qDLZCsf6g5slFfqQ4UD0
         uahxKCiQtWUfI693oWDx9hTX7nlAajtYpYbc62myaYlb2/aIZEqlkFvPiM0q5SxJNjnx
         1bRZhS5cPK6hzvXzT9hgbSFynCIoAHKXzC1W8xlngktfQachHrgEV7bf80Ezg726GrhM
         rM3vsDZ2f1Cj/pFe3YqXWiFyn+5YLU/7uCuyYHJm9akzuiG9F/d6EanVxNw8gjpXw0wJ
         EYcc9CxgtK2EnJabAfJldbvzmk/zBZ7F3iGuSn2cbOZ/ySeA2jDYjGpGiTo34RinU+7g
         bBNw==
X-Forwarded-Encrypted: i=1; AJvYcCVUPO8p7M4o2f6MLgGx8m5ELYjrWdcg8YXeJGWBOfACJP6QfHtKgjXIGfHLdObjokKOJwC4Vag5/PF6@vger.kernel.org
X-Gm-Message-State: AOJu0YzCOUKI9lzGq/xV5M3QLKLUUeuqWeSBlF7XEYA9CzKonjBaxMOX
	hi5XrBSnzXaNJHQ+9xdpznCY/B66MJUQXoloA624wjbKonP9F38QKtU6MgbnD369HEgfja6sOb1
	rTdz4xxD/U2sffctclImli2pWUQzM65U=
X-Gm-Gg: AY/fxX70gTB+fTfcwLHbywW3439eNDuo0VJ/iOLzvXaOXB+o1rIU2vd07MOHJAPIbMP
	m3jsyiToHYK333Taczxecw6gFRz9oBQnqFwJ+nNSvJEiW4WNKhAMwQ2FgtdFQC/OLdY2BauHzb9
	l5N14e5P5p2BT9Q1DT0ifF+5WC9wBfOUi7Y55dcOfbjBW+HE7PVrTpSrwlwn6Px487mMUHn61ei
	ZnDIUQuBwFks8et/nf/8RVBxI9sAFSF3CI306cLIXM8IDIUvYxGJoXP4nCGnTWnjDgaTTmCWbU0
	0dZbsQ==
X-Received: by 2002:a05:701b:2714:b0:11b:ceee:a49f with SMTP id
 a92af1059eb24-12336a247cdmr4745181c88.8.1768451914862; Wed, 14 Jan 2026
 20:38:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-2-anirudhsriniv@gmail.com> <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
 <20260112-whimsical-annoying-fulmar-25e4d9@quoll> <CAJ13v3RKydFK+sP_Cm-HnQjsOJSDyX_dsGs_Yy564V=Wc7tQFw@mail.gmail.com>
 <e97b7a193f8bbfca9ec00037808ad80a5baf9f00.camel@codeconstruct.com.au>
 <CAJ13v3QYWRfyivrbP=+hreHuMkYWGPkngW3kJyq6xNVL6YdpgQ@mail.gmail.com> <0e611132794491eecbcd3426222b6dca09a35b84.camel@codeconstruct.com.au>
In-Reply-To: <0e611132794491eecbcd3426222b6dca09a35b84.camel@codeconstruct.com.au>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Wed, 14 Jan 2026 22:38:22 -0600
X-Gm-Features: AZwV_QiAZ2miykzbN0XeJ-opRxy8zZQtPtnuJhtoFTPjOMJKnrOQBUdwpXszwIE
Message-ID: <CAJ13v3S+u7fi2h1MUQ1QvFm6Ouz4TDrNwJq3fJvDmBf37h8LGQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 14, 2026 at 7:03=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> KODO is pretty consistent in the firmware update file name. KOMMANDO as
> the product identifier also seems reasonable, even if it only appears
> in FW_DESC in the latest release. KODO -> KOMMANDO seems reasonable.
>
> A brief bit of binwalking suggests it's an AMI MegaRAC implementation,
> and so I expect 'SPX-13' in FW_DESC refers to MegaRAC SP-X[1]. The
> significance of 'TB2' isn't yet unclear to me.

Yup. The screenshot in the PDF you linked looks a lot like the webui
on stock firmware. AMI has sources for a bunch of stuff ( "unmodified"
source tarballs and patches to apply on top of them manually) over
here [1].

>
> I'm not super concerned about the length of "asus,kommando-ipmi-
> expansion-card" - I'd prefer it over incorporating the 'kodo'
> contraction.

Understood.

>
> I guess it's still unclear whether 'kommando' is a (future) line of
> products or refers to the specific AST2600-based design. Perhaps we
> could solve a few problems with 'asus,kommando-ast2600' and including
> the phrase 'IPMI expansion card' in the binding description for
> something searchable.

I will make the compatible "asus,ast2600-kommando-ipmi-card" and have
the model name in the DT contain the phrase "IPMI expansion card" for
searchability. You mention about adding something to the binding
description (that'd end up being more than a one line change to the
bindings) but we could just have the DT model name have that
information.

I'll send out a second version of this series shortly. Thank you for
bearing with me on this. Naming things is hard.

[1] https://github.com/ami-megarac/OSSW-v13/tree/master/Core/

--
Regards
Anirudh Srinivasan

