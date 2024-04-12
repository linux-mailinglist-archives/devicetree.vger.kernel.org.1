Return-Path: <devicetree+bounces-58752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 813F68A2F18
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:14:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 215B51F22983
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8F66027E;
	Fri, 12 Apr 2024 13:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RRiw++ss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F64B50275
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712927652; cv=none; b=HrDhmTvirMfXtfHOxdmrI+iKTJ+COlISWj70elsCRd47P0AkEXoJIufOWwpOAswnoNtZMFB5i95snElwJr/dDnUKWMzCTGYlYKosSNtBQUXH3wbq3RUvLJg8MY23XqO3SAh55/Jd6de73T42GqQruvUuoH4+9ku0YmN6wXtaayI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712927652; c=relaxed/simple;
	bh=6YJNqOjFXn4Ir3YczK0thP6clNnk35Xl96pAGt768Kg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=aNoPDvlr3hN4RXOs+cq0cxROfO6gdrvrY0Og0JDGvzk8Of0wuD1J5HrU6q/Ohx+LRsci18MZez+GQOpmR3DkBGmLNAMqzKvfo9CaQtPHKEGFrtXZ+R4sQGzvodARI74IaKG1fAiWKDq6NzxCDGmD/vJQtHcR8FneoM7pUNCJ+2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RRiw++ss; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-417c339d261so6704735e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 06:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712927647; x=1713532447; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RH18SrMd/y4JjJ7b5pFwPelRx1az3iZoiPbP291BArw=;
        b=RRiw++ssuTjNbvO0YDWVkAIy7v8kqEKqxSATChnLC+qQHUAONN8QgdJE5B39KI/tc7
         aD5cTGZt5Qdi4UQJQpFHkAJfC+T+bhRrMAnRCsEumnyKzUYrLMNZb9X6XUOOQTPEOsiB
         bCy6/Y9nXDFE/UwYhdVjizRUI+lr8c9ZVgiJm1IV3AXWZRv2XOmU1YQg7GEb3SBS0s2j
         t9UOhvwnbhMbhGoBUTJlqG38kwexwa1dAPFT7OX9Uc0Rt8y+5kjopHRtY8Mj4UsmX7zV
         4KNDfP+PpTc+LcL7SjhW1GiPP/F/JaCIbKdoIdTmfBBzzQ2pnKUe13rgaNwA051EZM8R
         hkMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712927647; x=1713532447;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RH18SrMd/y4JjJ7b5pFwPelRx1az3iZoiPbP291BArw=;
        b=EIqdwjHd85PQABskECWO+3QIKvPkWt9osLH+HTElWg+MVKVgqrM4WUGYYlpsavOOH8
         zzDDL9Fbc8MCXRlr5c6xgG9X4B3IChNFx/M8TKno9XnhYxmH71NAAEdQvxrWG/wknTTv
         0zhN82+1xcSBMV1TvKWveb20FGbOQshJ7NyORqcrK8B8LrKi3WXDjL6JT63cqSZt6f+3
         fncAnvod6Ru+4yj+gfOej0XHo8Qwaa73OMLU8vOCimko0GzB5KhONkg/T7z9VO/T81WG
         KeKGjMwUuAjrhvKUT57UkAYGVOc09pei1NZyISDZROo0Zp3ky511/SRJdnBL1aMyGcTu
         ILyA==
X-Gm-Message-State: AOJu0YxiW+h6dtPqcXmdEBuUUlLIl0z3vFhOJZQvv0tssGDPHL5X5VEp
	wwEk8hWDwFDvRTfxi8aHgXX3wi3I12fmkxYPFZxBGKZwlJGAh3sEkq+M1NOD3+k=
X-Google-Smtp-Source: AGHT+IFTeG5T6c3kUpQBmoojixRUDv73esoWnMSch/lx2a71iqWniDXUj8ZnnLLFy1S+Tl+cSCNsNQ==
X-Received: by 2002:a05:600c:c18:b0:418:cd0:d8ed with SMTP id fm24-20020a05600c0c1800b004180cd0d8edmr629322wmb.41.1712927647557;
        Fri, 12 Apr 2024 06:14:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id n3-20020a05600c4f8300b0041627ab1554sm8826376wmq.22.2024.04.12.06.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 06:14:07 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240412-fix-secpwr-s4-v2-1-3802fd936d77@amlogic.com>
References: <20240412-fix-secpwr-s4-v2-1-3802fd936d77@amlogic.com>
Subject: Re: [PATCH v2] arm64: dts: meson: fix S4 power-controller node
Message-Id: <171292764682.2837390.10687361550734492802.b4-ty@linaro.org>
Date: Fri, 12 Apr 2024 15:14:06 +0200
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

On Fri, 12 Apr 2024 16:42:30 +0800, Xianwei Zhao wrote:
> The power-controller module works well by adding its parent
> node secure-monitor.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.10/arm64-dt)

[1/1] arm64: dts: meson: fix S4 power-controller node
      https://git.kernel.org/amlogic/c/72907de9051dc2aa7b55c2a020e2872184ac17cd

These changes has been applied on the intermediate git tree [1].

The v6.10/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


