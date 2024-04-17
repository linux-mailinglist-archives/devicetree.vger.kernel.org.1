Return-Path: <devicetree+bounces-60279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 306798A8AFB
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 20:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1BA91F243DA
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 18:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68FF4173347;
	Wed, 17 Apr 2024 18:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bcKr//mH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495DF171062
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 18:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713378264; cv=none; b=AAd5fcswhriQXcaEL4vX+AOkeIZngc8cXJ6V4bCqrbmGUvQBaT4hUfh7h4Kf0G3iN9UxSbxIAToW93kgK97/A7pFbiXy/lvkKV4/nZ7zPDiaLrHkrapqGl/v21x6qp59l6fQb6BR6XDT/gmFjQ6nZ6dckJdXmU/DWoBOlJQ3joY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713378264; c=relaxed/simple;
	bh=Bom2TXNGEYr5lUGFhY21H+Ny60Z75gcM070ni5zqxso=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KntOpbELZXIuyUEAvg5REzbsajJkvGDLT6g9fewIhdghEdTq94C4q9y7Zm4Zx2L0Jo1wl41rA6xwivz2DHHjmame1Nw9dWAegIH7Y7cna/nuHrmic+a2+c+SH5kZygKuIWwYjj9fEcTVVT064t97jy+uW05gm39yGxX9gP8HlUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bcKr//mH; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dd045349d42so41624276.2
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 11:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713378261; x=1713983061; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wbBYw3GS4uodkC9UhlGoaV3hresTIfXPy+XD31Cgwho=;
        b=bcKr//mHmqgYQTHJWVhRoDG8GG+EBllXkrn3SiOJ/vsenIVE8uhK6I9lAnK4LyEM/C
         zVC6zhkCEv4A6rKlMc1/WQmu25oxoMWYF8wf3OHnmyDajRaMfRtXqQp2OGXtmJPsbdUq
         8zRAderDSAubR9wkYmb4keNdEypDzpr6J4/j1kTGdvaGvGr4O9D2M7OAbA2bt9nvkV5Q
         UvygrHaxxm+gEK96OA8l+909EOqiffjouPNwwbyAJNC+htDm5aInNT0vt+vYapM0nh6y
         3A1wSKZvQWFoBkouwrivnstH7LiP7SOy3e6NtORxHap9/+jwc4Z/lc1CGBQzw367exes
         0lxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713378261; x=1713983061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wbBYw3GS4uodkC9UhlGoaV3hresTIfXPy+XD31Cgwho=;
        b=CJprT5Tu84dFcKI4KX1BwYMsnawyL7O5vIql2rIq9tBTLyWECY0aiH7cc6TlrAIDqo
         oMWANBRqZje0LcG6jxpZOjmNZ1K3M7a/vGGTJSbJHMVf5Wp7Ty0LTGK4MKEbz0bY0ojI
         IMLfGdH4pctJ70KulG8JAw0oI4mcgPir9st0oo7YSilJmG1IBkw/5maLmBj6Hy+naUfM
         J5XaCEufOjQBtjV2toRrqP2VI5ZDYZEeb2Q6FzsTdCr4VGWDrUOLpzjGmXAuAFu4rH1o
         LGCb68QZT+odBT+nJQdtSl1pD6uokUqTdPd3H06eW/eWByNkyJo6qPnPXJa+ekRbImoA
         4zrw==
X-Forwarded-Encrypted: i=1; AJvYcCWLGXmPuery11ca4k8zMz31n2rBjDsUKHPll5iXixDWS6oeqjPD/OFSQkr7qYcjNdIrMmvh2B8GwzGbJprHI+fvO2jL/x6oZFBnnQ==
X-Gm-Message-State: AOJu0YyzPzYU4AOxpJjXEiZTN6GUdUd1SmLGjinXoPF7+GdfCzy7Q/Rz
	beCTzm8QO7g7D3tfG6/CrEV229jvqFmz9o75KLnXN+GGYqoMXMP0V3KdOjqVFCeVBBpmucUHOPS
	eOJh6jmsf6jiLaLzNBg/2YqjHOBcucVzmjlmoqw==
X-Google-Smtp-Source: AGHT+IHHNONy71cySjy3MSKDmtVHvXqanJu+prl/oRyemyL9jS19vxHG/wWUHIq+2kERXydhw5hdws2TBl8ifZE6CeI=
X-Received: by 2002:a25:780f:0:b0:dc7:32ea:c89f with SMTP id
 t15-20020a25780f000000b00dc732eac89fmr144726ybc.15.1713378261334; Wed, 17 Apr
 2024 11:24:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240417120928.32344-1-quic_kbajaj@quicinc.com> <20240417120928.32344-3-quic_kbajaj@quicinc.com>
In-Reply-To: <20240417120928.32344-3-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 21:24:10 +0300
Message-ID: <CAA8EJpqhHDSz0iSzg5zze=caGo=-Tw1Ycy6c5ThSc+8+GHMu8A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable various remoteprocs
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <quic_bjorande@quicinc.com>, quic_tsoni@quicinc.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Apr 2024 at 15:11, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Enable the ADSP, CDSP and WPSS that are found on qcs6490-rb3gen2.
>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

