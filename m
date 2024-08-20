Return-Path: <devicetree+bounces-95296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF71958B5B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 17:31:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 100791F23B7E
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 15:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24017192B6F;
	Tue, 20 Aug 2024 15:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kMseZZUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0A3192B9F
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 15:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724167861; cv=none; b=AxMkBMn7ZtGVrVa1qWXI/LoDIgMqzEvIr51Q+dIdWbZ6aiR+gRoCgQcZKXb/b8+D8aAfS/Y2gBBlw1r9pSJD5VvnX8KcAPNMmKh5yyQ0fj463tRwxE5B+tfF4tmbMSab6fgtPocS0SAwqwmy9lrVLQlT0FucZoui2cLfwRzaQIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724167861; c=relaxed/simple;
	bh=sXFLJlA8D2vcoNyOpTJqQiUl4iEBMJKfR/Do1ZTd10I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=s44u9o7mTQaaSAMD+7yIR5n1EMOd8/zMpxRD3GTf+5AiXBSZ5yOBkkB9uv5XJPd+l9f2aUY/cz6UjtHaVIM9m7rzT+9+2M/6Re5C4tw+k/ywnNorj+mMEVIavdWLuy+A7Muh/cuYHiKqgR9KyWWfkHgp5zzpvRDVzPE0tAUGo04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kMseZZUb; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-429e29933aaso43808455e9.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724167858; x=1724772658; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ur/Vav4aBUf1Kq1Kuvd977BxSeEb3EWBoV9+RH1igk=;
        b=kMseZZUbyPwx1WS5QSMch1hMGtFiEXmPpsDDTvZ9Bp6Y1fP6TG7pSRPZdehtPxKGZS
         M1dynJDv+jS1mkQ1VFssqZkxqPq6YrqubP6vkWUguaUZbbkgDA9iaYN1FfNHNo3xA7TW
         O5tsZ9A9bcQLuKHd+LNDwz7sbfQQPWdFv0gThF3tHxvhmLpYfByCOgRovnatoKLIiBl+
         rXEPcyDmNLbrfbXEq5R8MlWjZuf+ygVhtFf6V9136Zl0IEB3DAfbk74v9SjSG6aVoVHo
         HBx/b9Eee/ggOUosXacnvyhD+EFcIh/38NUB7Q1u2JfzkKxgfmuFClC3v2qm5te5Goqt
         rKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724167858; x=1724772658;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Ur/Vav4aBUf1Kq1Kuvd977BxSeEb3EWBoV9+RH1igk=;
        b=PgNGABRfSrpqhM27v339/I3LJiQ/F1gIngQ28g0P6JrpENZq0dbNOMQ4uuoz40SeN7
         v/5BdvPM0yY1e5aZKfybSRr9dfSEyp3qZ+eBh28+ZE1wajV1bH2FXEXv21gxws2eh2Uw
         59jX7NEsO6ISli4zUs1UNwyU42+E6JM/Y7UKjM/CKBlW1e7q3UuBqIdyl2ieauyVoDC+
         U5QMlem9eYanEyOQXFXMX7LzOO0/ht88D8PIIkwHXyS7gYBol66+xkFMyjMiDp+vEvMx
         h+hxekdZb9sfzjMzeiD4vTKnpcihLR+FsI/YzVxeQGgy0aH4E4YqSorrHkAG+sG5ikNt
         bpLw==
X-Forwarded-Encrypted: i=1; AJvYcCUCY8uLPLpSicVi9vcpvSqJ9seYW80nWk/OF0wLVMnPFEBRbkOGYzSGoVw7Z4InNG0ZtNZPfsoBkKTdUXkBxj6tJ6qfeCWvQHjiyw==
X-Gm-Message-State: AOJu0YzgS/Yyzu8Pk4SYUS/NLUn2M0aSGTKp4KviZXu7f5Wmb6Kk7gyT
	mmcoK269TlNBJmsexSaZHrEEMnbACcDdcjPn7dPyGBUwfaqGucFudQUgHO2lVks=
X-Google-Smtp-Source: AGHT+IHWMUD27wprJqfh0nu5mP583FCFaAbKyLfpBAtWWwZSc+ciqzZ5wNroIC1wy29Wu3Iqbqy2fA==
X-Received: by 2002:adf:f0c6:0:b0:368:5a8c:580b with SMTP id ffacd0b85a97d-3719444b2d0mr10387185f8f.19.1724167857172;
        Tue, 20 Aug 2024 08:30:57 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a311sm13439592f8f.23.2024.08.20.08.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 08:30:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20240719-soc_info-v3-0-020a3b687c0c@amlogic.com>
References: <20240719-soc_info-v3-0-020a3b687c0c@amlogic.com>
Subject: Re: (subset) [PATCH v3 0/6] Add new Amlogic SoCs info defines.
Message-Id: <172416785609.3051192.670388660690339577.b4-ty@linaro.org>
Date: Tue, 20 Aug 2024 17:30:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0

Hi,

On Fri, 19 Jul 2024 16:08:08 +0800, Xianwei Zhao wrote:
> Add more Amlogic SoCs info defines, include S4, C3
> T7, A4, A5.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.12/drivers)

[1/6] dt-bindings: arm: amlogic: meson-gx-ao-secure: support more SoCs
      https://git.kernel.org/amlogic/c/dde3c64013035c9d6f0a5d0fd894a7a7e03c79ea
[2/6] soc: amlogic: meson-gx-socinfo: add new SoCs id
      https://git.kernel.org/amlogic/c/009ff80bfaec1aa3fa48bbe5e2903c95931a6f37

These changes has been applied on the intermediate git tree [1].

The v6.12/drivers branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


