Return-Path: <devicetree+bounces-44090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8F085CB0D
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F11C31F22519
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CA6154429;
	Tue, 20 Feb 2024 22:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tB7ZgtGI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CCD154424
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708469139; cv=none; b=UsaBPMl7Ua0QfprLXfn5W89Udolar9Kc2985ENFbrqQqUHg1ps2kjfkSG4CnyfgPWaxyHIxBYsn04ObyHML8IJUaiyYjMjD+UGvI1CCv3KMWjo3anSE2ohQ6wD0qxKRBf1g+pEeSvLYCSHADGns0nbW8SL94ToLR6lMehCelW9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708469139; c=relaxed/simple;
	bh=q9RdCg06m93tYC/ZEX+DeihLwlkQ7buG8kY7YIdjplc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gUZM7cmW0j12N+dxJ8qzpbjOaJ520DZkwrHekq7GynJrnVS+QqJHLAnpJNs/zMfnYmYmVgnZcziVIS7yKDSXCxuHwLABzFXXPgfqhX0qOUuIKa2CX1wSGVuD1jCAQwRGUAL+i+HIw83y5Ly3prHO8NFkR4xHneuKNA+IGukM4b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tB7ZgtGI; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-60879e3e3ccso3740997b3.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708469137; x=1709073937; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wyzl5JN8+bRH8SoabXDVr5mKJJXqZjqJuY8CXRYywik=;
        b=tB7ZgtGIB5LC5+2joPFQSl5nZEYZ6UmpqFNgBWyX0nJ3p5yzwGJk5L8+SLBkKZAnGL
         yU8t9rR9mmrfB6+oR8QUx6S0s89h0pDuz/3QSnx2+KuajULXCmNXRwxFNheldIAfgvhA
         UTf0xR+nq2IFamm/f+ynvSW026SvpkBszhjWh7oPsQ/Cy3pByMKEgHrrJZnlu1/1nuLL
         JNi/+HYWVBwur1iaLRdcYIL6PP3S46/QwG8KEc+3pi/2vkd9KYiYh3WPDpDnu/lqBcB0
         GuSkhFSeRhkT6/JM6ICi2R2lF7s4rdG7QqyR7SlvkwjRz9fEd3kwtwanS0+9oBx+edAJ
         OKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708469137; x=1709073937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wyzl5JN8+bRH8SoabXDVr5mKJJXqZjqJuY8CXRYywik=;
        b=SkKmDv+aXdMAFWVBTHoHgmHeWMYh0HVzerDyxCEM1HKLBUVVL4dudNe7VbWXVZxC8H
         tB6ZotKO/Fwq98z08XUM8rw/62jiCzAWRecbQDUoI8RapY7E6Invblq95kqI83bb6ABn
         3CD8dmDeBxMwOmUPgNZeREaoT28JPMhQMTe5N7sMN9JQV3oWyMCZtqD3hduCmtJodH33
         V9PxAAxichskzBBzCdmfhjvydGTztxZ49GIXJs5a5xcEWBmfWD6YdHYPyP6iXdglpGSX
         urtvVXEUdiYEU2DilgnQdLDEkxFwf02qUAMmyKqQuiexI9cw5HCHTQvsvqjGGgUpZ441
         N5+w==
X-Forwarded-Encrypted: i=1; AJvYcCXt6+TpFV+0/KE6zvQk627LKc1ahRejz62bcBHYyii4msBv7uZWbb4BBsrlRD/Hn2ZAMbZ+uWGu7Y4az9dcpTJkEVKfO4CVKGIhQQ==
X-Gm-Message-State: AOJu0YzOsTAdD9d8moaOpc8+7ke1HHVhbC5rQ/huiGtXlVWOZFzuwGcT
	WM/mOROroGBi8ZeMylTEmB2dnZbwuMlxK5ganBTJtFWbCdZ2rYGDEWvBHu9UTyc4cWca1VB7IKt
	eHsyPeWKplS4Oo14L/IAVbpL1aAEk4DGG+Bgklg==
X-Google-Smtp-Source: AGHT+IF+xIZ9uDKsFh6JgHxIqt3FqCkkcvbZBLqMVJBuLYitjFyRfjIa/li7CVOUGl10KAdra82TAbKJ4WHDuqP98HY=
X-Received: by 2002:a81:83ce:0:b0:603:fdc7:2f93 with SMTP id
 t197-20020a8183ce000000b00603fdc72f93mr17295904ywf.33.1708469136945; Tue, 20
 Feb 2024 14:45:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org> <20240221-phy-qualcomm-edp-x1e80100-v4-3-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-3-4e5018877bee@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:45:25 +0200
Message-ID: <CAA8EJpp7LKRG2yr70+1jWAM9YHm+anfmeWmAD4cjxLq9G2qPXA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] phy: qcom: edp: Add v6 specific ops and X1E80100
 platform support
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 21 Feb 2024 at 00:05, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add v6 HW support by implementing the version ops. Add the X1E80100
> compatible and match config as it is v6.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 180 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 180 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

