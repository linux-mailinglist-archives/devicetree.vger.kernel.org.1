Return-Path: <devicetree+bounces-101397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF60971884
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C5611C21C9E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57A01B5ED5;
	Mon,  9 Sep 2024 11:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrAuFObq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCEC1B5EC7
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725882300; cv=none; b=frdYHr7C2cibYQSUEJmw55G5EdDOA8yMVJMKsSrHT3A/1t8UdWm7hP/zAgDAT9DnARd+sNtHb9o7PVqTl8OO6hjP1CdgBiYw9YwzuRk2ls7aP5tTRQXCfLsHsMaKWpVh3fV4/nyK4+XfNKc6JlftfeiBk+ykr65VTe7sk8GDdDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725882300; c=relaxed/simple;
	bh=1XtdwS1BuwHLaOGGl2Ezr7HD5CSRgpRjz3svsCD0J4w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aFXq5+ABxPhRzMbPogxJIzBYhxXxX+2yZOPSQabJsR/4KuSqULyBr5EuC4/g1OYe50huZdlZx+GQKFPIAK5A00eBwjG2SCmYWH+JN16ZvYrOoybIg8rb8+uTeBPx9atRmq7+AcjIbl2tQOZiiSjk+1vSkTrMgcQHgyRlhsfdkZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lrAuFObq; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6d49cec2a5dso39751927b3.3
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725882298; x=1726487098; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rHMp7t8px+6AxUX4EfGUZ1CrgCIutR7qR3goerY320s=;
        b=lrAuFObqWrCybUc0Y0NVQW/NADWuu3z65/0+/jL0xPbWu83IEqNNUkGuCgc5CK0vkd
         T7tnSRm81Wxbj7tkTzzd4LnETt/29cD9IddeA3klA6EKJavnVRnsMeXElqsB4Db7DfrP
         BK38e1CVI57e9g8joV7NVVcUiRehW1eF0smPZZmnrC7Znpi7y12InpsTAbAImW3CpXra
         dg+P9rWC3DgbrsQCz2VNafKREUmd4CbXi+jtRwrzDSPfhZvkNx30IoBRs72C3eZF3xBH
         2a0qixUXxrBfTouM9rSKa41s9UYQmNFE2vgDNGMNe4KYGf6aQDT/e5Xaa73OBOAluPbI
         JldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725882298; x=1726487098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rHMp7t8px+6AxUX4EfGUZ1CrgCIutR7qR3goerY320s=;
        b=dEmQXa4QiyTFknOlyg8lwDiGcCIJNvVUgow/HiU2wD+pAQ18nRtDyu1yUAghK7y9XC
         qFzN98C9C58PMmrE5GLffPeK9Oeui5Q1mdNA6sjfedPMCjGmb2IQGrwn/aFqabdNG/Nq
         5df/p788/X5B3P/OpBrFzy1/dYfvAHhvLlFSII3jJC8eeebfBdrw58yf7SWNiU6qu5pl
         taqvI/L18RbKN+xqAvp+Lekcv2csSgXN+ZpcjIMbKyeuF7MAswqsO02QeZl+hsq2rWPk
         oxtTzwmGVwGRUdst+1Aw09GsDSWOSEoT3ovspHgn+4j05DWb7VZOufvl/5sm8mDZiqvl
         XxNA==
X-Forwarded-Encrypted: i=1; AJvYcCVyTqHtruqELpDgPrU1aNJsJL9GvLbyeJkZE/qa3BxMNL0r3nalkAkEeGvF7oCX9WDJacrfqgM8c/ke@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6i8btHaUSXYdKcgFMwaZ6Vcq1E/fgAJ1B8KiTYWKDL+B3Z73B
	R8Hh4BOsjNsiwjCqiaNsLFXmiIztBguKnn/b0Zx8hzeuQJC6M7t+duDbv2RdJuL6UW1oGxXvM7l
	tqKsH2Vg5g2DtoPCBZajJ6GqYMaJxKhyvItaO9g==
X-Google-Smtp-Source: AGHT+IEL2EB9obdWluFvUFILah+EafTsx4pRuQJ41qUmDh0QV0Y+XJMMqLn2APcG9JQzxHLZUWbt/TqBjiz6G5VpUJ4=
X-Received: by 2002:a05:690c:5605:b0:6d3:98b1:e3bc with SMTP id
 00721157ae682-6db4516d21fmr130640627b3.32.1725882298275; Mon, 09 Sep 2024
 04:44:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
 <20240907-sdm660-wifi-v1-3-e316055142f8@linaro.org> <7265e8fd-0e0c-479e-b949-b374ce561386@kernel.org>
In-Reply-To: <7265e8fd-0e0c-479e-b949-b374ce561386@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Sep 2024 14:44:47 +0300
Message-ID: <CAA8EJppN+fbWh4Rb41kdOLnJJ7XZ0U+GApEjQ=58HuL8LdU9BQ@mail.gmail.com>
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sda660-ifc6560: enable GPU
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, iommu@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 9 Sept 2024 at 13:55, Konrad Dybcio <konradybcio@kernel.org> wrote:
>
> On 7.09.2024 8:48 PM, Dmitry Baryshkov wrote:
> > Enable Adreno GPU on the Inforce IFC6560 SBC. It requires the Zap shader
> > binary that was provided by the vendor.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> Reviewed-by: Konrad Dybcio <konradybcio@kernel.org>
>
> May I ask you to rename adreno_gpu to gpu for consistency
> with other DTs?

Yeah, I thought about it, but it would also require reworking existing DTs.

I'll do it.


-- 
With best wishes
Dmitry

