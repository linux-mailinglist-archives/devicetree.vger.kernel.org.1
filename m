Return-Path: <devicetree+bounces-44089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DDB85CB05
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:44:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02B98286692
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:44:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34067154436;
	Tue, 20 Feb 2024 22:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e9ip4Daa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF42E154424
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708469084; cv=none; b=I2V/hU8eTaxUWi0UVycsrl4q91Ad3crOQ7McQIjWIga0TNrJRlkKhRVaJs6TaVKG007eIVnXJ0agmYp/v3FZigMY+Z584/wi9e9Hc1vQ9gan29Uq1+nxMxoj6vqmlgJ8PF9YVy8ZgfqHKJW8KPmDEeE5W7C/u8abbqxc3okAcKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708469084; c=relaxed/simple;
	bh=KmMay3AHFlc1aguHp9/TkpQKADQaXT/Z55LlMD/bDfQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z99Lv6z3tbXWxA39HslEEXAM/oeaSp9ZdazKoge8kkmj6iHAYit5uDjRxFK3JmzLueSGRDjQpIl8mKrYPYHfGXuwVmE3bG/A7USgX4dTL/SZB0u9RQFXzi6EqvI0du4fYSa6Fp7Z7uNZoF9SperzrENpb/xl0COM6LEuoZUDYZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e9ip4Daa; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso4951490276.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469081; x=1709073881; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Er5VAYhNSWIzSdSLpbthmXT3VmJJOcraX1chMlaJ038=;
        b=e9ip4DaaSIucVffpkgI6MWxcAOLvGY0wW07tlfsseyNTUWjG1AvBjxcs1QB5bxJvFC
         ZjHPVV5JjmmgV7D4Y9g0dxorryX95X1UASUAk0KGSkinPrKt8CqTws2MDFQXwo44iuV4
         TAwoLW1XrgAW+T1pS/c/fSb2Zc1ZF/X028CNuFIIjsOjuuxEkUvTkZ+6lwcDyjeQ9U8B
         PdMYxFGqo6ZQYXqci+BPH8jSZQuKTpZIPqT/ZBFId0qBSkS2aP4DXk109jstHF4M7IPm
         OR1ZwQgKA2HdQPYXXryUwEaV5/H7l0M1WCI22oTkAILykFeLYvylhwRakuMrbTCObP8M
         aE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469081; x=1709073881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Er5VAYhNSWIzSdSLpbthmXT3VmJJOcraX1chMlaJ038=;
        b=Gyja6bkX/R8n3P4xL/Iv/uPD3e7fFm5qd8czNRJSCLZ6ijqp8RQ1OWfqnMMLhlm0D2
         HcBvX3tUyTAvmMAJN2YFLbNJQX5Do1wv+ClXnd6ePyzD0AkX6GZWbVyHMA5em6YiqjEb
         ljlhG9/zMQpdOwBtAf4sLF33tgfr5mT3xrzSJCFdEnXCYDi3phapfzBxP1Y8DbU2hzo5
         U/mPXvWSCi3nWmFufaP8arsnNEu7k6mZBV6vC885B8wBcGRpd2WOBqQ09p2lsOCsuWF9
         8RPgDuGL+3Dg8tVTb0oaFxUc5GsaS3nwEataCVnYA/tUbSz8951cnxGXVExqk8f84Kx3
         1I0A==
X-Forwarded-Encrypted: i=1; AJvYcCXdZBQky9XOFaXjuUrXtl+VnwwKwX11Q0M4lPyIO+EPUsO70Z97yqhfIcdIjY6vmwB1auLSVenIJmqbf5R5aW2rEkIinu5jXlu12Q==
X-Gm-Message-State: AOJu0YxYKST0JNp6uYs7NDU2MNsLGwqVcHhmbwiq9lukl6Kbjm0Kn1DS
	1S8qdTkhcwSc3X6JNg8Ma96KrqbAL4lAptnDsxu0fJ9f9oKA8PvCRCX/hFBKkMJWX9SrnJvg2cx
	x6SalyBMA47tSNaoaAAfcBhX6UbvP/F7Zwe44QA==
X-Google-Smtp-Source: AGHT+IGck60Ujjz3YKtMApNGN0o7Q3lIs5rKyd+3XwSWjBY5bnHdduoZvVu6VAT2sswGZi36nYAlChFKILL3g+wOCIk=
X-Received: by 2002:a25:d6d6:0:b0:dcc:7ad6:24de with SMTP id
 n205-20020a25d6d6000000b00dcc7ad624demr15259122ybg.0.1708469080739; Tue, 20
 Feb 2024 14:44:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org> <20240221-phy-qualcomm-edp-x1e80100-v4-2-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-2-4e5018877bee@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:44:29 +0200
Message-ID: <CAA8EJprDzKJgU5OfMoDG47KDp224mT8V+-q3cVvGjQmPjho8rA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] phy: qcom: edp: Move v4 specific settings to
 version ops
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 00:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In order to support different HW versions move everything specific
> to v4 into so-called version ops.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 183 +++++++++++++++++++++++-------------
>  1 file changed, 118 insertions(+), 65 deletions(-)
>


-- 
With best wishes
Dmitry

