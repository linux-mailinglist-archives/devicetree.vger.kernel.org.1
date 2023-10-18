Return-Path: <devicetree+bounces-9803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF65E7CE89B
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCA5C1C209C3
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB7A1EB4E;
	Wed, 18 Oct 2023 20:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DWWHs8Ue"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A710F1EB2C
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:17:23 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 840BC122
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:17:21 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507cd62472dso82159e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697660240; x=1698265040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJ3NJUMrDjBU3byV16K9U0/VADUEPkW9PWtdnemsvPE=;
        b=DWWHs8UeEPUZmyWWrVZRmEhcEV8WkTlvwE1OLr6Z63Vh2H/WyBXscJZN5XQruxjis9
         eayECUFYTPHiFv6pAoTzZ1qiw0O5nYHQli/GTCVM8tTSJfedb43sMxMKNBUzmuA/lAll
         SATXX2qand7o+q0LHPrjpUqUNZI2TesX+C5ujfmwxDvFcGQm4OihPB70pdwoDSYE641R
         wQMeotc9he7+roPqU+rl+qrVKlqqsVMaSyqiAk7HONxcBYJV/2/dSVgX8grr/Y7kd8bV
         /KQCFHwRBinwSeKKHsmPw9vXx9ZGkL44Qj3EYAsLmOff5ubvrhoP8dfSCFrVASuf9fc/
         c4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697660240; x=1698265040;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SJ3NJUMrDjBU3byV16K9U0/VADUEPkW9PWtdnemsvPE=;
        b=VijXdDQGWJOkOQZnIdWck5Jzp5mPWyacgL1yzzwbYpIYntR+GBTt6SS5lrLe74Agvy
         Nz7lU8CdRRS8o4/z7JxYx0Di04onOT5RpwoYp64Ghaq7Ed3TPdj+gkrs3g+GRpbZ/ifA
         FA1BjgS7weZN8DPYg0xgAWONlSvFqbpWR61nrc8FW6sSiJwtV9cZbMOiNh2MTG9sItat
         X+xcCqqnPbWwLy1strtCwTuPrFUepMSJ4LPTyxrcUz8aWUCK9/AzoTgTVjYsGs89JDmV
         QX9mWL8srTfzlpfY1E1PphW9a9+TY7c0F+EPYTviZWQw4apc57PgpihKGW+K+2t0FYoQ
         9wIg==
X-Gm-Message-State: AOJu0Yx+2ZQssvOt7MGIgnCpKzYXR1vHZBfDcIQmlt81bLiIMtA1gmR/
	3mAwdmzatkT/Zu0y01m2LdTKDg==
X-Google-Smtp-Source: AGHT+IHZdpeLyJD4QGbEa/SXZTiImOc1XIVZW9/SWzkUvsh1PU5KK/ZjOgGRaY8L8um6sUiDmzbVyA==
X-Received: by 2002:a05:6512:ba9:b0:507:cd54:e93e with SMTP id b41-20020a0565120ba900b00507cd54e93emr143176lfv.2.1697660239552;
        Wed, 18 Oct 2023 13:17:19 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d13-20020ac25ecd000000b0050799f689ddsm831295lfq.200.2023.10.18.13.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:17:19 -0700 (PDT)
Message-ID: <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>
Date: Wed, 18 Oct 2023 22:17:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc interrupt
 type
Content-Language: en-US
To: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, ~postmarketos/upstreaming@lists.sr.ht
References: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231018-nia-sm8350-for-upstream-v2-4-7b243126cb77@igalia.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231018-nia-sm8350-for-upstream-v2-4-7b243126cb77@igalia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/18/23 16:25, Nia Espera wrote:
> In a similar vein to
> https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasivam@linaro.org/,
> the remote processors on sm8350 fail to initialize with the 'correct'
> (i.e., specified in downstream) IRQ type. Change this to EDGE_RISING.
> 
> Signed-off-by: Nia Espera <nespera@igalia.com>
> ---
Hm, apparently 8250 and 7180 have the same thing.

Mani, could you elaborate on this?

Konrad

