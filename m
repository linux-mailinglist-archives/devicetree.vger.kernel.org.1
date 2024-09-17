Return-Path: <devicetree+bounces-103517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6EF97B229
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 17:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5450C2828BB
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 15:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B6D18B499;
	Tue, 17 Sep 2024 15:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jrLuhqHE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E033187851
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 15:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726587148; cv=none; b=KG+Af04XD9LO9XwcJsvVy0qi2J/YDciM8msiTr7Xx2OiywCHakEPk9P0bAQqN2f4XBoRwkZhjhZamJiKnvsQ0D6F9o8rQWzgAay290Bk10aPt5Vo4qoERBops8Pu2DEm7AZGX8DgpWTK3/blKN9kNGhnFNYiy5hCf5rreQS0mdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726587148; c=relaxed/simple;
	bh=GtH6orHOd7OaviqK1eMSDZXt9/hshFTmujsoRog2i5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hw2uOFmJyIsaIGN8aQOJ/SGjUWASWuEV9VXGBOgBm3zom3DGS29c50PHQUZR08LSCWkZ2dFOh3J6ohOagrxX5QwFxaYVo1u+jT0vnynsHgNFt5BjR0scVmtHWBAD4d0N7Zht/GHMPgpTtoBMhbGTEa12uOSc1mhbc5wR9yXgQ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jrLuhqHE; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5369f1c7cb8so84996e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 08:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726587145; x=1727191945; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hovqWX9ZGGc/PguKDoamC6JnPtCjHAI2q7eZhe99mHg=;
        b=jrLuhqHEB/m24mTFwQ7lqODwdsXkSI4ZHgYeQwxkV1wFXNhYcaw7122NKAdfMyCKDU
         OYu+Hl7guKw94l/38T0I5poKeyMpKnx5xw5B4JmQMX1v7ZNji5jUwGA9BzRpQQS0oYuX
         tjO60Nog3uzyDTPeglaHhnBPWd3J5r6bDXhbROzC59bAjPFtqAHfw+sLhuvavONSHJX4
         nhaYBPxpZLeX3xboc3kOrhC3R8LM4JV9i73ih1L2LYdUenfajCgycXe8fvxKYWpnUJ11
         YFGodc9EM7bctRm4mf3Me2ns6M+XJiz5bMcelzeTeGkFFhnAZvmIlMtFDPUK+MrJFABS
         Qacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726587145; x=1727191945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hovqWX9ZGGc/PguKDoamC6JnPtCjHAI2q7eZhe99mHg=;
        b=btxTO++CsbtsswjOVt/JDCSO2wS/KNxes7k4u08Dg025RCjQ+q5OoyvNPuBw6ROhZT
         TVC879R0IrcTFM42oI+h/u8fGTmN5Nlf2Mqjo/vJgHdWHKWiRa6JKhdUy1l7uV80dqaN
         F/1aRyVfqeTbcZpXEbrrWleYj0l4sn1ddoMfdTR27BMXJkTzCLopOUWnH0/+x61POvGc
         xlQ81xcqhYoitIITi7l4fNMAl1bhre8BFi92mlQQ2iC1Nr2UNVHBtxpidpfq8iu6rrt/
         KI8X6m1qQPwI3UFqbKTijvhrURgUqZHWcnJhCrktjudW8uI3RxV7ICo3zLjcTYfYv/xW
         +c7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVgX4hEO5+8927rU57e4E3eodEYrfJ1xW8tWSuljDHHKTHNQCm55J0Dj1GFpEa7q4MeKKObGkHFDkR@vger.kernel.org
X-Gm-Message-State: AOJu0YxKq4V52xczks5ov2mRlB9MUx0xfRHmZS1WnHQy3ajRgj0vub+H
	C83KPnhZRn6NLoL4C3OPgwQsi3LCaJKNR4F5w/VxYB8JkXtAQBIloTluAJT0eQQ=
X-Google-Smtp-Source: AGHT+IGtfgOTi9jypDor4dQ1o5T3M6DF1HXTXj8usXJ4QJ+V6oHOzNjz0387tRIfAxVH1jPQlKdX8A==
X-Received: by 2002:a05:6512:12d1:b0:536:5827:8778 with SMTP id 2adb3069b0e04-5367ff3382bmr7813936e87.53.1726587144460;
        Tue, 17 Sep 2024 08:32:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870b8cd6sm1218096e87.290.2024.09.17.08.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 08:32:23 -0700 (PDT)
Date: Tue, 17 Sep 2024 18:32:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: srinivas.kandagatla@linaro.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, abel.vesa@linaro.org
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-t14s: add another trackpad
 support
Message-ID: <xn3pyfko2px4w73qijpkhccujgipckrazquesvzz3odbkxclzr@azgbhljfllfv>
References: <20240917150049.3110-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240917150049.3110-1-srinivas.kandagatla@linaro.org>

On Tue, Sep 17, 2024 at 11:00:49AM GMT, srinivas.kandagatla@linaro.org wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> Trackpad HID device on some of the T14s Product Models 21N2ZC5PUS is
> at I2C address 0x2c add this to be able to get it working on these laptops.

Commit message should describe reasons for moving device-specific
pinctrl to the bus level. Other than that LGTM.

> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
> Changes since v1:
> - moved pinctrl to parent node so that pinctrl can be claimed globally.
> 
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts  | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 

-- 
With best wishes
Dmitry

