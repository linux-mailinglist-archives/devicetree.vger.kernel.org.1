Return-Path: <devicetree+bounces-71402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437E8D6A2B
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 21:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D392A28A64C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 19:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833F017B51D;
	Fri, 31 May 2024 19:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nUJoSd55"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83AC380
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 19:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717185032; cv=none; b=MQVDjA9ezlaMlHmq8hRZK4iIq9VEJTbcL/E2RTMV1gRhOjgokeD9vSVyU/4cv3vbEYTgF2F145SUmBuAYKaQaXNrVYiQCZHp0EeoufqXofmUmXkN7ZFVxhhFzbFiAGmKrkDSdyrOuAPWKsXJri9ycslxNREJnk9icN7FSc/EjbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717185032; c=relaxed/simple;
	bh=f1akKPVORkIyg550KoLiKCAWrsfKqsVFxRZIPvcbZPk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShepVsrz6JXYI4315oFtvu0mDbs3ZrLowb4h7xbyu7ISxhmS+oQMf1Yg+h/aB6oc0A/MCu7pzdRf2QWwAdKGj+3sHT30KmM2fcIVDs2N1DfFyScQcPFrkHM+jKSKv58m7KPTT0xYmXlLUuQR6GwOjxH7PO+Tb7GEAu5Hw+Yc6pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nUJoSd55; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52aea6067c8so2962014e87.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 12:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717185029; x=1717789829; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZU2ryqJo2RbqRp0VMOW55np9IwacuNJWvzcVOo4CArU=;
        b=nUJoSd55JPTRyfeQ8dBevZkwESFBStpRt6xex/T+Sl1NTf1vWzMY8UxL4FSD1kPkSa
         Tu+5nnLS7Sh2sMfywQHLxB2IyEwLv7Men8VZTrbpBUeZQbkWcG5kGllkwGXYH35mzFyf
         sylGXcIZ7ArzRvV5AqxSOOt1ZaSdQWMnbOw/kZ2Ut5o+7LcuTq4qq0eQBEV18g9JqBsc
         Ol2bEmQHNe1wqOFf+mllnovV+m/uqpLefprlaBZRI9YYdgdkEOR+VEhwsvIYQBkBeZuB
         eSqyPkFinCZCxqC7FbQBXsyYK0dEGVrnDyPM7bIiPXkAK7yOZAsTzax/CLUXXVzaJzay
         DHtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717185029; x=1717789829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZU2ryqJo2RbqRp0VMOW55np9IwacuNJWvzcVOo4CArU=;
        b=mj0Hn8wM+cpO6dThIkpdfunhvfavmqL+kelS9e6DG7A6OWWbhFfZs3D+eRoB4xkCxV
         2PGUVjOH9FGAucOgAS/3QTvXHKOoitxDrFM4qJT1qdYUBN0DjLOAGIJdqlGxKYe8szKF
         xW3RyQtGBrBpV8mqxIxPOgtDBzeD4isJL2uGjQNZ4pr54yyB9DbyBxkxlOxjtBXYFXDC
         5shVuFV0Y98+LmrPZE2cBEe7bRdc186xnQEtSQJSIdMY+XRV9S0/DLe4NGnu+GeQO95x
         rlsvMRT5lzG07C+77D5MVyjpTK+YbRyCRa5buhulz+nv+ExyZMu3VQto1sA0o0NWl3cm
         iqow==
X-Forwarded-Encrypted: i=1; AJvYcCXMJSi6KQA9kTxpI1ket1dcPgw07oLXFj36y0nwRMeQrKJckNbqRqK74TDt6bVSFIfeRTMa5pxkW1NySHS1+vKp37bGCT6JBOVD9w==
X-Gm-Message-State: AOJu0Yw+XxHWwo6lhZa1kyYg2Gk86hRscr6oWvsJGD8a63LspMV5+nT2
	ohsDtqBiFNvXRgBhtXnlC5lHu4Htm8CYqlyWjOGyRcBIyZwDAsjov7cbCVoj/S4=
X-Google-Smtp-Source: AGHT+IFFrDCc8S7OXqYwwrRK/3LCw6k22ohK8j3g2b44ginDvhYF+tDr/CvgM1Z8qwHTb7dniJuQ7g==
X-Received: by 2002:ac2:5101:0:b0:52b:797d:efd4 with SMTP id 2adb3069b0e04-52b8959c55fmr1680065e87.16.1717185028871;
        Fri, 31 May 2024 12:50:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8beaf911sm206658e87.20.2024.05.31.12.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 12:50:28 -0700 (PDT)
Date: Fri, 31 May 2024 22:50:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <ubyvrmv3giartl6pnen5dbis2yz6y7r6zvihorsqzsfof7q7la@e6xc52ss5qyr>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>

On Fri, May 31, 2024 at 07:06:45PM +0300, Abel Vesa wrote:
> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> 2-lane mode. Add the configuration and compatible for the 4-lane mode.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

