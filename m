Return-Path: <devicetree+bounces-14226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FF7E2F28
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50896B20A2A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7096D2EAE2;
	Mon,  6 Nov 2023 21:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NyYmh9KB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063952E645
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:50:10 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA2CD6E
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:50:09 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c518a1d83fso66254091fa.3
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307407; x=1699912207; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4FKrTrwP4+tNK0dHvoIJCUcpztONhMhTcxvDfTSeUSA=;
        b=NyYmh9KBWPrUyJJy5B7oVqvrv/RhIGrfNSqkkaUbuaUEs+LhreAsKdqfj/4Zv9tjL9
         iUdIYIvmG+p04HOHqDqQvyKPcSgZM4y0XKIhCe54Dkrm1RXTQTfcTCdNgufd1SfG8mCy
         JDcbJYiU4ZLuecAKC46LymgjH0QMK8NFl/nyg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307407; x=1699912207;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4FKrTrwP4+tNK0dHvoIJCUcpztONhMhTcxvDfTSeUSA=;
        b=BK9HOwZukcCaDoDr5buiCmFbTykLMi36FzzQPASj/P8b1to+sqsieKzaxRBTRS8lrH
         tvKGyYagMjN82xhdaQiMx+qHNDVoyCluEmdCVkJRCfsAP9H/GvsPHqOuELoXY7IhwUhT
         2lvlGL4NRZjGGpj0Lz9/DRyW6uczldugIGo1bHygfwKvQYAx23DKrk5fsx40ohG+QT3I
         yykZzRc0IwW6/VXGKFWWMsLLdahX0reH7whXCNjlW1q1QxWouTs7BXIxqWNSD9l3v4do
         4E2nMh/tDDrCm2R6RkzaJOquuQcMOJesWNhPoBgF/0Od74RqaZkvtvIVk4qFHAroF/sy
         arFw==
X-Gm-Message-State: AOJu0Yy2fpDGc7uKC2DgTTWJghNPcZyUm5tcWG6ltEb+brwuk0IU09zc
	uJrHy5ZHdnPn5AoonZ/5G/BQokbQTDc0jQv4F65IsA==
X-Google-Smtp-Source: AGHT+IHv6vIlytKhsnU8L1VEjmhDuYCF3jfxe9Z4QUKc7xCfSxbD2ztyEuKPczvDwkGV5DRvJfJ56BjDFjVcJxgHeEc=
X-Received: by 2002:a2e:8681:0:b0:2b6:cff1:cd1c with SMTP id
 l1-20020a2e8681000000b002b6cff1cd1cmr22694665lji.34.1699307406548; Mon, 06
 Nov 2023 13:50:06 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:50:06 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.3.I16675ebe5517c68453a1bd7f4334ff885f806c03@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.3.I16675ebe5517c68453a1bd7f4334ff885f806c03@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:50:06 -0800
Message-ID: <CAE-0n52Ze4rPz2Dd4iQee_jw+3gGBLUyQ=nHQiQxgAt3V3-EdA@mail.gmail.com>
Subject: Re: [PATCH 3/9] arm64: dts: qcom: sdm845: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Sai Prakash Ranjan <quic_saipraka@quicinc.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:29)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 36c436b03c58 ("arm64: dts: qcom: sdm845: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

