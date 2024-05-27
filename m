Return-Path: <devicetree+bounces-69547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EA38D0239
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:53:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 089E4B21674
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E23E015ECFE;
	Mon, 27 May 2024 13:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e9lGSbVd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4964413C676
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716817499; cv=none; b=iDGOmWUyHhbKJLh1h8O2pQ5ZT6EU+0CVlQ/LWzM+jqlPF7gflm9iK84wsLAu3Wo9pCO0cuJy3mmAQn7sPEOt3z3XGPBq/Iwd9zQzm8JVnAQgZnQszOImhhkRANh60Lr65sjEiq1Fkgna6fLIhhUO07r7FgzHc6MuMYSqiPEyC8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716817499; c=relaxed/simple;
	bh=fwXZJFB4nkMzHi+97DNTbv/zQhYOdEGJXF+z0FAofVA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=t9M3CMxwfCqxCL3poQXGcIPocyvf5362hPXLshcBXyeS/s97R0QSI2kwLo17CFUV/GmLIMfulWZ4pv4s8edyQBoecl6hAP1Oj5JF0lddZksUgmlecTgZI8U8TvEjb+nMti12Bdu0H4201gigWWXZBp/w04G7JB3qyTteOqWmPE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e9lGSbVd; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-35507e3a5deso1739352f8f.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 06:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716817497; x=1717422297; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BOPePvII73dyzyHk15m4pOPTJxMdXeXMFiP5kpq9p44=;
        b=e9lGSbVdDpdFXgNm35duyPuVOM/s1buSjbwUS0K5ZobzfaSjZuLM3Hw2899t4KI3MG
         bq3HSGk/Ohwf12avPGDex6UGjcJIcgKb05oaesFmqiWy3EC3a4zPPayUfAGE7KV0ypJy
         e1hPM+laFVLGmnj53y62u4rJCj1XixGIkwjmyOmpja6880dIQUWnpMCFah/YnFQOVgUg
         fiHx7CS2dM8XjFWEGaFGuYGZp6PKfH0i5fUugxS8AhWDATtQCnKJKN3YXJAnGfp5kXAI
         sbt2cBs88sZAdWNRwbLNHVcZjd1rGLPwJ8+z6c21vI0ic78NiN/Aw7VvrWXxMWZO/bGo
         BP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716817497; x=1717422297;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BOPePvII73dyzyHk15m4pOPTJxMdXeXMFiP5kpq9p44=;
        b=Gff3bsK39B9XEG9k8TW9BnnGC3pLzd5AMaApiiof0j3rhziswybHt0/KTZUrm7WJXU
         Xk/3QpLCAn3HwiJHoFj3sVdzkNo/xaIcGu8N7x1T62b7BBQycUHDPrnP8St5ZGizeWKm
         0EwHtUHvyDhKnKCjGj0NPXhqGCipiQv5CzlFASm5zmBuivycnuwaFucG9YYZ2088B3yO
         T1fIozfF60pQvNWL7EgmVkWYwNQ4CLUAbWp3ma0Jg7vKVp8TzLdBIYnrWxJ3mhqmfIfr
         vDIcJjtfYgNyDQvCAMQQ+AoKfpixzt4pJF113/K5vYJNDf3SSKEaZlnzJzhO1VnSymya
         HHmg==
X-Forwarded-Encrypted: i=1; AJvYcCUgoUUVgQ4ELy2mDRlfyqxeNrVzwhVdNATxQSw8n9JmnU+MhGtYQQ3g51Vv2csXAIHUdkccd0Dcm1nnhuW0sZxH8V+GI8vX8MP5fA==
X-Gm-Message-State: AOJu0YxfZ8L9AvxOV2rhVAB8+B8WaUj8/wPZ1E7jHNEUdKm2FS1YTKii
	LbUvc9NZyWvGeSDU0ZLB2PeOBW4q/nlGPShQa3AuccDu0u2E1F4uwaQ825Y4FZc=
X-Google-Smtp-Source: AGHT+IGwS0/nDa3ITAcmca/nsJyVuSykEMrLjJDamCmRirIOzO7crmASNfLCNT5BvQ9XhxFkMcLswA==
X-Received: by 2002:a5d:598a:0:b0:356:4cd7:d3ac with SMTP id ffacd0b85a97d-3564cd7d4eemr7776462f8f.12.1716817496449;
        Mon, 27 May 2024 06:44:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3557a091051sm9114549f8f.61.2024.05.27.06.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 06:44:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: jbrunet@baylibre.com, mturquette@baylibre.com, khilman@baylibre.com, 
 martin.blumenstingl@googlemail.com, glaroque@baylibre.com, 
 rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com, 
 lukasz.luba@arm.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: kernel@salutedevices.com, rockosov@gmail.com, 
 linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240328192645.20914-1-ddrokosov@salutedevices.com>
References: <20240328192645.20914-1-ddrokosov@salutedevices.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: amlogic: a1: introduce thermal
 setup
Message-Id: <171681749543.2905422.16742406814394221719.b4-ty@linaro.org>
Date: Mon, 27 May 2024 15:44:55 +0200
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

On Thu, 28 Mar 2024 22:26:34 +0300, Dmitry Rokosov wrote:
> This patch series introduces thermal sensor declaration to the Meson A1
> common dtsi file. It also sets up thermal zones for the AD402 reference
> board. It depends on the series with A1 thermal support at [1].
> 
> Changes v2 since v1 at [2]:
>     - provide Neil RvB for cooling-cells dts patch
>     - purge unnecessary 'amlogic,a1-thermal' fallback
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/3] arm64: dts: amlogic: a1: add cooling-cells for DVFS feature
      https://git.kernel.org/amlogic/c/947bde9069c8241afe401433a6eff276595bb073
[2/3] arm64: dts: amlogic: a1: introduce cpu temperature sensor
      https://git.kernel.org/amlogic/c/049d141161903e656d9475950bb976240802c01c
[3/3] arm64: dts: amlogic: ad402: setup thermal-zones
      https://git.kernel.org/amlogic/c/593ab951232be4779e77f5b1bee0bef4e6fc1022

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


