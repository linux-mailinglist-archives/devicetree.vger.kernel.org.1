Return-Path: <devicetree+bounces-73182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C8D8FE278
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:22:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D98121C24EFE
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C011514FF;
	Thu,  6 Jun 2024 09:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5BgrmD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C0C1514DB
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717665707; cv=none; b=LxMZh+1H426JtKIBrOEwOWdfgMClCSaek8FnWxeDWIcOss7Ls8UOGGkB/9FwuzRzAfexIYJzU06tWP4NtVityUugveP8kp3UVBdh7JrEKmsi+TUDCV6IXq+65/Om3mdEc5byH9kVgFULMmvJsXdN/o4ah/I3B6acJVYZSEbeMxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717665707; c=relaxed/simple;
	bh=tjwN2braW1ggfU8ulOrgsPDVHY3oLWrcM+PDLwBsLrQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Iq0NrtBQmcoPyBKKpw0qGq6veepT+q6C7/Z8lE2z5uUnsSANZHn0Mda5E7bfhPtBGjoTPdJ1b6o2RLYoqI4lUyK7/f3fShIxbB7u0Eg3xy1gzRvJbgBIgL+HbwDzuxcsEu2K8Jyp7urB/NWAhab4KdqpVeS+OJC9vbuAmX5Asd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5BgrmD3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-35dc36b107fso744027f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717665704; x=1718270504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NW4EvucckY8CVmeUy8IT9ST3GVjxL8wLdD6zQ7ebgWc=;
        b=D5BgrmD3B0Se48+upm2jtHZWBJOI4CHn4AoMZ0nRWfguuFT7uoi0/M0RbYrsl1GFB9
         sKTGkEn3YiFmWNAdQNdOkX3w3y+Nrj5ADX+7d1tr4xdVW5gZTU4OtX+RVOuWQBZAwas8
         W61ALj5DmlBtfPTfgiqNIKvifarIfd9NywAE/7l6yg0icWEcsa00XIRGU0P0CsDyXMbw
         AvZ4zEyyyERbETf9ALZI01wEThqMoxC0WZKfsK13/t19dStKP02KS6CYdFYvGMCMdMY5
         jIG7enDfhRgmBzSAWwLH99YA5ngnQMU1/Bo7wic5/gN28mxXxYIIkJk/HVZbyrhAxvPc
         M7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717665704; x=1718270504;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NW4EvucckY8CVmeUy8IT9ST3GVjxL8wLdD6zQ7ebgWc=;
        b=l5eEyd1SafnQ4aD8F3Pi1OcpZei2BNVpumfGQpXH1RL5LBY7tgHq52cD8pcBNQ5kYp
         sF/Nt1/v8cNIVIIcGZI4WOsUmJbqqLyZt/IsWdjLx1zwGbtPtYYJtNkYebFwSQOC49p0
         4WjZKvvoixcuSyM390CZeIYjL/q4YueRo52z64lrwwgpzM/oqh6vCB4Fk0HYza3sQDPQ
         ZdNttZogLnU7O9tMggU6nfBEoT2ESon6rrF1wg/CH4FfkjjnDoTS7FicJvrULCvlvVOG
         Tn9eEJXhwi6cDaz+M2xrdkw3mumo8DKCWHlEgyx1qD+2FwzMiaiDDoFHrnbGlnKalp9P
         k2bA==
X-Gm-Message-State: AOJu0YwhUU5KbZ117nAdfvi6vakCsKmDOgJTlitLr4QNhFd7QL5vr0ZX
	oHFqMBe9yBJBKh8QDkfjPLBoA0OH4SEc2bB4ulria0jzQE/YWTh3CBnyY9Fm9rE=
X-Google-Smtp-Source: AGHT+IEQUFhZ4ffQXqczY6bwPIu6J1c6sh9bixcCzNZvbDmwint0JLpN8+SWvWpMQ7EjeERX9pZH2w==
X-Received: by 2002:a5d:4c52:0:b0:354:fca5:4190 with SMTP id ffacd0b85a97d-35e8ef09a32mr3843778f8f.41.1717665703974;
        Thu, 06 Jun 2024 02:21:43 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d4a582sm1033012f8f.35.2024.06.06.02.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 02:21:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Jianxin Pan <jianxin.pan@amlogic.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org
In-Reply-To: <20240528-a4_secpowerdomain-v1-0-2a9d7df9b128@amlogic.com>
References: <20240528-a4_secpowerdomain-v1-0-2a9d7df9b128@amlogic.com>
Subject: Re: [PATCH 0/3] Power: A4: add power domain driver
Message-Id: <171766570315.3938980.14182626736757886496.b4-ty@linaro.org>
Date: Thu, 06 Jun 2024 11:21:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0

Hi,

On Tue, 28 May 2024 16:39:27 +0800, Xianwei Zhao wrote:
> Add power controller driver support for Amlogic A4 SoC.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/3] dt-bindings: power: add Amlogic A4 power domains
      (no commit info)
[2/3] pmdomain: amlogic: Add support for A4 power domains controller
      (no commit info)
[3/3] arm64: dts: amlogic: a4: add power domain controller node
      https://git.kernel.org/amlogic/c/c830ead0d16131de93d2020369ede4d670a4123b

These changes has been applied on the intermediate git tree [1].

The v6.11/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


