Return-Path: <devicetree+bounces-71681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E4F8D78E1
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 00:37:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8699B1F212EC
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 22:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FFF878C90;
	Sun,  2 Jun 2024 22:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CE+IGWTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95252374CB
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 22:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717367816; cv=none; b=MPUPV9JRTVgR3KPfvI5V43VE0crc2jlz5AvtEKIDoiRS/sGSmOQx/XCoYmNKxwhSGgEtcFqQcZfTNIcZ/y69k5r3a6KdLMyoOnqs+yuCM1vgK6P33zJn3Xm9qaJm6P/4izhVciku4l9uuFI8kWlvSEq1pKfa6YdgZsD88HW/gk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717367816; c=relaxed/simple;
	bh=5dGF7R9CLj6sRsLJo1BIQdYTRbCyIltr8b1bfvV1nL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NaAuKLM+hBSQPgB7ZKPA3xxNfsJX+uW9tfO0B8Qdd80P8IPf0zj2eFrpLYg4S2Uk6pNAeYCMiFP7saDJzfV7HHl/hqea0G6VYc5htasV5ouuKh7OuTI6FG/xOapfe+QrrerQgKfRWqW+uHQx3L5n8r/BHBfoJXWdu5Q8bwTE/CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CE+IGWTD; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52b8254338dso4284366e87.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 15:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717367812; x=1717972612; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K9SX0TsF2/cPQADBAaomFhPbmi6Lu7sZbQJaAY9VKGY=;
        b=CE+IGWTDsQpFPtxTqi2DhTVYR+dBhhdrg9QxuD5gIQIZy9cGweAD7R5swJWanDOYH9
         gjZwmKJ3UsSDRPxaeBisw8PoFh9P0Mez/G1JVvhmWoOL8s4Ry2Y/oGzJyo2x1hPQ4lvr
         VZwrd8iAZpZxVYFaVl97VF8LQcZ/EF5bUfCMi4DRcsGBNL5YlbuYFj2EZ44w2sDe0l6r
         5xFHPCBVR3XqDOHATXn9fa5yED+kf84mt+K274u7UjdNH0JEQl+tjJXblOkn0WxyrNWd
         sJJKES88x8kMK6CvKRCdj0nwvFYXNAX1Z6JTqyJUCfQ9kQmnm74FfVx4tXIZm9Wbf6JK
         MbLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717367812; x=1717972612;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9SX0TsF2/cPQADBAaomFhPbmi6Lu7sZbQJaAY9VKGY=;
        b=dc668Ly4WWDQiX5FQyZ/tAy2sRe8y+C89+DnhnPsb7dtvAoqhowcQhUrO17Yn35oLG
         nElIUACLwbbqE5pM2hItA0mXxrdxU9utpLPFe1b2K7sdhIcGjyl5qTHqw62lMT2mGDqG
         3sqx+McRjCfjLutwBudfbMYuIEFP1BBnsbUl6g56K6hwnvmZqryV069tV0j4qTdPQXLE
         VDiB7TaCm+Qs2orwOhsIxSpduRYCgmFyHR8IiQLgbF3thhLNdMCWQg5aOOYdP3nDRWP+
         +3c4wgnYBl7iIQkeoDdhXw5GalsZr90Oq4bxJBdnR7jtJZQYTC8XSxsLwB8IWkjYvi+g
         EZnA==
X-Forwarded-Encrypted: i=1; AJvYcCXJgDaQqj1PAKaGjzz2lBdTPkQDTf5X4zFpubqxJobAqygCflNDfzE4Hg6JIG+EhqCVpJfyu4pqhS4TcdC46i3FDYQm80Xfkl1Ukg==
X-Gm-Message-State: AOJu0Yy6ApzgBxHvCcCSQ2oXoiR8IxCvv05Y15f1yuZ6Li5KNmfXS79i
	c9nCwDKkNcOmeWRf8azrqGeWCMM3lgZE13d6HlZ+FvSQqWspS3A5oTvUT3vjzrVR02OjE186z/o
	d
X-Google-Smtp-Source: AGHT+IG531Vlad8qpchsRzAJnfYYzKUVZyytZbyY2UfIItKHXoXiLCKlPLGPxjjYCDJM5rlTX67rPw==
X-Received: by 2002:ac2:518e:0:b0:51d:1d42:3eef with SMTP id 2adb3069b0e04-52b89585dfdmr5492633e87.29.1717367811595;
        Sun, 02 Jun 2024 15:36:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d89279sm1045502e87.244.2024.06.02.15.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 15:36:51 -0700 (PDT)
Date: Mon, 3 Jun 2024 01:36:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Disable the SMB2360 4th
 instance by default
Message-ID: <hlzev7r3j6ok4a2iqgoezxrm272wynueznsefpr2fpj3j4nnyf@jtfbaiw4kfzl>
References: <20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org>

On Sun, Jun 02, 2024 at 05:56:24PM +0300, Abel Vesa wrote:
> The CRD board doesn't have the 4th SMB2360 PMIC populated while the QCP
> does. So enabled it on QCP only.

s/enabled/enable/

With that in place:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

foo-pmics.dtsi definitely is not the best solution, but it seems to be a
lesser evil.

> 
> Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 2 ++
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts    | 4 ++++
>  2 files changed, 6 insertions(+)
> 


-- 
With best wishes
Dmitry

