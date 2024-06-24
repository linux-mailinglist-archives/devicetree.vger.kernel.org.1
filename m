Return-Path: <devicetree+bounces-79230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 358619146A5
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 11:47:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77CA4B22F6B
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 09:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A66F5380F;
	Mon, 24 Jun 2024 09:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pjWVgtMd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6046774413
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719222418; cv=none; b=NxA3Pmi+MQDS/MPqADPBBEQDgU6P+iCU9R2f0s/6B3IkUZMoxhJ7KAyp6D7dLebcxAzU33QaWmYNfsABB0Fx5KIASV7Kg5jlQxZVJTM/LwKJRIRUnQxBFOhRxwLHw9DjMv9aIdljyxqswHs73rbqTTK25cjwE74AIXeB39JVOQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719222418; c=relaxed/simple;
	bh=RlNqxuxlP3EHHraVSFgxxgaCZ5WLSQ4QVAjyJy1jP+c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EkIgOZRma/n8oipc3fvB9OwJQQsaTXuwRWDFA8+V3WVxRFfFEuKEkOHZ8SzQRr3zjHhlZertufb+oWXTDmzZV2DPT6JXq7Iw+UtFNuLQaao81ZmL7n5n8fnvqanVtPTP/9+lbPTZnA62wP6cWapSbyp4B0HRBtnN2yAA78fUgdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pjWVgtMd; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so55852601fa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 02:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719222414; x=1719827214; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WcNWKnHkeIJRMOmqnabShMaVabM5q9PDRYhoyvuhdTA=;
        b=pjWVgtMdEaz9H1bHGIQ2Laj+P7cee2a9ShZWkGLKRkKilAxwd+VKhuqSLLTE8J18Oh
         MtRfxxeG+VtfJObTkqDwjsM/RH3OYnxTx9MgwgfKLoA2xhKoyMT29UVymHyZAlO6Hpkz
         kgxgPEuignztkaNPJo45hLp85+hwd8bj2l9aDD+wFn4UGG1NAineqfDV7NDAmX/ZJkEy
         AiiSRxV6eY7mEDvv48ngMBUSSD9BG5a8cOj4qVfDrgPi5PEs2zidmkh+eHy/oNJx5ryx
         HUlTm/uMoPQ9uYpNAFodrM53/RqPCSfwaG9HsZzkOhHyINvgXg5AOl5QSIw4uKZljk1s
         4J9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719222414; x=1719827214;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WcNWKnHkeIJRMOmqnabShMaVabM5q9PDRYhoyvuhdTA=;
        b=IuvBbgpfTn61AaeIWWUqRFkYAN3agS/0Jonez6+Y8yGz0eynvPP6DjCO3XPGTAWkTb
         GGPJKHAv6fx4R/J3FSW3KEFzMw6KJXeTh2v3cchtaWLq3o8WLb8s4tMD/NRTxvjyXgwz
         sFgB9XybsKwN+LmqPilnF+FfWAfCmFlPCJU77U8xzks77Bq2SZUzRAe4OExTd9lMyJiS
         b+WEAnYijFITnntRlw0Kw6RW4+78DQlOliUqSelesqTzjAVlnkvoE8JBVphq+gqpiiGy
         cme+rpU/p6YUOhqtDtZ83V0hLm8VDV7mCEczp2KqDCBsawWAqr3LGC0Hmci+lStfvGlN
         ZqFQ==
X-Gm-Message-State: AOJu0YwvtnPTIzk7xp92WP4kvCV+okEexXVcWhH66Pxxz50jPAqwTZVH
	aN9AZmVWChB+WkWKn9KhvxA3KY/If3XnRhKOPt0NByJW62GXUaUjvCSxNaBlhNc=
X-Google-Smtp-Source: AGHT+IHpNq1ix8ySZk4ztfCVIL+kyhyoHsHxl6o2d4h29CU2dII6GfkHgVi26P1w+CJMTNmjxLwS1Q==
X-Received: by 2002:a05:651c:22f:b0:2ec:1708:4db5 with SMTP id 38308e7fff4ca-2ec5b339debmr25928351fa.51.1719222413972;
        Mon, 24 Jun 2024 02:46:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366383f65easm9528339f8f.23.2024.06.24.02.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 02:46:53 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Dmitry Rokosov <ddrokosov@salutedevices.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240624-topic-amlogic-upstream-bindings-fixes-dts-round-2-v1-1-0a21f456eb8d@linaro.org>
References: <20240624-topic-amlogic-upstream-bindings-fixes-dts-round-2-v1-1-0a21f456eb8d@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: ad402: fix thermal zone node name
Message-Id: <171922241292.3679804.1552417731983704893.b4-ty@linaro.org>
Date: Mon, 24 Jun 2024 11:46:52 +0200
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

On Mon, 24 Jun 2024 10:59:36 +0200, Neil Armstrong wrote:
> Fixes the following:
> thermal-zones: 'soc_thermal' does not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/thermal/thermal-zones.yaml#
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/1] arm64: dts: amlogic: ad402: fix thermal zone node name
      https://git.kernel.org/amlogic/c/ca88b172eebfaa923ea752f6eb41ec5c9cb587c5

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


