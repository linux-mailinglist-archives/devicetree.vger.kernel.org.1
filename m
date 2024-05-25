Return-Path: <devicetree+bounces-69188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4D78CF12D
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:04:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A88CA1C2089F
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A8A127B5C;
	Sat, 25 May 2024 20:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Terk2D39"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4AE33D0
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716667441; cv=none; b=GjzbYak8vB69zSrSSlwczFugFmfkFNLsRSWR/6pi0mwcIBi5fSgkFgyskf/+QfKJBHxr26XXn+KUbWN9m6lNAPGzv3mfbuDUmMp7bYqXm2AaXtrX/EWF69sEMNMeXbd8Rs3eZL6MmIrMea3opBSNh10QqLS45ynJtjMD98lhdng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716667441; c=relaxed/simple;
	bh=3H1Qh68+EVDSAFb8PydsksaGdeXzowO2wA/rKWMMvk0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oRp7RBzViDZZ+XrfnqYbMV+ENnVwSFixDq+MO0GKGQ9TkyGrhdGV/k1BsiMwpsBHrROsMZOUz/ch3sOOJD3BpO8WDbAIbIysm8b2BIA1JMV/DBryPTLnrjYbPVE5bYPdZUSZCWLIkdkz8dGuTgblG5d/AT/zTYfzz3MmGodb/gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Terk2D39; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-62a08091c2bso21799607b3.0
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716667439; x=1717272239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G3/avKGFNBrd+/abFgXWl2ZL/PQRH4HTWTJ4CHLYxFg=;
        b=Terk2D39OWueRpajmXEfRXrw4HSenac5qX2dtcCBHrgKZXlnBjF6q8zAV3HiPdxPwW
         mXmPKNC9WyUHMvwUqPTSbop/BCh+vYNaGqpeoFJnLh8yEck5DvL5yjXWhEdiSU69tb4d
         27XBzdxvLJrvz/ZA178bUse3Xc+XdCAQMzpdsB2QGnR6A5FXgaZS5ApgJqJoZIO5973i
         bkljIO9tMQvBGTrm7Drv6LHkSXI8kYIry8VXzE57iTVLFJfhaWG2IlekgzkKFu21kJNA
         qtcsyoNLAA5U7iTmuSeIJ8pSL2AbDn7Oujy6PC1JOhQOCSwEUVYV1HNEdL98aV35pJ4T
         6YOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716667439; x=1717272239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G3/avKGFNBrd+/abFgXWl2ZL/PQRH4HTWTJ4CHLYxFg=;
        b=MSc5WbURem79VEf0m5bSdSreS8OaYi4rBdLo0LXWn4NJRsUf1lRxtal9sLkneLsSmT
         odOVvigDWfcvobaaTwJnZ/h2I+M+1nXFobWyOQrjmIddm9GXXoYd5/tigSbE7tXdOwoX
         Halq3k7SBeVjNu0WN6mxvgUQcprv/BPT3+4pv1KvC/ykhRhrEaOMq0NIeRxDtTuxa6V3
         7Rk6WjqlD4PGzwUQPTdbljskw5uZs/U9sWrIRRKvYy7PTe0ixo6DUUTqnNZ098pabOzP
         M32gbPtsZ1HwnzOaFExooyKHWb4zmLQf1ZyGVgafPKtiK4zwW7nNZRAItvmQQr9KjxIN
         3Ttg==
X-Forwarded-Encrypted: i=1; AJvYcCUsdVWwht25TSQ4Rz3dns4l/91ElWxDT5g0RimsFa1eNrXwfle4n7Pc6Z9sfZGo5xClvKR/KqML9Lzou1wwthdRhMvPDpIT0D36jw==
X-Gm-Message-State: AOJu0YxSEs0XOGB3OnTOu6cR/d+x4HfA2UE5s4VgSrnrFk+mhD3hztMm
	uaEQigOHgh24p5boWMZQc67rxGbGBmr1mTXd5tUm1S0+Rs/339BtVhVSvjOb+U+pt6npFZGohCb
	Tdx+e0fdJ0BToIRClf96nEZziOWsnat6puehEnw==
X-Google-Smtp-Source: AGHT+IH6aycjLexVZ8p98AVCReKJom4mXgKLjUmGuUVk1KxhzKsOHttvJD1H7gKjGJogTx4Z4N9GyH4J2geeT49eNQ8=
X-Received: by 2002:a25:e310:0:b0:de5:4b1f:7e00 with SMTP id
 3f1490d57ef6-df77215f566mr5467796276.15.1716667439433; Sat, 25 May 2024
 13:03:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240525-mdss-reset-v1-1-c0489e8be0d0@gmail.com>
In-Reply-To: <20240525-mdss-reset-v1-1-c0489e8be0d0@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 25 May 2024 23:03:48 +0300
Message-ID: <CAA8EJpoGcXNv_tEJhNpb0n-E70ARxGRd4PHENZkTtqEKizVpCQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: add reset for display subsystem
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <trabarni@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 25 May 2024 at 17:09, Barnab=C3=A1s Cz=C3=A9m=C3=A1n <trabarni@gmai=
l.com> wrote:
>
> Add reset for display subsystem, make sure it gets
> properly reset.
>
> Signed-off-by: Barnab=C3=A1s Cz=C3=A9m=C3=A1n <trabarni@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

[No need to apply any fixes tags, it is not a bug that was present
before and is being fixed, it is an additional functionality]


--=20
With best wishes
Dmitry

