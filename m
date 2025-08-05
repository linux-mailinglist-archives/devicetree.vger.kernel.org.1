Return-Path: <devicetree+bounces-201872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ACBB1B182
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:53:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C65B817FD86
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D1E26A1A3;
	Tue,  5 Aug 2025 09:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wtdA3sxX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C581AA782
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387630; cv=none; b=EEqWseG76ZAxAZ+n9Z3hhZCkkN1PYP/svX51WiEq7zlWGvZ07ziZkRjfXZmxhgne5jd/HBEt5jIp5CmPJCvJOefu/DM9vNZuR3eNqVTZpHJFHl/zDfhZoYt4wqGPqqBrRONMmiBUi16CQvfMZKM8/TAOUkib8gk5GE6IYLV/n6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387630; c=relaxed/simple;
	bh=JzfGyUk5TxqhA2fUD9yFt5uBkf1NxDzIPcarqklTieM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lKrPEAg0IT3MbXh6CIKJkoibLcldeY7wqx2gqUb+KvTWreNn/I6fcvHdfNcYbIJYDPYdUiq9CxHRK8sAiefQxX79JscCaTRv5pzEyj6kvTVmL9h4Ls3xW15iGMN3U9rwTlvlKFo5hjqAXKgxxbjqTvEORrBgJ41xpamSJjf0MRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wtdA3sxX; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-879d2e419b9so3364303a12.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754387628; x=1754992428; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kqOH/YydyeFepQj4djKoRufGWAHZEIvnHzq3g2f3Mz0=;
        b=wtdA3sxXimEi8jCHKA3tDhJx8Qj9LE+x/NhDSNqZpensoIzscfaKorTdMboYoJ6vR3
         3JXbBbDQBdd1IYVJCbNqlIzw4YMJ+0jKB15T6lKB4shrpaIw7lqmbi8nXr3Kznc3fODp
         yrJq/FEFmIAcUr3K0eYOQVA2dR5gxEBtEs6y0J4PQPTB0+EH8bFqfwEIdgv2p5aBPhHD
         VlZ3JU3UQ5QBSV8Yy8yb5qU6wz7HsQlbzTJNY+qcZE0dvt1JmIZXQpuxmQkLtTEAsvyW
         XTsAh40BWXWCsbiEmDSUtQlNE5WhzClB8jI/vMRFPAw7LrC0y4ZkHGg7KV62Wxtz3abp
         lVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754387628; x=1754992428;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kqOH/YydyeFepQj4djKoRufGWAHZEIvnHzq3g2f3Mz0=;
        b=A6KfZaGAjtz27nHWQbp7fEw7yc4A/kulbU0XvhXG2mMiqgm9INLwvrjOdrNN93UwcM
         HiIVD/8E8/rm8FbL5QZaVrXa8yDTLjF+sDx4Vu2qmP9gutZBWkTGdD+ymXWD45OxMcOc
         3hK/4T3eBJ0se+m8NfBhNOmOg6Bm2Vg20j1iSJYuTa0YXQif72PKRT8SBOHSWRja7YU0
         C4ytzjZq9UPM5RrXxSFLFLCzqgBId+T2oQoSXCZVJqjcUbI0z4LPu0O5V5EzUfk3C4tz
         f+d7Hq4/P99UOEqtFABJ8G81QsoEazi6g7IpzsdiJqF1DjHD3pjrG5YlSsPLMUjCz3ML
         Gu0A==
X-Forwarded-Encrypted: i=1; AJvYcCUbN9Zw17vsJCtcJuywP0+Xqvlf/QoI1s2MBFCzL10pIg3+MP6nerJ1TqkRlJQEMWguMBpJKpl8emVo@vger.kernel.org
X-Gm-Message-State: AOJu0YwE5jkWXb4uFXGDbVn7IdW861UtVrt9HXmJNKyK4G5Hx++7/9qW
	Puqn1RbN7o299hgspf3dIp+RtaPLsB9wDvi8/nxUcPGdu74HXVdJOC66+ru8e9HT+ZogQa/uCd3
	xHHrHBFe5Jx4YXEo56DzEijHyWsJb4xA8GR485lBNsA==
X-Gm-Gg: ASbGncts9oHsQh7vOlLjYWeysBXP0bKxcYJ0n5glBNIJSKYHyT2ZqMlHg1ookaMWf/b
	SyvcWvLz+zBNx7m+DpAZRETdcwiNp6hCon2Di1EUVs6Eb2sTYbS6Dc4q2tzNTlVuzOaBuG+++Ob
	nu7NQdHmKsLWtT4yuHkaM+Rj64oVAof51ZyCCluRaFeSxeRgOYtlOtartayd9H6tKGy75SZceWf
	C23GQ==
X-Google-Smtp-Source: AGHT+IEzHAmi0MSWAu1rgQfjhSryD3cFVQRd7ATB9s5pY8kjz8u84GpsLjOHEKwVBL1zb+hkERMs+dO7ax4ayrjHp+c=
X-Received: by 2002:a17:90b:33ce:b0:31f:4a91:4e94 with SMTP id
 98e67ed59e1d1-321162d2237mr15476293a91.30.1754387628536; Tue, 05 Aug 2025
 02:53:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
 <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com> <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
 <b5f8fce0-afe8-409b-b43d-fa9f413cd442@oss.qualcomm.com>
In-Reply-To: <b5f8fce0-afe8-409b-b43d-fa9f413cd442@oss.qualcomm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 5 Aug 2025 10:53:37 +0100
X-Gm-Features: Ac12FXwafHZ88AWPsVnZmJsBajP70fc8s8ykZSQl042YjN088WSulIMKoD4bYuE
Message-ID: <CAJ9a7VgZ61oL4LLxKSon3LXsYDtaHaPcGNxW=cwzhSOs3ea1PQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, James Clark <james.clark@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Jie,

On Tue, 5 Aug 2025 at 05:11, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>
>
>
> On 7/28/2025 9:08 AM, Jie Gan wrote:
> >
> >
> > On 7/15/2025 8:41 AM, Jie Gan wrote:
> >>
> >>
> >> On 6/24/2025 5:59 PM, Jie Gan wrote:
> >>> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in
> >>> binding to utilize
> >>> the compitable of the SA8775p platform becuase the CTCU for QCS8300
> >>> shares same
> >>> configurations as SA8775p platform.
> >>
> >> Gentle ping.
> >
> > Gentle ping.
>
> Gentle ping.
> Hi Coresight maintainers,
>
> Can you please help to review the patch?
>
> Thanks,
> Jie
>
> >
> > Thanks,
> > Jie
> >
> >>
> >> Hi Suzuki, Mike, James, Rob
> >>
> >> Can you plz help to review the patch from Coresight view?
> >>
> >> Thanks,
> >> Jie
> >>
> >>>
> >>> Changes in V2:
> >>> 1. Add Krzysztof's R-B tag for dt-binding patch.
> >>> 2. Add Konrad's Acked-by tag for dt patch.
> >>> 3. Rebased on tag next-20250623.
> >>> 4. Missed email addresses for coresight's maintainers in V1, loop them.
> >>> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-
> >>> jie.gan@oss.qualcomm.com/
> >>>
> >>> Jie Gan (2):
> >>>    dt-bindings: arm: add CTCU device for QCS8300
> >>>    arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
> >>>
> >>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
> >>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
> >>>   2 files changed, 160 insertions(+), 2 deletions(-)
> >>>
> >>
> >>
> >
>

You need to send a new patch addressing the comments made by Krzysztof..

Regards

Mike
-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

