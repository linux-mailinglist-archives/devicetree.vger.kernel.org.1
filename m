Return-Path: <devicetree+bounces-55389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E2E8950AA
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4C791C21CDB
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 10:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34755FBAA;
	Tue,  2 Apr 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4tCu6Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8645EE82
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 10:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712054903; cv=none; b=XbJzn4R8nJXJyjI6u9LSpG8VIAStzxSArRSYvclmB12dLVhW+1JCix2aN95vVyKbM5mXgiGkqQISyDM1wDZVOrEMV0kLuFDJMoPhYHTyIMfK2RWEvTikIqkSuyaTPnFqodZ052uERsaQGlwgr+tfQtJQ4QcRVr53YZtlHCRN/hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712054903; c=relaxed/simple;
	bh=qqkptkwBB5jmETqLjS63zlxdb+z5eD6/k+FZmoOcCP0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pgpbYw5ClnZ9Q2IQZlz1tcrjDROzKG+1frP2IfRabsuE7B+y/mL92unbWIbN+0GXkk72hjwE+C4SShgoT+KnQI99cNMO5wb35IJC78ohRU4a9Fcqh5iMBgfB28isyLKrJ25lUkqfNefNQrcu6E17AXcu4dbPLwH5GN4AdsJoLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4tCu6Gh; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dccb1421bdeso4351769276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 03:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712054900; x=1712659700; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+xPQyCvLo53dq7pKGpQQof9V6YZJuIofT5TTwfg8858=;
        b=u4tCu6GhOY38sRAviEV/tKlL3V3tT2l3fvAV59tynf3dKBVNSfO/RXTM5iS23pXu+7
         0qvMqTLkTyQqwMB0XwY4ciDrt21N1kbM3QG6YvCZtCoYUGcUiffQDKuSH56LkBwHUhES
         hOJVE4POJfo4e+7Q02ODEDCgG+/dky/Z1jpgk3nWT99mwem8H4e/cyAPXocjN0ZyW0sG
         w13myAXscyDancBhQqgM4ply80ZcqpNRp8MWGPTKaRGQfIPjRRBObK7u5Op3wtSAukId
         c/hAdLOzFkcrrQmRwa+TtxBMj4R5WToq8vDsSc5h3taODFEQh29ntK/JvlLU7IbLeikt
         sakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712054900; x=1712659700;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+xPQyCvLo53dq7pKGpQQof9V6YZJuIofT5TTwfg8858=;
        b=BSfdKDFAKg89ch3wqye5J4LGr4Qe4QVq1/yDT2eLHVSwGikQCaDDj2EEJIN2hJJOZh
         JQRJ1xM0idd1JRcRrjAV8HU/oIFA+kBennCJFAN51lqxy42dDTGvt5F8rFv93dnva/ed
         vd53QTeoE0M7xs1kRW3vesqH+e7/bLAC3ai8ExXMo8200MUF75qc3WAyA4LGDd95j76s
         4MkTYxeqUrLUmBOrte3IMn36L6UZKkJfGDmfCk4GlC6segE+9oqvpwTI4dVAD+CtPtbd
         bs+nzyavECUbRuXyYsC/iwLyXbw5qm9u4PowDT2IwGs25CcMdUGtBCv0hslL9ckkgog6
         h4og==
X-Forwarded-Encrypted: i=1; AJvYcCWnHMFxvoMjzlpnXkFWT6mX33k0GMh3vW5SRCK3gWVnNE4mPcd5UqxoXFsWpIWN6ZvRFD8qrulZHYHMkAv6w8AvIwheilQJQQ7Pkw==
X-Gm-Message-State: AOJu0YxQjSi5ldbOVrw+/HfvKq5Lp+3WxqxychjqeWhuT0H7KLgT0lD/
	pAnt/a1B2uqODgayWi9nOj4xpjupS3c3AWzqF+m1YnTf2qNQbY2U8XmOWRRB5U0+W8n5NLpyuJQ
	y9AZy7awFj6faKRqPZOshAy9aqIk3HC3Ltu0w1Q==
X-Google-Smtp-Source: AGHT+IEdThI7DXVCE+YtsqVQ5FfgA2JdRwa/suM7w9m6RjmrZhMB+jlS68lFUGN2ID6qPpnpew/nE9vA5K+Hs04awQo=
X-Received: by 2002:a25:9a05:0:b0:dcc:9e88:b15 with SMTP id
 x5-20020a259a05000000b00dcc9e880b15mr10209955ybn.41.1712054899681; Tue, 02
 Apr 2024 03:48:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402103406.3638821-1-quic_varada@quicinc.com>
 <20240402103406.3638821-4-quic_varada@quicinc.com> <CAA8EJpphk_kqzBE7cKb73ipdpTi29t9ZSOOdSfq7pAGSs5NKeg@mail.gmail.com>
In-Reply-To: <CAA8EJpphk_kqzBE7cKb73ipdpTi29t9ZSOOdSfq7pAGSs5NKeg@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 13:48:08 +0300
Message-ID: <CAA8EJpo=TMhu+Te+JE0cQzmjLOTDPi-Vv-h5Bch0Wfr_7iVi2w@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] interconnect: icc-clk: Add devm_icc_clk_register
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, djakov@kernel.org, quic_anusha@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 13:40, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 2 Apr 2024 at 13:34, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
> >
> > Wrap icc_clk_register to create devm_icc_clk_register to be
> > able to release the resources properly.
> >
> > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > ---
> > v5: Introduced devm_icc_clk_register
> > ---
> >  drivers/interconnect/icc-clk.c   | 29 +++++++++++++++++++++++++++++
> >  include/linux/interconnect-clk.h |  4 ++++
> >  2 files changed, 33 insertions(+)
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Wait. Actually,

Unreviewed-by: me

Please return int from devm_icc_clk_register instead of returning the pointer.

-- 
With best wishes
Dmitry

