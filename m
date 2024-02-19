Return-Path: <devicetree+bounces-43312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E82859EE2
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C36151C222EA
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40522135A;
	Mon, 19 Feb 2024 08:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="euIY5KVU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07686219F0
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708332930; cv=none; b=VIhmm/eEn5A+KvdFhtwmEvIs9Uu6uVO2SIkqfP3E1PzKasYk+x2K5xkgLJejYHrEYuB6vBp6/y88pNYwTfxNICHm0tMAADk7LV0aQKDZ5BFliEidxqc1yH5NKBiLdnMJv2z1J8TZOA3lC+920QDivSvXL7mEVbnabOqWyk0tOcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708332930; c=relaxed/simple;
	bh=v3jG8NE8mdAouMj5NdjEMZU71geyyozFyI4FC8QUgo0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=U2o8DmxjKbJtYt8rbh0wxaMFJjvlmH9TKWHywe9rc1kcd3pvmmfAlCoq6BOErLn+lEP6bOAuKJ9vZQhRh8HG36cPK51E2ItRiw67uM0YYi/0riJt+e1D4lGbkxQaLf/87Rt253q7+DtCEn6ElWL/aKczgxiW/ISyRd9tHFCDTXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=euIY5KVU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4125edd1433so11776685e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708332927; x=1708937727; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iA8hL0vmryN9XM9ciwuNyT7l7HkIEUflQrFOUN/duUY=;
        b=euIY5KVUzXFzVnvWfwSpnPOkqzu4zGRU9O23YszpCpyJKpmmLzljZIvimVTd1tpj5Q
         JX9CKf0/96KnGkLfufybftBnFHlvQK5qWnA7CskI8TegoeAZ4GaaSSGoDlD4bgXKAv1c
         hFbJsGyYU+Xf62zd7xgP72RN8Qb2XldDppINPNlutGJbrt8mziHx1oMyA7GmFuRpEd/d
         9kXkdDgwoMSjR+3u90sBVsEyjPaAzcmEO+Sy97mK/rw52yM9kJYWJFBzxU5VxThZjaFE
         I+wnju4eo/pOIz+rWyv3ZQBRk9m2V9gPJGA6aSSpNqLKVkKyZRvo4LV1cXZUXwE3ogyI
         acFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708332927; x=1708937727;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iA8hL0vmryN9XM9ciwuNyT7l7HkIEUflQrFOUN/duUY=;
        b=RIciu0J2zz5OBmnBrI5kKsTIFjrCh0rjJRpmTw2QAZP5HHeZbSLS/vqJDqUIT/sW/D
         /mfQjtKyePGMsuwt6X6oTVd6GDCpQMtmBSSPw32q1353Vv67TSTPHrGnVquaesHVC1y3
         doWvkitFCecKs0hP3L1yma8z3GXbefyIRewQjwxWUyxfrIuNwziEgYwd7fBr3c1b/8y6
         1TZMJK8nLuP1s+W+pTohJxDsT6JqxXOFYSV1a29CDSvKA3Z8iRRZFiy9O736GlW3y2x9
         lwx1lV4LN4476S5x/8Obl5jEY9rn+vM0+7oynI9tPaznBPhsdmYBgYx4rbU99LRTTzE6
         aaDw==
X-Gm-Message-State: AOJu0Yxu22hh6htVdRinU7hUJXO/661JSsoojEG2I0OWe+FxgF7cvYLy
	gVEGQyOgBKJjeCM7d05xn74s7UXnDdXneKT75PXak383vL/XOJ+ezTbLEEEEgGk=
X-Google-Smtp-Source: AGHT+IGXNRor5SWq6PVxqhZAe3rTmCqaW2L1WMllERpSnnHE4+0llmEdPEPP8Xj/3W+6Y0poTE8lkQ==
X-Received: by 2002:a7b:c415:0:b0:412:e80:be4d with SMTP id k21-20020a7bc415000000b004120e80be4dmr8310293wmi.36.1708332927387;
        Mon, 19 Feb 2024 00:55:27 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q17-20020a7bce91000000b00412656ba919sm2952458wmj.20.2024.02.19.00.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 00:55:27 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-amlogic@lists.infradead.org, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
In-Reply-To: <20240218111959.1811676-1-martin.blumenstingl@googlemail.com>
References: <20240218111959.1811676-1-martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v1 0/3] ARM: dts: amlogic: Three small binding check
 error fixes
Message-Id: <170833292669.1750802.15916025234070714227.b4-ty@linaro.org>
Date: Mon, 19 Feb 2024 09:55:26 +0100
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

On Sun, 18 Feb 2024 12:19:56 +0100, Martin Blumenstingl wrote:
> This series contains three small binding check fixes.
> Nothing functional was broken before, so no need to backpport any of
> these to -stable.
> 
> 
> Martin Blumenstingl (3):
>   ARM: dts: meson: fix bus node names
>   ARM: dts: meson8: fix &hwrng node compatible string
>   ARM: dts: meson8b: fix &hwrng node compatible string
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.9/arm-dt)

[1/3] ARM: dts: meson: fix bus node names
      https://git.kernel.org/amlogic/c/0a20438f4531b55393a2e85bd0cb9cc45362a6a4
[2/3] ARM: dts: meson8: fix &hwrng node compatible string
      https://git.kernel.org/amlogic/c/6f2cc11b4340cb5b0f81fe72eb732144bc7b6287
[3/3] ARM: dts: meson8b: fix &hwrng node compatible string
      https://git.kernel.org/amlogic/c/778a2c000470ee56551d0833a0eaa387530e4bec

These changes has been applied on the intermediate git tree [1].

The v6.9/arm-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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


