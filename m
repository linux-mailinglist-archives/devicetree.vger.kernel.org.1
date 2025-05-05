Return-Path: <devicetree+bounces-173653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6E5AA934E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:36:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6508A3BAD47
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E58B622D4C1;
	Mon,  5 May 2025 12:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="slb9qL5I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091891D90AD
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448598; cv=none; b=EedRbMtL2A3RXRLcHM0L7s1RHonbbfyBda55ZG+Y0ESCA/CtWw+MoYZGkK6idgc99Nz8IJsrvFrhvRMSgiyLfcHsIv3EWIeAWngsYFVvmZ7Gce9bTxGn9JMvrJa8kMuM4OGZIxY6V7roL5yT2h4fGti0ns9GUanS1zNkXZWSTek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448598; c=relaxed/simple;
	bh=ciVXKndoB8DFlJSdxdKzPqCGdMU2iaoazWqC8viFvTg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DMwI8Evl3Leh7uQUzmiflgOrBYPismCV1NtsKZbNkgjF+GfweaD2vaA4hX6FMgfL/nlgbu9oHZZ60iqd3dx8/WxUf0bD7Te2vMfDRADvYsYzg4XxGaG/ShBE3BK8kN16m4SpH7yt4uYT9xscrijk/z1vrOfvUCGY/L/bj5pCaFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=slb9qL5I; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso37228795e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746448595; x=1747053395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pkzP+m0O8sqA7PP0YLwDfiJp+rK3Zs28ikPtrX0VKU8=;
        b=slb9qL5ImUt68TmhMe074o1FUbu6qff30Vqt4eu3EEgyI1GxV2PKgMm1KwA/3G9RGz
         fpwXB5ADlE0OysXyloRYtWRkL17QMAWwNWGtSuKAZC6i1V2qg7WJk2Qc0sb+Z8SHVMJm
         TkFFzwwREdlnwZNdTL1g5eOY5XYit/lARM59VC+fPEsLqpgmwvJ9+Eh/IepkoP1WCYo6
         EPo8Elj7zVD/JzH1UuA/JNh8jZiliNPwX4K5wqwLatU1URmT/FkrXaJFFxvFyMvLuacu
         j2oZbOUEnGJkqksNKuhDMsQFnC//J6MQUEWEUiHhVu/c2OwHhOm7v/q0jgh5HXMqXKLg
         ZBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448595; x=1747053395;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkzP+m0O8sqA7PP0YLwDfiJp+rK3Zs28ikPtrX0VKU8=;
        b=msxrRV5jiVtKv0JxAEI75hkSD6SN6r7+MYg5j3jpRtyHzt1qg4bXI4PL5x/rsEz7Ql
         +fQx8DpvjfSwsABQTlOXwi3G3QvU2hUUhPQPpOlaMif0MkVtiXHM5+yIe7Y0DPn8gwbA
         GJhN2wvC/5dNWa0OT+1OabkYQPXy2dkxlREztbYxrcNaxq53pOz68//XXymlhYsq1p/f
         DI7UGAecHEktiGeSgaOIkqv9CATobf7QDall3Dv1hgbEZuCYanswKWAbMrNtVHM9zp3a
         /9EkSsvIB/nKTO4RO4jLlYgL9dJNUjU64UexgIoSBcyt67/LEHKT6+JnyegjiyCxQxtc
         Q2RQ==
X-Forwarded-Encrypted: i=1; AJvYcCX38ig8KuMXAcwUlgcR+DrwCJ6CWJSXux4QNkdIYfbjM7cC67Mq7Kpbv4nk8CfhI6iH79zkHQ4BzY0L@vger.kernel.org
X-Gm-Message-State: AOJu0YyEO1Q7zRKtLoJ0rW40AabZYtbFE9qKWgjgLswsnsfs1KUYSfhG
	R6kUFf+8TQWqTydnwll6cX9xBBspX4wxrOqxvYAllhT8qqu3eJhW6k8+saLkxY8=
X-Gm-Gg: ASbGncvzesMH/BflhD9qcyWxNJpaXfEiK8PzY6ZYUmfv0qkCwV6aMI7wB5wBBr8oX8S
	aA92YlGhwZZXhW2cvK/yHtyp1I3oNat4YQr/DlykPqoSZZ3ehrpyxx+0nzhRydoL8TEBaYyctvk
	JIy87AHuaUvk2Okvh4rRtvdJgYUSOxV+RjS0zmGsQfZy5uhVwnz3npMDWkE3bNT2X2oiiZ9qsFX
	WqQpwOsJq7EsEvXtaqfbwQZYovtfrbPzou1n8MFx1PV7fcp7zoN9ow+1oXqNhD39sjJl4PosNT4
	Iu+qTlKWVSypi86Fh84gbtPYibJ7HJSjowT+qJozI5/46W6+WGYiGyNrs9ZgRQ==
X-Google-Smtp-Source: AGHT+IG2COW4gRylaTrNX3Gp5wWIIrkuAhTbqRncgXIIyfrr3eqB1u8KpMIP1+ZUs/fDXY7fXIMnZg==
X-Received: by 2002:a05:600c:5111:b0:43c:fb95:c76f with SMTP id 5b1f17b1804b1-441c96a2795mr42420605e9.9.1746448595319;
        Mon, 05 May 2025 05:36:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b8a286c4sm131072725e9.25.2025.05.05.05.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:36:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-amlogic@lists.infradead.org, 
 Ferass El Hafidi <funderscore@postmarketos.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Artur Weber <aweber.kernel@gmail.com>, Karl Chan <exxxxkc@getgoogleoff.me>, 
 Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20250319190150.31529-2-funderscore@postmarketos.org>
References: <20250319190150.31529-2-funderscore@postmarketos.org>
Subject: Re: [PATCH v5 0/2] Add support for Xiaomi Mi TV Stick
Message-Id: <174644859409.1377721.14494389382281683903.b4-ty@linaro.org>
Date: Mon, 05 May 2025 14:36:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Wed, 19 Mar 2025 19:01:48 +0000, Ferass El Hafidi wrote:
> This patch series aims to add initial support for the Xiaomi Mi TV
> Stick.
> 
> Xiaomi Mi TV Stick is a small Amlogic-based Android TV stick released in
> 2020, and known as `xiaomi-aquaman` internally (in the downstream kernel,
> u-boot, ...)
> Its specifications are as follows:
>  * Amlogic S805Y SoC (believed to be mostly identical to S805X)
>  * 8 GB eMMC
>  * 1 GB of RAM
>  * Wi-Fi + Bluetooth
>  * Android TV 9, upgradable to Android TV 10
>  * Google-certified
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV Stick
      https://git.kernel.org/amlogic/c/4954ec9300cfe7ab6f1de1c93c56c236ac0a07e5
[2/2] arm64: dts: amlogic: add support for xiaomi-aquaman/Mi TV Stick
      https://git.kernel.org/amlogic/c/f5d4227c6dcab047579cca7b8e31a476ecdebf7b

These changes has been applied on the intermediate git tree [1].

The v6.16/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


