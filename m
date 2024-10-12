Return-Path: <devicetree+bounces-110575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B212499B196
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 09:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 587951F23382
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 07:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F4613D893;
	Sat, 12 Oct 2024 07:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QapHBhsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28CB13AA41
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728718461; cv=none; b=ZGT1Fjx6AAVbt6Rw2XPjY62m2I9FpID2GbScJkx1ndq+1YShcc3jRWvcfSEtP98q0yliH5qrkwatqxuIY90OYFgquNpgx/cRQHBT+lZVtc9Tj/3oXqrV7kxzwjLapzZd7pG7OG91DWfij9eQSfUPvuefI2+QLXWOKB99I53S9ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728718461; c=relaxed/simple;
	bh=6sriM8ddV0xlSeGd/m417jYDh9+a3WpfG4nkK1Z8JgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uG4htqP/M9sCJzTM+UYrB+rIkWE+h3SS27c2YRYdhattwRbmiBG9yF5xF9EcHsIHzhUrnFGp4D3Ng5KKckqcdr3w9kSdr1plDhJs7QrOb/hewkj5INHqY+ixoeesuXRaTP+HkqqMHL53ub7IBv0hH4R6wJHtDEwUBE6qHRgpQCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QapHBhsQ; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5398e4ae9efso3534525e87.1
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 00:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728718457; x=1729323257; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fhVJE2nKaPLrTxSXxo0fB/smrix5pHzfd/rNW6TY5pY=;
        b=QapHBhsQ7BdKaJ0RE1nImZcaQB+8Iu9ac93Dl+K2SDeCwGB1HGd13Jhfbu7WcQhTBS
         HZvg51Nv9bS8kXe+jRz81wpd72yoj5wsNCCFE72ayqpbkMNd7Aur/roArHrdUkL+QYAm
         R471oZZi7rkaZ+pe/ssgpsn8TjTqW3gEZaSyqFoHdlM8hAM9m9imxV1hnyI7hIc1d4e/
         zcCPGedhBNDOhMD1ujaoieHYU3D8WinZ70wIT+rPFoHaT1g+kvYpHC/SLLbna4idReYh
         0W1W5bVWLxW5S10pqZr7wzuXSa3jED2QP9w+VxQmcM98GGCeXJxvR4E00vksxYQFhsdp
         Ag2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728718457; x=1729323257;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhVJE2nKaPLrTxSXxo0fB/smrix5pHzfd/rNW6TY5pY=;
        b=CHEQ1WsNE19UJwsICG+aCzscN6yv3bLTfjtCD8YWOoDDwj+v9k4WsQ/FEPBKXZriMH
         DrlZ6H6dt1QAvwqcPfkgnEBAr7abcPXzx7wNxwUQ6EIslTa54PbLDWJUv9obBx6+QCWM
         p5uxc9/QVAJmixBSaKF5C9vs0FMvr2Xea9sVl9A38mEfbwetvpzztpqpMOwBP0woo8lj
         RZIdo9VlRN3UcYBhGMaFkidsZOocDgQlT6dhO2xPIV6yTlsm6ajZN/oajf/iTji8JjDm
         8pN/16yPQU8uYDsX/THVJTyoRPYPy8aYakV92/frRtnLYR1VFIYSFyrfZbtAxcni4Q6M
         dIFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlSr7DfSXBKA3/+aUiQ50vWUq6cvuqSBUP26flKqz6PjUWXuYivm3WlkUSOX1tnFPjl4LDe3wuB6Ju@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhl5/uTcPpbwMlE3EFzdYVQQ7gNpK4STMG10alRQJkixSEsx6b
	/e3APo3cOjJ1BLalC9KIzOuMM5O6dhsYm5B6vC4oYROAn1xYfRz6poJTZxbdgnE=
X-Google-Smtp-Source: AGHT+IH5l03WLyhJsAWdlXxU5xngKHzOe3+d8yWUeEvry+VLeVCaBEL7Mc17G2/Gd5bX2cQ/7hL20w==
X-Received: by 2002:a05:6512:ea9:b0:539:9225:43a6 with SMTP id 2adb3069b0e04-539da4f865amr2556480e87.35.1728718456937;
        Sat, 12 Oct 2024 00:34:16 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c8c0fsm840420e87.112.2024.10.12.00.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:34:16 -0700 (PDT)
Date: Sat, 12 Oct 2024 10:34:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e78100-t14s: enable otg on
 usb-c ports
Message-ID: <ozpi5m4fagpc6o3t34ngsmwtdrie2m5cjgtem6ocisz525udta@ya5dtg3q7hy3>
References: <20241011231624.30628-1-jonathan@marek.ca>
 <20241011231624.30628-3-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011231624.30628-3-jonathan@marek.ca>

On Fri, Oct 11, 2024 at 07:16:23PM -0400, Jonathan Marek wrote:
> The 2 USB-C ports on x1e78100-t14s are OTG-capable, remove the dr_mode
> override to enable OTG.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>  .../arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 8 --------
>  1 file changed, 8 deletions(-)
> 

Same comment,

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

