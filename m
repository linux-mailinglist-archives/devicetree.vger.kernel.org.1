Return-Path: <devicetree+bounces-52765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DC7887F2A
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 22:26:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB4B91F21517
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 21:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56FF1C68C;
	Sun, 24 Mar 2024 21:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H3wO1wvc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A2D266
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 21:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711315579; cv=none; b=s5yGr8sqKKvPSBhhwg8YPvzdgEfFDaO0TnV5m3TI6hXZIIRxaMTgC1z2nkvgL3YWEGuTP9xCCQLFLY+GW7iJFsA74pC6He95iCQDrAoh0N7SqIP+pPFd7ztwFbEq4dCVplMBPV82qyY1Mi3nppsxA0staMlzhtd1NpPDFuVAJhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711315579; c=relaxed/simple;
	bh=KKl6wWS260X61pqvbsfcKnOIji56BqFVJYwHX5ROGcY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UM5oC4NfLYsaNOSi0GxOdE6xOSt6vcjcv0MvM7dpxxUEcDebo7umNZF/Gro05lsPwVSDPdG6gIdBAxOX92DhjZKrl8WUbzAsUsemDyFt+0oDa8ufwJoY1zXOulawKkegyjJGUCadZkjM+fvgyRK5fseQnWCXuAEGljChiEEcNTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H3wO1wvc; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dbed179f0faso3197728276.1
        for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 14:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711315577; x=1711920377; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8UBUPxS321/AJf/zeuMrnHeAqSxFl6swaOw2l9wbH8s=;
        b=H3wO1wvcz1O3AS8Bi5sr1Yp1RCF5KI7ntF7/eyMiEuPXDPVgJWXGWbTrsXrxewnoPq
         IpHd/KrwPcswTODF143HGyVCxB841jX09yrMugS27TcpWYS2OVj/ZaFVVUv7OyM1xA+n
         F6REpmleVSbiZ/K+WHpNS/U+f4YHN+2RZeavFCKuUV0HDeY7ZzbOoB3UoNf14gjSwpzu
         xeswF6yliMAQXaSA4Fmo2qz39c4hdZ2zremsBofAoVQHaoyU3rleJkBfjGEPs2SrFf7U
         LgjwMuBc93Kp3r+ldY/sZD4hibIEjxPMAVW/TtHGhBfD4k0J3gjQi9sjFDMQ/V4xBhWy
         DoHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711315577; x=1711920377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UBUPxS321/AJf/zeuMrnHeAqSxFl6swaOw2l9wbH8s=;
        b=t210y1sJHEojOG3vh4yblxCrW9GvMQtFBm4aYKZoAyghQrUrCcu9FbJdlM3ziJrsrI
         Np9UnvR7hsmf56blbUArb9csKt2sJftNwsE7DwX8lr1QS7qKTVPl0HvvrbLL3EWxj5qm
         d9D0ZhP4AJgJFMerjxE/BvysH9qjeyEyjXoCEczlQgUliDpXgf8iFosJqtO95EIcO1AV
         uOrE+swT+ynNWIgs/fe6grTb89+lw30uss3YRnFU9Ng7QMBuOe0nf9nVndaSej18jz+M
         Gi+XNbT61oAzTmOy4bKyNvCL/TQMM35cfjiS0QjWMb881ihF4PZj90qUCSRn0Zdo199+
         r7GA==
X-Forwarded-Encrypted: i=1; AJvYcCVsvepupHFdhcEh0N12iQhDtGRr7xBW0y6cPKhKFbRiRw/O4htxSVDetSmQnnjzfe2VJKBnpSK/lXy7c8l5xLhhF0BkkqTfg/UsjA==
X-Gm-Message-State: AOJu0Yyb6azdbMvVzW3Y+kKwHEnVYOGCMWMmgtwrhyS4Xn9zvQwBtJNe
	IqkYLpXvj+7mdDO2o3UGAirEY5uoj7QnWv2K7JJxU34TwKad6vNmdhKDHyHWmHYbBXx95qkILAY
	bCax2wUM+1BBWcq3BD6UGZwdgUsjuRAzYhO3/KQ==
X-Google-Smtp-Source: AGHT+IG/BGMQhZLtiVAhPS3yZQIGBjfnOqHRCzrw1QQAMhgO2W6ZqAaMDp//3sX/c/QhGU7sxClNAVK8ToaSEIU60Zg=
X-Received: by 2002:a25:d804:0:b0:dcf:a42b:7e2b with SMTP id
 p4-20020a25d804000000b00dcfa42b7e2bmr2460474ybg.3.1711315577391; Sun, 24 Mar
 2024 14:26:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
 <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Mar 2024 23:26:06 +0200
Message-ID: <CAA8EJprPgZJ7hZooJEs1ysn2Py=M_rJguuVdXFuBK757q86ZAQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v5 1/2] phy: Add Embedded DisplayPort and
 DisplayPort submodes
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 24 Mar 2024 at 20:50, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In some cases, a DP PHY needs to be configured to work in eDP mode.
> So add submodes for both DP and eDP so they can be used by the
> controllers for specifying the mode the PHY should be configured in.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  include/linux/phy/phy-dp.h | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Vinod, we'd need an immutable branch or a tag for this patch, so that
we can merge DP changes during this cycle

-- 
With best wishes
Dmitry

