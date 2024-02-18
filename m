Return-Path: <devicetree+bounces-43235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F423A8599B2
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 23:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C2761C20A34
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 22:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D42D2745CD;
	Sun, 18 Feb 2024 22:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ArnORYKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCE9745C0
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 22:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708294266; cv=none; b=uEzTuxHrRALEwWJsHelqLetC4I8PqsoG34GqlykBA3VPLfczkGnwityvc8GVUGiC8q0wNqrAsE+XdVjkbUv72CVMnsBqm0jaohiuXUfdAiBRlTPSgjx2ZeQsv97K/hRLtSSaYr+6r6fjPqNzENEWBO8bImkrBqkX65XblmjyH7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708294266; c=relaxed/simple;
	bh=tvvDncg1WI0//tRyUMP3lqwcPgPfZh9W8WMZ0iFU1aE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b0EzpHksGwZThUu0ZNuBOmbzB4tNlBw76kCKh+oH4PqsgWUYn/lIIP2i6iCtD5rE14VTIIXSmL2zxTHIQLPuNGn7OycaijMmAUa+oEf6GHz3KkSQrdWyjHAHja7gpZSb3+D86u1NrSld+q3eLDsKHyMdBEaVDHRCZPf0zP5UYhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ArnORYKH; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-607bfa4c913so34588117b3.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 14:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708294264; x=1708899064; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+AD8w89s+gvj0mKYSTbVikH3rVbe83iTAnvtx9TnsS0=;
        b=ArnORYKHXrzaDsxMqqx5jIlOb8lvmgFQ8BKGJdwK30BLj/bJ+ic3X7Lf5mj7SjN2oa
         bAr8nRDPLTdCCL/GJLHMLSZ0XbYm57Tl8hzGkrXmlJjLWdy1uTpQ97DQ5kzVLBDu4K4Y
         /coNYyFv2/d4cRtP4XtcCOSOsNY5HIbzsnGcnlnV/hSnw2YEMKTyV7AjyeLi0zr7WApa
         EwYd8jbAT9pdP8/axTwlJJu/c2oD5ePgG62AmELCmsVsF0ZaltSfDltXbhQS2bqqyqa6
         TLqrrvsHoDAadG7Bsopw245mOtQ4tuDEoYPDIggAscpRNjZVgHI4SIqj0u2qncC9lFdX
         gtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708294264; x=1708899064;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+AD8w89s+gvj0mKYSTbVikH3rVbe83iTAnvtx9TnsS0=;
        b=KU5Olw2suNmyBvKJTFh22r1RLobEdL6ptwKRj3SY8/E6btZ7JgYE/7aWVDxq+uhgQm
         /FUAymf3RYAaxfynHT9yya0OY7UaGCW9/rgvQip+Wm018VKOSTxfHoBOfgjf8rrVneZk
         V75LDz/6TJwj0fWIiXBz1yN+oLELeE9M0xraueVj4VJti0vruLscIrhyIyAwgLXthLmn
         +ATQfOGPBfpm8AKVIBb2sZseefk/q8AK1kR6r/oYeGUU8sDZc+6vKSEp/4oZnTYUOx1Y
         6ea8Azp9YPci0QUEsHkJxLWQIwCm5rpwghXmyi9wTv7iUAWA/hZBAHJ6nvBVejlJnkGp
         DR8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVwUVUp4Q2WUnQ6U1K+0IprgeZXC+mgrB4Il7xVMPd4dNNa+B5qXt02TpWONnSI6IEXaakDQtB8msOfok507FmOttAk4fOj8yEfFQ==
X-Gm-Message-State: AOJu0Yz2AoxB3Qq61WHlg2DfFnBZy89NNZN6Y5ZJs85pgp1eOdQ3376j
	P57cyiYzZIej0It4vMJd2JEPyoYLBBRSgDXKio9mlsumI97JjrMDjdFPphyrZUtgcsuNY8J12e/
	oHh2zQDYCiRkcwAPOU/F+QBFpTIrN6A6xTk0HsA==
X-Google-Smtp-Source: AGHT+IEgg0E5u1X5ebuYXnJ++SELErkiGN+TuPyNky9IKq31ECZO7bB1+ZtCKqmUvcixZwfyK121qgFIcMfvjQlbF9Y=
X-Received: by 2002:a05:690c:fd0:b0:608:d1d:d8ce with SMTP id
 dg16-20020a05690c0fd000b006080d1dd8cemr4935951ywb.12.1708294264190; Sun, 18
 Feb 2024 14:11:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240218-hfpll-yaml-v2-0-31543e0d6261@z3ntu.xyz> <20240218-hfpll-yaml-v2-3-31543e0d6261@z3ntu.xyz>
In-Reply-To: <20240218-hfpll-yaml-v2-3-31543e0d6261@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 00:10:53 +0200
Message-ID: <CAA8EJppEyibLz3z4UQbTdR08332w0OoegbOWTz0QnD9rcRb2DA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs404: Use qcs404-hfpll
 compatible for hfpll
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 18 Feb 2024 at 22:58, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Follow the updated bindings and use a QCS404-specific compatible for the
> HFPLL on this SoC.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
> Please note that this patch should only land after the patch for the
> clock driver.
> ---
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

