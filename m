Return-Path: <devicetree+bounces-237606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07570C5245E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EDEB1885E30
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE58333455;
	Wed, 12 Nov 2025 12:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HS87xDT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6C332F768
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762950975; cv=none; b=rQwu7f5H9YxFjNu4KEGWALhE/3EVdOtyg1aY7mvUgQlLBgNxJBfwMXa++dHnMH5/dufE7RZfngK7PB7fHfE6kcWJtFA5KWWs9AiLOfg654BqOLhsL9fFt3V5aczgpWZ5sN9u23jlMyWjfwf2NM61Ma67/h7UhNX4osYjbQB3Yn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762950975; c=relaxed/simple;
	bh=+H8mi4wzWuOnGOUj+vry+C/RsrNVNIni+GZfNRFC6RQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=vERQQuvOcR/T+T45vmLx1pq5JAAMwjc/A3v8rpfWmUQyAFpjKJ/c2A06z2A02jqqh1beeaRKh/6xFpahgfo2dLP3KT9hKuTqX246RfUjAjMhasio5c/JsJ9xXolxAFxkfUqSFzEYd47d08hO7j6oaDXIXp74ByHl8PWGRrqSTq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HS87xDT8; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5930f751531so794028e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 04:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762950972; x=1763555772; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+H8mi4wzWuOnGOUj+vry+C/RsrNVNIni+GZfNRFC6RQ=;
        b=HS87xDT8PEa/QupP0c9X7zCVhMNbcHHjXVhcTCYOEDHLj2zRjPZGoh0c/lHBV+M3x1
         muIqy0huYSn/0x3Ur1jJDwZjiu09gpdvdDk7gfst4Rg7KmREjJfbZ2Y2uU8lD1/Dq5d2
         KwMBUfqKrRexDDnrEPGdP+F1tvE2YM66SkevBQETEGoElaUvVi+XNTjH/X1I6ccqlPgD
         ZE5Uf8qHhvLkWDqBNKgMKkTmdQmMKewh9C/lWNtrEyv72wILFSUh/1YqN4nHkIs8suOQ
         3uWz5LT+S29EVLhk1nwZnxYSVjkpqemJRvo5+QcbEeNoR3OM72eEK3q+t5Y+8dsyAvLM
         sBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762950972; x=1763555772;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+H8mi4wzWuOnGOUj+vry+C/RsrNVNIni+GZfNRFC6RQ=;
        b=hbdn/KMio7et+TObLnR3pAtGwWOTtqZL9Y1Bz9avSaLBJltZHnpz+EBvr9BcbU/xuv
         WsnHkFF6iTChpkpPMgEtDClp+DxbdLF+BSSxdtQ+EmQ/sgKxiCORRJXSB9rxFxkSeyYb
         HzFzrOkgTR+YO/AwAGoaiCT3HtiXXD0JTuDLOpBqQqlxQfNT9LuJ6jyMqD9hOwvcrYph
         VbtFIVhaClXSeKxryAcMfVKKYPmcZ8TU/QPyVVzNNF54kEKEv4LUfsRi+EELT/FgtO3g
         J8/h6ahMPMxzPwUMTbQU5Lq61AGtuHTQgc54u+E/uexXU1IE2EASrnmrZmCKEsWXhikd
         +ZmA==
X-Forwarded-Encrypted: i=1; AJvYcCV9/QW99wS1U2mjuG/oBAZ7FOTnwwzS3EdQCBLgNRRErEcUD2ii4DdeTIfeJ3ZhZsyyduUCW+X1yadz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy45tfG2WM5tNU7crj55b4AAe9GWaX0ROu40qqfDQy2mf8T0OlZ
	g6u/KO/68gpLSfjhJZ9AEinHgYHrogZBD5Jg/9mV1aAWE9RzYzsyAITiK9ESTB0zYi8rz7MZKVZ
	ClslpflL/dpYz5KDBqyFLmw+quQb8F8VJGlYZmvMWEA==
X-Gm-Gg: ASbGncum4N5MGTlHdARVdyVbZhmcKkstVl9XpcCcF0A7VQQzUnNd1JNOZXfrhTDXaos
	5/DT8+fAwYQtVclkHSi38i89GUvhzffqee5Y1DcnNlRZ63qOA0V0qA8uZEEOizgztjV88cFhfcM
	X3GFK6J8c1DV3WBTuwDYG+wXee9SySMql8bVzV5maTTG0UtzVXkhMIvHjgbm8Laa5gQWCiiW3Lh
	zUR7Rlao3VK8FV+CFx2tMmwOl7w3/hKbaXb7TwXXrQEQoBYuYepm0GtGsj8
X-Google-Smtp-Source: AGHT+IF35xdCqK83Nq/ybJ3AbuqFKvL1x2W49echwpcmfLqDZKgxLvlKCL2HANZseQeKP1IlFhLxTXVM/a5c4VD3rP0=
X-Received: by 2002:a05:6512:3089:b0:595:7dcc:3a8d with SMTP id
 2adb3069b0e04-5957dcc3d9dmr101267e87.48.1762950971883; Wed, 12 Nov 2025
 04:36:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid>
 <b55d94f2-6b79-407f-af58-b9847db3c9a2@kernel.org> <CADrjBPpCKfd_0PY=DULnmqfb8veqH-SQ-kr5gC6Y28uBVo8iRA@mail.gmail.com>
In-Reply-To: <CADrjBPpCKfd_0PY=DULnmqfb8veqH-SQ-kr5gC6Y28uBVo8iRA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Nov 2025 13:36:00 +0100
X-Gm-Features: AWmQ_bnt3mMa52ZapQDOrQjKyBrrsOytzgBujrgqyXTEfoNcsLTSjhn-fe-x9cc
Message-ID: <CACRpkdYN=FN92cuS3U-XBVoyD3DcKkfzEXYVNnQNK07rxJJZ=A@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: google: Add dts directory for
 Google-designed silicon
To: Peter Griffin <peter.griffin@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Drew Fustini <fustini@kernel.org>, 
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, soc@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 1:26=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:

> There will be some Laguna SoC
> drivers for pinctrl, clocks etc,

Oh new pin control, interesting!

Will you be doing the upstreaming of that?

Yours,
Linus Walleij

