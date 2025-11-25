Return-Path: <devicetree+bounces-241951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6842BC84A2A
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:07:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DFBCC4E8DF0
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D6731328F;
	Tue, 25 Nov 2025 11:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gr0gvp6N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC7B3148CF
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764068861; cv=none; b=FvnNjjaIXG2RLYMc3owmiv3Qfp0H309CH8gg6oJLoydznxM7NgfGOznRXAVVqZo41wBOQi0CLkuyomkvUdDimJjlC3UBTo3Z9LiAOgHa26pNaD+m+WahbVRqtXfiOvTPgeb3SthXrHKsshPw/W5dxHAg1G+TJXUxQMFG1ZBae8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764068861; c=relaxed/simple;
	bh=2zviYWMpRPXc7yqUPhvqUBifZAL4AmGZqkh12A+yNQ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L/WlBtDXM6ClccteYWFO4kuvoop3NBvDiuobjRG8i03ydGMxZpAj2H6rRgUHfXuoMGVhmgXCTGS7hUy1bihRYzRqY0VHiLj5KPoVFDbH1mFkUv9UkaL0e/XOmcM/A9+MKrd5WurnGFFuJLE4JLtDCsjaFgck8ctOK6X0VJmGCbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gr0gvp6N; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b73a9592fb8so72515366b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 03:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764068858; x=1764673658; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2zviYWMpRPXc7yqUPhvqUBifZAL4AmGZqkh12A+yNQ0=;
        b=Gr0gvp6NrbcApeKRNVIlLsO+PhhkO64QRlj9BL3BHT03E/G3E690Er4ACDlTNqZqnA
         nE3ND6qXNFw2lpE+hVHx6GGnh8quyz/uuIlMZ0O/b2aAI2ZpnzVprn+n5rR4PjlaEzIt
         f9sZjhxomJY6fTLRlysSF0rSeKlB9Q1U/kETFvA2VFArgFdotS4o/vQe0hjo0jq2KMlU
         hBONxmIFJr6Xtumto88NZl5RM0sFsbit+8/TmUY1Zj7DQif6bYFyr7eUaon8UsTzeUJM
         Khg/LDUsWXeLzSG02lDBzDbxZGmkp9GaDV3/E59pb62+iR7hAEYxziLo4Xofd4/fLiDD
         Lw7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764068858; x=1764673658;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2zviYWMpRPXc7yqUPhvqUBifZAL4AmGZqkh12A+yNQ0=;
        b=s5UBbFCTkZlZs+xcNTBPQe2PRVeYJT9GFaQcRajswWovqmnlTy+s3tkoqdkE5xeSpl
         78ts+bGlqKAhNtl372B9R1zAkWL2E3QxJ6XjbBucXWT4rTCYifWHHKlw2gbHCNTvNzNJ
         HHMqurKJ1iHYq/TkzBLoDkUre1vDh6Tqg62knnymb3nlFtRlyqRSBPcip7SYGpfFrZQd
         OMdAavY1MJAmUDzpvk8/HTqFhPNNxng6HJ3AYhGtpylklPVBzhe25DURNyEw4FFuaM8j
         1qy1NEoR9S7rc+LFIKi4QlBPB8MpyECdQZadyIsTPsf+j8JLig80/fZazb0m+7/b0jF9
         mUFg==
X-Forwarded-Encrypted: i=1; AJvYcCU5TzO+EB+ZZkWOoyCm0+Mdaf5TVTnWlfasswo/yeYYL6d/MWEIO8spt/9f6Fr+n1wLVNWxBmgxA82A@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5TW+ZQc7KwkocBB41NsOXBz9MhUiDbjgclOS7q3L+Zx0Iudd7
	D+FztPegX10p3eSx972iNxvRksriJoPRlrRQpsr9dURN9lYBJJoKrF4d/wNs1C/gdzFv0hBrk7F
	YsEj8sRW/dwcJ26+aWppoL30iuSBCnrG1gVV8YPdRTA==
X-Gm-Gg: ASbGncssdeLBQHpPIjtVL4LVBLWC67b6+T8WmG7F21GNe5I9RpO5Sb7BYwdtTjsNIPS
	QjPIn9mk2GVV6w9RxkU1i6WYPVtxoTn3aBirAeivvWEBUvT5dK7ApjypQnwvyq/teCkfdugQgCZ
	pRoZ/MlJxlh74hp/IM+TI/THzXlsT5L6GiiSfM2kuwIqecHoo7cqmtRHzXZnRmaWSNlEotivH5A
	BKwX94hdAjXYkxxEBIdk759Bo7n+FumnWSqZ99Skw7YkDqNbNLkpkM2wNKqvCGMzIYnX7SfzfZE
	FN4m
X-Google-Smtp-Source: AGHT+IHg2+2QxlVeXNyTPHfpqpewNYQ2OW0QcIQRhS9rdrtPTlPGG+LpQTObtaQA8pOcEc/dOqmtT1WQQgzDShvVdJM=
X-Received: by 2002:a17:907:3f97:b0:b73:2d9c:9581 with SMTP id
 a640c23a62f3a-b766efaded0mr1943285166b.28.1764068858360; Tue, 25 Nov 2025
 03:07:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121142623.251118-1-ggo@tuxedocomputers.com>
 <af3d3295-1340-417f-8682-7d7e2bc6c812@kernel.org> <aSGXu7IhPDNSkYhi@linaro.org>
 <280982b8-ce86-45aa-812b-ef1bf6e57e3d@kernel.org> <f8ebe524-1f0a-4f54-96ce-aa36f8659adc@tuxedocomputers.com>
 <7716b83f-409c-4fa8-8232-89d3d1be5dd6@linaro.org> <7a3e2e3a-1a6d-460c-846c-209474c2311c@oss.qualcomm.com>
In-Reply-To: <7a3e2e3a-1a6d-460c-846c-209474c2311c@oss.qualcomm.com>
From: Ettore Chimenti <ettore.chimenti@linaro.org>
Date: Tue, 25 Nov 2025 12:07:26 +0100
X-Gm-Features: AWmQ_blURkPornvVq9QQ5IxYAUQrQZu5rkeLI5vLb1vMNoivF5xocKd8GUSWksI
Message-ID: <CACBDSOWcacFoKFjrNpDm0zCEk0AJcYcgJPOfcDQxE3mSussQ4w@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Add TUXEDO Elite 14 Gen1 (X1E78100)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Georg Gottleuber <g.gottleuber@tuxedocomputers.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Stephan Gerhold <stephan.gerhold@linaro.org>, Georg Gottleuber <ggo@tuxedocomputers.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org, 
	wse@tuxedocomputers.com, cs@tuxedo.de
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, 25 Nov 2025 at 11:50, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 11/25/25 11:37 AM, Neil Armstrong wrote:
> > On 11/24/25 15:09, Georg Gottleuber wrote:
> >> Hello Krzysztof.
> >>
> >> Am 22.11.25 um 12:15 schrieb Krzysztof Kozlowski:
> >>> On 22/11/2025 12:00, Stephan Gerhold wrote:
> >>>> On Sat, Nov 22, 2025 at 11:16:25AM +0100, Krzysztof Kozlowski wrote:
> >>>>> On 21/11/2025 15:26, Georg Gottleuber wrote:
> >>>>>> [...]
> >>>>>> Initial support for TUXEDO Elite 14 Gen1 laptop. It is based on Qualcomm
> >>>>>> Snapdragon X Elite SoC (X1E78100).
>
> [...]
>
> >> I understand your frustration, but I'm still learning how to contribute
> >> to the Linux kernel. However, we may be able to find a constructive
> >> solution. Here at TUXEDO, we have the necessary Medion device and have
> >> already adapted the device tree.
> >>
> >> Would you review a patch set for Medion SPRCHRGD 14 S1 Elite?
> >
> > I think it's worth re-spining this patchset for the Medion SPRCHRGD 14 S1 Elite
> > with a comment in the DT mentioning the device tree is compatible with
> > the defunct Tuxedo Elite 14 Gen 1, since the Medion is an actual product
> > people can buy it's worth it.
>
> +1, especially since you mentioned you have an actual Medion at hand

I agree, we can actually try to respin the patches for Medion if
TUXEDO is not worth it.

Regards,
Ettore

>
> Konrad

