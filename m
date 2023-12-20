Return-Path: <devicetree+bounces-27179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B67081995D
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 08:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C4211C22085
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 07:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C5C15496;
	Wed, 20 Dec 2023 07:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YRG5Wria"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98214F7F
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 07:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5df49931b4eso43834297b3.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 23:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703057012; x=1703661812; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I03Zj8Ppbfz96n7hM9/c6nEsBrD0Yq/1mt9gJuVw8qQ=;
        b=YRG5WriaOJnX7wCHcYHtcHAy1CMhJCMBnROcRXDSdnk9WoE1jqcc9R9u+j1NXP9wvs
         W4ZkhRUCdcdsyxRYgDtcs4+sO+VARJrO87CRNtyyYZkL3uZwDt/cTRwpWmNs32tEY61Y
         LvF81USKQ/zrouX0tLLbZ1U9RDKpevPUc9mTxhXBCuujyahM3JI5C3OKyu64NhYQlBaa
         uSkl2Tq5bpWEAkGVTI2OqIFivLGCdHxkWz8p4LOj0VgVRseQLvRzXsAHwP1jnB43De4H
         vwlWtlHOEMvrP3cXTerEFaj6WWVBlcD/TIlkZIxIitDGSayxvg0/KSbjzuUMcWnpTGx8
         Tyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703057012; x=1703661812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I03Zj8Ppbfz96n7hM9/c6nEsBrD0Yq/1mt9gJuVw8qQ=;
        b=ZQ3dv8QBXXEhcdvopfOBHAJTm4CXgUdQDOODlje8co24Vl3DJ00rvugjjHXOP+Hp58
         mouF0z6td9zYhJBkqY/wgSdEJrdFsGTzoCgiKGFQgeo8cAtMeXg2wMqi/wqTM7iP7cUl
         HSv0dg16ilgjeYS6S6ToignqkFmgla/CnowvgG/oflXYPxt9Hjmd/xklAT+YSHCglE+i
         Vkp7/fXrGYip0LTwhnKF7LhbZYDazhRo3TVwhNt7YIef/033escngzXZLQNQXZV9vDml
         Cm7Sg+SuJePqdFH7ctsfmDQDwF2tBNQKv5xvdZRKn04tzeW7DS48FL4r7lnZy9UyK+s8
         j4/Q==
X-Gm-Message-State: AOJu0YzPsLVmj6wvi6pX1jr0CMd9z7Eu+Qo/THSSxgo0mf4tevwoJ5X1
	Sk7EP042N/Z57RkOxc/fGHua1VOnLUhelIE+75iDQw==
X-Google-Smtp-Source: AGHT+IEQM0xTQN0M6gihfKm4SvEknVmGCWwNSIEcbBMUR/xlHQKBAJVeqH/ji+dXHXRXHxx6eAfegwqR5Mc23tOjjI0=
X-Received: by 2002:a81:4f94:0:b0:5e7:f87f:aec9 with SMTP id
 d142-20020a814f94000000b005e7f87faec9mr1617259ywb.81.1703057012125; Tue, 19
 Dec 2023 23:23:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231219003106.8663-1-quic_tengfan@quicinc.com> <170301441259.365364.2180258670074890979.b4-ty@kernel.org>
In-Reply-To: <170301441259.365364.2180258670074890979.b4-ty@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 20 Dec 2023 09:23:20 +0200
Message-ID: <CAA8EJpqLSuM-uXXud5DQ9Bx-4Fa10gk=49uwQTBODdAHJv6usQ@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 0/1] arm64: dts: qcom: sm8550: remove
To: Bjorn Andersson <andersson@kernel.org>
Cc: konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Tengfei Fan <quic_tengfan@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 19 Dec 2023 at 21:36, Bjorn Andersson <andersson@kernel.org> wrote:
>
>
> On Tue, 19 Dec 2023 08:31:05 +0800, Tengfei Fan wrote:
> > The address/size-cells in mdss_dsi1 node have not ranges and child also
> > have not reg, then this leads to dtc W=1 warnings:
> >
> >   sm8550.dtsi:2937.27-2992.6: Warning (avoid_unnecessary_addr_size): /soc@0/display-subsystem@ae00000/dsi@ae96000:
> >     unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> >
> >
> > [...]
>
> Applied, thanks!
>
> [1/1] arm64: dts: qcom: sm8550: remove address/size-cells from mdss_dsi1
>       commit: 53081095936cdb1501d6bcf6cb703fdd3ac71b85

Bjorn, but there was a NAK If I remember correctly.


--
With best wishes
Dmitry

