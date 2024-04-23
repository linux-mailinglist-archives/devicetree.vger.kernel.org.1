Return-Path: <devicetree+bounces-61732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 967FD8ADF7E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 10:11:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 517432867DA
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 08:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F101D4CDF9;
	Tue, 23 Apr 2024 08:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U3e3S8+k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB0144C8F
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 08:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713859882; cv=none; b=moCdKezQQ5KFknyRFgeUw3O9PWfo+8dSaKgvJ8FXatrLKYrxlyfWembBvZ3MaBrK3DLJ0TT9lOxHyfEWjwmmBttR3RJrz89epEl8izMRE0EBlW4tJydiiDW6to/mDsxMYQKO/RpGTH3mcO4jrmdukNIaco4xUdsyE5Us4RgliiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713859882; c=relaxed/simple;
	bh=NxswOUAJn90lHI58zDcYLxmNzQIr9bRpn+QKOPBvzrQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=b2MChTa+SL6QrZ4opU5xeCm7PLdO9uAsXBcaGvmuUhR3mqJErfMwIv+sq2h8fcqgutTbOIymi1H2/Cr8chsylOTj8zPFXW2QAZJVVawnNTPiU+Ml2MrN+v1F7TXYXMAOFhHFJ/8kgJPdpVaEroFRUYu6iRG33jaA/zs+FsTdwtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U3e3S8+k; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41a4f291f9dso14361945e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 01:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713859880; x=1714464680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eZ+VGtO+fOFVuAbHZpxEvkUMpJNeKyAzc1CintCGblA=;
        b=U3e3S8+kPNJCYbKJ1STWOQzxv+xuRekkLZa0vNKFYuTw4RAAgdTuwmRvrw0Pha8TMn
         dFBDePfqrw9E7JtHjKixB3848V7jHMVEheqsf+puInqz49ahadIQpXidhFIaYuRrOTzJ
         emriA7GIqvrBG5oq4N97IKYF8mOuezbN5L6bK7OCq/9Ro5NRUGzYxkTipeNLDKlWpkaV
         0grrwC5tr5Vr/cHx7gw7lRxSq5k0bXtLfi49p7om9l7vDXQuc1UmPxSoYyNhCqiyON/P
         eHWqvrOm9RtnexYbU+0XeDsV0ycd9uxWjagUGbZnPmqUBaxfaqIGgTjS25HgKoKuOXI2
         2luw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713859880; x=1714464680;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZ+VGtO+fOFVuAbHZpxEvkUMpJNeKyAzc1CintCGblA=;
        b=XILOXlUcezBtsCtkN1f3bqCYYs+os9RV9Q1r7lPRJH7EWcDIbiIk8H4hUg+Jzr8Iz1
         ydVRhFCuRSfVKsQmMUVH8XQD74yS0CnZJCsmyyY/CO77wUuacVOi9J9nv5hWpc1jU+0P
         FbWGHtGyVvDCE7v+ek+YltCGUgZjmJ8Bk26/R/MN4y5kHXlgsuRMG5rfzulpIuEIOTdh
         HA87YsbLLTfy7J63PQDe4TnlI8LOdBYra/i8z6pmNC21U1k5/Q03ZpJguwyoD59IDtdd
         iYFTnpGVqNW6l19xbNrjvdw1XpfGMwgalIx2RLdDRsQmvJiYwGF1ZlBFgB3MrCtmKLaf
         0QzA==
X-Gm-Message-State: AOJu0YyGrO+p2FU3DVbp0NLj5lybGva0FgEU8xsLFRlwwT8PwajpqMKR
	YZPPDXTh2mfyezj5NYmFb9TfaeMf9ZGzpvbYM+ZHUodSzE/kQkLfHISupM3532g=
X-Google-Smtp-Source: AGHT+IHl8ypHKhn33BZp55u9NftCZ1FXTUCMSM6KK2GjGZAhkYubM0WWb5a96YQkYliOQ47Zbeh5VA==
X-Received: by 2002:a05:600c:1c27:b0:419:f9ae:e50 with SMTP id j39-20020a05600c1c2700b00419f9ae0e50mr5822319wms.37.1713859879264;
        Tue, 23 Apr 2024 01:11:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id fj3-20020a05600c0c8300b00416b2cbad06sm23179276wmb.41.2024.04.23.01.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 01:11:18 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zelong Dong <zelong.dong@amlogic.com>
In-Reply-To: <20240422-t7-reset-v2-0-cb82271d3296@amlogic.com>
References: <20240422-t7-reset-v2-0-cb82271d3296@amlogic.com>
Subject: Re: (subset) [PATCH v2 0/3] Add support for Amlogic T7 reset
 controller
Message-Id: <171385987846.629595.1742328591413260984.b4-ty@linaro.org>
Date: Tue, 23 Apr 2024 10:11:18 +0200
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

On Mon, 22 Apr 2024 19:11:42 +0800, Kelvin Zhang wrote:
> Add a new compatible and device node for Amlogic T7 reset controller.
> And modify the driver accordingly.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.10/arm64-dt)

[3/3] arm64: dts: amlogic: Add Amlogic T7 reset controller
      https://git.kernel.org/amlogic/c/a42f2e9ba13b8a4c556f43ed99e22ae14fb73130

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


