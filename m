Return-Path: <devicetree+bounces-43870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E0485BB7B
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A95B1F220DA
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E34C67C7B;
	Tue, 20 Feb 2024 12:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gFrD+wMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB38865BA3
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 12:11:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708431074; cv=none; b=LGVmUaK9k90UG5TjhbrfPvyJWC/Mr4g9+JXnwE9vBtYMAX2pa/hqziSM02mtWzgkkH9WlWB/LfQXuqbSFXl5xsEH6Rfy2SqH5r5r8xA7KujIUJAxxc3EVFmzq6tQvDR9wPqM6zqBnIXJJ1gPtMgn38R6ohzJAkBjQ0+Z5Qh8W4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708431074; c=relaxed/simple;
	bh=BqaQAXupnrIUquuSop0hnKVxmWNQgaRJfNNMkdEr9pU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K9DzcRZwsal1yvUSYi8MYiFICO12xuKdU6WDM1xZI1YNbsaWR7zKbz548zNnOYKxWzUqeWHj8ODICWaioA8EEcnqx45Pc5teB3E2KrhYjwgh1c1ALTsWTwUcZ+Jd8SV+nf8FOTZpLkPIQxL17/Mh+SBs3IegLQhgMErEvbOdfT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gFrD+wMj; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc6e080c1f0so4868763276.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 04:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708431071; x=1709035871; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dy/caDfZjOGZ/ICXi5t2Xv/6rJdHheSidVH0lV0pHS0=;
        b=gFrD+wMjVKIF/fXKHYVJcJVWuNLohOYEJHkqwV8/0gqu+7KWfnUaLG7Gga/l5+VbsJ
         4y+DBviY79C1KePTwfaSQCw+2Jv5SZBVVek5BhMCIVOa2cYihFXZq/gxq5kgA+Wdr+18
         5iWndKfwbm8bLtY5Yb4+hY+E82DcQs3cS1Ws5x6HSCQBatua4EtB4cotI2lbt9Mv6jdH
         B7MjCW++8xQbU0EtIdPnIBd/GCu9Nj1/Xr2u1Og0zWWdkvb5JV6zzUhwbUwNICOOzkoi
         VXevboR0CiZOoEBpDWaTfuKmdgutYn882fe4sArz2NeH9rVyCnuMxdsg+VFIZPUrlJD7
         F6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708431071; x=1709035871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dy/caDfZjOGZ/ICXi5t2Xv/6rJdHheSidVH0lV0pHS0=;
        b=aOTCiPoU+Eft+xQXWAWcpudsbZ7p6ERi5xAjnKA+Zf2Xm2YlpArze5v5ngeSBORC7E
         pfJh3DRqotZQ0L2oRmuoeVMQFFNzqyoO/oROc2341EYo0vC7QPldxhMBBsmaaGqMv0cH
         5GLick7+qFD0wlqhoHFZcJ203McqN4Uu2TgEIntIPaHOfl9DdxrNbzafvmEblaWcZyFJ
         w/0j31RuTKNUGWdouYkekelcwcqoX2/DVTCMMtlMWCMWfET5jo9+IAXNjuxwdW89RucF
         rBD9X1bMB52RRhJm6NNqlyatMoA5212yaMSDsXUzkaYbopxG/g2zyUriPUb/PoxccnbC
         Sb0g==
X-Forwarded-Encrypted: i=1; AJvYcCXUJc4hrcvnLSB73LcDA9GVJSwlt467d1lxHheq93kmO6B+mpJoZGp1FRJn8cWUtAhTmnhv4Cy6fhCLUCISTacvxhFB6ysKQpFHeQ==
X-Gm-Message-State: AOJu0YxejvkOHMf6Hp7cvTwRH/YuAwACZLBLwD9VGPylpG4C+5DhrSo7
	x+PrKffgxYnTOI8gnYir5uPzqPsXbGDezuQeyH1q8Y1wEo6WjZq5kaijbJBkmlgm84n8twZ9VDm
	d1LVO0g+y6ZoXAi/ZDgAVU2jXKEiLsydyaT+NEw==
X-Google-Smtp-Source: AGHT+IF2zDf3XgcK9QP2IYaoigNbZzdQSINGOcFBC2jSQR7qeBk1CasXZT2gneoj3MATMAClXBgLcHMA0tFxwFBaxmU=
X-Received: by 2002:a05:6902:2709:b0:dcc:f8e5:c8c8 with SMTP id
 dz9-20020a056902270900b00dccf8e5c8c8mr16849736ybb.45.1708431071014; Tue, 20
 Feb 2024 04:11:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
 <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 14:11:00 +0200
Message-ID: <CAA8EJpp20nq4X_n0Bp1ZmZ7yffWm1zYpH12QL-Gj_nP7wuq1Hg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] phy: Add Embedded DisplayPort and DisplayPort submodes
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 13:58, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In some cases, a DP PHY needs to be configured to work in eDP mode.
> So add submodes for both DP and eDP so they can be used by the
> controllers for specifying the mode the PHY should be configured in.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

