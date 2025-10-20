Return-Path: <devicetree+bounces-229086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF6CBF39D3
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:02:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0E783A5456
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D64C32F770;
	Mon, 20 Oct 2025 20:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jTKItf39"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3242E7BA5
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993775; cv=none; b=O751eTAAzEg27zEmZWf+V3trM922veEv3wW4midqbWuk6iJk7hrteL3zpBrSOLwVMaqtWEVpMltTz0kQLYiP+go3B1Jm8HRq+kzZ7WT+hpGGoF28PomUpmS4YBaKO4HdPAFXYIzeUrp2b8DmwrtX6J9xoWEhJ4annKEHpgcMFg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993775; c=relaxed/simple;
	bh=KPDi/ONzbyezo/404PgKiTkyQluk8DrLj7+zoZTBiI4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=et+lSJ0Z780brzvGVK2IsIAFJ1MXGMf+bHSiGcaAy0gJZjzEoYaagNhuF7bPJXKgnmUF8dRRc05DIExUWlYT2eJZY/1ytkTwQ6HkZAS0FONfbWfNgwZRrhldCn1B19DCK7N23tmlNs0gEmpZuply+uTVvraohgrS7cqFqlXOTYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jTKItf39; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-591eb9c6206so21599e87.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760993770; x=1761598570; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KPDi/ONzbyezo/404PgKiTkyQluk8DrLj7+zoZTBiI4=;
        b=jTKItf39uxktGKGA48RasuDBZo3D50hi/ecIui2L8BEF3zVdiYmOszKTAZ/6eMK9DD
         U1aZuVl/Jg6HwECql6gYQ/ajKMf9pRTfAgwQBJoJDM8+tgDkTJtrqaEz1Qy9ldQfbeOx
         sTUI3sQFDakhojlpIcHywMr14Mpn9QTnoDVQNjtRbptS9rZAJRJdKRNSd/Fi+Tt+Yaue
         lJlXTe/Lxk8coTwutqbUCa0jYIIZJwjZaBXFI+r9j4PQFsXRboFRINUgPazuMpTqkAH5
         jUfc8mgVDibicqzsUEBqA4R+h1qujQSKT/PJznGfRvnwTM4Wgh6Jvjz/tN8dHhOkBVjb
         AXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760993770; x=1761598570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KPDi/ONzbyezo/404PgKiTkyQluk8DrLj7+zoZTBiI4=;
        b=V3cWzy5AuCLJGUf9mDmapoVDeH7b0Muimb1lOKFZKgOhL6ZwJ5GJglIOYxEslBpCt5
         fi06tDXG0mi/3I1EqJL6jbaAagNMIgXoBqkcJpwBA81acCmYg0BoNc3p0gJU67JQDniC
         iiuhVWNMqD1xGvJuRdh+CCG7AP8gk4oPPwnv5eCFmZAWSMwRDHf80ou0Lx/4YzinFOsa
         ujVA0R75DB+eLSrc3kMvOcGCC7vELKdkrczybnLLiUymzbMC4iBtYdnP3+rk9XSTkez5
         y6eHovtb7mGCPBZNLqiAgi/xdYnfD+G5dmlBfi5wxO+bMg0GmvOFceRv+r2c5MB2vaAM
         ILdA==
X-Forwarded-Encrypted: i=1; AJvYcCVkDdQ1ZzIZM+81bj7uU5PDUHwfR4CYQLmFNVRIea7ldSQx7S4EqJKOfgU4guSTya6uPgCRpmtBXlJA@vger.kernel.org
X-Gm-Message-State: AOJu0YzWZ10qjeoUSHkHkr0wJ44JXndkD5hldlJSUZM2Y8XDREMKHeQG
	OkxJJnL8CMNj5T6HYKp/Z1PZcBE3+NFJV7fl1f9qxPF69k5pxGi+nRlSKmzSb80tSa5NuEyvisC
	i9nXF3R3Rx/fGarxdKFDvwx/F28Lv88tR95vCMf4DEA==
X-Gm-Gg: ASbGncvebYlXTvUSsopNkKVVa1SAyPpNUCm6EDaUJrEFMB7bAr1Bx30o4PjlVvTSzNW
	SnkPKDzOOll5EW0vDML/hRt9MfHxEpP+gfATJQ20z55uhtTVWL6M6iNpy1J1cuEuh9Uvi5A9JM5
	h4/WwwqXeeJhZ4xiXebLAwIl5HQun147LhbMNnhKvcTdsf+E7IvONwaMLqr/eCyBN6i80E3OOrc
	RFRogvnDVBqGH8JoeUxORaG0mh1mlzA5ES243xVQja5yYvjJMiyEpCqBeuHzgqZVeKCVjU=
X-Google-Smtp-Source: AGHT+IGRBR+snc/mrP1nvrB/wKqtP60la1CSY+obenGlvqYErOCTks8k7mteVD4O1yzHKYMcoV2tSKBToVA+O8Sh4TE=
X-Received: by 2002:a05:651c:12c5:b0:36f:284:56db with SMTP id
 38308e7fff4ca-37797a0e741mr41754291fa.23.1760993769829; Mon, 20 Oct 2025
 13:56:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013191207.4135075-1-robh@kernel.org>
In-Reply-To: <20251013191207.4135075-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 22:55:58 +0200
X-Gm-Features: AS18NWCmdoPe9mUqm07LgesYzmI47cpuULBkrErXJf6vFAkis6yJb50IYSgtdOw
Message-ID: <CACRpkdZDM8zMtuPQ6rQQ+TZhz4bAYOepeETVQ34_MfDYx0LMmA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert actions,s700-pinctrl to DT schema
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 9:12=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> Convert the actions,s700-pinctrl binding to DT schema format. It's a
> straight-forward conversion.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

No comments for a week so patch applied.

Yours,
Linus Walleij

