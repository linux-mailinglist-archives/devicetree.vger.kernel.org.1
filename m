Return-Path: <devicetree+bounces-168735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D8A9431B
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 13:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F237F189516A
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 11:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27CF1D5CE8;
	Sat, 19 Apr 2025 11:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZKJfcrWy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAF81BD9DD
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 11:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745062532; cv=none; b=KWVBtZOyO8W6x+vxmSzjZ7/pbojdAcegOK9GB60y6RtzuBoSRsE6TPENSCDlsSgYppd/7MJor0L09sAzx7ANAT1nStozPDPF9LxFYMRQexpwlx7ES7F1POpL80zqVZfuk4WHQhWXbytTgxyw3X1djkt0KDJuRYFwbBZi9kEn8bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745062532; c=relaxed/simple;
	bh=hSrFgG5GCJ1EOixVEk2PIVd25zGJ4lE+rWDW8ZzPJxs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o+/CFZcTsBoW/XA2LnlJqsa2BXzZXMnssnoZFMRvThdkp4rsA0XMLiws8wTjPWQE37c0wokBM9Q/vJVVi0EmgBvvfQh2TzxRXNeAlqJrJbQtVHtbLZ+G6FiIbMuj6KlC1hxQkBs4iw7NSsHWSc9PTcOIytvxbeRP4XA7x/7vfZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZKJfcrWy; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-73bf1cef6ceso2297893b3a.0
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 04:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745062530; x=1745667330; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EqEfCzVm0s9gbAWdrawTqBLk3GajDKRamX+SOKwoyMA=;
        b=ZKJfcrWy3rkpMfLUIl476Hg5K3R4kgNxgF0tVUEinRjtU4A2ufm548BQCtul2ppPUR
         NfGBpDS32EFgmLKz9JFlPSNQ5IX8odxklTSr+vgrC0eHQqiNFIJpIfvkbZBDsoluH/Fz
         Cjen+ZO+47bmVuMjIz/yM4E+YvW21XR4FYved5gR7jZ/fD4HJqq39Ubq5zhLU7Nm1+AU
         II+qLPV78/hjU2DswHZCXiBW5XabDx6K+PMJ97KOxZm2WIAf2XEGv+m75b39cZnlwBcQ
         cbpB/MJKYaZ487FTQdNj8EDtHV6eh3ErnO3SAhRQJF493g5dYKkzLAMoFkGQy2fGdtWs
         wghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745062530; x=1745667330;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqEfCzVm0s9gbAWdrawTqBLk3GajDKRamX+SOKwoyMA=;
        b=rPsbHuda0ObVo1rMoe6LtIEXcGaOKN9u99g1HqK5UmINAHQ4L+OTZ/lbaP0CWTnye2
         ETbI9jcQKCtFlQvrpN2XbxuV4fJlrKD62+/rWFP/W/z6OFVy518CPFXXZ+yUwsGPo3GU
         z8g6yZQUxlgTDFxKBOGzpkF5M/v/G0i672yQzxSr4QU4avHD/1/lkr2LJlKndWwyJKNj
         zE3+oOE6WAQv51A25oW3buuDAd5/cGVKi5u7OEg6S3JQHNVfOZIvPNtEaLWtkPWs4atj
         tjmHSJxl1gfVu7ScYomI6FgLK6SP3UgD6EMROEMC+SoKKIzoVfWbcFJ/TKDv6XEBfjxq
         FRng==
X-Forwarded-Encrypted: i=1; AJvYcCXeT6pTa6VVum1vuI3yHzXxTyznPQtefRnFgOIHZMyF7NjO7eBWjm2dnjNi61mIxlxUcoVAk++00LWC@vger.kernel.org
X-Gm-Message-State: AOJu0YzEiMzTEvwHXmeYpRffzUGveoYzbyMr/EIse1BA24dZxbWgp/+Q
	YZz23BmQHMRmFWQuZoDp2BjnvUo3klacbh4CLZNsb9Nog4OMqjHEUHYpiO5haQ==
X-Gm-Gg: ASbGncvjIwyxYTjw6G5RUxTvg/f00a1YCMwcR9L54CfEREEXp7J55Zx/c73gMmDTP/p
	t25Q8HSSM9sUFutOok+o4AYzSgASwzmYDuuwKT6piW2LOodLWKVDHgktwOZoFlihXUJd8ECkCVT
	/yGHb+o48nOwy9zpEQskM8UMJZZrvJvApmrE456eAD9txLT8yoHR2OqcIFKtFYQOYwD/aivvYm/
	BD9lu6HNKgodqTZ0bgHqI8NWh8VSsyyTmK6P0GuxhcaaLWk6ooTP3hBFP8+z3exE+dVIzQh0U7A
	vJb4dtUBQMEEsbmRNoNMws2cqTn8zzTMgzuFmYTlu8hD3VlAHxnazg==
X-Google-Smtp-Source: AGHT+IFKbXf8oiV98tgt3cEpHu3Ind6E5MOTHI2okQE5l7xhF/QuhKO27dk6PSwPkrsC8Rn2xyTTFw==
X-Received: by 2002:a05:6a20:d485:b0:1f0:e42e:fb1d with SMTP id adf61e73a8af0-203cbd4513fmr9527773637.36.1745062530611;
        Sat, 19 Apr 2025 04:35:30 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db139eecdsm2705742a12.22.2025.04.19.04.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 04:35:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nitheesh Sekar <quic_nsekar@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	George Moussalem <george.moussalem@outlook.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	20250317100029.881286-1-quic_varada@quicinc.com,
	20250317100029.881286-2-quic_varada@quicinc.com,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
Date: Sat, 19 Apr 2025 17:05:18 +0530
Message-ID: <174506248856.36993.6558804848056183191.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250326-ipq5018-pcie-v7-3-e1828fef06c9@outlook.com>
References: <20250326-ipq5018-pcie-v7-0-e1828fef06c9@outlook.com> <20250326-ipq5018-pcie-v7-3-e1828fef06c9@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 26 Mar 2025 12:10:57 +0400, George Moussalem wrote:
> Add support for the PCIe controller on the Qualcomm
> IPQ5108 SoC to the bindings.
> 
> 

Applied, thanks!

[3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
      commit: 5ae42cdeb1d23fc604fb6c8a23cff35a4a47b10e

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

