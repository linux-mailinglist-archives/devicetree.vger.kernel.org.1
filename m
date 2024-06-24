Return-Path: <devicetree+bounces-79181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D32F91448D
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CA4BB22C28
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 08:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8696A4DA04;
	Mon, 24 Jun 2024 08:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gVWFRtnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4092561B
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 08:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719217278; cv=none; b=CvRBr0sxgdom0i9q8d4kf51V43fl+phasHyS9slaceR45OEEGiuqHFhoun20bfikIhcM6X/rZIKKEMWBnNlJVWcYcQt0gC1b/IJbPTw48VYBqadH7wi0ke1h7cW67WpsCigVHtmpSIR01HXBDFvr2cJYS8xbtouJSD5AfDF8wUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719217278; c=relaxed/simple;
	bh=u251a/XP+o9tdpIJnyIXU0QRyZMFEyMwDU/ICP5xX+E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A/Fl8yk4DYu1bUBPLjt/CHUt6X6yka5ITuLHRwDyqBvD6/mcPbI4Glt/SjmRp0I8A13gSphiP5KmI8wnVqXd9DS+E0j/osEa+7TFzfCR6c+VdptlXHDExhDA4yS2vfySrBFkIe5ETbWnUOPKgERUBkfYi9K/7C/JvfmwzCCXp1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gVWFRtnU; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so50720631fa.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 01:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719217274; x=1719822074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlDb4mi6NTpX7sDJc09JrhEmbwE1hAUanv6O8UAsVHQ=;
        b=gVWFRtnUCOWiEJiNtfTEUV4VGj7AIHgcxB30BN9LLH1Pt3GUrTwnte+Xa9NAXYzW2N
         MolteNWjvc4S6QaUjlrKEL4R56RyXEwn6BxqNNsKlOAJu/+Frch5UU6OxwXpEEMHMqCh
         EueKcJwFZXGCXQLXhFciIosyuBIqyHoXZo6g/Phl0tA604BUZ0Cys//02uKDODqAkKpk
         VXiLSsSz5ZNp+DUOc58iefwTMFesix8ovC/dpLgoGV13TaMrN9uIKeFWGRou8aVwwvFK
         qePWgPYFKsox4R2rFKhqgw6glNf9wWpipZ5Kh3PRE71U3ojmbibIvIDYKaITGOdyAhL+
         /nyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719217274; x=1719822074;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BlDb4mi6NTpX7sDJc09JrhEmbwE1hAUanv6O8UAsVHQ=;
        b=vTBiGHF+TX3xXCS9gXwOcIljsJkIdjnbzC0ZvJYql59qamHQhs1Q17v9qC8+laJBD0
         9u8J5a1pMbT/6tOazNM3PQt9/QRr8ELcaQTTOuSRrVaySibRBzA6u2pzJ17Uw8/OsQ6s
         L/UGjpUGtVU24haKD6knFzcgmJFcUET9EgkbyMqGxxRPQatxZ4Virv8R9/YYY2lhvxtp
         NdnffjqXfUxIlVMkXh8pIStoY0Ohm5Ghi1FYDvKsukAX5S8cxjoHCUN5xIH5VacucycW
         Vi+78LwIAyYxS7u1VJTFz16EUek4Lr9G0t2t0Nbrtl+u5o918B7ZNkKOizRyzfIBStqT
         Dang==
X-Forwarded-Encrypted: i=1; AJvYcCU8HQ1sfD55mXTINK8RXqo9hlnRPSHIVCbUsBNf5kvHdhpo2/nvsOaFldzxlcxnSG5kWyds9Yy7rktyRjQSIfBCW2SJ0iKMvUU5BQ==
X-Gm-Message-State: AOJu0YxjyOSfIlC4eY+RhcQrcWnsYGBxXFaAxaQVu632F6xTwElWCdcp
	/LDXCr3hMyn46/O0wUJydWe3SX5WS01Yj5Rxk0qWBJbfSmu6gTPsIrxJXXi2oSM=
X-Google-Smtp-Source: AGHT+IFPKBuSxSa24ffNl0qmiOjXu2IewrcJ94Gg7qLXnxIIuPS9D7LNMxJIkCRpfUF0FuMsV3Vwkg==
X-Received: by 2002:a2e:320a:0:b0:2ec:3d74:88c8 with SMTP id 38308e7fff4ca-2ec5b30bce2mr31274271fa.18.1719217273323;
        Mon, 24 Jun 2024 01:21:13 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d8e0sm132450205e9.3.2024.06.24.01.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 01:21:12 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Christian Hewitt <christianshewitt@gmail.com>
Cc: Sam Nazarko <email@samnazarko.co.uk>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240622135117.2608890-1-christianshewitt@gmail.com>
References: <20240622135117.2608890-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add OSMC Vero 4K
Message-Id: <171921727248.3499124.11397122409029609758.b4-ty@linaro.org>
Date: Mon, 24 Jun 2024 10:21:12 +0200
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

On Sat, 22 Jun 2024 13:51:16 +0000, Christian Hewitt wrote:
> Add support for the OSMC Vero 4K Linux-based STB
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.11/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add OSMC Vero 4K
      https://git.kernel.org/amlogic/c/7d7dd631d1af471a6c909e197be2ef3df526d00f
[2/2] arm64: dts: meson: add support for OSMC Vero 4K
      https://git.kernel.org/amlogic/c/5feff053b08ce5d2167b9f44bcea3b466b5a81a0

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


