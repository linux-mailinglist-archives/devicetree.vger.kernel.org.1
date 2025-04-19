Return-Path: <devicetree+bounces-168706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 65882A94203
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 08:55:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E7FD446FC3
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 06:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD086194A45;
	Sat, 19 Apr 2025 06:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CjYh+aDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54A113B59B
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 06:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745045705; cv=none; b=ng2nlngShhyga/t5TzvE5GTSDqtVYZUZX4+iFV5utR/PXpwBMRa0zxVyDOy0FK2L7kZA54nOQoFwoybrq8GjxXVaTLy2rqL5sJ3vhhRvZjNgeKv73IJzEGvna7XyGnF4IY8y21g7gGD252Bv73o08aMofgByO9fWLL3IIwwW2bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745045705; c=relaxed/simple;
	bh=7V8yw5J+1i1mhYMW7TfQ/SiJZ+3ro2qr9nOVTet9OK8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZNWm9y4UOiPkhrhb5IQwNhRW28F3MuMPd7XY73c7Mr52WXmUvsUhhzgkqpb2RCJ8EewXsVBzz0leBCkrAcgvJkp/xK+bn05eJwekTUK4XarZAZ6j7AzdCG+8FxCbuPQ4ZxmPUgBRkVGu8z+Agh4o4gfLVZOsVYr7w7LnPq8/Ebg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CjYh+aDd; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7fd581c2bf4so2089163a12.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745045703; x=1745650503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TICD64AIOfQs/ZYDCIR8qIZ9IkU5scdShX781+egCtQ=;
        b=CjYh+aDdsGaFzFCww/y1+WE/ILdbPlvJIS4u2LADV5HY5o+/yePU7RAFGHDe13afQh
         tVOYTE7fVZPkhuP/tpJ3JPAfDNOyfqw0XvvcoVx9bNx4pFTJM7b6m+5SJN/G75NXLf+r
         qOazSH9n1UMrg4brq7ugh/BCbI5SuFpPw58N2tXt6a+Sd9nxM1/fq9s+3S57X9CO7TqJ
         ovu0DcEMQXqsOjur2i8yilgdfk+3N/TTxA1jt1/Mwr5pUmSanLFOGNBOSPLdq72LXcS9
         SdZPlr1kLCq47CpzYPJXg2uV4TGsotzdVStTxMlbGVY4FdggR+C/feORJ207YYUCCy/t
         lQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745045703; x=1745650503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TICD64AIOfQs/ZYDCIR8qIZ9IkU5scdShX781+egCtQ=;
        b=BOPmnTe0SvNX5sfGnvVXyV7ZwhNIqlnEYqZBewtEJxMwJCStPd0PeqaX07XLnqIw3R
         VkWycVZl3FB6jIi9M7mCEhNVgvSWiprhWOI5zoMEslSEIMjM4dFIQYP453HsBXrdc4zw
         vPHuD7JAR8oyKoujoVfCR/371g966TOYJkJ3LWCZP5EGp+R6wMYdONfcFN5pqIfkzx8Q
         Q0cz+p7/a41a8LKnd/VKdGV4dLO6cSglE1hw1lBDShi0pm3WAglxkE4sgF8KvP7IT6S7
         o/yYMpOyQQBr2G1AGO1N93lcTPqBc7Lq5DPU/rtFy9l05gsq/eekLyi8RzSk9l+PrU77
         0CVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5xDyYzN25oQtFMNyBMWwtyAN/SVchXs/td/K9jHA1zp8hNvtlQXpMZeT/3zTXTGfqV4Fo9HeqUvD@vger.kernel.org
X-Gm-Message-State: AOJu0YzxM7+/qxBHPto8laqGRwd+R34aqs7lJ/XbE4WdYmckc1sXzsvx
	WfsbzlXcM9TnFE27jVWFwSln5jqUhMoAxiD1Byj1iiNZYcFw68jVBSNkjyllig==
X-Gm-Gg: ASbGncud1LxpcvlH3Va8xpoypHcxNs97Jzc76yrrDj591iVgKpiC/mMGPluEtVLblli
	on1jyQ2GiTyAUFR232b8W4Q2ZFRiihbNgIv+89tdFzAzv3Klfnzj24MeU4QdAFnoc3ugg490wkW
	AKlvnZHxQkvHuarTB1Lui9Hgnb//Gl1nJw1sRq5Yj6V4GlJL6ykKBwmiKEJFTHrROmamPnAqCAo
	nz3ftuliT02NLcbzxLKz5LV70GiVUsltxL3daEamctnQ42i/HTU7kBQ+DxNqlJzMuKKYRRXrz4w
	Pne7pXLaM8gcmfpOa9vwdhy726UZtwFmshgjBdRnZbZ+b64wAkao5w==
X-Google-Smtp-Source: AGHT+IEF+s5cUaANZHoNtJTxHRWI2o+ROo6OeQ0i0fU+x5mBKy6gzJ99hJDGFllQSCcfHn9Y0iJK4Q==
X-Received: by 2002:a17:90b:5827:b0:2ee:f076:20f1 with SMTP id 98e67ed59e1d1-3087ba53cd7mr8741809a91.0.1745045703223;
        Fri, 18 Apr 2025 23:55:03 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087e1149bcsm2380251a91.41.2025.04.18.23.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 23:55:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com,
	quic_vbadigan@quicinc.com,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 0/5] PCI: dwc: Add support for configuring lane equalization presets
Date: Sat, 19 Apr 2025 12:24:49 +0530
Message-ID: <174504563258.14560.1691218790091373846.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
References: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Fri, 28 Mar 2025 15:58:28 +0530, Krishna Chaitanya Chundru wrote:
> PCIe equalization presets are predefined settings used to optimize
> signal integrity by compensating for signal loss and distortion in
> high-speed data transmission.
> 
> As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
> of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
> configure lane equalization presets for each lane to enhance the PCIe
> link reliability. Each preset value represents a different combination
> of pre-shoot and de-emphasis values. For each data rate, different
> registers are defined: for 8.0 GT/s, registers are defined in section
> 7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
> an extra receiver preset hint, requiring 16 bits per lane, while the
> remaining data rates use 8 bits per lane.
> 
> [...]

Applied to controller/qcom, thanks!

[2/5] PCI: of: Add of_pci_get_equalization_presets() API
      commit: 2f12e20457a27599b6e1e1b0f08e6175e37c7e05
[3/5] PCI: dwc: Update pci->num_lanes to maximum supported link width
      commit: f1eb5da4d28b3788049ef98428b395fbab3478fd
[4/5] PCI: Add lane equalization register offsets
      commit: 165d80061e771390da26a29d362ceff96ab75da8
[5/5] PCI: dwc: Add support for configuring lane equalization presets
      commit: 3b35b43825f4e906d46519908dfff76a58d58bbb

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

