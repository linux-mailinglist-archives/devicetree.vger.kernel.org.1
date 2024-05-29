Return-Path: <devicetree+bounces-70229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 260CC8D2E88
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 09:41:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6F7D28A86B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 07:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8090B169368;
	Wed, 29 May 2024 07:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cXmzgQLN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6797167D95
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968446; cv=none; b=H+/FtVdaEHYwOGWqA0b6TUncWEvA9wfUKFR8Hp/u9IucNQsaRltL8r5ynJTI/eovyFWR107MOCRqa91WVdNQELBRUdJsddoZcs1vDf09eGQM2hWRcsqR3x7sx7A0HWix7rhSRx13wbSpc5B8QDeX2Rn0yN2IAzK8oMPFfnzAzxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968446; c=relaxed/simple;
	bh=Kq75PX3R0lwU8jkUE+730+MzES2MK6LfrzI3HXbTdic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ThSuZw400a7+GqVvxP94snfNep9wZDOri7kxKQJXnfzc5fSTgcjPTq/xvOEY6L6Iea+GccWcxET2Ot7k7udBejN9pNl1vzbKY9EqaQmPtj0INAvCC36luIpmKdK74tk45Gp6tBRZ9D79wKhvRQHj4KRkUhtPliC38XczbIuCi4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cXmzgQLN; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-df7c1a7d745so513538276.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968443; x=1717573243; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qi3rq/lKfkTKHCFllxIMfEiNIgwb77QXH8sn4XLhppg=;
        b=cXmzgQLN+TZjCNGfO3XylDs6ogpLcAFtR0AzNJ802+aOO5gSNJRNPDxrYnHgt0AVUN
         k+tLVxMhNpZft7XEjGw8X4hB1D/sf7D+C+eOvNp6il5ABnO6VMZkPH7hQ1yz+qGz76o8
         ajjLmm+SxjJRXcI0Y4tnylhTAB8xaE0Ia6JMf5UxA7Mj/NG74d0QlcUQxRVaOSMZ63Qy
         6s4FyVAAYhoE/2JcR9oJoi9yvLbVXTwf9gByKNcUeMXOiEZ9E5jj6oKqTsK9fvfGmRQT
         HW6trY4WKkFWG9zVhALnOCMH9nYl1AU1zxwX4bX6G/1CuoM788bQ0s9W4FHSfzze4emn
         pIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968443; x=1717573243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qi3rq/lKfkTKHCFllxIMfEiNIgwb77QXH8sn4XLhppg=;
        b=t79Gr+cTIRoJGYdKFn2vy9MbdNTISsJhcu8vcAzWEBlToHV/ZC8c3Z5CHetXD8Fdni
         zYQ0KGxy1Q6hVI7Im9gIgibZbSX88tL2cEKT+Uf08WG6SI98ISJHIgYJFoJsZPLNmGsz
         I9EPl26T4ihHF7o6/c2pSxcEh5NMCTxvAA25VP+RiUtOZOJBTZZBeGuEOnKrJgkOe2wH
         RiPBkbiCliGUMHl0OVS6vB8RBxjRI3xH9huPXBp7QzOilqHvV6DN/D+Kjrvq+btqN6q3
         D/AJSQTOBZV12AB3MKceSJbMfhSFppgHiKConFex7C5I3W8zubTp5ukqIwDPWrtx1wIc
         2+oA==
X-Forwarded-Encrypted: i=1; AJvYcCWjbIvx1/Uba/ist1Fq0aJPV+E3LQP7xojejhZPk6/FnAXBruSHDIVNXLNZcwR4OIXQxRZ7NjgVFyTGYsX3mASxDdE8aWpDe4+ZhQ==
X-Gm-Message-State: AOJu0YwEQoyfWp7olZiGHKQDxYQERVFMsZoWM4c/5620tQxtVn+gspfZ
	ROZx2P1mqt3yPSLMkreZhFL0Wztyhiot3qOtheeNfokqpwIO2l+6dB9Qwjl+xvTSig1fOqaOl4n
	2qllFbw9pfRpjA2NZJs+CUD4Jtp9zo0+iQyD9IA==
X-Google-Smtp-Source: AGHT+IFvNvlDRb0RRyGJLPid0eBANNAt5GYyAHLtB+VTyIBGbkRANVmJBbGXYfdU28+FTfNGN7gmsi891v5NwqN4/Ys=
X-Received: by 2002:a25:4bc2:0:b0:de6:162f:c71c with SMTP id
 3f1490d57ef6-dfa4649391emr876301276.18.1716968442860; Wed, 29 May 2024
 00:40:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
 <20240528-qcom-gdscs-v1-5-03cf1b102a4f@linaro.org> <a893eb89-1956-4ba2-84cc-e9b64b87524a@kernel.org>
In-Reply-To: <a893eb89-1956-4ba2-84cc-e9b64b87524a@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 10:40:31 +0300
Message-ID: <CAA8EJprwQ0N_PfPjTHFppZ2SdQVCXxPrZmVZ0B8+gybm_75toA@mail.gmail.com>
Subject: Re: [PATCH 05/10] dt-bindings: clock: qcom,gcc-nopd.yaml: force node name
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Robert Marko <robimarko@gmail.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 29 May 2024 at 10:39, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 28/05/2024 22:43, Dmitry Baryshkov wrote:
> > Force GCC device nodes to have the name 'clock-controller'. Several
> > platforms used 'gcc' here.
>
> Well, only ones coming from Qualcomm being downstream-based:
>
> Author: Varadarajan Narayanan <quic_varada@quicinc.com>
> Date:   Thu Jun 29 11:48:33 2017 +0530
>
> Author: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Date:   Sun Jan 19 18:43:20 2020 +0530
>
> (and there was also older with node name qcom,gcc, so clearly copy-paste
> from downstream sources)
>
> yet still we do not enforce names in individual schemas. You add it now
> and next month turns out there is a power-reset-clock-controller which
> could use gcc.yaml, but cannot because of node name enforcement.

Ok, please ignore this patch, I'll drop it from the next iteration

-- 
With best wishes
Dmitry

