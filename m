Return-Path: <devicetree+bounces-199003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D4823B0EF8D
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B502918890D3
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2085B28507E;
	Wed, 23 Jul 2025 10:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TEfu7Q8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C1128A73F
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 10:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753265728; cv=none; b=QI4Q6LhEdJFbbsCdCvVpiIYI/pta3Q8WcUs5rqD+amuNl/byB7Mw/2cA448fMlmmEbxYTuUm8VPJbsEBJU+bq4kJSaDu1ACfFPPn2XDEuKt9HIV8qQ9FTEb+rjmJBw+b89yVK5wF9B7nKd0F09nRvFxfpOlg3fCDcIrw971E/k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753265728; c=relaxed/simple;
	bh=bVmnYXcNpbvjM55bFzMCxtV2rB1OTba8n+Ra95I9D4Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QZ6oM+2ceMxNgS8vfuErJ1YSkpBEZy81rbOaBW0JHoVsGNJPWsJ9+Qe0T2uKd+Vvlg669zhSVZWZRhsqQ2RWjsmoJSV1bCHZRzAGtnvTFaRCXWC1AqmDcaFP1jXW6DIj7eKB5ftmajts0pTBcTzZPyxO+i3AifsT/tq/JSL9jpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TEfu7Q8R; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-70e3e0415a7so9028037b3.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753265725; x=1753870525; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=keXN2baWTCHNPA/RphADFpl2yUS3e/Xrt6QyChUGi2o=;
        b=TEfu7Q8RvH0zoibNQleHT+ygvWvBbCNx1xUDEkeSzF68IvehmMfFa28zAX7LIqrx9k
         YebcXIKlkvbjEtvZhOiaEAl8IM35d+5ZBMvkksUwKWjR6KGWeMmsi3v6kAFREU7ZOW1v
         qKGy6d5iaBX9aW1pCPKV3NGdesIrS1lhduuv9INHJgtZ5R/WFIdvuOvxtFaez5Twhzpn
         21YzpQ0lebX828JVevt/kYGmM2vEwFELD25Lez+otiA2lCVcAMCKFwu1iAU4z+jMllm5
         JPV2wxw1/K1YjqFh+aJS1R1Ra4ytxCfYpR6ixAg5yjKNyjLqa6QPBiGSA/u9IB63NcjS
         ekpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753265725; x=1753870525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=keXN2baWTCHNPA/RphADFpl2yUS3e/Xrt6QyChUGi2o=;
        b=tSOcaWaXnvOKz2OvV5SYvNYGMeTHN+0GPB9s+yHpfh7wVTEJQyIiLdKqaK12JKM7Lz
         Uk/4VNUK0S86silJdJTNbOBCkhFBTI5SE8miPbrnhmoW2u+VX5Iqi+WWE4XizSPSnK8k
         6zUy0m1C0ru6alRjz57Be6P5svPb0ZiGeLrghhDnAk8CsCo+WvSnHZEZdRE74+rv3Ckm
         93eIDTiuAZ/tcuOf2Df/idbt9fxGczD1MBGBERGmHcMxmXZVC9v2TNj4V0++EON33sQu
         zqZkHAjeuw4C57HQduLZotmhcuGPoDl9mMT8BnxCkhrQMzutMbchDTktraA1gx3WJOkI
         kryw==
X-Forwarded-Encrypted: i=1; AJvYcCWq+onnxLWbK2JAZXh26BVQIVTDLAjkOrcHMckuUJ6Wr4Ls2K3RIMmkXt7+m0omWaN6OF78hug/4bCn@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd5Zz2WDv8ZDcdg9Sobaj1jnVhUIbhdq/mdk03okIfP2WH7kni
	NGvITkm7pV5Xn4gnCOxPqKSt46jjwcy6jYQ4R35Neu/FEWIeMvWZ0y0JkPc/ITe7I0hQgi6wGDk
	LCe0yLOaBzpKwLdgCXvzd1HtR6KqIAVCTT4h64GPS6z3nol0UVkaU
X-Gm-Gg: ASbGncsBEYjvtOanNyYy8WUgImVL4L4wipIHoGOH+W1MHrxTVXFTa3kRFK3G5VJ0qzc
	wY4yjNg4O295etufrQ6gb9N5dpzLxOuuA4dKCl0RA0THCAMG9e97UmDjg5t5fIPpn0UZqnrS84G
	rDOMsmGy8yKDO72eki44pzaUmmSU+r8eJHeH1RlXlia1+lbqkhrNbi/sszp3FS/baNyBMuwOULv
	YyB4xxcLG6UB6Jw4hBLXzhKa9KTWTG2xjLk2ztVdA==
X-Google-Smtp-Source: AGHT+IHLwbDU+l6YFqXq+ZhOTIt3EsG2LfI9gk0yhItHuQJhFHjnzjhqd5q6F+kb9kyqNAhw6q+3Ha0RnPN1bk1gZLw=
X-Received: by 2002:a05:690c:3704:b0:70e:61b:afed with SMTP id
 00721157ae682-719b4b61bdfmr28060077b3.7.1753265724935; Wed, 23 Jul 2025
 03:15:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
In-Reply-To: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 23 Jul 2025 12:14:49 +0200
X-Gm-Features: Ac12FXwdNShN-_Kv2LQC7hceFT9DkPQKcUCw0HK3tS9vOljvQ7MzDNxnuXt3sRs
Message-ID: <CAPDyKFovVuZgQNvRUomxd+P=poy_7xSWuCCwyTzhy88mJtcyqA@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add support for RPMHPD on Glymur SoC
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: robh@kernel.org, lumag@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	konrad.dybcio@oss.qualcomm.com, quic_tingguoc@quicinc.com, 
	quic_rjendra@quicinc.com, kamal.wadhwa@oss.qualcomm.com, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 16 Jul 2025 at 17:28, Pankaj Patil
<pankaj.patil@oss.qualcomm.com> wrote:
>
> Add support for RPMHPD bindings and driver for the Qualcomm Glymur SoC
>
> Kamal Wadhwa (2):
>   dt-bindings: power: rpmpd: Add Glymur power domains
>   pmdomain: qcom: rpmhpd: Add Glymur RPMh Power Domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                | 26 +++++++++++++++++++
>  2 files changed, 27 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe

