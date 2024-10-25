Return-Path: <devicetree+bounces-115756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 911429B09E0
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:25:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C3431F21B35
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B87187FFE;
	Fri, 25 Oct 2024 16:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nuD6RI6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0281FB8AE
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729873516; cv=none; b=rpsoXwZEM8vh2mWut8D6cl3v2uGE7kSY09ff9OMaK4hLZRo38nYRoRZBVbyOKY0KOKScCML2/Q3QKsaFryZmIuA2P8aOo9J7knC3u/wmRuEUooxmansU+dmAEHYxzU1ldURmJ5uT5ZwvZ2bIl20Q6qXBcf5yKgeTIzTI4U3KeQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729873516; c=relaxed/simple;
	bh=bjUOMPmvbx44ArgARxQu9uiGnjONQ5DYJ9GEwVmwkiU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=D5Jwn4jk/w8TiHHINrjq23t2o5IOeo1xgNUWKR/2/j1EXj6W0sYWSZ5n8/YFVHSIvy8EDDnIaTp0FZ5Cf2xw2j5k43Y5DLJcjjvbyePvYLQvqJINaIpDEp4qk6JNgGixbxjBJ9kHeL492RKWVr98/rrPYb1icwfsAkgQ1Kobuvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nuD6RI6v; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53a0c160b94so2693231e87.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729873513; x=1730478313; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjUOMPmvbx44ArgARxQu9uiGnjONQ5DYJ9GEwVmwkiU=;
        b=nuD6RI6v/5sB0eZ/JqCtTFJtX6lWpNuHrdSGNRa0R+ymcn3kgz8asTdvnc22rCYU5v
         fInjfOiTgiHnoZlkOIP7xgNfRP2cw76APqcNpoQN5JlfobAk6ur0EfkKkcCr8hcJ5487
         UQWVx4v4RMa+1j0WtUDYrpZYRvm2/+0ArmHVykKrOkhwGCqzEdmobmJC2DgVB3vUCC2n
         uljd6tvHh0uqky2JP8T44ewkyyKOrML31wvKE51Fiua+lPyrocRqaC4RCTiPVMQfroxf
         fZlqa4lGRRD33J6fhIIjuAuLNjm8JzJEn/Ysisu69AKoXKcwvB5Safot42JQJ0P6uEe0
         NCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729873513; x=1730478313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjUOMPmvbx44ArgARxQu9uiGnjONQ5DYJ9GEwVmwkiU=;
        b=XclVOZiK0U4qMJfSTKfvpM6ZsMT1qFlCU8jP09n+evdK++7bdn5RDSnBpkmHFSQp1g
         l/m8xHbe7IUeIbbRohh/qYIWwlrU40yt3seGVYvK4dAbfLOTZIxrlTbvjGQK7bVELO1M
         TftjKrlJjwrGAMBNTL3xcx8+G81zaqCiaIvLHKiKwY6L7HxaGMJGRp6pW+pefNoi8lSt
         er3lTPkbXZLpct6Hm7PPNxuFcD1Ku7hSua51nu+lgCxd0gwOtTFvn2TGvHxSIFrIwy6Q
         qszB7D43+fg4P2LyPUM0rsS6wb9h2DsqQ56XCicHLKxJ+A0hKQJ65J7cpAq9jaO244Ye
         I8Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUzDGG4VU/xsmjUn9b85kv+s00k/zFdfWAzJmbF6IRXJPu05F1quGk6fE1BI7wIeQxpE9LM0WRNOjl9@vger.kernel.org
X-Gm-Message-State: AOJu0YzNTxIrWL2NWN43+tDCc8hG4ZTc6nJHKUtzpN4gg/gWYx+V02SD
	CqsM8YRfTFvsfzBYQowLQPQa9y4w32FlvzDte4Ac8DNDBERm/H100UZT3f9Bp2G+5gtInkc7Jc2
	0VmscpVFgy6FPvizCGwvfRMuY81pFZO7pBUaXaQ==
X-Google-Smtp-Source: AGHT+IGGbBVl6KvFdNDYHMTLMjeWLk56PcWbppKi28kx7t5pXxobDS9F5kYDuNnV/DVw3aRo8x3rgKDyjodwVLhSfDw=
X-Received: by 2002:a05:6512:ea8:b0:539:f74b:62a5 with SMTP id
 2adb3069b0e04-53b1a30d646mr6103175e87.25.1729873512702; Fri, 25 Oct 2024
 09:25:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1729738189.git.jahau@rocketmail.com> <a899d5f0525a76efeab6f734b75e1eb95d9a2ca3.1729738189.git.jahau@rocketmail.com>
In-Reply-To: <a899d5f0525a76efeab6f734b75e1eb95d9a2ca3.1729738189.git.jahau@rocketmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 25 Oct 2024 18:25:01 +0200
Message-ID: <CACRpkdYV5jEKzZUOzWMB6XwQseoORwVXiO1tEHVrC1O1GBauTA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: display: panel: Move flip properties
 to panel-common
To: Jakob Hauser <jahau@rocketmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2024 at 5:18=E2=80=AFAM Jakob Hauser <jahau@rocketmail.com>=
 wrote:

> The flip properties were used by "samsung,s6e8aa0.yaml" only so far. By
> introducing "samsung,s6e88a0-ams427ap24.yaml" they become more common.
>
> Signed-off-by: Jakob Hauser <jahau@rocketmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I think I even have a legacy panel that needs this, good!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

