Return-Path: <devicetree+bounces-37009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C195F84378A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6292C1F24BB2
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 07:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478734E1C4;
	Wed, 31 Jan 2024 07:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="skGgilxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE3F55772
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 07:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706685430; cv=none; b=M850c6bDY5CuZW4SEoDwEmxT4EAZy+syslZQ8R09L5/80kXBlHgdBZ1gc/iNcLEHcze/3ZEXmifILJPJYUNYFHZCPq8WDM89W6ve5p+7FaWEVvJahhkx0wZzVqR+ovWE9lLSyObfKUs4zn5KWouP30p5sKwryYwLU76us6F8Uuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706685430; c=relaxed/simple;
	bh=SBwf/LLGCzAHLu6vwrpQFfw+tJTtM2sMiItF7LdOdsk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R/jsk06gogrlS/oWcDrfHdC2iRgp32d+egPZUbkiK9spQOSEyjqZSVJRdiD03wTshXY+lGdUmkkI5qAyLP57Xp6iJPasl+/Q3vRWuxJXW5V6p/v6x4WkBtaxUq3y0TpDPL6chJa6jAcmVGja5XqsrsrUiad9E/IOCDQC78WGnBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=skGgilxU; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dc6b5d0e015so718727276.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 23:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706685427; x=1707290227; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i++Ghkf0yxbfp+SFq64kOAC5DCFdLn2FGQfA07BzBKg=;
        b=skGgilxUjyHfYPott6hjnYEwUcGIIw0iLZ79jmZDeoTwQ39TGuwMbYfSOSeR1xlylj
         KmPNLTPoxFsJwxfzStCQBl9x0+j+gA5Yvjo3wYuxEPKriaQgq2ByUszH4EPwE35vBKzY
         GaXKNuo/7a+G7t0FcS4oRg5A3f2GO1a/A9LAKud+MnfzVLc/FwUkfunju5D9hFFhavbq
         ZGICYfM7Yv7s2aPLbMBG9JNBR0wTf34KCtRDGW9T+8pXqVz9FcClOQNMF6FdVbKI3KpA
         qFQIIxUU3o45sNSE1RBBvB536zGlzscmCRlaNiu3jGFNQtxkpJSI73D0DaNVU2ivhgB3
         Np5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706685427; x=1707290227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i++Ghkf0yxbfp+SFq64kOAC5DCFdLn2FGQfA07BzBKg=;
        b=NbPMgY2jbryOM08PU20nPk1QAlFqaqLeK4nmpGm4mqUnyKgdfIfjzTD3SrdvBcamP3
         SJ1bdEI0UPUaVOMyQ+QXYPdYdgci9KC9DzXvi9GAfH7iRQVer6LEQK+7/MEuREhG9+nL
         SOnm0Y6f2ftjlD5w3UcWkei+BUnCPJ5D8nQboyk2T9cG2cXc08b2e7momzCC3jzYZI1X
         FqKq1PJwPYzRZcdqEXKNtjWpkrXB/OkbDjtMrdusmf2cqsFbXYgxedaDgZGt69JdNvQX
         EsInzIc5vREYduksrCJjy1qSYmee3iiSik2yebPvldwnWIE5dsOGGzWxTr8O5uPktCNd
         54qw==
X-Gm-Message-State: AOJu0YwERjMbu6+mIDSy+cuOl47npfLFJ4JZgb5cDQ06CIG3ubhR2Zn9
	iV61D4p7UW6mdvaAaAE5FQoF2oB+c4YYZxfpWnqLZ0EW25lG+pcyNmi4RdWdo6oWMvbLS7uDy75
	Htk+2aoz6DUoR37PvfF3oRZoeM5/nFctLoUB91A==
X-Google-Smtp-Source: AGHT+IFTNzxcPE7P1aDSv5JKuBB1enENzJJokT41i2jNc0I+1qhMXhMXCe1ePN6biXsX0bf+Ecr83unT7phgH6+21hA=
X-Received: by 2002:a25:6b44:0:b0:dc2:2e50:dc4b with SMTP id
 o4-20020a256b44000000b00dc22e50dc4bmr894449ybm.52.1706685427161; Tue, 30 Jan
 2024 23:17:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org> <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-2-58a49d2f4605@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 31 Jan 2024 09:16:56 +0200
Message-ID: <CAA8EJpqGhUiF6is9K0OeB+DW5BmTTEEvk1sEDkxV+cN5BWpNnw@mail.gmail.com>
Subject: Re: [PATCH v3 02/17] phy: qcom-qmp-ufs: Switch to devm_clk_bulk_get_all()
 API
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, quic_cang@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 31 Jan 2024 at 09:08, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Device drivers should just rely on the clocks provided by the devicetree
> and enable/disable them based on the requirement. There is no need to
> validate the clocks provided by devicetree in the driver. That's the job
> of DT schema.
>
> So let's switch to devm_clk_bulk_get_all() API that just gets the clocks
> provided by devicetree and remove hardcoded clocks info.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 63 ++++-----------------------------
>  1 file changed, 7 insertions(+), 56 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

