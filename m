Return-Path: <devicetree+bounces-27809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A35D81BBEE
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 17:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBBE61C259BB
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 16:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63ED5821C;
	Thu, 21 Dec 2023 16:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PoR6a/oR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3660655E68
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 16:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5d2d0661a8dso10878697b3.2
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 08:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703176089; x=1703780889; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ogIy9a1gLVZmbEpACopYNApQ/4ttBa03kR3FslbDNwE=;
        b=PoR6a/oRy+UswgZDNWDQkkizeFUYAqwnvpiopZaSwvC8CRXiYCJoTgQ0bpbOrlsP5x
         mh888jZrLcRyd9zzBllfl92XiD+iTUh2oiohxVCnRP/9KojypKITD605Que8f+ZOcnsg
         nJE/3Dno8AtXdFbTnaSn+kJTvOTdew8a2dchUNBSLvuPjAmCMaSHS+mJCav/85lvPz3j
         XJEeIEy3oFXEx8lvG0tvjT1pF3Uj3/jQCRC7IGr9ZN3RMmP75TS5F5Yh41JCtzOSlO4b
         uLdswc/uUGqfkX8Z8JPYx+zblI8mgfHtKZObt9ovYimJyGGl1RCKn3rVVCVz2tDHwjzn
         NLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703176089; x=1703780889;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ogIy9a1gLVZmbEpACopYNApQ/4ttBa03kR3FslbDNwE=;
        b=G2h4CfvEO2quKbx+3lGGCOaZhkQ+wU8kPER7tq/7S26eIj6O16gz6rFkK8Xx7AP/yH
         OZ38pjWzLpYsHqlAo48WpR/clHIrI05k/RYIrm1HUEs0r1lT0bZMqDZSsM64tGxm95+W
         l62Sr/Uu7hcyppVU9lQJEUg6FFeN8lfi05Gujvmt7kAJ0kSPzkVUxv4qe+LncdeDzVZo
         UUWKQgS/alKIQ/TO3cL9ZVFroyvwV0lkx+SSq3SRQZiYz1LE+1R3iMNhnsbISETn7NO4
         Kn6WluuSV3Cs01LhhQy4DckS6I7FdFWNu7EdL9zIVwGyiExjgBY2L4r6HeOrmJpXMbxk
         TJbA==
X-Gm-Message-State: AOJu0Ywbk601l2mnT39zATJOtuD2T53Z7WfjdPxd+SAJfAgyTOl3eMt6
	zmTmXZIZ+37W3TRTcBxppvQGTdCg5ZghibyqM4eZ2g3JcuGBVQ==
X-Google-Smtp-Source: AGHT+IEL2gaqjHNdYgkXNUqNMEgIctDRK1FBPJfqjCqOSkq0nQqc7cjjrq9NLaz2hl/9pb5cp2uk5i0aT6gi38YQNM4=
X-Received: by 2002:a0d:d755:0:b0:5e5:6aa2:a88f with SMTP id
 z82-20020a0dd755000000b005e56aa2a88fmr51380ywd.56.1703176089273; Thu, 21 Dec
 2023 08:28:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 18:27:58 +0200
Message-ID: <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode configuration
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Until now, all platform that supported both eDP and DP had different
> compatibles for each mode. Using different compatibles for basically
> the same IP block but for a different configuration is bad way all
> around. There is a new compute platform from Qualcomm that supports
> both eDP and DP with the same PHY. So instead of following the old
> method, we should allow the mode to be configured from devicetree.
>
> There has been an off-list discussion on what would be the right way
> to pass on the PHY mode information to the driver and it has been
> concluded that phy-cells is the way to go. This means that basically
> the controller will pass another value (that is, the PHY type) to
> its 'phys' DT property.
>
> For this, we need both the bindings value and the PHY mode value to be
> added as well.
>
> The controller part will follow shortly. But for now, lets see where
> this is going.
>
> There has been another attempt at this here:
> https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
>
> Compared to that version, this one uses the phy-cells method and drops
> the X1E80100 support. The X1E80100 support will be a separate patchset.

After several back and forth discussions, I think that this approach
is not correct and not that easy to extend. Instead I'd like to
suggest adding a property to the DP controller, which enables eDP
behaviour (and thus makes DP driver call phy_set_mode()). Something
like this:
dp: displayport-controller@ae0000 {
    compatible = "qcom,sm8000-dp";
    /* reg, interrupts, etc */
   edp-interface;
   /* or simpler */
   is-edp;
};

What do you think?

-- 
With best wishes
Dmitry

