Return-Path: <devicetree+bounces-93414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F2E950CFA
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 21:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D9851F24B68
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24B01A38E3;
	Tue, 13 Aug 2024 19:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="u2qUM5LN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533C91A3BBC
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 19:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723576521; cv=none; b=iFCL2oZGzKKp/IYIBbJOADMDnP1gt9iMC+YDcAFf4bEN1tc+C4LX49C01QEcaqGsTt8/+50W5HQ4I0WyS1g7BO6FTgbNFpVUYeI+9BA/FlBl36EiX98SBP2iwepkTKHD6Am1QsYZLu12yCvU/JC6o6NSqhvnyU7h9zFXI9q9sro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723576521; c=relaxed/simple;
	bh=U4Xyoz84NINmS5YaWTDoCODzk2mYuYN1PlkFZg6Da9o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YReNRxh21SaNNrUxsyUf/lIlj0VEPWfK7J3c4j2gYVnE2YW3Y03T9ldM8O1P0sPS5EA2jx4jXXXnaCC4YGmI/eplY+ZyCazdnMLRHCFQXzOUPtyd2QbibVF32c7gc3bw35YRccT+WN7x5zQQTKn8C6VdWc//RuTkjxfeP8e/MUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=u2qUM5LN; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1fc47abc040so39103755ad.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 12:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723576520; x=1724181320; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U4Xyoz84NINmS5YaWTDoCODzk2mYuYN1PlkFZg6Da9o=;
        b=u2qUM5LNzTRDS65lVfrgve2nGnWnCpaCIKNX1X1oyF+GjldBkVZn+H0wzpJFgCum8S
         B3TE5+mm4onsKwhkN2IY2qMorv8n1kAk9vGjy8xBbrZiz6QAPnDOIx35of9AJH1j43uV
         eSjqZLTyn08ZOBvL/7mhDEFf3r7iXSsQgSsVwiqPhZB23Btf2yWlNZIHyiX4d0iRHk5Q
         vnMKjYP20YR/SFL1DpqxSfde9VHfbwWXQpSwWGSdkn8fkJCXU0qY7PdUZEfLtaRf60Rc
         P+QVesUPwEr0+ZP/BVwzjD9Kvmz+8uc4J8+zuZOFQnCGxXbpByFnW7DTuhjULfV2r4W8
         OeNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723576520; x=1724181320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U4Xyoz84NINmS5YaWTDoCODzk2mYuYN1PlkFZg6Da9o=;
        b=BY2CfyobDTqT9zlNzXYG1EHZwXWzck9SU+IbRsPE/vwA7YsCIxGHQblBYdcRnNlNSS
         ICVe4MJkqHLk5R9T4eEqqEfil2BwmXGThMA+xIQNjRkJyyvMAfILCQA3KucWnINR0TCO
         q0M9vgyBUke6LnaiEZpZSI3rHx1Cmg8HzU1Ff/xSDGWRiEUQsZUTLJa0Wg+B5zqFt7iA
         bZrrjaQDyo+lBm/wOsQVu2Eebh5Kw87lefnBZjiAUz4kFIIewZZmvIVs02VGssRpj0Ug
         /YelGeFwuZxcbzpbsSjsVx8SQTAGDxCS714sqxoawE6G/2gvijZGycMp2z+6zg/QWK7O
         qnXg==
X-Forwarded-Encrypted: i=1; AJvYcCXwCR3gziwlD1UyZWOpQv25HV6snBbreSeZcJpkXqPWIQbmeDvDRjdiDwurEuyllzoZrgvLb4PYvxvSID7OM48RyQTWvevwR5G8nw==
X-Gm-Message-State: AOJu0YzupcTuDNmtnzgIex8kdHNPRcYaKEJSkbTIKprQok6Loy9759id
	fYzE8VMbkIVJJ1ajpov+7THHEDfFlTB+t1tkcU24XAENvMHwWNIPi5qk7PEuYKQulZNRkUUqwEy
	dpMUpPm1MFe4EkjFHbRpXq//TvLZ93JUCJlSIPb1APPQmFg3urC4=
X-Google-Smtp-Source: AGHT+IGLVONXb2C6YyhnguQvraZmtCfSPGP62p2pX40XsG5b0xAUk+IJq2D5zMhwvCt/35J4267uGhv5ZbOf+n8Ce4E=
X-Received: by 2002:a17:902:db10:b0:1fd:8eaf:eaa0 with SMTP id
 d9443c01a7336-201d645c66emr6228805ad.38.1723576519642; Tue, 13 Aug 2024
 12:15:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240803-qps615-v2-0-9560b7c71369@quicinc.com> <20240803-qps615-v2-4-9560b7c71369@quicinc.com>
In-Reply-To: <20240803-qps615-v2-4-9560b7c71369@quicinc.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 13 Aug 2024 21:15:06 +0200
Message-ID: <CAMRc=MeWFs+M+2kpotRqmcbPgXx8xCWEa-DqatGxWUAcixQb2g@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] PCI: Change the parent to correctly represent pcie hierarchy
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, andersson@kernel.org, 
	quic_vbadigan@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 3, 2024 at 5:23=E2=80=AFAM Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Currently the pwrctl driver is child of pci-pci bridge driver,
> this will cause issue when suspend resume is introduced in the pwr
> control driver. If the supply is removed to the endpoint in the
> power control driver then the config space access by the
> pci-pci bridge driver can cause issues like Timeouts.
>
> For this reason change the parent to controller from pci-pci bridge.
>
> Fixes: 4565d2652a37 ("PCI/pwrctl: Add PCI power control core code")
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---

Tested-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Bjorn,

I think this should go into v6.11 as it does indeed better represent
the underlying logic.

Bart

