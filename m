Return-Path: <devicetree+bounces-78143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EC791137C
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 22:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5BCC11F23BE2
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 20:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E33C5BAFC;
	Thu, 20 Jun 2024 20:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ar5S0DyH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDAD57CB8
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 20:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718916098; cv=none; b=q6VW9/ovKO0tgNhe9+EOYWAdlYpwDB1MOO7MmFAXN+vr+PpJ4rIn1CUNCmDJ+b1P/c4KdtbmZirkwxmvqrh0aYTBb7O1RAGG54JVFwkZko1ZA8R77OJ9aDsfYLN36EbpRbe7ilu4VtXqbSAG1m5NGFRpF7OXSZM/AMh7PHvIyOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718916098; c=relaxed/simple;
	bh=2lIMOBJxjBjlymtZO165R4grfQZNjtqE3aYINUR4ZJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4/61HDPq7IHzIFLzt2oFQOjStU3PTlPJAhf6YAf/oBwL+bSMqjwrgAhZ5FqVjHvQgy3EJBmyd1aaYKg/hRlCOEmQawnSQgSv9Yln1KxTQk0SVwrdFcJE2s/J8seNJL7aJJLeGAfc64JUntCSTWEuKUKgQQMtRf45DkTe6DzPxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ar5S0DyH; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cc9b887f1so1611933e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 13:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718916093; x=1719520893; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+D9bWZAmbvvtL0R9+aH2lAWS38iCecRNx21UjIGuCjo=;
        b=ar5S0DyHSEKbSWzFDONUquQSG3mhMvxK6VM6dMl5D8inOX4qrzCRIEccHuJacbI2Yq
         MH9aDE0/KjtBH6dKEq+SgdB1FgELbqmCbajGU3p6n+IJq1AyjB1G/6ELw+fcJ9p9Pwoe
         pYWKU2Y1pmcUggUTtLWW4PQ42uyaxeq0hiNinGKBgQt7+N+lcNXyLuA8yQaBhU8qTyKo
         8xrQTVRTl2L10E/RS+1OyqIh6VHUBKZvtwznm3Y5d++/SI7o9uY4hIyvlqqpm3IE1Cpn
         eodOfYqdikzLg175JiE6lZK4cyai5Z2S5o/nGWKGMrV0XDD2r5Sr4PWm5+ucx5FOlgv1
         us/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718916093; x=1719520893;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+D9bWZAmbvvtL0R9+aH2lAWS38iCecRNx21UjIGuCjo=;
        b=hCck5dUwTd0AZ7TYG4WNcJde5tZcW8fxUUrKQ2oCVumBNvroRWn1o0MqKSxqFdsi6B
         x7phCj0YDk76fcFdaoZI5ohqHld9RwqtBhwmSMcIKjZrcH8JUBRu9DyPXZho/mfZbpYI
         qppIvjeU2BaK47RJ31aK/L/aCsnSz21IWg+2elNNJIJYLgoZ6omsUYgsAjnzo6tKvhbO
         ktq0BWPVO6CWkkaJZ/zVMsyWpE1/tRRnz2E2t3K+C24rZrDNSqMWPycEXVX58jwg1a8X
         RyoooeVChgxQzYaMx1wkXyzA/5ERyrj70wxhaZnod1BaANkBtz241ICK5srF5vNeS8Oq
         Tk4w==
X-Forwarded-Encrypted: i=1; AJvYcCX3x+sYStUAIjxskrjU/nB2YBm8pMhF/+58WwiYtxvVgdrS4FpQjQgtLU6HUrbWP+MoZLqr4QSZfmhQ1WOb4uQ/8mWSj70ykEAGag==
X-Gm-Message-State: AOJu0YyWpJuuaMWtXn49tPIY5tj2OhjqobQv7zgHSlg5Mr3KLbcZZYgr
	Rx3q0j+avPSVQZ0L2mV5YAKYH6NF2JRRVN3plSq6+lWgiRwVOImZqiFZtqMQ/W0=
X-Google-Smtp-Source: AGHT+IHaRDFmm5LZS1LZkl428UXOCdgdnrRr/tiZbdfQNN6V380iko6RqPbH6gqRZXosJvgaPteSdQ==
X-Received: by 2002:a19:5f52:0:b0:52c:8fc8:4411 with SMTP id 2adb3069b0e04-52ccaaa2577mr3309475e87.63.1718916093457;
        Thu, 20 Jun 2024 13:41:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28720acsm2168948e87.146.2024.06.20.13.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 13:41:33 -0700 (PDT)
Date: Thu, 20 Jun 2024 23:41:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: qcom: msm8916: Use mboxes in smsm node
Message-ID: <dgx4s5fxmcsktzysyc7hnswro7ywvjkslmxb4ei3zdsuk5zpue@wvp2i5wo53h7>
References: <20240619-smsm-mbox-dts-v1-0-268ab7eef779@lucaweiss.eu>
 <20240619-smsm-mbox-dts-v1-2-268ab7eef779@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240619-smsm-mbox-dts-v1-2-268ab7eef779@lucaweiss.eu>

On Wed, Jun 19, 2024 at 06:42:28PM GMT, Luca Weiss wrote:
> With the smsm bindings and driver finally supporting mboxes, switch to
> that and stop using apcs as syscon.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

