Return-Path: <devicetree+bounces-198813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31459B0E5D1
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 23:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6EA156829F
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 21:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3F628727A;
	Tue, 22 Jul 2025 21:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PgQxFV3x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24A286D72
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 21:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753221484; cv=none; b=FUXeylQ3cs9pUh0xt0UxcJQgxVasRiKb6N/Rh7rea+rIGjriafYNTs6zr5h7m9Szz5GNveGtOw92xe6W3ke1NYHtrOAlMZ0pYxAfg8mJlafVET33lFxa7VsmZQT2xcq35qe0lvoYcB80cetHZvQTcILNfNMnzJmTGzznLYCtkEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753221484; c=relaxed/simple;
	bh=lYiKyYXdjjhyUxtYTcfFpjzBCFZEpw5hRFn/BBVvuuw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L22vkyrWYP9n5Zp3DDEOLwhwEIkujT2qgJSwuhxmuHEd4kvWNHN8Hzy48TXCb1pGP++hb9OMTeq/to/9NdjRyiCj4rYX0BE5jc1GYbtJjZ9qxLdJ8gn+9IiTkl7kYdSlI4ulOpYbe75NI7xbq7G4xE7WVP1MnnfR6GLXzkDoSdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=google.com; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PgQxFV3x; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60b86fc4b47so2003a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 14:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753221481; x=1753826281; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w8hcD+fzN/rLyW2ntnhyBmLcEi4uK+H7gUEsQ2j7Juc=;
        b=PgQxFV3xVIYVzvqWxGeXB8OHIHNRoHKHmCv76q4RO7nQqdxZQcLB1ty5/mVtzmWnwG
         CYrnztOoFpxdfzJbLKQ+RtauRKd5aUt8LmxexpNafhIWydzVe1oLnNWOnH7bcJc5Plae
         Phwml768EXjZoAvaIxiXDoeC4RIPomr8tMQlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753221481; x=1753826281;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w8hcD+fzN/rLyW2ntnhyBmLcEi4uK+H7gUEsQ2j7Juc=;
        b=LM8q12n//uSTIOpaO49SxufXTv5GsHEe/q6aIv7Xq9sFL4s+CddxyanpFZnlLJjg+4
         AVRhSnw5VypR7AoPhmslxqMbeuPWNU3RobU85y6NLvjYpdE65kdrMe+91/kIryXeJppY
         6OsYVo83AiIgRMzROCq9AbQ2ZXQnVohuXHvz40X5llO1AN3bRdFqP+8ONpn6kTd3d7Pj
         T31HsF1AP5q4FKh9k1L9nETB8OF0dWfuJkWHXwvrm9wgQHo2HzWAIkQCnflJqGw2y05g
         h+9ug+SqK/1ohiD8DNWh8h0753x9H/xemnKM+hapY2wtA0QNOSgw3kTXrXLz3wecgsd+
         rYzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxJU1TeDe19LhopmDcLXZZZP+EZnwhCuBNyOGpwBCD5wojJX9QDlMszJQUOPJJQJxRJuWvexbqeIFQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ5vCmar15IlolfHuQg7wDTHAr01y5/KCIQco0VIUcLy/+8e7G
	QuDcPFT0BeFJ4x0i8Y4V3MQVNGH1qXvDHS3RkMnrEie2sUYgmepnla4iJNRGpGoVCSAquYn2UNM
	1OiF8kr2JENcEmkVpeSwuSZoaAuL+r7yAvuwvNfta
X-Gm-Gg: ASbGncunDmUUxhgREjilsWGXCif18F3cjDvjbp/3L3ulStNDZd4ewKjMGzA3qcu+eMG
	n4GpvQ8vwHXJKSVC3JIabq3EC1xN82yUe3+CbgOV4FcTj4uXSfczytYTjBTLFl3jeaYJx+7FFFH
	Sr+y/NNMnOqgxJUsDBxpVZ8Be1HZVlkJ/BJlnQEPBMEENJsxXUHDhNm0aAh0IR8Dmi/eJAgOBmR
	w1Ns+MA9VTwZ+FXkGprXO1h/zA5qnm6LQ==
X-Google-Smtp-Source: AGHT+IFuRyHVLlTc9+mvjyXn9nDzKUxgSkHkWINR1NMMOVHEBiRhg+HBPAtm00VgI63bbY4a+rdh39BgoHymQ+H8ciM=
X-Received: by 2002:a50:cd42:0:b0:612:ce4f:39c with SMTP id
 4fb4d7f45d1cf-6149a332acamr34752a12.0.1753221481275; Tue, 22 Jul 2025
 14:58:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722-ddrperfm-upstream-v3-0-7b7a4f3dc8a0@foss.st.com> <20250722-ddrperfm-upstream-v3-6-7b7a4f3dc8a0@foss.st.com>
In-Reply-To: <20250722-ddrperfm-upstream-v3-6-7b7a4f3dc8a0@foss.st.com>
From: Julius Werner <jwerner@chromium.org>
Date: Tue, 22 Jul 2025 14:57:48 -0700
X-Gm-Features: Ac12FXzhD62MTJBHmWXOCNn35YJ884MYdMc4gPYhqJDJjbLE29Cjc-kRxryta0g
Message-ID: <CAODwPW_7aYdEzdUJ7b2nT4-zS9bu_hbNqjc7+_wSHbedXZXJ=Q@mail.gmail.com>
Subject: Re: [PATCH v3 06/19] dt-bindings: memory: introduce DDR4
To: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Gatien Chevallier <gatien.chevallier@foss.st.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Le Goffic <legoffic.clement@gmail.com>, 
	Julius Werner <jwerner@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> +      - pattern: "^ddr4-[0-9a-f]{2},[0-9a-f]{4}$"

This pattern doesn't really make sense when DDR4 doesn't have the same
manufacturer ID / revision ID format as LPDDR. You could either only
leave the fallback constant for now, or define a new auto-generated
format that matches what DDR4 SPD provides (which I believe, if I read
Wikipedia right, is a two byte manufacturer ID and then an up to 20
character ASCII part number string -- so it could be
`^ddr4-[0-9a-f{2},[0-9A-Za-z]{1,20}$`).

