Return-Path: <devicetree+bounces-225782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C272BBD0FD7
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 02:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7A5A84E3CF9
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 00:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958DC1C862C;
	Mon, 13 Oct 2025 00:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SMcxfFgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4C91CA84
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 00:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760315159; cv=none; b=Vec6K8hisFWmZlJFrp7EC4ocDQC66uKqq+pTDs1s2WL70Ihujpg8d8FjG/bLPQCGdLkYjBye2TiftrelraDCfpPyjq0ITQF/hJchIsGpx+gzhN1j5dkHy3oNmLpAseDUz3TiPNNtnAsi2GAj434vapHTGPm5xI52/zq43Vu04Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760315159; c=relaxed/simple;
	bh=uMZY/eb58MXXTq9fdevinx3WkPol2Jn5dURLFB+Namw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sPeW9vW8VmREpExeBmESX6hZDLeXi/doutaT8DjvqD2XkbvIPp0rb2f8oCzDT9Xa2DACc9tWOhxNIr4UQtDxBLY3dflkZo3MAqUBImN6cCfFB6gIRbzT8Q8ULSMVurHpgJ6YtFzN9UCvIBP0bFzJ92SwS3pneZ3PlZq2LV14Rn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SMcxfFgR; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-77f3194b322so63985b3a.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760315157; x=1760919957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79KifPwGGK4mB0WoW1yjJ4Alo2Qr3NmP9KvDMNbO2zU=;
        b=SMcxfFgR4pV3qvN4vJehWICzVqR6GlQVUjohZvqjdr3Fx5YXhnjcG5cUUPqO5Lkg0l
         QlgnlIJDVdkLsrY1GzQhIo8xRj2+Bz3/lFBifSB6y/ULWqAlCnuPH75ZP69YXpGCmmp3
         6aWSMcg11i65QbR3icP/yql7oO51t3GYzpp4MviGrSf/Bw+F4RI9gNlhEu1+OlcD+bOO
         RYU5AkDqVhOAlQtUVrA0gWs7dFUbpfBFPC28CKqoUy4YB5V1b80kramGaoxd2hN5O9nI
         ENX30s1PSZNd3SilwgU0GuZVJ8VQHtZqAuot+e2mvZtwNx94jbzTOFgQ9Ysb8NvdeMSG
         Durw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760315157; x=1760919957;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79KifPwGGK4mB0WoW1yjJ4Alo2Qr3NmP9KvDMNbO2zU=;
        b=MBYfJyWuA0z8UBb1jd3N/6C9lUcyRc9OP1+M7NY9lUpwUqkaoFQNc/i6OcZPAIN6oS
         WIxsMCTMi60hQG/VaK+JcciOO9miPsnHLWPxL6uPU+rLMEwmoYNXOZmnWPetru4CxraY
         U/X6mUzZkTDPCFVsEgBtKHGPFYz6EgKElaOp6eYY/IdbJ6yKk3dwPdvpUM3qnXtbUzkT
         wZOZuAHTLuZJc7SocS8q0GRRiXMNg/nIjsVNXMziKleZvR1cstv+L6wlKPln3yvMBmiS
         mxb3k2HXwiBBsMHRAuSV8ebU55Q01tO99Nzp3QzZo6K+6eUa50HVB6MqFwHK4xaSroGJ
         W6eg==
X-Gm-Message-State: AOJu0YzhyEwVQMD8DplbnhOaXxerj9cc0gOluu/HvnctwAaWeLkgEQoI
	rSNjoVMZr89AkXrNre77DxLU3mGr3JqcSLyCnWobpQun9OVCK6WCnBnyJc9BtI6MbsK1nilqiA3
	tgrW9bYA=
X-Gm-Gg: ASbGncu4UEtCGwtOL8+K3oAMc3XyX8F9KtwL8huJxyiHmqHzoiyqfKAxoPco62qEmiD
	0Omd9onuzuKP4BKSepSZ121PO92qAjBRsgtXMdQCA0QARRYIO5kwYrBsO775OHZaYVCOH+A4yvH
	ShGIyzabaZGXTCukojX9izPNKPznFJUBFxSviEBmRj3CdijOkqdnhUOtgYyxiabckqZHXLTzIhM
	U85SmgtgujD+Nfr0ow0SZf1sToRO27JRwma4DruXhXzGXDdJft3MUp7ucH16pNi47ovRx8rMRgR
	R3C3VRxVIlNjuFstDqhPuRP8TeFD3zt9Cyy/klBcCweqzFa/HfHKxOYY2XcjqCCbzCwS9deLYRV
	5JvsjlAmbj/MKFLi6xcks+6/ghCsOfomY3gUKK4hEPUcd39RHKZGAAoMwoVD7Br9ySlykJNwBpf
	tAJlXfUg==
X-Google-Smtp-Source: AGHT+IG1iyXL4pN/qvD9XLmsJIck33wkHAeiVhxj8ffXxtDeckyVCZeHinEl84ADeFl2GumlvaBQKA==
X-Received: by 2002:a05:6a00:2295:b0:781:220c:d2c8 with SMTP id d2e1a72fcca58-79387146ba5mr12345789b3a.3.1760315156841;
        Sun, 12 Oct 2025 17:25:56 -0700 (PDT)
Received: from [127.0.1.1] ([121.134.152.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d096740sm9624862b3a.38.2025.10.12.17.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 17:25:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250928-exynos7870-dt-fixes-v1-5-a40e77a73f16@disroot.org>
References: <20250928-exynos7870-dt-fixes-v1-0-a40e77a73f16@disroot.org>
 <20250928-exynos7870-dt-fixes-v1-5-a40e77a73f16@disroot.org>
Subject: Re: (subset) [PATCH 5/7] arm64: dts: exynos7870-a2corelte: add
 bus-width to mmc0 node
Message-Id: <176031515137.11660.15560543530858079871.b4-ty@linaro.org>
Date: Mon, 13 Oct 2025 02:25:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3


On Sun, 28 Sep 2025 22:13:56 +0530, Kaustabh Chakraborty wrote:
> Add the bus-width property in &mmc0 node. The Exynos DWMMC driver
> assumes bus width to be 8 if not present in devicetree, so at least with
> respect to the Linux kernel, this doesn't introduce any functional
> changes. But other drivers referring to it may not. Either way, without
> the bus-width property the hardware description remains incomplete.
> 
> 
> [...]

Applied, thanks!

[5/7] arm64: dts: exynos7870-a2corelte: add bus-width to mmc0 node
      https://git.kernel.org/krzk/linux/c/5b33bce0bd31ca3ebc5e3a75b3053141540ec644

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


