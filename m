Return-Path: <devicetree+bounces-97697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 905D096313A
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 21:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F35F282A27
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 19:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481C11ABEDA;
	Wed, 28 Aug 2024 19:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mCusYVUw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D8A1A7042
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 19:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724874565; cv=none; b=QeJlNySMXFsWpysdjlXjH6WxLhY26HcLRxDbcml4FkSubNAP/BRFqB4r341ShvU1NdCKzaU8vawdMETFc6/WvrtNqXbU5PWc5/EtOgYT/+nqvgKTL6mdnJhD06g9Sl71NjXszvMByXZyBt7Gs2OfjPisbuibhKUNdySjY+VGYzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724874565; c=relaxed/simple;
	bh=iCpcqPThAPmZLodK+uZfdz3ZGn7+GEtpWdlwHYhSoSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vn0Fnx/fbwUgZKWYD+jknX1K5J7wH+3q8GrdZbJTMSAxrJsuYah8ch7RWl+iBZkV/9v+xSwGMpzP07//RUMo8e4sj/OT3hQfSf1KubUhEIPzSvrE03IZ8/2yLJ93CmRWzC9M6ElZ0H8HQ+6Mxc30nmXMa6RcsLWLwd5PJMl44z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mCusYVUw; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5344ab30508so1018773e87.0
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 12:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724874561; x=1725479361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WfREJfZgElEweHVwJvSVEk/D+r54zJQcIccfYEdIZSM=;
        b=mCusYVUwhkOoWoZ7j3rRMP0aB6XymUwG3Nm3ngxRb5Kf+WyEQ7vQT2kxWYj7ejOKGQ
         mXisgKT1Q3Q/tVY6bq7qla00l86iqNZPDbsYpv4eGkRtxDabeALMxyuvSAt/cg9O4gXm
         CGBG/JWAT9d1Jx27KwioaHCgqdQXBjTsTGsurBwSiqAjGHd4wVJjn/+1UTe4ObDjfnaR
         xmWHe0l1QYpDt0uUlk5c6Ak65AN4297l4FMZxgBYkYVGKgXHcsG/aEb+7JRs5xoxI+pw
         Zaa8/9NsRdzr+Xvym1ITN/eLqnvac3QHRysQmZQ2hDmflO9onPZ3OJyEfcV6zHF1vczm
         Qmrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724874561; x=1725479361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfREJfZgElEweHVwJvSVEk/D+r54zJQcIccfYEdIZSM=;
        b=BuCZAeHIGsypzbq8cK32CNuxq+/u/0aFMPjCgsHUEvEmeVpashg6j7Injj5d4wzGPi
         foFHsbHL/HmSF4X4/be72FwA6xY2+op6lwna5HEFErZh5qCPYh0faxcwi8GAyXr52eEq
         E1hbZ3/hGxniupNPrlPg9ZVONbnkp1Npy2NqA1lVa9rD0UahOofiubIbb8kzU8pjGTML
         Xo6P0s4cUkpdEpS7zHWcYHaJL3UqKvkl2Q+JJ1lLsxQQIU+QxIVRSUSRtPcpth6S0k2n
         hTDtj8dN4Z3LAEllHwYj5Y1iUkbs/36VWLjs9A5/FZK9IJrtPv9pLQtKN0nsFgKkBJfs
         dMHw==
X-Forwarded-Encrypted: i=1; AJvYcCWPyHC34A+cMpuOPWRJsN0FyMGBlwht3L56NNjudvIZ5kdDhi3VZHQi3rQnmvMSkh+xUVVoKtErFAz5@vger.kernel.org
X-Gm-Message-State: AOJu0YwQBscCntC8F2GhbH/NzfbzX6I7W9KcVcYbNc0kiiANP4ImPnLB
	PSiTNgNCCXqGpydoCkp+ZrWcyq5IjjdcXEPU2oV7JalX0IH1RaxN18x0/GZYpc8=
X-Google-Smtp-Source: AGHT+IFR6avFKpr2wHph931hDBC2z+rTIPVUVlBNS/Uou013Y8gMhOrlNprLkZ/3P1WLSkHYPJBA7Q==
X-Received: by 2002:a05:6512:3b97:b0:52f:228:cf91 with SMTP id 2adb3069b0e04-5353eba3ee1mr78077e87.1.1724874560042;
        Wed, 28 Aug 2024 12:49:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea99933sm2248052e87.309.2024.08.28.12.49.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 12:49:19 -0700 (PDT)
Date: Wed, 28 Aug 2024 22:49:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Tengfei Fan <quic_tengfan@quicinc.com>, 
	Ling Xu <quic_lxu5@quicinc.com>
Subject: Re: [PATCH v4 4/6] misc: fastrpc: Add support for cdsp1 remoteproc
Message-ID: <vuviyau3vbmf4l4mfb47lyh2n2t65fy3j2lxrg5jtyuz34kil2@q5ytlfdcmf7x>
References: <20240805-topic-sa8775p-iot-remoteproc-v4-0-86affdc72c04@linaro.org>
 <20240805-topic-sa8775p-iot-remoteproc-v4-4-86affdc72c04@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240805-topic-sa8775p-iot-remoteproc-v4-4-86affdc72c04@linaro.org>

On Mon, Aug 05, 2024 at 07:08:05PM GMT, Bartosz Golaszewski wrote:
> From: Ling Xu <quic_lxu5@quicinc.com>
> 
> The fastrpc supports 4 remoteproc. There are some products which
> support cdsp1 remoteproc. Add changes to support cdsp1 remoteproc.

I'd very much prefer to see this abstracted somehow, but it seems
impossible with the current driver code.

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> [Bartosz: ported to mainline]
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/misc/fastrpc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

