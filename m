Return-Path: <devicetree+bounces-170203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 243B9A9A294
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4B6A3B3083
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4195B1E8332;
	Thu, 24 Apr 2025 06:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ohRDjLKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC5D1CEE90
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745477372; cv=none; b=M/x20GPoN8BpdKsW0CxR17TdXN6xTL0mlzyylkarBKnHrMlu4K1dmdYoJTSRcAQ0DAebW6YpKmLx/K2hRcWDnU582f5FBrpcDmyd8Icw1T2goDKQK69FFl7KQtKcQUPotORayeDIe/COIUFmx/CELqOqNaHFYyACadYc5YAyZ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745477372; c=relaxed/simple;
	bh=YY05EULblqpqOJ20Ca2qJAkFfKoRl4Lnom2DVdns5cI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HRlIniNpYPWdys3mpfEshUWtZx1kCRUtvWGIjJZLF4/BhQlDEJe3/1v/hVII7FeWiw4oQ1dr4qsM8D8Mza5OrOn0ysaY8HIkNb/sQL7+ERrVmAdKes1ru7n4aDmemaJm3vMf4zQI3ISkQsxLsqQFcWq0MUUTsB6G1/2+oDHt99c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ohRDjLKo; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ac6ed4ab410so105727066b.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745477367; x=1746082167; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FO96JtbCvJe3mUseWa0OQALrV8LUqckkiAryhK/dOSI=;
        b=ohRDjLKoZHrt860xcyNcRM6ef7aY/SfxsNBLLKF08fD8KNCh8idbIfQvUHp3wO8gwQ
         S98QC6TTnRRvc3o4JzKbpAwKdux4Go5riFQxnKm3mry9CeGkdHqbtJmUdTXzFJdS9CxZ
         eGZPRYD+6rLhnYkSHx9+/07//pIViq2NszbbDxrlHwNTl5CeEwgZuQC/9uld1voGxxJj
         9Kar10lAE6M9j5mVkjqOFVum48tP400eacu2ixJSENA+lDK4Um07RYR3WmFWkAT5waDo
         /HJ8H7CQhWZ/V7kG4EPT/ib1mRgNzfd4wX6jKFxa5VXJtViAeAJQG/zCCoHzaxP+YNVK
         TwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745477367; x=1746082167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FO96JtbCvJe3mUseWa0OQALrV8LUqckkiAryhK/dOSI=;
        b=Q0eY6VD7jiahtijrxctkuABql84XhtmAwswBnsrulDzkCmuNif/EQWf4saKqdK5o+r
         rImR2+LjiuBd0jcYZbk5t5rMNB1KEw6Xd46pQ3qcHrjhqz0SnIe+HDynp4tZLtOyI3jp
         Njk8RA6sexg/uLsp90xFtsSYK2cPjdEd127zLK59pElqmJTbHuS1VbYCkplwma82a6Pr
         jY/lB/nO52oR2JTr7+8Z5x8HcE6VsqYYd63SleZgWQQqGgaqzKa+8FZ+3nfEm9mi+hG+
         GYoXfe87vjYmXfAX/lbCwa888dgVcZnOPKWnvNJRpyt7AG5Fhhqo8qdjMXMJwCpZEcWR
         pvbA==
X-Forwarded-Encrypted: i=1; AJvYcCVHpZUsK6oR4/i3yq6j9c4nYMOYBbtA9MYn2FwPb6g4xd72fWMQ2SPvFOSB+Ayb2oiXN8LCbW5Aztta@vger.kernel.org
X-Gm-Message-State: AOJu0YyT5wDCdtM+EPCxgmRYp7ycy0fJGI7ygzonPogjVfC62xTx00c8
	cxeWoxLKUG+WN5mb2QM98qLgfKDNi5nktB3rqlFJubTVWFq8Y8bT7tn+MowWJps=
X-Gm-Gg: ASbGncuz5eu+MHplb8PwoBwTN031tyOUeJywrzF2O8OiIUxFx/7SXO67E++QaqlCLZ1
	CtBlOeB04PsL9RxdplcqGvHICL655LDJRrFvBeF65/CyeHqQi37Q28NXYpAHElp5i7uBI8O16Vn
	DIwcInYa72+GN5tfEO0OxKwVVnouowc9B53yTZrkkLOZDpLu+i4dl+K77v1ZRMKDduw34y2TB5E
	5PJ+L1Rnxgz+WpXaKDKbU2lvfvv3uTTwcTelEuk+YWJ5Q1exjuVDGPPfDJfs+YGYnrMdMznm3eK
	NfAmtLe7TeXKl/qPb0ta4rL8lHHFvKPRSKZvLA==
X-Google-Smtp-Source: AGHT+IEfj/5HzaH2h358gMY8v05hd2yzGKyunuo5psGHsXusc1uw2LNAuC+EPj7nse1eDky0duEC/Q==
X-Received: by 2002:a17:907:1b08:b0:aca:c7c6:b218 with SMTP id a640c23a62f3a-ace570e0d55mr131378866b.1.1745477367496;
        Wed, 23 Apr 2025 23:49:27 -0700 (PDT)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59c261f4sm56013866b.146.2025.04.23.23.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:49:26 -0700 (PDT)
Date: Thu, 24 Apr 2025 09:49:24 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>,
	Xilin Wu <wuxilin123@gmail.com>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 0/6] arm64: dts: qcom: x1*: Fix vreg_l2j_1p2 voltage
Message-ID: <aAne9K79PNfdQc8h@linaro.org>
References: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>

On 25-04-23 09:30:06, Stephan Gerhold wrote:
> Several of the Qualcomm X1* device trees upstream specify the wrong voltage
> for the L2J regulator. In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is
> configured with 1256000 uV instead of the 1200000 uV. Change all affected
> device trees to use the same for consistency and correctness.
> 
> In the other device trees upstream, the voltage is already correct:
>  - x1e78100-lenovo-thinkpad-t14s.dtsi
>  - x1e80100-dell-xps13-9345.dts
>  - x1e80100-microsoft-romulus.dtsi
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

