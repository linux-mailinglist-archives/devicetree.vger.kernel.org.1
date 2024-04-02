Return-Path: <devicetree+bounces-55351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8644894E70
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 11:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E5E41F23CC3
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 09:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0780756B8E;
	Tue,  2 Apr 2024 09:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n/Q5z29g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6268056B89
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 09:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712049391; cv=none; b=DhC1mIdNJEASgl/GvZYyofZ/ZojBljH/MIxr6r5k9rnYPPOn9Ere8uGwmctkgZgjPU9cbwKFk10RdZ7DNQk0zBwCQkpnVNsjCiaiFHseC7ni2eBJT2tKySuxKkcgxxSS9NzYU4lzqbWuhcyHwLtOLOWJK5+27DMpj1Fp9APzdmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712049391; c=relaxed/simple;
	bh=DDyRnVQamRLCS1cqxXCcAOjLkMQNdJEtWVNZoAZwsLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IVvP4GxD2mBa4AIJ30aGzYiuUKyVd0hHbiqtqdwG6WM08HyFfjC/NHizrNnyb9BrBPDf0A4dtu43wdFTa5ZuhIruIXs0hXNl+u2K86TdIgc9jt3Xf6uJg00vX1NZ+n1olCy5RY3fuBxef+d5m1ED7lUjL9NDVarWv4dv0+UBSQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n/Q5z29g; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dbed179f0faso3827407276.1
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 02:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712049389; x=1712654189; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RW/J19q+6ozr61crHNrzeNGIrOeeWwrel26k4kB36RQ=;
        b=n/Q5z29grrHiTX/+/Vy2sZATEoeuW/iP+nYNuP2lb1OfejyW9tAIlc1FRLGJPJBgg5
         ldAV6KKQoF9db4W9Aqq4+xyVrCNDGP0+5wzSvVnCIabsJUTOsfByj7/uyOAKyyUA18YZ
         CaoOQ1aTRt2OaY4tvXYrB4ldtLARp7bwu6XAudiAAaBDnB9Qt6eFUbEsVTcv+uP8Uvx1
         /6frUPezwO5btJLmLJy3yjwsRQGoQBFq4kLi/zPqXOiPUfjO7s5gaS79UBOuywFOurOF
         WoRjVh4nW7GOaePwKGKAvDUegTTg7I1QW4mocM4HTD05F+W+nlkaPBUslWcDTLPpFECg
         UOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712049389; x=1712654189;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RW/J19q+6ozr61crHNrzeNGIrOeeWwrel26k4kB36RQ=;
        b=AfeVqgA8qEgTk4mMXV99ZXtU+hEil1TAYgURhuYaFIIhGrZ3AWzZTPfaP0OtQ6r+L3
         wIVgSc4bTkb/qZgOEFG3GLzihS0uQYjjRGvr3BRddwjU2409rzKxmmTuGElJKNThxibb
         kCiZJl9jSNKDzoVvt6f3m2yCyI6ZdEYALsmchG8x9ftlSsiUQi1B89ZvC3W6GxlfWAoC
         8ZDVmnihGDR1Grci0gaF7CGbe8KiS4DtOYhF9PyAmIRb+MydllcZ2yz8n9gfpbIu6rmi
         BkHPzAEhp9O638+HDE30LdQyB75Iw5djVEOlbYvog52gIowd6mHUumXLHiNSGb6ef6oC
         1fgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzn2gvi1NCQ9fVhs4rsrM8dTiQqFrFlvjYTWtjA+YuJZq6TtdiF7RcdvMLe1fND8e200TvrgkfBO0n1LughvIe0NlnJg8e25YCDA==
X-Gm-Message-State: AOJu0YzZSG51oltJ5MKDMzcWg9dhdPJjCntna/OWgj00j6I8AEPCbomz
	OFIEvrqlHHnxORrXbnkriLkMIt+VxhckeDa+vEqBu2CQUHL314Bn0BmFMHMkGIFLHTgvaQJ0nkC
	JsMUFCP5/2OdE+cJ3lzz2IJeLjCbB7Xmh9URSpw==
X-Google-Smtp-Source: AGHT+IHitKHl0fp/VoZIqlnhJ/6GKmAuCC/3Z9L5xNfnbpdu2K3wh+2/nvTH+t0RG3v6M8mSP+y913kZutQQyrQm8aw=
X-Received: by 2002:a25:bf82:0:b0:dc6:d1a9:d858 with SMTP id
 l2-20020a25bf82000000b00dc6d1a9d858mr7727682ybk.8.1712049389443; Tue, 02 Apr
 2024 02:16:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402090349.30172-1-quic_kbajaj@quicinc.com> <20240402090349.30172-2-quic_kbajaj@quicinc.com>
In-Reply-To: <20240402090349.30172-2-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 12:16:18 +0300
Message-ID: <CAA8EJprnuh6Ep5-CmcfrbSQH3SzS8Jb-CtDiJg-J1HHuxrLYZA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcm6490-idp: Enable various remoteprocs
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_tsoni@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 12:04, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Enable the ADSP, CDSP, MPSS and WPSS that are found on the SoC.
>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

