Return-Path: <devicetree+bounces-14225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E681D7E2F23
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:49:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 522E7B20A36
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1E192EAE1;
	Mon,  6 Nov 2023 21:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RUzy0s/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B092E645
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:49:46 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0776D57
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:49:44 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c5210a1515so68676041fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307383; x=1699912183; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IYwHzLZss+H5AjxZkh9uANjO8PXTnrkuLTQ39aeS4xQ=;
        b=RUzy0s/YDAhufLLRwLbzzo9D4zwsFOk2mfXruSdLBHGvEMBCiRmxFj03FUnyCBHwZD
         QyDq4iB0GupiZFnUUi4nxCISi+4wvpyTPAH8jgFyKyuIJGwOqaYYXnjHtyH07FY7SaEW
         s9+HUI9GoQi88bZ5TpZGr/haUeSfD1UwEkZ2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307383; x=1699912183;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYwHzLZss+H5AjxZkh9uANjO8PXTnrkuLTQ39aeS4xQ=;
        b=lBkyof4BKZtwN7EdCWlncaSv1dOXnu5uq80OEoUkJBPqQDhpQ/BbC70VgPOIuC0WNh
         8NxTAssWogHL8GBRSHjWXE9zawH7/VkqJWfjIo0dsr0acNlc3CzH09Q4hqY2fnPMNfD/
         VbGHUVhwu2r0H0wH8GiFq6pQ+Tb6ojXK9m/oKjwKjKE/gITSKYg6a96ya6opuw8OXSLq
         hoRqcrYq7/qt/QShCAWsUz0h56wMn0YWyXgz5243cZ2urv0Q1N4Ky7gMRE7QvwigXeRZ
         QahanERWNG6GC3x/G7F8x+Ak+u+VRs9zL2RCHbaeb9H+qpKb80hVEzo52fun6iFrMoTQ
         zGEQ==
X-Gm-Message-State: AOJu0Yy+/T/HLWhcNl4c7YtofwdGiWbVMn32PvcLfPmi1nWWcQc7fd4m
	9IA3CckPtPsipp5vpAERHhmRx1n2UOf3e0loBak0kA==
X-Google-Smtp-Source: AGHT+IEAtizL9pLvVqQk2s36HB4ipYol7hr3ZoyDwC2Uh504c4LD9qLIVD/oDJl67Pj7/3hvn2AA4/Ma/CDN/Op18qY=
X-Received: by 2002:a2e:a7ca:0:b0:2c7:fa6:7183 with SMTP id
 x10-20020a2ea7ca000000b002c70fa67183mr8215088ljp.47.1699307383166; Mon, 06
 Nov 2023 13:49:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:49:42 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.2.I11f77956d2492c88aca0ef5462123f225caf4fb4@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.2.I11f77956d2492c88aca0ef5462123f225caf4fb4@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:49:42 -0800
Message-ID: <CAE-0n52mAA5vMM0E=cAsqGhP6DkExUXJY1+nU+ZCdHDQbNO=Ug@mail.gmail.com>
Subject: Re: [PATCH 2/9] arm64: dts: qcom: sc7280: Make watchdog bark
 interrupt edge triggered
To: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Douglas Anderson <dianders@chromium.org>, Guenter Roeck <linux@roeck-us.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Andy Gross <agross@kernel.org>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Douglas Anderson (2023-11-03 16:34:28)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 0e51f883daa9 ("arm64: dts: qcom: sc7280: Add APSS watchdog node")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

