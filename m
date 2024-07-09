Return-Path: <devicetree+bounces-84375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C45792BE77
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 17:32:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08DE9285F59
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F01319D8B5;
	Tue,  9 Jul 2024 15:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GWw9hR3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B0E19D8A9
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 15:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720539114; cv=none; b=l1bUA8KZXUX74OsVJEQsSskzXq1lanHiKq91ihJO0ayzbAVZXrlfthDRgvjHwKDk2djxw96UGLwpEKmKMTHK+Zg1VSB4Au29wc5+70N/LebKW+QirF/xir6uTsQoR9Wp/LHFbTXKN4DhYqI5hO/OqQjYASgDSV1aCv+siIzP35k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720539114; c=relaxed/simple;
	bh=rBFFYJWprlboz0nJvWGx9LMFY6mldxF8e2qpxgT8MAw=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ixBkT+Z1XsDVCYATgdlCy+L2F1gUjZEi1b6ZXHtflbm2VbBFY8YAM1TFodM0n98hkqECXs9U0bfed7k1uA8MrIqvlfXk1VMOW5siIfdblsZSwFtyGJWj8MSVmcOBKrixtzdg4U3mGP7jbLoovL64VbKdWA1JH26nyhR1FM3KkG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GWw9hR3n; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52e9fe05354so7764206e87.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 08:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720539111; x=1721143911; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xHpq5wMNrD2/hubIXHOBObHVSlKgS/wJVizku6aE47M=;
        b=GWw9hR3nzm2cwpv4Hv9FKYaxBajE+r81HjJdnlxYb9TwFlhqaZ6v+X337uwX5/rFwB
         rx0HmwNpnnEQOIQko/g0VS7okp8yfUiM9Wa1dCxBoQCWcsSPQ8d2pZZ14MupSWnECv3a
         JhKNqiZmQtaPIEciHT7xefo3bJFEfjIl+g0CAK6nh7YpMT+xtDfvRJd1dn+th2JBkT5S
         /LuFURVZIhbKK9Pg5st3OAlP2d96qkwQPf5a9u7DPbjbQeJLiesG06Bmag1IHrCiGPet
         XXy7XXGD3rV2axvh7iZJxpONG2xTOvL8Wi6EyciQjCGkoy95w/1W/ofja54y/oNIYOCH
         HoTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720539111; x=1721143911;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHpq5wMNrD2/hubIXHOBObHVSlKgS/wJVizku6aE47M=;
        b=hJI0uXW2LKflFeBmAs6EhTBJLUVQRDxORxq7k4bVV1ygN6y3DCqDWkMli1393Z+Pdw
         Ck+EaLhj3RZRXN/iRZmGLjAmlVhuw/z3aC6dcvCRuAD0eGDNZ3OpKCHDrzuddhHlNLYL
         9xGcMpJCT5vJ/ejGFK+mKMp0UcN5XKxJkW0/tUkdo23ChGj7SKC+O8MwmjyYQu10mK6l
         paTI6XvR4eLFTqH4bE13ynJTJAAvjPH48A0ijUCemeLy3dub/V4dr7OyUolEKsIMyv/5
         P+AaVVaqENIlNYonNF8fvvILlzMJtZdgQOvlojlAJQQkyyTzurvvbfcqrMiaeQUMDk01
         la2w==
X-Forwarded-Encrypted: i=1; AJvYcCVDm77oHri6H6XD0Bw96OSmefV9eTIo3vpcMSmjWeM+NFaTTCKL4jLsdMHnbv20mJIgtdkzHixMwWgkrUOH1JRlLeBgeR+7MwQHOg==
X-Gm-Message-State: AOJu0YwFCM+TqEgJIeKXUojKLqFZdiv2UBPzrlK5dQu04NQuTFEMBHHe
	nYKg+4E/5Xe3B+xpnjCuLMKWNim+V4lSz30BTYBdlVhptEFTTmQ4FZJON9bjETU=
X-Google-Smtp-Source: AGHT+IHewN66x2HRe8W5Nt8NVnXoo8G3n2GpDN/d4haqMEb11yeCmND6FM7mgc4d6Mu6XfbF2ACV5g==
X-Received: by 2002:a2e:7c04:0:b0:2ee:4af7:d78e with SMTP id 38308e7fff4ca-2eeb3181914mr24259971fa.34.1720539110506;
        Tue, 09 Jul 2024 08:31:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d16b0sm209556185e9.7.2024.07.09.08.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 08:31:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240701165210.578817-1-krzysztof.kozlowski@linaro.org>
References: <20240701165210.578817-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: amlogic: meson8b-ec100: align GPIO keys node
 name with bindings
Message-Id: <172053910960.1180991.4934338719791810029.b4-ty@linaro.org>
Date: Tue, 09 Jul 2024 17:31:49 +0200
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

On Mon, 01 Jul 2024 18:52:10 +0200, Krzysztof Kozlowski wrote:
> Bindings expect the GPIO keys node names to follow certain pattern, see
> dtbs_check warnings:
> 
>   meson8b-ec100.dtb: gpio-keys: '#address-cells', '#size-cells' do not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)...
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm-dt)

[1/1] ARM: dts: amlogic: meson8b-ec100: align GPIO keys node name with bindings
      https://git.kernel.org/amlogic/c/488386d7ec680c8900f81b3fd7570797935bf1ff

These changes has been applied on the intermediate git tree [1].

The v6.11/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


