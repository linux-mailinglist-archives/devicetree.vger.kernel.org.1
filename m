Return-Path: <devicetree+bounces-119378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 786BA9BE208
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 10:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 310CC1F27104
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF82D1DC198;
	Wed,  6 Nov 2024 09:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hGDUXrcY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADABA1DBB13
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 09:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730884266; cv=none; b=hOduTmE8MughLv7cIJH2ybTkBTkneg0OHVVJu3dDkWSsN1WXc1YSSx3JuF1hmCNfGSi9xgcJd30N11EEwoup8fnHDf4VRHy2gDIW3dqzqU++ZrOEWu+DqIuepP4dI3+xGEJyJnee913nJc9e42pfPoPIZZFST6MIPGG+bcJeZgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730884266; c=relaxed/simple;
	bh=1zAzLkW/f2nboF9qbLPIqlx5xCQjSwlZVzYtvjCOkKc=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=AmtscPrVc+h1cUsR/ZOHqs7Id164gNmn+WgLTw4NG5HdU3yyxQMMtU/txnHjys6MqyfYQDrflKsgfZuzM3Evq3JVs288d5MeS7jN928Pj1kSOwNmmct5fA2Y8rXBMBr2Rx9BgngVVh4Vzh+8aQAin2xfmx6/dhJPz6WcRpAfjDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hGDUXrcY; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f76a6f0dso5762005e87.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 01:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730884263; x=1731489063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/QYPghorRcTYN0shVQYwBn/dY0r8tY2xwb/60ofT3BI=;
        b=hGDUXrcYOboR5kZaxvzBlo0hUQDiO1fwHMCA26CQNd811FkpJF9O0qcuWpo1U1hnYg
         9sPq6iolq42LziI5H9sm4U7VL6Vpd1oNzxMBNUJS+dTmgGoJ5rihZERcAwXG/ez5lhWb
         NcE9Av0Do7PnQlqTwsIP7qBk2cpNPuLhIF8WSNzTbZP2okeCaIru6+IpMD/8dZ++yH1R
         ijCesYew4KytenuW9aJCQwBH0EN5DKtLLjwERBG13osRbQMRPKl3AYhoCZSe78PCKumO
         fsQwN4KOzkEz9E1BO7ASEpnSV3xMXR453Poq73OFDTi3Z7tycy0LHkKLM2x8QIzrYxqk
         VK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730884263; x=1731489063;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/QYPghorRcTYN0shVQYwBn/dY0r8tY2xwb/60ofT3BI=;
        b=ZGMis4Dpx1oR99Wxxl08VH7SCuaa+ftuzqTmL9JF2+EzexDj72f+v0JVtKqPruQ0YD
         5J1tjNR6D4CeivdJd08MHVdE52rcG4HDQTdTOA+v4BjO+hQ2xIbLR1YPvWFhz7z3JTd3
         85PNzoyG7V+JThyR2jDdx0N0O2OVJCn4V+iQ9iM/hLFUIzV2rJDURhuRkxXVibWt/1gZ
         C68zyaR8/BgLhrP141YKNCe+NJ6e6R57mWeruA+c1r4576IV1wvfJdLZoLtdb51ca75p
         L2cC+DQ+104DzYTjMUT82bBLk+4sINv6WZIbviorsYF0Bq8iH/0klIsFJNgYxV3GKzZ0
         8ZVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQSBitl0Qs5lYGpcg8oZ7+qv2xCrqvTV6jukevYkQ5+l5IAeR4YrOxwtm0Bipq3tkWyuyX0cW7jAER@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1GV7sBifCkjgee5+f1wHuIsjrBPqZrpXLecv9HRcKhXbpzdCu
	b/ifeuXLxkbHY1zJZQ0coSm2Z7GSHWRmq1P5Gi7jj2WqbU3A9kc08gxazL6oPJc=
X-Google-Smtp-Source: AGHT+IFgFtkTNxczGyqzn7wYXW9ZEAg3W8OYU60DWsR7AGwkgCQzgf+QKFtY9ICn2zYQFSnBE45QLQ==
X-Received: by 2002:a05:6512:3c9f:b0:539:dc87:fd3a with SMTP id 2adb3069b0e04-53c79e16040mr11342042e87.6.1730884262780;
        Wed, 06 Nov 2024 01:11:02 -0800 (PST)
Received: from [127.0.0.1] (85-76-77-12-nat.elisa-mobile.fi. [85.76.77.12])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc957aasm2443358e87.42.2024.11.06.01.10.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2024 01:11:01 -0800 (PST)
Date: Wed, 06 Nov 2024 09:10:57 +0000
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>, ulf.hansson@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhupesh.sharma@linaro.org, andersson@kernel.org, konradybcio@kernel.org
CC: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_tingweiz@quicinc.com, quic_yuanjiey@quicinc.com
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcs615: add SDHC1 and SDHC2
User-Agent: Thunderbird for Android
In-Reply-To: <ZyshSbJgLHTRaps1@cse-cd02-lnx.ap.qualcomm.com>
References: <20241106072343.2070933-1-quic_yuanjiey@quicinc.com> <20241106072343.2070933-2-quic_yuanjiey@quicinc.com> <347uhs7apex3usmfpzrpwakrzchxactwtc7gs45indkzez2vfj@n75dc3ovl3g2> <ZyshSbJgLHTRaps1@cse-cd02-lnx.ap.qualcomm.com>
Message-ID: <FF5BD9CD-8E5E-4C40-906C-8552C067AE8C@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 6 November 2024 07:56:57 GMT, Yuanjie Yang <quic_yuanjiey@quicinc=2Ecom>=
 wrote:
>On Wed, Nov 06, 2024 at 09:36:56AM +0200, Dmitry Baryshkov wrote:
>> On Wed, Nov 06, 2024 at 03:23:42PM +0800, Yuanjie Yang wrote:
>> > Add SDHC1 and SDHC2 support to the QCS615 Ride platform=2E The SDHC1
>> > and SDHC2 of QCS615 are derived from SM6115=2E Include the relevant
>> > binding documents accordingly=2E
>>=20
>> Which binding documents?
>Thanks, the binding documents is sdhci-msm=2Eyaml=2E
>I have modified this yaml patch in patch v1, and this yaml patch is
>applied, so I remove this yaml patch in patch v2=2E
>link:https://lore=2Ekernel=2Eorg/all/CAPDyKFr-Gzd3Mzn+vN6DXO9C4Xrvpv4z5V2=
G_VRTzOa=3D89Fd3w@mail=2Egmail=2Ecom/

The question is why do you mention bindings in the DTSI commit message? Pl=
ease don't just C&P your texts=2E

>
>> > Additionally, configure SDHC1-related
>> > and SDHC2-related opp, power, and interconnect settings in the device
>> > tree=2E
>> >=20
>> > Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc=2Ecom>
>> > ---
>> >  arch/arm64/boot/dts/qcom/qcs615=2Edtsi | 198 +++++++++++++++++++++++=
++++
>> >  1 file changed, 198 insertions(+)
>> >=20
>>=20
>> --=20
>> With best wishes
>> Dmitry
>
>Thanks,
>Yuanjie


