Return-Path: <devicetree+bounces-230277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE84C010BC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CBD03AA07C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E05EF311961;
	Thu, 23 Oct 2025 12:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cOXcVqZH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E0830FC3A
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221795; cv=none; b=kX0HS4WnyiJ0HNPT1/9/AR0TivGN/Q/mGcP6d9bgXUa68NZ8lsPgE1mAUvQedlDjAvb2xbVxcHBK2yEx8OJ/xHTPMfVPD9aN0n1gboJqSTlT+C+IjJbr0bNexdiuStttqehKmpj3Tw6VF+ukV8FQZZvE16JKtF7JbxRrZk9K0FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221795; c=relaxed/simple;
	bh=63w4Oubk2b9HQpsZ7UfW3R8E4afh0HvTI9mB0GUsn0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dkbAgNRY5N8DktZ2tppp7iaRH+lu7aq14oxRdtBjtr/3d9l6BFMVxMfdVGPT6s40cAajZ+aZVk4YSGrHfnSMQ/RHmDYUFLgUNhLXWrUbtCgNztv6ShzW8d3+ftlW3/sq62zmO/ofzGd0BvOx4tNXASsYU6+g71+jWPZ7SNVji7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cOXcVqZH; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46e6ba26c50so6081665e9.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761221790; x=1761826590; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OsMGC1kCHKoVmEzx/3J2+LZIPEEzI0s7H5COsJ+wzeA=;
        b=cOXcVqZHhzJPb/AikVkdp+qMVGJe9QiY31Nbinlo9vOlhEMPqgvU8MOmPvxbdGoxoy
         JvRwY/gYx7Dccd7bhyFm0r3eSlSBQdwrxcneWMaCiepgg3Qamt/4du1gzR145FSZvo6S
         1AjMllEwEa1KAIt1vaouxzWSc75MmDQYjy9ZqPEq2wiwY6zv9iWDfaS+RSTXSSoZ3xqx
         FvMF8jRGqt9Kdfhp9g2d8NWlLBQBu1F4xJtbvR+XKk34ndS9fz7fKMa6fhPhr6buUzHA
         zC75FbmiTvZnwbi881wcter8Ki/Fh5RuGMZ4fM668gjobQaMzpQOITGRDzoLaPVEUAm/
         StYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221790; x=1761826590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OsMGC1kCHKoVmEzx/3J2+LZIPEEzI0s7H5COsJ+wzeA=;
        b=CqVAwmE+BXE3hEuxv72vyPTJ/8UiDIT+/GKPwUJK+Ca9i3J3szkDpZ/VgeRm8Xh76L
         QpcV4N2xN+6nhyE+gG4TmttfUNeqN+/CuMiY376UTyN7rVs9KbLDFcu2L6ViGEgHztYq
         jWhhIWC7f1C39rCnQTwh0Szt0LtfF7cznDBoNjS1PMAR1qVWrX4WnoUqjHoBaQAYJti9
         6mp+Kbu5EN0hs3zgD1J50lbZwxTNwCDSl9aT8HG+Lh2c0t6WNcCkjjEnZnS6LYmlSW1X
         h9o0QYuQSlWbFUxeKYRufNwcJ+scH0Xe0ptBhGyNfeo+n1ISJGzcUqSJOTLYEprtBAh6
         QxwA==
X-Forwarded-Encrypted: i=1; AJvYcCXO9cXWFsP82wds2DnZGtRc7Ccazhfc4MQsB3vWbtPUPymo/pKbixjnDAaf6LleCIwrzbVYdSBP9OhS@vger.kernel.org
X-Gm-Message-State: AOJu0YyktBueOEKijKnyVQBE4MqjaXKq6Zvqvccc0E3vCYRJi0QnIjeB
	OqXVfnHt8h+wTmycmpHXnfyLMAhLhJy2doDhUFYonntxa8nZ1PAWXJn2KHH6WCllFZ0=
X-Gm-Gg: ASbGncv+r11MO9VDBEZtPbK3YgMSemqhFrctnEBMBbsMJZpkxjt1EdmFYSlTMW0CIK2
	KpwIsq69kXJM+Y+Huj81o75Znrd3V5RxdMkcL572vnioF0sBsMFTt7+gcctXd9wAcP6/uYYiCx1
	msVfIKw/T4SNmJjCSq5EDeIK/bKfIkXFEUdt+AjWIUa58ORVcXAQ2IMryz0sX3du6jnFC+8Hj2Q
	N8PZQv3HD7c68W/A+/bQMk5Sz1Ims/Nfm574BCN5QGNKPHSQ4flX0hbmqAV8qMAzd0XgwQlEOxB
	67FM0KFsgZNLLIBWQXKPmnB4ZFYn+CyuFJnswjTKayZDoh2azFN4vHpsoip2/2nI+wDI/VgkimN
	+/2aJSe0GRGRzWcqbNI0fUULustwXum8ti1sRpFJpQt6ITRojzzWl/utCjhJLtdTgnBDBrkieWF
	U9PKFP/dQ=
X-Google-Smtp-Source: AGHT+IHFjzVLSym4Q6bXgkW+gQE8VmDlbUGdEH4H/I7XmfcC+FQGVre5Ex5Mf79etOc4+NZ/f0kF/A==
X-Received: by 2002:a05:600d:8394:b0:471:1717:421 with SMTP id 5b1f17b1804b1-4711790c587mr119581255e9.19.1761221789853;
        Thu, 23 Oct 2025 05:16:29 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475c4378cbesm90781295e9.16.2025.10.23.05.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 05:16:27 -0700 (PDT)
Date: Thu, 23 Oct 2025 15:16:25 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com, 
	quic_pragalla@quicinc.com, quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: sm8750-mtp: Add SDC2 node for
 sm8750 mtp board
Message-ID: <h6cpk4z3q2h6ymy565dytbza5mbldruhctg36utzdwjrd6ohjq@5rslxi2tm4z4>
References: <20251023112924.1073811-1-sarthak.garg@oss.qualcomm.com>
 <20251023112924.1073811-4-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251023112924.1073811-4-sarthak.garg@oss.qualcomm.com>

On 25-10-23 16:59:23, Sarthak Garg wrote:
> Enable SD Card host controller for sm8750 mtp board.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>

with the card detect gpio added here ...

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

