Return-Path: <devicetree+bounces-175043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 212B6AAFA31
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 14:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76BE44E3716
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CAC22652D;
	Thu,  8 May 2025 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a+/jNG51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEFB14A4C7
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 12:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746707963; cv=none; b=oWNLP8iVWA/yuewqsiE6190Q5D8fqNvOgpcRvdek+k/Nk0zRtjHFfIcQFDAfa2kr1OtUAPVXA6+1V4qzK58kfUURXyHNxXsWX7JxMoQWjgIyraHYf1ZWa7LQNA7F78vxxrp2tWotI1o6KT2m67yxqgn1FgrrfSVEwCaOVHWtfEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746707963; c=relaxed/simple;
	bh=fxy4oDHF1pn8d+iuTx13+tfCW8RZDyCkPpV0oh3yr24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mtU6v/lsNHL0SR61ik530/UaL050riEblbSvh9Ayk7hAWPqdn62bgFI8zkRCoqeksuFaBAXk/HLJ7TsSGfkX/YOYp+aPyfXF5aieIMvhG8tQxF4+5LGWDfmq1n3CnBStgU5RddqFBQxPwCQsRl0XNdthc0qCGjAP2F5DddTWAD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a+/jNG51; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54ac9b3ddf6so877537e87.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 05:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746707960; x=1747312760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxy4oDHF1pn8d+iuTx13+tfCW8RZDyCkPpV0oh3yr24=;
        b=a+/jNG51ZFMoPW3SAcoGPQ2sIbsOXvPMx5ZFLSErX37O4ZYItpC9eO9U+dbjgpSpi+
         7DxY22+yYQWWB5W1M2Ob9WiTPnmUDmLFi+F22HlV/PHqRYy9vFzkqqgb7NaHObfhYjiM
         URJRnHjdDwYDXkIwEyrIYNWjKt7ba6CJpY4OsV3NUF77LoQoChwW05eQDCqxnCO+sG5B
         u1QhMbjtFdMKRaTiKvW6+9YZv4imGe3ECKcBH578mXvPgZrc7XB8XeUwIbj4bNRvW86I
         jsEGsVuJ82Tqt1GsOwBUP/C9LkLheNcqZDQxaDUSEG5rFtGbI4YuwcDaBxYuF1qwnZWd
         zyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746707960; x=1747312760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxy4oDHF1pn8d+iuTx13+tfCW8RZDyCkPpV0oh3yr24=;
        b=g8SCTVG1lfwbe+uRiQney7lFnhvrSB8oaHupRj1z8AeIS9vavvMJdXs5YxIs59dg+o
         4/GDE6/i2t/BSzDrZo+hGyYKF24IXDS1pZQgDko1vGV/ThWU8xS+qJnOeCehESXIDknn
         CrkJjeJq0/mTCb2iuKpW5njkoC3tgLkfPlO5syXjNorR3Pp0p0QTHhiOmsnOiHiG8Kkw
         bYFVFatnV6XaTMqOHX3WgdlRT0psb6XMIIMohNGwF/8xJ5SLZqvQwTz3EX7shoDk3aWW
         bzZNbeLLZF3i/qNqb8lGC8oHwJybVSPf82QSNQD8T68GP+1CRHLKNQvqS0TjxJEwLTH+
         Yy/g==
X-Forwarded-Encrypted: i=1; AJvYcCUz2nFbiVsxpvQoxTj4g8Aoe1+C0bcNQ2WX3rF3iXOn2t6/wG7bO9/KgQBN+PxCBb+j4k0d9ecJj9GH@vger.kernel.org
X-Gm-Message-State: AOJu0YxNV0dUZkpczDC9AHStF80NgHhPyS0s8CaGMXxlE4uxe9yEywP1
	AaWOCy+Ui/dju12iKUUJpaSXB2YBbm/2syouYBQ6KjRxF1kLOj0zSedrN1EELfcLXcNt5mutmSC
	1nFKHeoVPV467TZSINkzXLmzOKcS1D0TyYixWWA==
X-Gm-Gg: ASbGncuu0GnKR99WXsyVqetDg68MqWmSQyq36CfPR+pBa5WHqSYaPJrGbsePMiIyG33
	u20ExvVrQVN5gH+fNsFLyAhxQWwkapNZq4dUBpycA74Tu7JWIGcdsRnHn3ikfcPUB8J+9A7i2nl
	1M/IPtDdnizLJERU8e10XM6TGlsyYDLS34
X-Google-Smtp-Source: AGHT+IGGrMdIbK+l8vxSoUfLVyEvO0Z3NdZDVB36nn2Anll0m3eQKniQ9zV0PNvk8wEmAkWUY6p2JaDvTo9TjiBiOgs=
X-Received: by 2002:a05:6512:3da9:b0:549:66c9:d0d9 with SMTP id
 2adb3069b0e04-54fb95b8cf9mr2506333e87.53.1746707959903; Thu, 08 May 2025
 05:39:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250506092718.106088-1-clamor95@gmail.com> <20250506092718.106088-3-clamor95@gmail.com>
In-Reply-To: <20250506092718.106088-3-clamor95@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 May 2025 14:39:07 +0200
X-Gm-Features: ATxdqUFbxZHQaqT_16mFZM1zpCqWLrcrUnDz75se3Y3SyvtShCLzKride0am1Uc
Message-ID: <CACRpkdaOiFUPf8fTGZk0RR9=oVni0DEaYqdUziZRLUr5mZjtnw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] drm: panel: Add support for Renesas R61307 based
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 6, 2025 at 11:27=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:

> R61307 is liquid crystal driver for high-definition amorphous silicon
> (a-Si) panels and is ideal for tablets and smartphones.
>
> Supported compatibles are:
> - hit,tx13d100vm0eaa
> - koe,tx13d100vm0eaa
>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

