Return-Path: <devicetree+bounces-57650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB2489E2B2
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 20:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1ECDC1F239A9
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 18:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22F4156F40;
	Tue,  9 Apr 2024 18:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+7syKAS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAFB156C5F
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 18:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712687968; cv=none; b=YuDbq5/pRA3UWXpzTHHhJynp49bnWOlJ6vzc6EQeXzKQCUUM7vJoRRtvQFPGPuEXCarTrJUcXHiZMsVJn2ygzaBhepIhQcAwRrue+e9K/SIxthGgHf8AF5x13Z/C9SFCZKcgHyEQEmf9lDtriAOHJ48CfE8XutlGpLWE5/FwgmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712687968; c=relaxed/simple;
	bh=BwPr7SrsQf4b7g+pojJ443HjHLELotWIZE/wilGloq0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ETYkLyNDPQYmZFZo2Z86bhcdaMYrEJ2hsKoG5Vo4l39nqK7JFaoL12vewcwh8RibxW5jtGirRMvKzwdOPJVTO7pXTMktipHl+34ClcDXEidNJ33JPrICa86RsVMBepPVOqDjojUMw8X86QCWOIbLCwTQmZHc3V8/zecyu+ZB/Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+7syKAS; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso5334564276.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 11:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712687965; x=1713292765; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hAdR0lfI/Ap3S0wzwjpUHjQuKqdM6aVtl85wb7tRnRA=;
        b=O+7syKASBx2JiFlsf6BUFWTgvb8hzJc1kYl/sTbv+8cPiBaRynz8Gbcm8FlAELTX+m
         /l0SKde+GrmSENTVJydNz3kLE420nx0i+Ang2TYm9BI0i4Yvbyj/6XrOEBaabpfK7TLp
         nR1+C0huxdZbrnNUdWg8Zdsq+I9VsFm/B8NYahsJpdIQ1cGqzlWHw/dUtwt5LaKoIVJM
         FZF7LiqqdVlwwV4gqB56ml1T7x8Utc60xBYQcFlNn7wj+z2UdvDO6UmdkqWHMeyGmBf9
         5unKzwqIU0O5N5Azvb8EvL7u151ziPbwU1i4UJJvP8NhcMY1OL78frGZyAGXGT38yvOe
         moGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712687965; x=1713292765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAdR0lfI/Ap3S0wzwjpUHjQuKqdM6aVtl85wb7tRnRA=;
        b=Iumja2X+gmTJ8sH8cd0hgWxU/u8G4n57fNH2LlnD1NZxXoDCnSBvfdkSkNDMclBJ08
         ROQjMbUO7baQw+j5yK8Pga7g2bOYxdk80t1lSSvpPWR1eoQ8NHvXnEHkYBa/R5dd1pPU
         Le4xgaaZ8NTN7OHpUUMVkkHeJxASMvHJHcnyQIC1q9f4uFYZXKkl1epoxonGIoTUf1PG
         hlQZ19giTEVMshKYbSyuQh5iBR3oJ5m73gesihcAsaIKBtqbez+xmMlduoAlXjUlU9zb
         jNy7wr7Pdhx6p71uLkP79SJTRHTlqIJaI4Au7eG80/pD324AfcLIgKmwnMFmQbtIXzoj
         wX5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVemQhyBUJTFnXVzDGknSpZirWTk9jOe4XMiuU4f6ExXAYfyEA1CrmovV5TdLOyYbH9c0XhuC/M/a9fzXZaxA7AuMOOL+hUxjM3rw==
X-Gm-Message-State: AOJu0Yx5eAuTtbTykTIRGb/Ny3em9Oe/vanxDGaqwgOpG0v00BWNbuvQ
	iYjCJRNeEIaioQlBT4IMq2pjlGqtgkKmfuQqhenwSWLQTMXsY4mlWxvDVBunxPn6j2ceF9xWhNl
	NEsdq2tNhYzsi4C6eN8TtqHvmVPBggcDqOtZ6Zg==
X-Google-Smtp-Source: AGHT+IHq5NVO+WfWmq3XyvBYt0xQLngoIVqzHjLiDg5l97bez8m7/Sp8OhTA5vGPOslEtZDyb+Woew1HHexx4xjD/3U=
X-Received: by 2002:a05:6902:c0b:b0:dc2:1f53:3a4f with SMTP id
 fs11-20020a0569020c0b00b00dc21f533a4fmr750553ybb.5.1712687965237; Tue, 09 Apr
 2024 11:39:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240409-qcom-pmic-gpio-hog-v2-0-5ff812d2baed@z3ntu.xyz> <20240409-qcom-pmic-gpio-hog-v2-2-5ff812d2baed@z3ntu.xyz>
In-Reply-To: <20240409-qcom-pmic-gpio-hog-v2-2-5ff812d2baed@z3ntu.xyz>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 Apr 2024 21:39:14 +0300
Message-ID: <CAA8EJppzfBbTi7htJDmMowtXXTi3ASfzQpEpkCjPngBFH=TE-A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: msm8974-hammerhead: Update gpio
 hog node name
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Apr 2024 at 21:37, Luca Weiss <luca@z3ntu.xyz> wrote:
>
> Follow the gpio-hog bindings and use otg-hog as node name.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

