Return-Path: <devicetree+bounces-151050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1266BA44454
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 577BB3AE9EB
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1372426BDBC;
	Tue, 25 Feb 2025 15:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A2l4OVYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8FF26BDA3
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497223; cv=none; b=bj6puy0bG9ZrvIF+3jWHkoZ1hOQCUDPrQMZFQRU1zFq7Y4y1c0JNhyjXUNA2SgrdQT3Ccn7t71ReOFnRfgeTPb8jso48sLsue2x51h3YH7Ufzo4LV3Cw6Ru9F6gr2GRn7UsRgJ1siEagYtQkhDtpG+M0FBIQrWiJb7/LsPA33Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497223; c=relaxed/simple;
	bh=+sM8RqSivE/xijYBrIrwfNgjHaRkEy1XyNdDEacWwgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jZjBSPXIHQk9FJeTlwKvlOA0QmUrF5e74XlmTZgl5ogqIY3yejdBT7cuYleZ+judsrza0CsoXk+lW7xtSAfgQY4Xa0N4+VfDTRTmHprcqntgGQXm6Wisq5ZTKgLZoiGEuXdBPdtMAIiDYIPDXr1cUAVjLDIKGJsxTeNJInmQ/J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A2l4OVYo; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30a3092a9ebso65460821fa.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740497219; x=1741102019; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+sM8RqSivE/xijYBrIrwfNgjHaRkEy1XyNdDEacWwgY=;
        b=A2l4OVYoc7zusWYHJdj4ycyb0/uP+s5viX0qcm7V1rNBcfO895CX7mZHgCv76AY2LB
         Y7e1JIYrJFIgMDu23yYnKCGRqojD8e/PPeOaelDPDcfs7Xmb9WDBefcp1FMXdTXs71/v
         e7iMKQWJ9Rn7dwjGOYf0E1kBJGSx04YHdJgg4Ssslliv2/MKNT6nnJB696x8CaEAdkE6
         T1FnmYQPQrkzMMG6rQDOYFAEuKwoIZ5f3uqoYetnCXDAptuVJguVRr5xa8PJNmY4a47Q
         7X9jKUOLJblPFtbRUSuFQ9aFglJWPVCxzlNJt8VNdMmUoiWlJtjHgUTdf9ED4YT48BX/
         7TYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497219; x=1741102019;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+sM8RqSivE/xijYBrIrwfNgjHaRkEy1XyNdDEacWwgY=;
        b=WrWHy9u8uPeZhBqKNJyNPXd3P2U9ivy/ndRBvUw2JtkIs2bUPGkZ8PJMbEEhem1fAU
         9c5dinDDLg62kwo23ooceXwQTC+Z+EUEBlTO3faIqw06Hj4qx5wUbiT9DVRry/2NFcuH
         tz5Tgp87vyKWOQ0UIwLBOb4J8g5OdxQa9th7epRCVPwTa/7Uefa4YT5h6kcOpbWpD2lD
         rtfdVCrOVu8648BCOYTQpzJw3K+9Onny0LQG3QjEgsq7y8u8+gRTt4G8kt1VR49Tl/6t
         zkc52B9KifbWOh+bJ4Dk/aX834GjmtsNc2hZ081Xvrf46PFCbzop5/m7/BtxVPP1BbWp
         kEKg==
X-Gm-Message-State: AOJu0YwRqMSpNQbkajM9OTBwL/QjWp5q/Nc4XC0Z71yclgyKwTXwQWc4
	qkhT5ielZkwS0nI/xnEqzvmGJ3VMeTHots+3QTrIe1Ri8UEVkdD6255XiuBFHpf7NgbeWmEKySl
	8rJXwS6jq6/lbuePVLS259XEF5R3CEik4PFvlhQ==
X-Gm-Gg: ASbGncsESYqiovjZ2cASwAniwkpuupGUqXcb1nH/WJHANVJ1lCfbyKb64T03G+NC+fu
	rLIRC1utSus1dkdZ5ZU4G67gyiCTZTYHS0h+XAcKwPzvPYZuQMerjzWFSjBIjqtrI7ceWXfa/B8
	uB1F8jPmU=
X-Google-Smtp-Source: AGHT+IHg7AciF0bOLP9nYBodRe65E+R68WKpeOCG+glocpt21vjNyZNITKVO4J/tYQr2I8UXgNxYdWfVSbUB/YTUxlo=
X-Received: by 2002:a05:6512:12c4:b0:546:3136:f03d with SMTP id
 2adb3069b0e04-5483925996emr6834200e87.35.1740497219178; Tue, 25 Feb 2025
 07:26:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220180427.3382482-1-vincenzo.frascino@arm.com> <20250220180427.3382482-3-vincenzo.frascino@arm.com>
In-Reply-To: <20250220180427.3382482-3-vincenzo.frascino@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2025 16:26:48 +0100
X-Gm-Features: AWEUYZn8W5PQymPGlQZ6IJQCW62-Rmi8JGi0gK42ubUEcFMkmTbqO5GmXG6Hy4g
Message-ID: <CACRpkdZzUpgFvuYRGUwnNxonQ_TM2DOsAh5188qJ=g81v-asiA@mail.gmail.com>
Subject: Re: [PATCH v6 02/10] dt-bindings: arm: Add Morello compatibility
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

On Thu, Feb 20, 2025 at 7:04=E2=80=AFPM Vincenzo Frascino
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

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

