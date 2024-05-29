Return-Path: <devicetree+bounces-70350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0543B8D323F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:51:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 812B6289860
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F6D173346;
	Wed, 29 May 2024 08:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bcensdPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7929E172BB5
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972467; cv=none; b=W4V5mfOxPAsEVeIaYchOngCuZIh8WPE42ZGdUIYtXQp4nRaIRQ0EQZv5MnDqp0BWeO5iqFRelESKQnX9qB/mgPihA6pvQ3Jd4rJnjqDjYS2ycZN8ZU3jKSEX4ChFsl6qrsuXFnAwjKM9TkK/CzY65ztyaT+Mf/CVQMrsMBMlRy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972467; c=relaxed/simple;
	bh=IpLrYynUPcGnN44fpYmeg2e+T+0uVvq6OO+E/pX+kdM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TobzRPlSuaWWE3Vnxhpo/IP0a9jMbKXjI4pe3xx+LSGq4k7oMN/I9CBKKLJ4epHKbNB4BgHECkPMpVA+1P/8ox5+ImPZVNZHGSyQtmq636Sdb5Egkk4Z3CPVGYR/JPENh+n8tGZVjCrNBgrhh+SrlKxOHYHW8RUBonYb92gFDGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bcensdPR; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dfa46cedc5aso511894276.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716972465; x=1717577265; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IpLrYynUPcGnN44fpYmeg2e+T+0uVvq6OO+E/pX+kdM=;
        b=bcensdPRMarAQD0vc5olm3y7wDrmMxvAZhIqyHx16K2B+y8vfgMy1aDLPwEQszAL0+
         OQHG7xRsCRv/TyACttNzzeov743T/wjWssj+/Fh1ySSfkFu9e4HCfQ9/UGHcUL5cToRQ
         wNYslPnt28zkLs0tnHSckGFOFwBGAHIrk4mgI37FBbxSPLpeNmzIcDhpYeYEhMR91fep
         KlRzVllLoWJbwMpUM5X6x8G96+WEz8ZyihmTw/UJ8McsCFdyyEq2qkguQtDilbDZyh4k
         pn1e+fIbrTSsgOvfacy3Sji6TL6bwoMbSiQvr6qNxANrwHwvGq14i+CSzmoLNAN7tXHD
         KUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972465; x=1717577265;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IpLrYynUPcGnN44fpYmeg2e+T+0uVvq6OO+E/pX+kdM=;
        b=py5PRcMbVH2Sl8KjQZ6QaEOgl+vh62XSp4lEpIEC7jCib8KVtrnbgAEGPDao9YXgeQ
         nk5h3VSSDg9E7MN74sS8gFEBlboCaq0egK56HR4dUaREma5AX7ShZQ5IM0AW5D7QbM7v
         +Wlhy7Okvzdm6gi1P9gj+iP+9Y11BcPViI9mS77yQNQ3F1oDZd9LV0/QfgwWoaXy7d01
         FcZDMIafkcnEvgaxDdmVB2lHNLeGd07aeY5wa8GK09idNSjbUoJp3JT5BBDiy4eawmqb
         saQ2Ps75RexH+dhmkG6oUQU8TQpvyzd1ekl5zEowmOX9b952zOzp9DNR9X6NI5z0JT1g
         XqCg==
X-Forwarded-Encrypted: i=1; AJvYcCW4LaWJicTqv87I4iQYZ9/PKjLqjXBTlbt48JW/Bv17k25y/j9H0OPnoaGN8kAdtADINml0g5kRfitqRwviNRhO9AndGGwU2L+6CA==
X-Gm-Message-State: AOJu0Yy7axtf/ZAZ9lDv2qLQ9Bk0VQbtsJErWMK3FqBf0KhezeZpISB/
	H87jAuQr8R16XNa1x4QhbPUF8N744MDZWghnUk/aIZHetar9KoPvJ7lNVOAC/FX9UYKNvVXJIVP
	hfLM9tIEtjgBdel98KzpuTlaLRKmiSS+UAuHMDA==
X-Google-Smtp-Source: AGHT+IGd/vmJitGpaybRz5aemUbpLx02og4W+Vhbz8nzpaQebVx7YF0/2G3viEH0CBNgwAxA7dqKRl5SApiWa9JZm/8=
X-Received: by 2002:a05:6902:2747:b0:de4:603f:cc2a with SMTP id
 3f1490d57ef6-df7721e9296mr15812732276.45.1716972465270; Wed, 29 May 2024
 01:47:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528191536.1444649-1-robh@kernel.org> <20240528191536.1444649-2-robh@kernel.org>
In-Reply-To: <20240528191536.1444649-2-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 10:47:34 +0200
Message-ID: <CACRpkdbxrwnBU_yRAeeqQU96J_M8wqrKiFsCMUqHcLgZPT18aQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm/arm64: dts: arm: Use generic clock and regulator nodenames
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 9:15=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org>=
 wrote:

> With the recent defining of preferred naming for fixed clock and
> regulator nodes, convert the Arm Ltd. boards to use the preferred
> names. In the cases which had a unit-address, warnings about missing
> "reg" property are fixed.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Neat! :)
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

