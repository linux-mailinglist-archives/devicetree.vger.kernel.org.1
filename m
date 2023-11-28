Return-Path: <devicetree+bounces-19761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5C7FC55B
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9AB91C20EEC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 20:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344DA4F8A2;
	Tue, 28 Nov 2023 20:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="F/hoZsMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45B1019AC
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 12:26:56 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so74288511fa.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 12:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701203214; x=1701808014; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5e/cA2xc7eDKmbypo6Z8SLywnOUPp9h8bqqyEEbG2Ow=;
        b=F/hoZsMShCa4kqpUalbfw1ECS7gOY7sksIHg5XG6JQquJ095bDWWM1dTnt+NO5Y0M+
         CljMyLu3Z4mNaSTtQ+2HPKu8aGSiYxOmu5IO6iUaIBnjgBPaE4MIjTm1hbdb3gk0r50L
         W23OvsvzjM6TfG5QxtqDYl03qbSm5NjTCcnhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701203214; x=1701808014;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5e/cA2xc7eDKmbypo6Z8SLywnOUPp9h8bqqyEEbG2Ow=;
        b=KMYRZaHK/2CbLekrUoanqOZXf5FF63S+Bo7pxYL50yY2fEQh0BRsdxR8DHD2QfKMc6
         rkfk2/8dy3RZlw56yq7nwq5Jjy0lsFFmtLfTdYotdVGtAVrQ5Jz/9Nk/A9WFdfTOmMQF
         3bj/FChcPjnWS9nkLTNmXY2eEinrvRiQWlEG3Fu/yGuMK5qZz4pTyg1WyCI4YaS5Dufo
         5th2Iz6Rkt+HWgMvrT826Qye4ykVQl2HtSqMjL/T71/vDflorSr9hNu+JQJg/4SijzTM
         VmAj3yvaxT+AUFvf5Ocjr2jzJJzgWy573ySkgr8JMI+4kvftIsyCGaybpp0NreDrmxb6
         p1IQ==
X-Gm-Message-State: AOJu0YypyScb+o4Cjy4yrM5+UnZFoURN+MNmF2bfRw5nVu9ja4IVI3EU
	rxHThB1ClBoXcf+m5UvfpYUOPc3njz7oqIovqE/PEg==
X-Google-Smtp-Source: AGHT+IHPo1Uzv9EVtilCouzElyVLqdgaW4ild4G1hYIMDOJYzDiORoqPIa0lrdy3P4ThtYYFo/T7JY6HIy/vgT0G6QA=
X-Received: by 2002:a2e:b523:0:b0:2c9:8f6b:3d9a with SMTP id
 z3-20020a2eb523000000b002c98f6b3d9amr9371511ljm.16.1701203214015; Tue, 28 Nov
 2023 12:26:54 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Nov 2023 12:26:53 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <0ea669ad-9a33-40e0-b4df-aa2b2a1b92de@linaro.org>
References: <20231128002052.2520402-1-swboyd@chromium.org> <0ea669ad-9a33-40e0-b4df-aa2b2a1b92de@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Tue, 28 Nov 2023 12:26:53 -0800
Message-ID: <CAE-0n50My=0FZ044b2beaB2cHpC6MxYtsEKsVou=80yO2iERYg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom: Fix html link
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	Yanteng Si <siyanteng@loongson.cn>, Jonathan Corbet <corbet@lwn.net>, 
	Bjorn Andersson <andersson@kernel.org>, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Krzysztof Kozlowski (2023-11-27 23:46:53)
> On 28/11/2023 01:20, Stephen Boyd wrote:
> > This link got broken by commit e790a4ce5290 ("arm: docs: Move Arm
> > documentation to Documentation/arch/") when the doc moved from arm/ to
> > arch/arm/. Fix the link so that it can continue to be followed.
> >
> > Fixes: e790a4ce5290 ("arm: docs: Move Arm documentation to Documentation/arch/")
> > Cc: Alexandre TORGUE <alexandre.torgue@foss.st.com>
> > Cc: Yanteng Si <siyanteng@loongson.cn>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Bjorn Andersson <andersson@kernel.org>
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> This should go via Qcom, but you did not Cc msm mailing list.
>

Ok. I was hoping to go through DT tree but am also fine sending it
through qcom.

