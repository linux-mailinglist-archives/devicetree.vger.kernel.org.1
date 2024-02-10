Return-Path: <devicetree+bounces-40363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EB8850448
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 12:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 987F028649E
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 11:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E72A3D550;
	Sat, 10 Feb 2024 11:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="neiCbBrU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B187E3D0DF
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 11:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707565890; cv=none; b=cGNtY1UKRpgx/+YU/Wm4cA8O4O1MpVEBl8V9R1ZRugyFZRHbUnbxFA1JSYpoq/AaARbG0vtFQBi3hYfCdwDrGYw9tH2oAZhRFjtUT+T0bOLxuUlNQDr35UwHhwOiYkDE3QsSKW5EPcOLwML9sEVZEBwYKkj7on1MFALB3gA/QZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707565890; c=relaxed/simple;
	bh=d2bhTf4Z57WSx4lUzzEf8y7rKj3Hg0um3/bM2pKPVCY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b9w+7yFpm7MpVl+UEIUNc7D4IxLguP4cI/XHf2r7kFxKgMhNEC/kBh5Ly14OpOJ8cvli8rPAQkkQFfVmV8AxP7q+SJXn/Ma8nJvXFxS7MuULpSX4QNmWi6v3ua7Fp9+SOdRj9MhJhsSd0rWwAZ0ovJfmnpVzlwKscsFUh4Mz0g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=neiCbBrU; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dc74897bf61so1852721276.1
        for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707565887; x=1708170687; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n4hzqQK2jDc7gwYXhpJIcj9gdQgitPUMD4wx3zzHzg8=;
        b=neiCbBrUQyJQ/QNNTUBuVi5wH2JMVXcM8/83ZSn7a/lKETQnwkGvV9311cV6YkDMgZ
         7bzvkG3v19r1q4i+SsCqS27qL6RMMA+zQLLA4Ah7YpxIlBcxjO3VDyMJPAyIL5HvEbwd
         bN9RuzdeIlc/jSRNH59ixi72b3JEQ3lZsYsA2FWDDr/hAjpWDbtWPiaBDmUyKR335j+J
         /o4BfHbhI476O695g6wndimKRwS4Cz6Xe+oMg3ZUAUfapwrCe/SXrKFRkJo3qizC/BnQ
         a3QGEMXS3z3LC6nR7HBTayrqWLdp52z0yqQ7NdWcrzeUfVygnGRRiQLB58A4ZCQFWwAJ
         6OkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707565887; x=1708170687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4hzqQK2jDc7gwYXhpJIcj9gdQgitPUMD4wx3zzHzg8=;
        b=vLH0l6AovGcdhcgTtjQ6j5YEuFc2/xZb4MADXZHfFT22IUrIBmfzgNkA4fq+x0wRjX
         fgp+24dNgJvRFdeiTgdt6kYuCApq8V/XeALM3+iYznNoAx9j+y1+cXhUf0FKBBqSfHtO
         t0UlullJ8q7KNhWJOmeehsWbds3ZRNHygYTxz9oQ/i3ieCq0m9bm/gdRgpdp5hUeACtk
         tp4bcE8KZAsLrr121+EFEjUAHbZERePthb4wLd9QTJ6yn6UYhTKfIfdEB81XrBUdvLpv
         PcClJkJBVPRLCwU8c3wYgnzPDWtuNHa7vz0GMhFdQegwju7Whj0/L+5Z9pruXHQJHmCn
         jdgg==
X-Gm-Message-State: AOJu0Yz8O3tppn5L5AIdB01STdy7v4lGlJWwkBr2w1kiaANOt5AS4JVz
	x4tOgIJ+bJzjPHVT0k+8EYcjt7cri29ZZsYgn+kRO7X7iho/wvWINv4ogZRVJECLkDVMiFTlDlD
	EMYYcQdCY3svkL9GeT/hHWibmasMfvwiznC0/36itn0zAKfUY
X-Google-Smtp-Source: AGHT+IHmuc9OItSNKtDEBBJS+z3L3A0n3p2TRNTXhKRlXEx8mZXeoTapnJ3NEc5+DGezVvje2FB644OYHRQtnMjnuYE=
X-Received: by 2002:a25:ab8f:0:b0:dc6:ebca:c2e8 with SMTP id
 v15-20020a25ab8f000000b00dc6ebcac2e8mr1458918ybi.5.1707565887676; Sat, 10 Feb
 2024 03:51:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-20-swboyd@chromium.org>
In-Reply-To: <20240210070934.2549994-20-swboyd@chromium.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 10 Feb 2024 13:51:16 +0200
Message-ID: <CAA8EJpp2wqK3vEkU7Y3BxUKsSn11B0-X7LNF-w+sJ91bPTAVhw@mail.gmail.com>
Subject: Re: [PATCH 19/22] arm64: dts: qcom: sc7180: quackingstick: Disable
 instead of delete usb_c1
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Feb 2024 at 09:16, Stephen Boyd <swboyd@chromium.org> wrote:
>
> It's simpler to reason about things if we disable nodes instead of
> deleting them. Disable the second usb type-c connector node on
> quackingstick instead of deleting it so that we can reason about ports
> more easily.
>
> Cc: <cros-qcom-dts-watchers@chromium.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Cc: <devicetree@vger.kernel.org>
> Cc: Pin-yen Lin <treapking@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  .../arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

