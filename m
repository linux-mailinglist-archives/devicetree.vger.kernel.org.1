Return-Path: <devicetree+bounces-35317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 455CC83CF30
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 23:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5F0F1F263B2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 22:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D44A713AA4F;
	Thu, 25 Jan 2024 22:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bW2gQW2s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C33D13AA27
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 22:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706220823; cv=none; b=Peked2OjmO0+L3jFJDbrXDDd+idbMKsSd31iclGKdbHNjxHT1gwkTehoTp6n0mDoNSRPq03HwyURDVytcL2hfX6vKS7NnzveWWX3upNzhuuZvi3VcmVY989mGQFdx2bAMz9LdUp90XtEdssdL5j9gowmmQ1dxRW45mjQFOD1ecE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706220823; c=relaxed/simple;
	bh=/q+OKPTvjfhtwgZQ3LtD4ypTdtx/UFBmU0i1AagUJwU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o64iJdgmVtsB4EYV+fO4HX9YlvDu2iSDhWwk7lnUhejvivuGWPwAhtNmGrrULPuBxr2t1cOzLKueybmpnGsSygIbBRoPz5OSpIK0ICLdX7h2Tkp6VjfVXdGz0UlJK85TX4Q9wJDgjDdqgwPcRPFhLzIAt5wCIFooRZCD89+D5RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bW2gQW2s; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6001449a2beso37569137b3.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706220821; x=1706825621; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=slwtZcSfd5oU0OLpt8FDjn7MWT/cYH2TJp6qwy9HSCY=;
        b=bW2gQW2sQmAslc3/bpTtAV5QqH6TAAxFQ7V9JEk58Cq7AkNeKTYBKSir+YX4kZvBfL
         JICtdNL2fOWOOe43hSPVvdmWUjPzsHfuXp08B+scFUSFVk/p9Q41rvQHt7GoTTgfk8kS
         XtVDn8RZ5tbcQsqmZK2/HLNXVhib5iEpvoArs85b/PC407wLmc2QmOPMllWxzqgkHrAZ
         SnoIVQXKpw4KUtAEJP1sEjtPa4+LjnxKltA2WvH9MIqae7ytMawnFPt2olm/H0Giz+2X
         PMH1u87jn0KiQWKtpXmp7jXnrrwYINDo+RDJVUQMi4Xb5fx1INXPKEgWvASiEPRpSKI+
         6mfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706220821; x=1706825621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slwtZcSfd5oU0OLpt8FDjn7MWT/cYH2TJp6qwy9HSCY=;
        b=CwMEcdvIHG/Bp7cryfykNlwy57s7nRB3v8M452z23Fhqlp8RUaW1ybMDBSP9lM+GoZ
         EI+r71oryRT7chhlJFUQRHRpTTKh5spSd7PjP2QkRib3QFTWGF6khP2hHN+vVvPwCg+Q
         NCS8DFOf9BVsBsZll0V87My0cBtvP0nC1yStLcPpsdJY/s+uiuaJoSseKwR9h1vxvcym
         W87hdjlQqyqz6IpLdzwcHmWqVZi62XWKQTLvRFVAlz4FD+CxzvZrOIjCT0Z260lCnSe9
         PKaRwYFxMIjfnmvxvjkz+aq0X3MW8q/f8vGwCZyPgBHZwCPwk9/nfHcb+RYDKBXTd+GZ
         2Brw==
X-Gm-Message-State: AOJu0YxR6qylSw1JU5CiViQZhI7bNmhuj30MZx+Mx9fSFs2pDxJAxgzZ
	i72Com48GSB5VZpy+26NZK1W7e9B1WZ64CivLS5Ax8vPFMKLXXpH3fxDpyW/rzUdcetdgIPR0uD
	mJIjHpoT+srfhmEz16Zh2XhJe8kL/RxO40aljSg==
X-Google-Smtp-Source: AGHT+IE3TWyGHNGHsG2xqF2JXCIF6aVnGmnqe4/3CyA3myFBwqZCxjCHe2OS/OaFjyPxVBpRCKQb3m3/ij+f63iLZtk=
X-Received: by 2002:a81:c441:0:b0:5ff:7cc9:1691 with SMTP id
 s1-20020a81c441000000b005ff7cc91691mr475647ywj.70.1706220821421; Thu, 25 Jan
 2024 14:13:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240125-msm8953-mdss-reset-v2-0-fd7824559426@z3ntu.xyz> <20240125-msm8953-mdss-reset-v2-2-fd7824559426@z3ntu.xyz>
In-Reply-To: <20240125-msm8953-mdss-reset-v2-2-fd7824559426@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 00:13:30 +0200
Message-ID: <CAA8EJpqb_FFUzyGR2SYH7wwrDCrC8Wy7QcUFyJgHqAvx42Vgfw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] clk: qcom: gcc-msm8953: add more resets
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Lypak <vladimir.lypak@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Jan 2024 at 23:36, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
>
> Add new entries in the gcc driver for some more resets found on MSM8953.
>
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> [luca: expand commit message, move entry, add more entries]
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  drivers/clk/qcom/gcc-msm8953.c | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

