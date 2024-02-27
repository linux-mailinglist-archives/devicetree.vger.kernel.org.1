Return-Path: <devicetree+bounces-46410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 252E08694BE
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA446287F57
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDDB11419B1;
	Tue, 27 Feb 2024 13:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HOgo/l/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A65613AA4C
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709042146; cv=none; b=lkF3r3o/UStNkOYDyp0EixbTGR1DurqQICQs3/nH2Bza/DSJmoe1flTC+SX6cZ4NZp9fHwEDm52nlF+zu1hnbHwh+d6YHiMmH0RZsuMDeb7rPot70Qb//OOdYOiLN7958715ZtNeLNvvB8b46Vf9anBegARGuy6ufT5XndN3Lks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709042146; c=relaxed/simple;
	bh=+CJCJ5DqYpMPvK4nydn7ycnQ/u2IXUJCkNOLN7wxQLs=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dykQIAZEAofebq8bIrJRd5/6S2Awhnt4WcL+Za8X4XPs+yLPb+AjHaGf6zzZjP4jAy70v3KrM5r6HRO1QxlvvadWRp7ZO9j/fgEDsUEVw8eZ8VCu+91Z18JwCwslm4PbXLNrXJiF0CWWgguXiLu5tRwVjgOlMvjHzD6hSs1R+h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HOgo/l/G; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33d61e39912so2408888f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 05:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709042143; x=1709646943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EgwI3b/QdS+3vcEm0zTOIT2/4Xudi++cWfrZZcNgXxM=;
        b=HOgo/l/GldyUBxnwmXIKEWg6ZW6rxX/lcVZvyS4A5cI9qTnHykLWPa0SKKz9mAYpjx
         8SHam1erIn33oNk33KtI/P6cH2OMMPx8taUnxboxrmjCcPgTmBaZ5HM8QAZatOQepN1Z
         9EWdKHlGCZMHJJYTA7fSUh0Ak8fAryVAnlCjwZED+a0Ey36sTO7gmx0GEFZZs9uMPW0i
         DOeZGm6YpkwUHuaxUgXJgTHiL5kGBgHhVOzC1A/MHFVwRFtrR8EayKYOkmosIN/CwXSX
         Ad4ZEWPZunzmph2ovW8J4rwXuV6jGtXdSrF2ZMlrYuwZ+/mgWin4DHTaiQJfrmXpLBFd
         YQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709042143; x=1709646943;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EgwI3b/QdS+3vcEm0zTOIT2/4Xudi++cWfrZZcNgXxM=;
        b=ltoqVfCteKhREvKk+Y0Isd7cXIXIzMLZo9c6N5kW9XrDHdYE4OUbawOAn7If71tZib
         GsGs6j5eGQ+ENgsvLfDKUiO2CoG63IDrgncjAeiWvz6hib8NcrbfX8+D0tK3VPM6bK/c
         BD/ug9yinFuK8UFb0126eqRWCSyuFeWL/hA9wrwvoDkgZJRxlXaj2vKmSb009LUaY0tY
         +qrXt9cWPDhLQPXzg+Q/EQbbUPPjqz2ePbPAy/7RYos93p1Kl9u6vU+2nZx31s7drDBy
         IdUan9M928DyZ+XkbLBg1Frlp4ROx+guPJ+kRVtr7Dw7UWk7KD7YfuN40M5LVTFwLQ+c
         RkHw==
X-Forwarded-Encrypted: i=1; AJvYcCWaf5a0lOkhFlQvdpL7lvspGGUyTgmS2PlSBLK7x9c0WcV8XioPHooGJUr0ZuQB+YdBJKxnlMJ6gIxuO+/fJlt7N853mL9BAYBsLA==
X-Gm-Message-State: AOJu0YwVer7gBa3nTumfgr4nd4i4AWV/Giql0Trc46jLaKWa8stAp8an
	31aodPzHsM4B+fDEgVqgxFw0OxIhWhAP92vnLHzQ41Xe/aNuQ92J40bU1iAfh4Y=
X-Google-Smtp-Source: AGHT+IFMo3BJbLpc1B7F/ej44dXwNxkKlq5NiqcCwW2JsMHBq96Icx+szLga9BB5hi4n6/rjsj/yNg==
X-Received: by 2002:a05:6000:1961:b0:33d:7ea3:5b90 with SMTP id da1-20020a056000196100b0033d7ea35b90mr7852814wrb.65.1709042143241;
        Tue, 27 Feb 2024 05:55:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j17-20020a5d6191000000b0033d4cf751b2sm11441638wru.33.2024.02.27.05.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 05:55:41 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
References: <20240224084030.5867-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: amlogic: remove unstable remark
Message-Id: <170904214135.3421271.10740546825685349723.b4-ty@linaro.org>
Date: Tue, 27 Feb 2024 14:55:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Sat, 24 Feb 2024 09:40:29 +0100, Krzysztof Kozlowski wrote:
> Amlogic bindings were marked as work-in-progress / unstable in 2017 in
> commit 7e8634e821e1 ("dt-bindings: amlogic: add unstable statement").
> Almost seven years is enough, so drop the "unstable" remark and expect
> usual ABI rules.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm64-dt)

[1/2] dt-bindings: arm: amlogic: remove unstable remark
      https://git.kernel.org/amlogic/c/bb707d63b37e0079193c97dfead041b2903d5591
[2/2] dt-bindings: arm: amlogic: add Neil, Martin and Jerome as maintainers
      https://git.kernel.org/amlogic/c/a3b7554ade36436bbbd52b058207a31dc4224e36

These changes has been applied on the intermediate git tree [1].

The v6.9/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


