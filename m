Return-Path: <devicetree+bounces-238662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1BDC5CFE9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:03:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1205935BEC4
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C4883128AB;
	Fri, 14 Nov 2025 12:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ih9Jwx+l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF272F744C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 12:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763121710; cv=none; b=jBWeX9L6sKxEfjGZzoAYZf9/bmqxuA8F5iohISzjRcMuHs32F+u2Prt67xC1aQ0SJ0QcznfvzvXkbl+dpYxTcsHEL+KFnH3jatI4NrpEar4XxIb/uEIGeQheyccRa0rCKNTIbvGxHdACP6XedVC8Of8bSCA+V+Z04gD4/vbQdlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763121710; c=relaxed/simple;
	bh=zGOK22sVIH8+swCgNPprUC683jqsvjAm8vqDPgo2mEs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tUDqVdwzVaEq2qp5jrAbURGdYh8rJhBiLlpME3pKX74qhDGDAZGfudu/XRgr45ntqtVhFIs9h0pBK2D1ooYEewNILLEqEppIjORBeJXvP6X+bj2OjD7FIrQXq2dzFzGWnf+X5BKjRZmWkyc4BvRonZgqlsXb2TMVaQAQJ8/PeVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ih9Jwx+l; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-74526ca79beso1457139a34.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763121707; x=1763726507; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0gWt+h8z2Ss7R5dPrx1HuHd/mFqNB+Z89pG6552t6M0=;
        b=ih9Jwx+l671inHoOTHEnjtY5V5ASPiII1tOCCE9uJOvitCqiyESYz6yhJKj3D9KI5U
         XEYzj7mHFMYUQFFMfDhunI4BwPfkwX8qgS+2lEL0Y4foZm+6zogcV/rKUBnvuOvWfGoM
         5mumUdZQ7hCfOw2w82rbrr5deNvFyOyFN4nUZ9JrupHDSW7l8C7iA7UEMUNVmY9gn852
         rjM2DUO8WKikiPW9Gyo8CFgJZzcQQsomhYaWHY8GaLCt/0q3Lz60j9wJazWdMuiSpmF8
         QTYz0/v+vOvdjv3tK/rl0T2iPd+0H8nUhXVdib2ks5keSGpd9El92mmmLghXrx+3nmps
         ravw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763121707; x=1763726507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0gWt+h8z2Ss7R5dPrx1HuHd/mFqNB+Z89pG6552t6M0=;
        b=j6+ylnjbikm3Pw6FVsj4vURtpGLP+uSWQnjzgDNeJkaC5vilMsmrmC0z7n9MONhH9A
         9JhDU2G/6cq/BP8x64x8wWc3/yOFk/JIF+PmKzcdmoXhehPJ3QYpZ7hKXEPAxF9QJ+g1
         reZAOtf6xOX6zxhOELHccTl9MuAXbiU8KABAttDfMWuUKZ97EjrY4GKhcpRRAyT4uuoN
         0m5Gs26hVxXCVgYafIzU5HjWFDmcQcjnshHdwbhfJi5uRklazQmPjIV/mOqr2N65CXjg
         QQkO7OaacxCWROFE9R3lPEFfmBhvdfQheiS+kUO/s9Yf/t5DrijNAG0dpQelBq9Hpe1w
         L7xg==
X-Forwarded-Encrypted: i=1; AJvYcCWNvoKQH2XfzJRv8B+TREOi6Aw2VH6COaWOCZq5HZcBHuhVgEHGKZHnjTsF03M1uJo3oyjYrbpwktt8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9EIwVFTQFNfCBNSReAodgeKd+rWTD8wP6FAoe6XokWuBl5bwa
	k8AdP2aXyX67qRn4gMf4lyeC3hMYJzayx0YpOVuHG1EAoTk7fvbvxsHxefe304KEHDrrYzuH5SD
	YWxnvUIk/KSPrIUMN16BzyruYX+/gOtTHTpMH05G6Mw==
X-Gm-Gg: ASbGncv1CvRViuo3xTWej7OLLaLbX5u/mR8gy4N7qiirPXzK1CVI9H78p6Oexg+WyPk
	rLKa52zC2/rQMoqUZUiwfw3E8Cf58cwFcTxCvm0jXTMw3n0AWoKW21v28EQV4OVaCwfsHsDxzat
	Tbp+Tfeb/pydoFApVZCqhR3w0IfhMRlPDrXVtqkUVkMpRs5M/D0kHh5+B9Z65bn+FH5FD4aaKA1
	qORzwg+F3VvDuStpozk/LeOSunyqriRdrGVX33L7XmWFpKrVLL+nfKOs3Gx
X-Google-Smtp-Source: AGHT+IF3Ojmnkwzvj4mx3ICJHFTOSGE3H8DgYxvKJpIkWpFelTepwYr55k26BWA5PAiTHMni0lGmEZlB7MjGprr6OVk=
X-Received: by 2002:a05:6808:2185:b0:450:4e1:3afc with SMTP id
 5614622812f47-450975b1462mr1041084b6e.36.1763121707459; Fri, 14 Nov 2025
 04:01:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103-remove-pmu-syscon-compat-v1-0-f2cb7f9ade6f@linaro.org>
 <20251103-remove-pmu-syscon-compat-v1-1-f2cb7f9ade6f@linaro.org>
 <20251112-naughty-romantic-hamster-e213eb@kuoka> <065678f2-3fbe-448e-83ae-e8b3e7ba96b3@kernel.org>
In-Reply-To: <065678f2-3fbe-448e-83ae-e8b3e7ba96b3@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 14 Nov 2025 12:01:36 +0000
X-Gm-Features: AWmQ_bkL-XznKpYxkyk_6EauUHZUY13AZ8Gsg9pORNPYYA-SZiOeIuJstEYBnmI
Message-ID: <CADrjBPp_1APTM6uS9GqBRVfqHiwsiaQ7FD+5+uZakUFc2PDyzg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: samsung: exynos-pmu: remove syscon
 for google,gs101-pmu
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dan.carpenter@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

Thanks for the review feedback!

On Wed, 12 Nov 2025 at 10:23, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 12/11/2025 11:22, Krzysztof Kozlowski wrote:
> >>      oneOf:
> >> +      - items:
> >
> > I expect new version (see other comment), so also please change items
> > into enum and drop const from below. items is redundant for one entry in
> > compatible (by convention) and having it as enum already makes it ready
> > for growing the enumeration for future devices.
> >
> >> +          - const: google,gs101-pmu
> >
>
>
> Ah, and there is also checkpatch warning about length of commit msg.

I just sent a new version addressing this and the other comments.

Thanks,

Peter

