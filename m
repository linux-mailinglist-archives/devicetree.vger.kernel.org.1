Return-Path: <devicetree+bounces-231792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F51C11A3F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:15:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79A7E3B71CB
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26ED432B998;
	Mon, 27 Oct 2025 22:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OcOFMDw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261622BE7A1
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603176; cv=none; b=pLtdEVpJ1PO1vntd+cn1wLgo8/B+GItby4HKXqhep0EsVzbTDErXRri4AwuwriI4tm5wCOqKOZf+UitBnu7Nw+HF68cn4Tptg4ZoGN1k4FME9887ABLFhIlzkFzDoU12cg6pnDsHvzPMsQA8uLvR8UljNih9WCsbSIACh91VtpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603176; c=relaxed/simple;
	bh=p0VYuTzD+pw6O+ffSIwOFLJ+utPOn6Ed1+UK3H7oZ0A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UIePS1A68kXuxJZ+QZrJSdDgBBbYYrCQJ1rO395K0Ju23a+asDSeULrxFGCDBbfuQ23doy9NMLy5BwIiuF3RpcD4DWpIApghsJjYmjSUXRJKPsF4NGbvGMyLa+CmFlzp10jvz9hP7v+oAnvOj/QqmyCMhWPDkJRa2kJOREB34PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OcOFMDw5; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-378ddb31efaso62034421fa.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603171; x=1762207971; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p0VYuTzD+pw6O+ffSIwOFLJ+utPOn6Ed1+UK3H7oZ0A=;
        b=OcOFMDw5WE1VvjjLIvOIMrhOr8poXBK1twid9BTAVaxS0GykGPg3DDgQiZKPovawj2
         3ler2GJ3PHtwNzxKNYmraXmuEQWGq7eMqgfg2tNpl4/oYIrX/QdVllqsFEUptunEx4uL
         bpYPn343NQjsZqSNBIGQVNYLDsjVeFHlk7hPXVi3ceK2H0OFSIUZqf/FvR96jXYQUfGC
         zpp+M7u2+ThyBMTdlW0uSMEnDVXNpdEiNL9m76SZ4jihOACza8ojFuyyUshb4QZUShu5
         4zKYfYG2VPxmWQNS7Q+/Ca1BCL0XmiSK889PtjuTzyEu2okOYu/ln+0AgB4a2kGT81n/
         gBOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603171; x=1762207971;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p0VYuTzD+pw6O+ffSIwOFLJ+utPOn6Ed1+UK3H7oZ0A=;
        b=qZH7RJ9yaKoED5Ar2wRtqsxVZIb/CFoSoYSspPJG8ZAkZLKfXFNKWhEamlapNSf7IK
         qCnRRbygj10s/tfQArEKa2Cru8a+r1HxaSLgo4dar7nuyEGAGMSd5u8zAIqjBZdWGnAT
         UxhexlpoO1418FRswe6OJbBJIn3qQdmvYFQ2FWX+otNgqnBkwyFqMiLLzcan/nJgO/7B
         GjNqVWlVchQZQgmPg2rIs9A30H26elxNykg3biTd5QVH1cSuHvMi5v83z71pnzMYB27e
         Qfy2PE5jMiMYNs0vcOzlLzGkOZbR+4GxOzNhTcyz4ByyTW+NUfnK04dLxfWMQbVYAR5R
         d8Hg==
X-Forwarded-Encrypted: i=1; AJvYcCWcWzPePwReTU+DPus9beyubjd52Kz+pIeFFwAn+nyW4gNieB/prkaaR5RSh5sbA+UEzz/sLaF0Wmct@vger.kernel.org
X-Gm-Message-State: AOJu0YypiiEumNuXw5VGMW1TWViMvQFWBojS8OPSb2cf+8u9sx8Pf8iE
	R+aW8vYyyDyE09USWTFgvtQ/Z81HyOfcw5ak6of/892eRlzqyCMlcfn7iDt5xbbbRjqEVuFHzlW
	wBjpbyUB8mwqhEO8VuYrDOpTeh714W0dSU0NmQcYMHA==
X-Gm-Gg: ASbGncu/zIZVibK9DJ989UiSOEHYKFnue05HHLIuWk8ils8bC9h9E5jZxXmdhx6uHao
	zHptCXWTzJEolaYPOhdsZIbgrwQMeKdp0pF2IuawX44a9bQ1uzbU52iZKsSZjzi+rSHPMPvER9/
	q2tnLPputWgz1/WZjZ3fN2XML1vA+7+TU9XHNJ4btyDqS0EGhA0jNl1ijXA/OOyqGDOyLlVGqu1
	JxBIssF5fiMmgNXxooDcTeB3HTqVGn3UkHBf5M3JM0bJw5MXksjsxXUll+h
X-Google-Smtp-Source: AGHT+IEO4OBX6LOPY6n+Kwj2RHxhOjz2+JIoc8GL2mJCp5ePHLtyDD4AZKAQpVBpjKroBtS/M17W9y9jzhmN3enwix8=
X-Received: by 2002:a05:651c:4406:20b0:378:e437:904f with SMTP id
 38308e7fff4ca-3790774c7cdmr3152661fa.40.1761603171396; Mon, 27 Oct 2025
 15:12:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-7-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-7-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:12:40 +0100
X-Gm-Features: AWmQ_bmFZYqcGNF8COoxdkJmlFz45N7cHtmhxRN-kPjjoyKz6dQA3AfG9pT2B40
Message-ID: <CACRpkdaSvKiGaOMbp5cmH=cCCzmi=cbUf+=4GvMZ-e-NbJT=+w@mail.gmail.com>
Subject: Re: [PATCH v4 06/12] pinctrl: stm32: Simplify handling of backup pin status
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Use C bit-field to keep the backup of the pin status, instead of
> explicitly handling the bit-field through shift and mask of a u32
> container.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied!

Yours,
Linus Walleij

