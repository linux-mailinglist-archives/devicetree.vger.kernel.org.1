Return-Path: <devicetree+bounces-229088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DF3BF39D6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 23:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C426C4FEC40
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 21:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 832CA334698;
	Mon, 20 Oct 2025 20:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JAr70K18"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B9E334373
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993829; cv=none; b=JNuXUOJVoPSFpirxpDkgUTtjPKeiACulzFh2kGxaKxqlpvERBDmqqoS34bpwOUdPjVodYZSs7i+lRLbbHs7JRhExiLcW3AYtjBW+qMURwL04to2+5AOjJgUoGi8r9xEj2GFNtOFjfBRTRksbIq0LDgx0ZTIiB0MKN1y3EFBAPe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993829; c=relaxed/simple;
	bh=TZEYp0wwdbVO5FwvBARexBlR01VmAiUyIuBTdS4/y2k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BqFrTMJO1K97JxtAa45SdJt3TXTPiFeDlJE9kbUIwHf/DbYwPS/KLxSLijeEfpX0eGA/Z45YePs+99gryejE+6CM+5aajrV48sSZnkJbZw/thVoHGlXGvjRPt/kE06O7ywsPac0gGHN6NQAAAKMkbDO6+R8QeNVpXUMycqBufKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JAr70K18; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-375ff2b3ba4so53097961fa.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760993824; x=1761598624; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZEYp0wwdbVO5FwvBARexBlR01VmAiUyIuBTdS4/y2k=;
        b=JAr70K18zwjf7rO1hWXsRM0w9OgHLcMrtjYGyQ/rJuw5uBRdcupcBz8l/ZsbCduJZV
         Yld/i8QwEtkkJXlgxWx6cQFZtP/q6DO8xzb6X8lDNqAHrgeklmdwiuHM8Us1sLz3KGPB
         h0/2+sYKbu1u/Ra6ig77wJtJ485rPzLXaEtnxW9AHgJGL2BPNN9AAJ+0qMCh5C2rboPH
         OWUrIChBLhyY8BwJZaYna4tqzmX6SGsaFSOPXGdFfWOfpiJJQE2NByd5bshgrH94PH8Y
         yXTYsKHvn6rGIJ0NlVr37EXCK6Blcsp/U4TWMtEIDEZgNUEBOVZg4/9MZ6q4kHSkAmtP
         qUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760993824; x=1761598624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TZEYp0wwdbVO5FwvBARexBlR01VmAiUyIuBTdS4/y2k=;
        b=skfLU7M9DXTIfdAnOQkn2YqTgFt0dCTQf3Fc/gkIIK3pkQtbw0qXmti0/XyzXHXjGD
         Cz1Uq8T+21MMS8kZ2h8qrMFx4oMETHFg/PMr9V7KI2Nt3hOW1hfpujzJqgXcJcYGLp/G
         tkwn3TuMqfLUZzyX+QeYQ/wEPtMRhRN4ZXRQhSbl93T9KiJq53ACVxILiYT+ghbMdvQ/
         G2O2uGSunMyWvnMcJCYjiYGg7Ag1VAXkjfttngMNhXzvmE+zr9H3J/fw1J4HuE5bPVfI
         /RyGLUBGxAG8k9og2CRjo6bg3wBUNgvtEXbnt4VpwEgiJkNhxLufJg2p/KYEbFrpGz6J
         0Zpg==
X-Forwarded-Encrypted: i=1; AJvYcCU6gU6nDkBAjzu9nkPNaoKeRDs9H2puqYs0B6DcYJu/Ne0gB/NA6unn+kWsh6bHxizOHL3XBCDevXmD@vger.kernel.org
X-Gm-Message-State: AOJu0YyYym3Vg1jmywI3herIVE2jpgEwIk6oAvubkZSnsboH71Fj87HY
	G8MXSOc0xRrXPdmLaLEhIdgAbBl0Vt/9EjQJKn075tnUA+i7Qp4ephcWLOw35fS7AQe8YLgS6gt
	t7dBHDLfG1Vfl6WJ49xV8JdjMsskHM0fEB467xwfKHQ==
X-Gm-Gg: ASbGncuN/gJrz8zau7cJs6Cgmhe24hX5fnRvJ1h9fOA1jGIE2f5SiA06VsNtvFzdfcA
	+vQ8dMitKw2v1bhzVFOzFJbAroJRknrWuAOSNWkoPR8oDoR08fbxsLdRhxVS8EXGR3s9UvzoREs
	JmM6EM4ZgYmfwoST7nS2BpGFQodUGPod7rXqtgU3VZHODxPvnH76qU429c7LV4EE5veyDxpD/VC
	32lWxjY+xhKaqDYCuxN+WJU0aIA+KJmr7nBw4Jkwc5e5uabED+4Xxds9DojrnuzuWBMEwM=
X-Google-Smtp-Source: AGHT+IHW/3fH8VK8UvrQO2N1p8h2n0H3HlH4UW/gOsTzZ7h7xtAZlPnMvG79X4+aymc2cjxzZ7sc3DkXHSmcaHjBQ1s=
X-Received: by 2002:a2e:be25:0:b0:375:d1e4:21d4 with SMTP id
 38308e7fff4ca-37797a9f7cemr47365901fa.44.1760993824327; Mon, 20 Oct 2025
 13:57:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013191218.4136673-1-robh@kernel.org>
In-Reply-To: <20251013191218.4136673-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Oct 2025 22:56:52 +0200
X-Gm-Features: AS18NWCeioy3mWv3ZhVPApAQA3XGSmMWhoG9OZEUlcYBSQV8TD2OC05OSxkf5sA
Message-ID: <CACRpkda6y0anNZ0dCHf_OQp-2q1g9LfXWqWD7mS44L1rYsZKDg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert actions,s900-pinctrl to DT schema
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

> Convert the actions,s900-pinctrl binding to DT schema format. It's a
> straight-forward conversion.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

No comments for a week so patch applied.

Yours,
Linus Walleij

