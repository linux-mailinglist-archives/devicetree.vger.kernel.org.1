Return-Path: <devicetree+bounces-173659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2972FAA9361
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EFCED7A2C51
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1F924EF88;
	Mon,  5 May 2025 12:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CLq8LBAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEB022D4C1
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448722; cv=none; b=kaVc26rNaYqDKrBEuFKpX4zMnDVg+vc6wY86lLabrty7XP0nwJbDptKdXSBLJjLdnGgG16+R9Z7j58TrPCOG2coWJHkJl8PUobsJShXA3hZs8SyUPGoFwtmf3BF1IskBs58+CtsAGR9WrXwgdCalbKy2H9dbZhKXs7aOKgdCPvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448722; c=relaxed/simple;
	bh=AIiSEoyvM8NIqWKRwMdwZ3F+m/6RO3t+6zxhcZhQe5I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=G8l4WMRafzXVrH3+EK+lErexfZaQDST9d+2R14t50DYiPKwfHTsvUUVGLrqe4++yoX2on5BvQV957Zf8aEMEdl4495rSn4KcmS5FBrbc1Bx05ZNFltpU/Tu/FB2yucZt+ILZNSWEQmN6fnmM22fXLI68ARHYc9q2F4sR3405ifs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CLq8LBAZ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39ee5a5bb66so2774800f8f.3
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746448719; x=1747053519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yJ00OPYdqSJ+4uv8ctKPBsBBA32+QMJJaxQcYWfzOmY=;
        b=CLq8LBAZtxZBIRGtWgGKfTvRUAezUszxUeoSxbQtzlymPTAUUziddhvPM35PwNErrI
         sIGWg58FL8BAdJeq6J3bFC8jEA3FGUn7SH2Fl7uJKXgeTnOuFl/0E7rhrSAndHOdcTDI
         PQSrQdA/F4EGArCLSng8NsBCWuvchG5Bpfcc3X+89kRv85kXyKonDBWwMNcs2GEgR0q5
         7JO7bmrQ6xB9zjjLPYjT/EhZH6ZKh1wa6QWcRrRc9LSkpRovCZBzA63peISP/dRQtqel
         FTqRKlgb/k6hM242BThaq6nS1/TR/g5oAGAHB7IUo7eiOneZmbSF390DVR2ZUeS7HTGD
         gdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448719; x=1747053519;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yJ00OPYdqSJ+4uv8ctKPBsBBA32+QMJJaxQcYWfzOmY=;
        b=GxqfeniQvvvhNq28VzhvzvV5ONc67reNUAuJoeewHtHL9CTBECGuX6PtvxZHaIJR6F
         nBoFcM5Wo6XSF4D+rnnNVRB6QKtfeAm7j3L01hU56xJJKN1njiV1bzV3Nm7b8F13+Dkf
         jqh0vAZxIVqqkQlj2hSASSqLBFGxhyNY6kmy1AdMms8pIwvv4MLvLTpaalN6KRHpL0PH
         5EZS0JK3c9PGtH2lcZlu3fDYvL96PuNnUj1PFq+S7eekw1iS+3snYno+HFNjTIQ8ijYS
         9XiNskEgKoe+K0YmS2RbPw97oTq/2G5aDUV8vraB3wdKZNjVLN0101fHkc2o/UlIjmnY
         72/w==
X-Gm-Message-State: AOJu0YxdJ6p5/mYYYoj+Jy4wTB9Li4WuS4Iq6hBJZvYzCIY36VJh7pDA
	6N3gj8zfDKZYKBxxLymuVrMsoMro7X+dLHOklpURiQwxRkUUogJ4W9tFdL2Nq+Y=
X-Gm-Gg: ASbGncvbBQaa957MsgcnEDkYSxmSF1ytoWOJvqA2+E7fAxuwppADxwJoUfX8XBYs3jx
	JA1lXpPeJb88Qc+EsAnoXOVjheqqLuiizLDHV2++VkgjCb5f1I9QkZCsF65/pf7Mbko2Pqo0489
	QMflfDCyiZCv71rTBr/aMgpG55hNC/bhf+eGZgRVrt9WBASrF+M844teiBqo6fmHlyj7tO1ZvBk
	4eRqIwe+Isf8FnGxvISbM1SdNbY/vGiEYv1uKEuAQ8LATdgFbDXHZAXyAcuV3dG/9R5UySJCBo5
	ix570GXMr2f5ppvU77bMBfNRwG4sDwj+yoj5fZo+zn3td0/tRwEiOVxwpjD/rg==
X-Google-Smtp-Source: AGHT+IFy0/5CsAjAmtPJtG69bk3HYaRizPcxz8kBiV82Sd4ZPLYii45oNaazucMgx7OuBmnSByg2GA==
X-Received: by 2002:a5d:5c84:0:b0:39c:3107:c503 with SMTP id ffacd0b85a97d-3a09ceba798mr6003167f8f.31.1746448718752;
        Mon, 05 May 2025 05:38:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099ae0bf6sm10416625f8f.18.2025.05.05.05.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:38:38 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Kelvin Zhang <kelvin.zhang@amlogic.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zelong Dong <zelong.dong@amlogic.com>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250411-a4-a5-reset-v6-0-89963278c686@amlogic.com>
References: <20250411-a4-a5-reset-v6-0-89963278c686@amlogic.com>
Subject: Re: (subset) [PATCH v6 0/3] Add support for Amlogic A4/A5 Reset
Message-Id: <174644871803.1393229.3140979499225174795.b4-ty@linaro.org>
Date: Mon, 05 May 2025 14:38:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

Hi,

On Fri, 11 Apr 2025 19:38:14 +0800, Kelvin Zhang wrote:
> Add dt-binding compatibles and device nodes for Amlogic A4/A5 reset.
> 
> Imported from f20240918074211.8067-1-zelong.dong@amlogic.com
> 
> Changes in v6:
> - Rebased onto the latest v6.16/arm64-dt.
> - Link to v5: https://lore.kernel.org/r/20250320-a4-a5-reset-v5-0-296f83bf733d@amlogic.com
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.16/arm64-dt)

[2/3] arm64: dts: amlogic: Add A4 Reset Controller
      https://git.kernel.org/amlogic/c/946b51882b84f0cbec2acd203467866a7378abac
[3/3] arm64: dts: amlogic: Add A5 Reset Controller
      https://git.kernel.org/amlogic/c/f0911f29478992f37e91c208fe44c2ea5b378b61

These changes has been applied on the intermediate git tree [1].

The v6.16/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


