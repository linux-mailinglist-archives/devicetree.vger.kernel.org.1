Return-Path: <devicetree+bounces-107201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9CA98D1E1
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:01:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57F12B26792
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3909A200133;
	Wed,  2 Oct 2024 11:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZclqHa+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F41620013C
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727866808; cv=none; b=pAjKkiYJqzfQAt8uD80Q6PiCFYXIEm+oekzQS1pYKvAtU0fvjxNSZv6iAcx41tQ5xkDd6W0t1dUonalTmh8agMMWDIhr6lZ1DsKQ1abrqH14sdxIF+OlW3L/KcPa99k0av90hvUjKptf5GCiM2WHs7iWlOMpDGa+CRgpR++2voA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727866808; c=relaxed/simple;
	bh=PcrWdbduYxZeMb0YqP69rh1ZAPaHmW5lP2887js9ovI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gbbsn/3euHMeJAUH6dLyyPTdd83ov8f0/J6BKXPxU4ZvVzvrNJ4K8xnaHg+jbvGdAbvIlzGTrwyKX0aL0Eh4kfd5GowBY4PkNMIXV2fRw8Qc+JK0TNnw4uzClppL6SsrMzbpr9iMQS4sDdN+eWZZCMjY/mIXoxiBtpsiuFHwLsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZclqHa+H; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e25cf3c7278so6151317276.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727866804; x=1728471604; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vqnwKXMtIPuvcjdLi+y6QFMRS5xvKxcyBVOpz9PIUOs=;
        b=ZclqHa+H1zINNbkQKDCsfby5e2TbHpaQTKh81t3q9+VTQOm0GTB/yB87ZS5xVH9Jge
         IJsvPdGfqjbu0AteWJ789ZrMI9ge5hS/7cCyw21imRBgSWoBaVeT9zpz/BFEAXenhUxh
         2vUd2zbXkXNRfQIJHJ8YhCjilXdbcpXLIzz7eyzpVaGRq7zlm702Anku4x7DcYR8yGkG
         CCPppspyzuu0dw8uLyZ2fRioG9rJ4FiTGXNAemn5mdITD7UJJ1QTiRa5pGmA3cjzftQl
         CkiEuFLQJrRqifSrET3kBkfmBQL0A032a3P76o3cq9dqzZl3IY+QkjgHCt3otKn4tn4K
         f/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727866804; x=1728471604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vqnwKXMtIPuvcjdLi+y6QFMRS5xvKxcyBVOpz9PIUOs=;
        b=SXH+fXXZXbjFn6qXASXnF9wdoQx+BARc05MbhDYzUGw1BHEf18/hliDDLCeLcgm4GF
         xJIvEnNsD1bk2rSZ5eMBpuB/kUj6HW58U8q/Y32cRjL+iDOo14Knc86RNFbP0JjvSGuL
         y/bvYJ2pZvC+RTX7OJ3BBA2e4bGGBLy7sJvR3KBpuSHOtJb+QvDvN8wp4O9rjGNlyA4y
         rgYWjNTNsB8zkAG0FSl8CKsxu0OouTRBbUbB7QF9ihmCcAsPUXvdcYQ4+ftfUupanfpu
         +H0i8z6Zq3SgstxjiSV0iY+sDmDup5MFsrM/SbaugLeGwZWEIxswn2uZKy4SIlHMpp+a
         lMaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxt/fDaD5eeTzUjlCyaCSbel4yVHwoQs5SzZYL4Zdun0HykqY+3rxJbYYIPVgcrK8EZ+lwPGV3j264@vger.kernel.org
X-Gm-Message-State: AOJu0YzzM2N3GTfWi8Av8gxKH2n3/VKcAY8egltpdL0UWhFfjnPfYwmv
	K3zNJIdWbORExByGA/oRPeIsXHZCbqwPFdhaqHE6bbJGpk9LUw2VvNOOGwpCzaNSUWEYz6m85ZK
	c1rFjnMAnaMMRiqtyNO0+q0Tgdt/P7NEpnsh4vg==
X-Google-Smtp-Source: AGHT+IGgpG+SeCoc89v9XXZAV+0OdGnBa1rr8GBqp7ZNHU2T0IKW4tijQJBHMruJay+8D5hiheKAuakS+Pmfcp7B/3o=
X-Received: by 2002:a05:6902:1a49:b0:e24:fea0:f9b4 with SMTP id
 3f1490d57ef6-e263840fdd3mr1985992276.38.1727866802706; Wed, 02 Oct 2024
 04:00:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-0-18c030ad7b68@quicinc.com>
In-Reply-To: <20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-0-18c030ad7b68@quicinc.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 2 Oct 2024 12:59:27 +0200
Message-ID: <CAPDyKFqXNC41VySryugwg-BOObPEqtnbyRZcR8NXj2R5tNPqfA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Add rpmhpd powerdomains support for QCS615/QCS8300
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, kernel@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	Shazad Hussain <quic_shazhuss@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, 27 Sept 2024 at 14:00, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
>
> Document the qcom,qcs8300-rpmhpd compatible and add power domains in
> rpmhpd driver to support QCS8300.
> Document the qcom,qcs615-rpmhpd compatible and add power domains in
> rpmhpd driver to support QCS615.
>
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>

The series applied for next and by adding  Krzysztof's ack on the DT
patches (next time, please carry them forward when posting new
versions), thanks!

Note that the DT patch is also available on the immutable dt branch.

Kind regards
Uffe


> ---
> Changes in v2:
> - Rebased patchsets on next-20240927.
> - Combined 2 patchsets into one to resolve merge conflicts of touching
>   the same part of code.
>   - Current Patchset
>   |
>   |->Patchset 1:https://lore.kernel.org/r/20240920-add_qcs615_powerdomains_driver_support-v1-0-8846efaf9454@quicinc.com
>   |->Patchset 2:https://lore.kernel.org/r/20240920-add_qcs8300_powerdomains_driver_support-v1-0-96a2a08841da@quicinc.com
>
> - Link to v1: https://lore.kernel.org/r/20240920-add_qcs8300_powerdomains_driver_support-v1-0-96a2a08841da@quicinc.com
>
> ---
> Tingguo Cheng (4):
>       dt-bindings: power: qcom,rpmpd: document qcs8300 RPMh power domains
>       pmdomain: qcom: rpmhpd: Add qcs8300 power domains
>       dt-bindings: power: qcom,rpmpd: document qcs615 RPMh power domains
>       pmdomain: qcom: rpmhpd: Add qcs615 power domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml      |  2 ++
>  drivers/pmdomain/qcom/rpmhpd.c                     | 36 ++++++++++++++++++++++
>  2 files changed, 38 insertions(+)
> ---
> base-commit: 40e0c9d414f57d450e3ad03c12765e797fc3fede
> change-id: 20240927-add_qcs615_qcs8300_powerdomains_driver_support-7cd487126340
>
> Best regards,
> --
> Tingguo Cheng <quic_tingguoc@quicinc.com>
>

