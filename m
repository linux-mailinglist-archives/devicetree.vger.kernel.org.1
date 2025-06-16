Return-Path: <devicetree+bounces-186099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E658ADA61B
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 03:48:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F55716D276
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 01:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0947F19DF6A;
	Mon, 16 Jun 2025 01:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PHMLFk1S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F46D3C465
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 01:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750038503; cv=none; b=mZYNrd/DtXZEWr3LaQaDTNmR2Pp5Ra2ZWHHaz1NSoj5ACSzZABkb/a4s4GVZDo64/ZBei0GUaqv4h9YutsM0yOwuW3c8W3shsJJX8jqKGA7P0802SUnnjrMo7AvxRzKRRjODu0HdT0yDSIR1ylMFQ6Uo8Y14hOshMBg1eN1WFvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750038503; c=relaxed/simple;
	bh=EOzSlHGrohqg16jZUYXWufW0vuZiNjJeJ11ROGdnH0s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tL1lFReiK10Yq6ZY0kyYa5XJlx553d1wh9eEi7KD+EnbogZ/+hT2Uv0P85jNP8wiBIPP3mb8m1YZWk/+7GYFuFAgakNCH/L37gb2vv5W5eSqjFspnmqktoNMfsb/yiOauqUXd3lujYsKRehYkQGyTJFAXqYvHOEx6VjNFB6u2TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PHMLFk1S; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e81cf6103a6so3302795276.3
        for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 18:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1750038501; x=1750643301; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOzSlHGrohqg16jZUYXWufW0vuZiNjJeJ11ROGdnH0s=;
        b=PHMLFk1SFrlSDc+FW7PJvqlR1uqPj/vXiOwU6cmdrNVntcHkBakTg1kTbN3JI31xJW
         p8wdASgjeL6IkJwyRYh9/1PMDano2pbkQWbgZD783fbNCQQv9P9Bs2xWTH8zi98Og9FZ
         vy/lalsJLZ5XjgG8LvFiuKUEHzCAUDJH6nBtiYyZiPiHlMq1zw1bMeLUDtbfvApUmiU3
         CoMGo5o1YhYj/J34rIdDgHfuYZEN8gATZ2QNphvbDGpo2fEm+AwK2vndXNjCN0jhClqB
         4++p7McpYhL7LGLt+U5B2KZfMy2qP2EzepawP4ElyqD1aWIhw5mttF/ldM4DsUgceXHc
         uHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750038501; x=1750643301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOzSlHGrohqg16jZUYXWufW0vuZiNjJeJ11ROGdnH0s=;
        b=CidNPPyhusiKpiUzQDDFE0Pmyg1BqGmgeHnJlda0lenQMQ8nytVuOa5YYp3ifDj2mm
         j7vF2aFhPqmL29oh1nMSyaUhf55KhuL7uPurEyKLlDuSPaw86s9ieoNxh8KS9J6VBLvy
         +e2sk3nXgBkGXGavk7uHD/dC4nyGVSHZhg1MDDpFLjIo4MXQIWKVOsZQaB84U/uHcvT9
         f0ykB2Ub+t48J/cX0IBamefqgphPKbzChsWH83ZqRnsa8Bf9u+hvfGaW2TJ/pTZGluWu
         Chip7kyrl6tZy29Ik8OX5+KN2F2S7e3U/AYbOj9zWR11ix1HIwgWds5C59ctNY7QDFRQ
         UQ3g==
X-Forwarded-Encrypted: i=1; AJvYcCWNlSo5V1harBWv/+dKcHSut7XFoaB01VjPTd9iMZzP5oizEjhDhvLDx1R2OHEz0oARQY1ami7JusSX@vger.kernel.org
X-Gm-Message-State: AOJu0YysHBZTZGAHcnmFwLnlUzQJPDsEaIlgWr5KoJ00dzk0sOV4zPNp
	UgbwvKOIGlou0HWhMiW+vKHl/9dCWPV8csAfFZOIgjb87VJHPQoJS4FagNllXATivMMm3vl4tGJ
	DP+NnRc8CkcSz/RUVv16TYJsTqLisA/iytGOYUXVKgA==
X-Gm-Gg: ASbGncs5VzpykC6+EiJL+YquiopxtgbFDwtqLs/aE6Dx+C2MshaJs25OGfNtNtHU/fp
	pBh2//KxPSWiIjQymU0Rzh8b8ye59tIdUdxoWg3EC2gEc7bOTQEfTJTxhToj68VsP2Vct+/13oU
	thxYMiJSOPb5vw2b6NCZ7lqsUkkA3u+Iywdeb+JtdEP1hreA==
X-Google-Smtp-Source: AGHT+IFalCf8ZLoxrhpSKn9vCQOzYoFcnEfNXOj4LlRmMvOTsepmvXs4hWpCrqsUwKhOi0aW6UpNob7XRbuxVWD8Dgs=
X-Received: by 2002:a05:6902:98e:b0:e7d:b107:d829 with SMTP id
 3f1490d57ef6-e822acac597mr10474564276.34.1750038501428; Sun, 15 Jun 2025
 18:48:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611031023.28769-1-nick.hu@sifive.com> <20250611031023.28769-2-nick.hu@sifive.com>
 <9c429671-8409-4911-8559-73a069d66964@kernel.org> <CAKddAkAyvRdAz9X_rCGgfdxD0Z_Q7sAt8e5nuJe7=s7G-Y3+AQ@mail.gmail.com>
 <19dd3d16-aadd-469c-a090-238baba14d4e@kernel.org>
In-Reply-To: <19dd3d16-aadd-469c-a090-238baba14d4e@kernel.org>
From: Nick Hu <nick.hu@sifive.com>
Date: Mon, 16 Jun 2025 09:48:10 +0800
X-Gm-Features: AX0GCFuk6UQINAiWg9qRWYn3jgDichbt9fCZYVL_UNVZi-NYRKmQpcuss8-kLqU
Message-ID: <CAKddAkB=yeLCh3oVFeot45nTr3d0tZjfiV+YmWR-DWFb8w+=jg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: power: Add SiFive Domain Management controllers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, Cyan Yang <cyan.yang@sifive.com>, 
	Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 11, 2025 at 3:20=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 11/06/2025 09:15, Nick Hu wrote:
> > On Wed, Jun 11, 2025 at 2:57=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 11/06/2025 05:10, Nick Hu wrote:
> >>> SiFive Domain Management controller includes the following components
> >>> - SiFive Tile Management Controller
> >>> - SiFive Cluster Management Controller
> >>> - SiFive Core Complex Management Controller
> >>>
> >>> These controllers control the clock and power domain of the
> >>> corresponding domain.
> >>>
> >>> However, Since we don't have a SoC specific compatible string yet, so
> >>> add '- {}' for the first entry [1][2].
> >>
> >>
> >> But you must have Soc specific compatible strings. See previous discus=
sion.
> >>
> > Maybe I'm missing something, but since we don't have a SoC-specific com=
patible
> > string yet, I thought we agreed to include a `- {}` as the first
> > entry, along with an
> > explanation in both the commit message and comments [1].
> But your commit msg does not explain. You need to explain why you do not
> have SoC specific compatibles. Saying "I do not have a SoC specific
> compatible" is not an argument explaining why you do not have SoC
> specific compatible.
>
You're right. How about updating the commit msg to "When the SoCs are
ready, we will add the SoC compatible string at that time" ?

Best regards,
Nick

