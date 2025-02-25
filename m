Return-Path: <devicetree+bounces-151059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D002A4447B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FA96188626D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4506C1624E5;
	Tue, 25 Feb 2025 15:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hpovPZ8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C814387B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497597; cv=none; b=W8HYxNgCY9J6mejgEwS2rRLjenbYsD/1OyX7wLyWzvoWKH3LAhFB2LeH+EilBTAuTI/5p08rhwGWmrgAGu2icDDmguTNyzNrFVZKTf5FSg1kheNlHq6NNQ2mQc6k7Ldltegy0MJhulWvFuvl4jRQsMUY9BxKhBDsSEqGqtaATPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497597; c=relaxed/simple;
	bh=Tq0JAILQnrwUNJlWo2imokvsNwFjJTOC1cGqEdpzsok=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YDW5QACOLg7cjqR/Yt3dAjj0q+g7BtfKnwMY7AWLv8W4rBBE1DxpvTE6i7u3u4fBAlybaFbmujMJ8dt2vEo0xNYtlug7QGVOntED24Wgh7B1EEh61wBqJVmIesmwMjMpWU5v7wQBL94wibHZBoqLiGqhVECezopKSstFi5ASYr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hpovPZ8x; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3072f8dc069so59180271fa.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497592; x=1741102392; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tq0JAILQnrwUNJlWo2imokvsNwFjJTOC1cGqEdpzsok=;
        b=hpovPZ8xTcI6Jy93VnRnKaYvPVMOb4jLhMZoy4QL6kidBbCPG97TSx6pM+72DpV4Yp
         d+DX6NJVro64tgeHkap4MLduQEIcgqAnMMVzHDuOsz78MPe0xdwAtoiKw9vyFPjt3LTi
         Ntr+CcUNVFIdF79sTe7fbWao2Gd2vJYzCJFp9zgTmuzWsYyEXyFND97M2yylntM3uOAT
         sFOp4VlfnbIUck0MfgzFE1lHGlGxyw5rsyU5mmKe8gptN8NOhgL2yMmGUfliWWsVJYqZ
         oIHrdo1+kp7R8ehTtHpYaFqkPTTz3lcT1h1UoyI70NtSlp6Rhkczink8svXXokJZIWMN
         wLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497592; x=1741102392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tq0JAILQnrwUNJlWo2imokvsNwFjJTOC1cGqEdpzsok=;
        b=sfsqc/tpGn2bJToWF2vlrJXOQDVq+rkYRSpC4gX57EG9MKppFQlsu5r4CT6MdDFcKj
         ftMmy/flC8xTbeOQ4fV2U9t1zLCFS3zayFT1EFYO2ELBEDQiCPDnofSDF/SNofJtt590
         bdb0pQHC+CAKEKlL4D2MHEayl94LLF1FgG2geijbIolhecnTK9OVFptKBU6eU5aH1k27
         JzWQF8Qg16xCrRfN9nNht+YFBtQmA6aUiScU7uZPjNOjfF0R7CuSddDj8JuschHe4dLM
         6kNINFyVGgoH3YP2QArHMeqv0JsXhUSKJvWl9Xb+1F14ffYHWhHPJ9Xx4oervBeSLD22
         JTWg==
X-Gm-Message-State: AOJu0Yy7bV8Zl5y6AT3cxOXmHcCgOwXiC1ovTkXdf46ZvanKB5yofk5b
	PGqy++LeKD1QkHA320D+q4kk7kuV4jqHV4StGPA/Cx8ZcPmg0mZQ3nksSGjywnuDVAm+ddvbCbI
	wtQKhvt7+ChldXcF1epia5wsB5L237E5Y+osvIQ==
X-Gm-Gg: ASbGncsdKbUyh0ENO8UaJjFk45OZAQslsiwKfe4XDi3gKeSYOr0gnUReWnVQc3MD9Y5
	NkMqjVx5ynjz3ohz7zLZCIXXD+qhQj3S34n+dGhuM6RmlVgv6zbsDa0gV1fRy+G7EvGKwHOLvha
	M53TPf6uY=
X-Google-Smtp-Source: AGHT+IGObra9Tx3ZHxqC0tnEIpcJ9EtsRQQnnThFPr2iy8wxSLtweQx5fZAZ2r60/7qKj5zUv2tlIOi/SsAuuP89YE8=
X-Received: by 2002:a2e:9583:0:b0:302:1fce:3938 with SMTP id
 38308e7fff4ca-30b7915f78dmr51951fa.11.1740497592318; Tue, 25 Feb 2025
 07:33:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com> <20250221180349.1413089-3-vincenzo.frascino@arm.com>
In-Reply-To: <20250221180349.1413089-3-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:33:00 +0100
X-Gm-Features: AWEUYZlmYF-dBAz6Af0Nh3BXuPzjG8T7cjYs05yRSwlUmuQ4nt6ckOluFYjoK9Q
Message-ID: <CACRpkdYR7zCOfRcbixPbtupLue-QsaCCh5WyX-fGBk5zMQ15NA@mail.gmail.com>
Subject: Re: [PATCH v7 02/10] dt-bindings: arm: Add Morello compatibility
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Jessica Clarke <jrtc27@jrtc27.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 21, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> Add compatibility to Arm Morello System Development Platform.
>
> Note: Morello is at the same time the name of an Architecture [1], an SoC
> [2] and a Board [2].
> To distinguish in between Architecture/SoC and Board we refer to the firs=
t
> as arm,morello and to the second as arm,morello-sdp.
>
> [1] https://developer.arm.com/Architectures/Morello
> [2] https://www.morello-project.org/
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

