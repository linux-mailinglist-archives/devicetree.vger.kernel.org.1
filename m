Return-Path: <devicetree+bounces-114196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E53EB9AA260
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 14:45:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1438F1C21E4B
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D5D19D06B;
	Tue, 22 Oct 2024 12:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ys1SotQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685B14AD1A
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 12:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729601135; cv=none; b=aAibqgm7ScMmbzT2vt6oqyYDiJVew14QIg5Nyq6/cE38hCiUKdNasyMXwzFAoRbJUfcqpjdo1LSbknrosv6rKwMI0AdjNIMllGBVmNuBOxNZTK0pbmW2V/jFSt6J9QcTkFs7BDDIHdB898dHL02mpBbSpp48oR7QPH8hjSIMF+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729601135; c=relaxed/simple;
	bh=WmPfsYC5XxLwxgy7QyhoKQvCTq1ZP7iOmD4cZtl9AQw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CkH+WI6stFtHXbxlN7JzYmJQT9GZRoXBeiG16H3akZ+Eq2F/IDiWe4jNBEcPkvbygCuZFiWZtzm14PLzo2hdg++FCexr31W6wiXp0uWw9zFXH9XFJ1FTBFOHEj01nu+jJcNTZJOCFHouHimEprXCHP1wQ6YyD8TKolWc6ae//2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ys1SotQF; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb5a9c7420so55962161fa.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 05:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729601132; x=1730205932; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WmPfsYC5XxLwxgy7QyhoKQvCTq1ZP7iOmD4cZtl9AQw=;
        b=ys1SotQFqgck++FDGN4LMK3T3+1PCjlyd0nRj/JpYXEWJdRbL+z+bsNt6j0DW/bnWu
         tp0GsNZuMDiyb7k7dlvs+dltSNehbtT7Qu3K//8bgARPQYW7NO4iqp8YH647g2SmljwE
         uETbDNhunRMH1/HjkIFbq2ZwAffMsUPHnQN5XgDuprVhQNek/L3HJW9GjitbMCvMBUW1
         4PHcFSRijqw/8GkDwAZRKQJWEaUd6lheFIbIUsBr1iIQmrAASX4FssyvF1m5tZ8uXzl+
         7WuplLOYVLKw6yweIKR9UhPi0XGMY4SrCEXAjpnE8vWVEsvaUV4NTcoaoFw2e4Qc4R1h
         1H1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729601132; x=1730205932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WmPfsYC5XxLwxgy7QyhoKQvCTq1ZP7iOmD4cZtl9AQw=;
        b=qrO7XrFtkYWEQNlwIuBXR4gJ6bUxTWo+wS8bnk/ybDOD+0PEczdeBEBygPPNqC0/w1
         ThOHWWxZe+jlRfzkuxsBfk/37UMcs5sxrdzaoH0KS5ltpz0UkX/AVx8ZgtBfBsm8xy5F
         VgfPLoSaSDvjPI0vd7UjwtlhAkPR3txYDSqwBzn+r0GGhvpHIqHLdHdHnp4DS6GmRrqk
         uiJjSUMUGU3E+B2+RKxttcs3LvJc4qXlTjGZRpBow2rsVu33jiC3h/D9V81zHElbCmgt
         KnRqeTqs8357ow/Ous+7vqub7J9BZiZqT/40dAJipbyyIxZKNGTAWykYLGg9ICTDUCnX
         yu8A==
X-Forwarded-Encrypted: i=1; AJvYcCV4exBstAcfVIV5YI69oSlh20GI9VOM7vIwj6PuF2QCTpvhZXRDyuY7cM9U6pyNEAZdMsy98/HoNX/D@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv4v/AnmJExvFBKT1C2a2Eg7X6Xhk0wHKeioWUDJJXLJx/M5dr
	ApD+o+EQQEvf5NtNJy6jBJ94v752+dT5cKa2fkngc/Ajyoijdf+SJEdlw3zmjPkLqqgZb/05PDM
	BVqHkg4V6Gk0TlJuK1PCp8Krd0+Ee6sZ3Yc3Ajw==
X-Google-Smtp-Source: AGHT+IGcIByKZtdq0adKPnNWneZwqEUqTIt73JdOZNS52T9t2MPtuTBH2U31H8pdlHUFENcf3DKQJdHVOhl8MRblnkY=
X-Received: by 2002:a05:651c:211d:b0:2fa:cc12:67de with SMTP id
 38308e7fff4ca-2fb83208e04mr71395491fa.32.1729601132347; Tue, 22 Oct 2024
 05:45:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018-sar2130p-tlmm-v2-0-11a1d09a6e5f@linaro.org>
In-Reply-To: <20241018-sar2130p-tlmm-v2-0-11a1d09a6e5f@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 22 Oct 2024 14:45:21 +0200
Message-ID: <CACRpkdbOf+VyUYXV-SM0ua1RpoTxuHhu9OCZMFKBOHmN1-YQfA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: qcom: add support for TLMM on SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mayank Grover <groverm@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 10:42=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> Add driver for the pin controlling device as present on the Qualcomm
> SAR2130P platform.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Up to v2, bindings ACKed, no reason to delay this patch set so
patches applied!

Yours,
Linus Walleij

