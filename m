Return-Path: <devicetree+bounces-109382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8DB996448
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B658F288CE5
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 08:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3582187561;
	Wed,  9 Oct 2024 08:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yvV6fD5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3CC55E53
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 08:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728464373; cv=none; b=Fe1M1accs9zUTIIqJ/xC6PFcbxoJy/x4JRtAcgM6Ydm/6vcNH5skRMy730oOX1zwQCwAdxLbnNee5mW+KizL8mz1x6nck48c+amuqyO7BQrfXDvF0lZNIP/E7/OdeM0xkOGaS/pjSV1zBTJ/V74wCEZbZC1+gDPbOKZt+oF7HPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728464373; c=relaxed/simple;
	bh=Fg1XN0GxX/Kla6xLUfQtPJ1bcuD9q+/DrBFKS3emMBo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vh0VWMkV1o+8hZquwxpd6W+r2Cfp/1ifsEABT0RgChbWZ36FUrrDKAfShl+cArcv44TZdMphAxuhFtGQvDROTqfHnuTaQ5/0MInCgTlJKRDmIargeuAxkcZo7kSgohs0HO5GQ5QD2bwr0Fh3O0cbN82mEhpQwR/oL7jEyFOXscI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yvV6fD5P; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5c903f5bd0eso3201404a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 01:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728464371; x=1729069171; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fg1XN0GxX/Kla6xLUfQtPJ1bcuD9q+/DrBFKS3emMBo=;
        b=yvV6fD5Pclo4YZcxjNTCiwPPq34ltVo2CVS6XTqcJKS7mlf08jwAbEJomL54khjZuG
         +wx5LktCotmHyagNSpXm39ySsMFPulyHaXefiO0NYwCPdmRxuS5dAMLWYc1Eeour6DPH
         pTanHAVh90SUGR3QE81IJWt03cpZOXTw9tPAp/xL58KN+mY5kqt9dwXNtrX8rwjgOdXp
         kksq3GxoTfMHqsQQhR4YFABvF7FDz1veAsIz+VzbUrHgem0GY9SrbUGRShngssdVbLI8
         L2Eyvl1pCCpD6Dht0LNPcDIa4vubwL/E48Xrt2DdWNe4wFejbeD9AmSipV4E/FJm5C+f
         3guw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728464371; x=1729069171;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fg1XN0GxX/Kla6xLUfQtPJ1bcuD9q+/DrBFKS3emMBo=;
        b=cxe7gpqKd2Nubq9DA5rEUPwDwKSbpAZus+WVRXpeBvdgh1BrMvEtCYqZ9InbsqcXrQ
         gwM+faejtbXnK7HDElU16QyYIcVkWZfQVIcvoHOugQKhiU02mTdLfncXgnu0DAxCD0Ej
         ZGqqkceHNCGonx5e9wc2KbSx6CS70v1c9uGH9p47cEi7e4piXtjPVchlSVd1irqTD3PS
         Bw8ElRUa5lgBR8bJAD3NSC4CZX4S15d19xys//EYFKPXBYgEIFygw4B+U/Rl4S4ckVga
         XW/2B0+5FofUd2lel/yezQbZpz8Ux0XFklDXb92WfFVQSOYc0w9jl/xmsCvbFnFncXNj
         RV2A==
X-Forwarded-Encrypted: i=1; AJvYcCXVMG2nTSkWFT7wevoA8WANAnvqHxCf4MU2L332T51QpY2UnPLGcn7m4EXKD0kmJWMBML4WwBsqSUEv@vger.kernel.org
X-Gm-Message-State: AOJu0YxA8YhOfStebqJlL4CcqYWWb+FgiE8mVRVzyIqKpE1Uzyw0DZhC
	E1FeGUk7gY1w99bJohFTvr7h6oJq/CE7AM0FUYEZbdAnrgbIUVHqlELdwG895hQPuYHfEnf8vL6
	1ZK0WRoZWHSIPCxt4Zlpd/LCEQ3hV3Gwf+R2ZLg==
X-Google-Smtp-Source: AGHT+IF5e5okLD8RYMY+0AoiICHKx1edgmljuMThgQAgpMLA2oJJxnHHHurgh1/t1QXhU0PNT2KsnIunoqJl2lcEQHc=
X-Received: by 2002:a17:907:96a7:b0:a99:4ebb:a400 with SMTP id
 a640c23a62f3a-a998d1b32c7mr166641966b.26.1728464370570; Wed, 09 Oct 2024
 01:59:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003211139.9296-1-alex.vinarskis@gmail.com>
 <20241003211139.9296-4-alex.vinarskis@gmail.com> <CAEvtbuv1OUekj5=fzafJKby6jBiZ6BzgT4TrrihDNdiQQM_vQQ@mail.gmail.com>
 <CAMcHhXoRgBS5q=70=nj72_dH3R2eHf3bPt=ZxjsUQEV5FZxvsQ@mail.gmail.com>
In-Reply-To: <CAMcHhXoRgBS5q=70=nj72_dH3R2eHf3bPt=ZxjsUQEV5FZxvsQ@mail.gmail.com>
From: Stefan Schmidt <stefan.schmidt@linaro.org>
Date: Wed, 9 Oct 2024 10:59:20 +0200
Message-ID: <CAEvtbuuW6ynBQjZce28X3qZ8EYaCKYM2nH9212GGA7hMxyk8ig@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: Add support for X1-based Dell
 XPS 13 9345
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, robdclark@gmail.com, 
	peterdekraker@umito.nl, Bryan.Kemp@dell.com, tudor.laurentiu.oss@gmail.com
Content-Type: text/plain; charset="UTF-8"

Hello,

On Wed, 9 Oct 2024 at 10:55, Aleksandrs Vinarskis
<alex.vinarskis@gmail.com> wrote:
>
> Thanks for taking your time to test this.
> For the record, which variant did you test it on (low res
> IPS/OLED/high res IPS)?

OLED

regards
Stefan Schmidt

