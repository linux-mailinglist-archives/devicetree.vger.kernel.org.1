Return-Path: <devicetree+bounces-52764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30040887F29
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 22:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B72EA2815E6
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 21:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2051CD02;
	Sun, 24 Mar 2024 21:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZ/VvvsJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7EB101E6
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 21:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711315505; cv=none; b=X4WWRWJuvrV0p/sDTZsi4pnKTo1UxG9c9PhX0tqN/I/n00lAd1Gb2HaGu4KyTh/zA/v2SGk9WLXS008a6dNoRqxYzcBsznxBKQKMN8aab3U4rJtoPI76bYTBGb3MAy0qN+bUPhe1oixdyHAj3p2JvFjAJgSE4VvebwhyOnk7oWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711315505; c=relaxed/simple;
	bh=cwb+YFRbwyYuw0AcWdz6CUnMjydvn4ln5n953mSo1/E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V+72Rh+WC8cH/kfIlGGtqD8Ex3lb6RPc16cL/c+CHYHqeKfmPR2oRT8KugQOTdE+Gb1aVVfm4Qrc9qxthkbIU23tZdYRWHoTLF9rP4Xk6Emh803B8z5GtlCGOCH63/iNNNfIpYhChjxSiEOKINdaXxjU8v19/bqj6EmR5q0oLHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lZ/VvvsJ; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3c39177fea4so2636650b6e.2
        for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 14:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711315502; x=1711920302; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAn6z6C6kAQCNocTNhwJGXaT3ktUI5cvq1m2gw2cMlM=;
        b=lZ/VvvsJDEAAuFKZ0gmOUfq4yqK30jwFLE+hnyJls6E1AF6tC/A2jSgIwp+7MT6Z0R
         1rsqtOhvFcYpC7pFneC0gDA2To1cToOjJGCK/FYo10p+WfvLC3h7aQE+pQKVjLcX8s5O
         fiBfUR/b08U4MK0n01nOlE+uXs8G1fyVfqxzYPReUbFYYTVcBywjwxwc98aPkJa2x01E
         k9Y+2mrvjZaT+aynXA9EfoFTRE1TZd27RIlTyBOn3lJNtxxbLfnqP4TwW1nUoIZ/l5Ak
         E6AYiOVmx4EQhZN2OBxRBLvFZkrASWExS3EUJvKkFlJHcr625cYLJd4Ux8ZNoAFMaE0G
         hkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711315502; x=1711920302;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAn6z6C6kAQCNocTNhwJGXaT3ktUI5cvq1m2gw2cMlM=;
        b=qaW3oV6+VhgMkTmAqZO9qap/MBBRAS0TzI+JZlXET6ceZywzBucPbyJBEwdqCpWJBl
         69tvJwkOIWlTDTx5Z/UFif2wi5Ym1+Y8H3624yI3cASsracMLRu9IycoahIhLBicYQx2
         vFW08Eup91t05PAsoqU1Mt1CTmeSuLY9po4Rq43huPBeSe7kF8qZ4aPKKTNlLrah/lUB
         tZR3sijYqz4xE5k2DjKec2+1mWI2v6usMN4hoK5WmS29OPz/SfmWpFD6aFiESc3NGQ7j
         l7mCsqwJq2MHX0dFAFfnMVlVTKn8TujlvPYBoHIVLxb8W+Fh6HmkzMvEN2MHVwkdwRcD
         dcng==
X-Forwarded-Encrypted: i=1; AJvYcCWcCJM/Y82Q4ELpRK9ydcjCud7bweE3DlaZvsXpSV21TxHjj8ZMHmUJPzI2iaQYOnE3Er6U5lV9/QBAHA6sT5bWxotEgBxqqiMIvQ==
X-Gm-Message-State: AOJu0Yx851clbryJqO//ejpxdfk87+R6Jf33yEgd5xDqux/jpZokBEWC
	oVRX4o3UaWWDsEJB3+MY9uPwQjLgsfPPumb1RxY7CyG44aA6cNp8MyAr3n4P7wp0n5l+vcz56LN
	9g8J/j8GWMjez6cOGH6faVR9TrxPwYa2rgk+bKQ==
X-Google-Smtp-Source: AGHT+IFsASaAXYhy6wMEzFscwmoJiMkAf8XUTx8af2vr4btW+ENv9jYLPxo+baqJKEZ59gDPp1vL6Dvk7ZbPq+nVlgU=
X-Received: by 2002:a05:6808:2a43:b0:3c3:7edd:bf84 with SMTP id
 fa3-20020a0568082a4300b003c37eddbf84mr5754842oib.35.1711315501982; Sun, 24
 Mar 2024 14:25:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240324-x1e80100-display-refactor-connector-v4-0-e0ebaea66a78@linaro.org>
 <20240324-x1e80100-display-refactor-connector-v4-1-e0ebaea66a78@linaro.org>
In-Reply-To: <20240324-x1e80100-display-refactor-connector-v4-1-e0ebaea66a78@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Mar 2024 23:24:50 +0200
Message-ID: <CAA8EJppues54mPveOn7irCHYe+T4Fdv-=4ucLLpqq843NLBAfQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] drm/msm/dp: Add support for determining the eDP/DP
 mode from DT
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 24 Mar 2024 at 20:57, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Instead of relying on different compatibles for eDP and DP, lookup
> the panel node in devicetree to figure out the connector type and
> then pass on that information to the PHY. External DP doesn't have
> a panel described in DT, therefore, assume it's eDP if panel node
> is present.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

