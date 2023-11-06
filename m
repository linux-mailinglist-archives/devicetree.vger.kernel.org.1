Return-Path: <devicetree+bounces-14228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB377E2F32
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 22:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 022C0B20A3D
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 21:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA032EAE5;
	Mon,  6 Nov 2023 21:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OMxPgAFd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2F45247
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 21:51:12 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A84ED75
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 13:51:10 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c6b5841f61so53981191fa.0
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 13:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699307469; x=1699912269; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rovd4JK5fHJcS4kL1plhiacylopFV6njcCJFrFhLJnc=;
        b=OMxPgAFdeJv0Um9Kxmxot7XqXGojjGFYxpFlWYBnEEoaj1FGvOrkphFgS1kgTkFSe9
         7LE3/sEPTg96upqUSJey8taQkyX9tJiXSgmhDKcMgFQulbxzkPLRL93grrVahjA+Kha1
         Eg4fSMYox2PsDRxIWisYMQL9N3X8bLui1q86U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699307469; x=1699912269;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rovd4JK5fHJcS4kL1plhiacylopFV6njcCJFrFhLJnc=;
        b=BPUw81238RRJ40FKjpkepZIleaMQNITg9T/ihWGkgZOBwucqo1bvyCZK6T7ONTa4Kz
         H1edsab8mpE9EJDRO27J2HFHDqzELER+P7V8Hse0ZlSj7aNt10Awx9CKMvc22ixcIvcy
         4JK9/fRDJieO71CJpBnYoejoOF1cF7hrLpKggZeGHUMFOEBqav4euPcDXwuss+BcSKiJ
         8pFwoDnZMi6vRhz/4XTy86YEWl74kgxBTSLlRq6jING503oEHwiLoyBjTwZhheN44Bh+
         ur4Ow6NEQzJk6ZWF9fgHuh7qXcUh0sR3uaFzEOyz4IwLaeUE4BbFi0TyUGa3xUVvsN/4
         eqSg==
X-Gm-Message-State: AOJu0YxqAfRnlCBKcdc6NSpTyGe63qtTYuHi5lMsZFQK5sOn0lzQhfAZ
	DAh9VxWq+JgQ5rG8caiXSo26BRbVwcliyy19jdi+mA==
X-Google-Smtp-Source: AGHT+IEQchg2Mo9K99uoWXcnoWuD1S4/nlYDjsfTVQ9fI9R4y38bWmbo9tODWMPx0AJc7mfdxervYQJu7Q/ZYncfM9M=
X-Received: by 2002:a2e:978d:0:b0:2c5:2357:c6a7 with SMTP id
 y13-20020a2e978d000000b002c52357c6a7mr254675lji.17.1699307468524; Mon, 06 Nov
 2023 13:51:08 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 6 Nov 2023 13:51:08 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231103163434.5.I2910e7c10493d896841e9785c1817df9b9a58701@changeid>
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.5.I2910e7c10493d896841e9785c1817df9b9a58701@changeid>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Mon, 6 Nov 2023 13:51:08 -0800
Message-ID: <CAE-0n513k3PRZrpEiwvgGwhX2H7SsJrD6DWFbzBS9dGo0t=HZg@mail.gmail.com>
Subject: Re: [PATCH 5/9] arm64: dts: qcom: sm8250: Make watchdog bark
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

Quoting Douglas Anderson (2023-11-03 16:34:31)
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered. Make the change.
>
> Fixes: 46a4359f9156 ("arm64: dts: qcom: sm8250: Add watchdog bark interrupt")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

