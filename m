Return-Path: <devicetree+bounces-144395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B729A2DEE5
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 16:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43AC13A6450
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 15:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C1D91DE2A1;
	Sun,  9 Feb 2025 15:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dGZ5sNht"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933351DF738
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 15:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739115945; cv=none; b=Sw/xSWMdFbi7poIXJYMernwyVUl7JdsmOBFdr8/C9VEtMMFmt+JAdS7/kXZD4hsCaO3E7ir9WV9Fa/LGShSYbFcwCJMdhjvNwJ6L5Q8eBjuTPSABBL27WX2fK5et/TUrUUggSxv0QXKocNY+hA/IMXXUoHaAWoAgS2NJU07C/zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739115945; c=relaxed/simple;
	bh=3gxfD1sGulzTxTC3HzNaZx25H1bSoJxtnCdOgYxuQVg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bg7CKAPGEt6o97Ij7sESr+5gP6+5zmzngo80nCI677lLTIjrGkI62H1Kz0Go8aCO+LXJUeLsyYIxjdS0HvF5fFMq1mqZKF2O4wxlKDC81fJybzTh6CcC8QiCnV2u/t/Zm5KZeJxUqnzquT0sFwkM6F5GPNkeE9eyW9Thy2s+jtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dGZ5sNht; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5fc7ff13fb8so124933eaf.3
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 07:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739115942; x=1739720742; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3gxfD1sGulzTxTC3HzNaZx25H1bSoJxtnCdOgYxuQVg=;
        b=dGZ5sNht4OWKGVAHbbG4DLazyszX7dSV5lhOi9poiNg88TJIZD1ZVSwlKEGxFE05KI
         +oLC1rcAu1qfgR0VS4PTr6zX6/g4Rrsv/vfiPY4I6OvzWx6RRq1s+mficbrxZDeE+HlW
         V1gvCgjASNYFWku/e2D91oIsgIpAKXQ9otfwyACeH0lm57vwsBfgd3j2d636Cm8n1htv
         SQoGA9uaRaCsJ2WGenVkrx96E8VBKEqP2DaRN14DgLg8nuKqQT0xjOUokk25rlbeJrVB
         BcG2Y/5DjqkVvQkAznAegY/v8yb82bJWcQ+wXtuG6RGEAb03zJ8PAU53Mgsk0cS0gGas
         6q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739115942; x=1739720742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gxfD1sGulzTxTC3HzNaZx25H1bSoJxtnCdOgYxuQVg=;
        b=lLO+NVXT1pxxqgveeEpUmjuc8a2kfVvQBQD9Z62chNIGX/sG24bExj3FfJuN4bS00d
         VH1Yq5TqRQPTXG8oycHE6buugp/iHzuM7Mju01kscHweZFoP90zMAqvOtZ0kth/MP3I0
         yxAIYJ8ut1N/R/DGcf8rwAXOkeMzHQAou8NRliJwy8Yo2RFem5+4khbJeikWMuQniqIy
         wdsA8ewV+pThm7dfWO9Pn2+f2gI7EZaLqv19rol3LHsaROMDu/W3A7yZIc3UFPe3yjPm
         LMe6XZ3EQ4ITnc49jFoFrkrbZXuccDZ0/3C4ksrE6/Apnatal+8gEL8FtFnNm6VjmSnO
         6/JQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4RUN2vwE+vWDndPVri89P7ut8HrMH0jUm/QjN38TqIdGgKrqp8VYnm5KHF0sthPiHG0yL8E8JN5jB@vger.kernel.org
X-Gm-Message-State: AOJu0YxyHKdiZTNZxjGgeBdoQcmvOx43UsWoADA+SSsKBpDbqc2i2qP5
	6Yv7TYCtSATUM5xrxpezGJxxFM6w8pFvEkYNGlbxVj6xmXCvNPf2Cydbkfzo1T7/jIuX5p8p5f+
	sqWyMVfO11QKaAuujLwwM6Cfi0gkfBUtwRqyTiA==
X-Gm-Gg: ASbGncsqF551v5joiC4+ElmzEiwuOcpw+ey/ywQF5b2OS8+z51zVBdjrf2i26sFnvr2
	Gyb3FwzeoHBht5RHgmFEpellr9VApUxpMnpHwdsso+thADMDwDERC7bMzI8Imi2b7tHyFRtVb
X-Google-Smtp-Source: AGHT+IENz8t4vUeXGtVHid1JXOXuNJTbdadkrLtEQr8ilv9ZuDGPzHbJyKQfQcMH15TIJAyObgIJoVuODrlm6BQNqBM=
X-Received: by 2002:a05:687c:2187:b0:29e:75ff:4d0c with SMTP id
 586e51a60fabf-2b83eb5153amr7084882fac.4.1739115942497; Sun, 09 Feb 2025
 07:45:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org> <20250206-gs101-renppt-dts-v1-1-cdfe993fb3c5@linaro.org>
In-Reply-To: <20250206-gs101-renppt-dts-v1-1-cdfe993fb3c5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 9 Feb 2025 15:45:31 +0000
X-Gm-Features: AWEUYZmSRsawKgL0IuzGCyXzwqdW4eDJSShnscBuwYbznWcXl18S7O0nhsTO_i4
Message-ID: <CADrjBPp0nhUEP3W-GG1xf=SqAmSmkDeqzP--wRmrin0JYYQDcQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: exynos: gs101: drop explicit regmap from
 reboot nodes
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Feb 2025 at 13:08, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The regmap property for syscon-poweroff and syscon-reboot is unneeded
> here because the poweroff and reboot nodes are children of syscon
> already. It also is deprecated.
>
> We can just drop it to simplify the DT.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

