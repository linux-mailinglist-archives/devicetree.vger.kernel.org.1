Return-Path: <devicetree+bounces-149932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2357EA40D76
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 09:50:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B03C177549
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 08:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57691FFC50;
	Sun, 23 Feb 2025 08:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oa1RRCeT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166BA1FFC42
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 08:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740300521; cv=none; b=ZyBim0bXfr3fsE2VbeKIlHqVqGSyGVVnwP3siP1KB8bEU2GTgZla4LSoD7sE0Ck78/9Wel+q0zklmXeDLqr3vUy3vhHU0ZbMXrtUqwf5+7BAa6ygFsrKA5P/Ah8KtPhmz4o2Ky41wAPSY3fB30uZ97S2Fe2xH2oAk2FbChKqwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740300521; c=relaxed/simple;
	bh=+7919dOQBB3+WgCkCin1yQ23DH3tjM2O4NIeDEogr9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBgfqCgIPZTLWczPBxvJGiuu5W6qTouG+JD0WB5qVip4POpNDUZKEcVtlJJcKa668uu8deGNVFv5lJfLmu5UXEIhy1oPJhbYTRThZ6FnMk72W7rYKhuC7TauwTc1AEczVrmxLChIqb9llA2YForAS3iH6qWi4jjuy9RFqcoZRDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oa1RRCeT; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2fc1f410186so7752530a91.0
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 00:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740300519; x=1740905319; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HLG/P3HTzRFYQapMafxrub71Ti6CdsNnJQqCNZ/cZgE=;
        b=Oa1RRCeTxcredr6ZUWzmlrXUrOIjr2Jem2fs+UR8ILBiOekN3MsUIYbTUuMNx/p69n
         UijK5OyJiHVjIxdpWmB6rJfaI14lKkcW2nPoE2rOy5DBzOgDI8sjM9+uenGUC2H4wWde
         KpaOHfyP2yqCDql1cENVv00DMCOAQx/iwz41PBRPTl9jctLOcEE3TgYy4p3zMKThLU32
         p6PKWK0wXVFxdRiuBmLGv02p2usevjSM9fKEpjU05J2m1kbXzoYstO+Fq2VsScYx9WF+
         WcQrPjnun1ksznAHNwdxVI1w08sWnguJXORpC1jxfn1CwDAClsOQruYcTPEVuHkTLIBZ
         4dFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740300519; x=1740905319;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLG/P3HTzRFYQapMafxrub71Ti6CdsNnJQqCNZ/cZgE=;
        b=P6fXKBVmp6dLkd22JMbAKzQJX1+P6QagO0AIkmLmrNrlAbSU6D0F8mMSeMdo3eIsLB
         qBUOMOvlPR2G9Gz7q5wErHat/HV3xbWlzngWhJVmKLxQcdQi1Q3wrW6zafvrkDuNvUNF
         df6X2lOoiT83cT5DNSbMGc1UFtx5F5nNvKjIg5Fe3TQ0Ahnld5qUPfJEDEytg++tqxyj
         SSBkEAEBgTPkfEixf9i0J78Ygrp2rZgGtu8mVmKqMKqsiRKx3R3pQxubwIFV7rwbwnzo
         T9fP3UFt8YTe6qrqle9DJ8z4nJMcvEEg5kAqLUXPtIXn8I0z/CmKy+lw8N5dMRg+1zR5
         6YbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbov3VNiFhS65H+9u92N8nytR1P8EDN8FC/EIWDTCi2k+mgQv8qqVemtsInn9BhdXHewCugPjn0BW6@vger.kernel.org
X-Gm-Message-State: AOJu0YwsrLscgnc196g6KzJmevjklJLd4Dem9dgPNoKbPfj8LDwMYaZP
	P6yB9jvcBNNsgcglSJli0vBRDGFC9JQ93nO0vf6HlSXD2DVqnhMDrK7gIhnmBg==
X-Gm-Gg: ASbGnct+p0poDXI7BShEaJVdYTnX1loCIcqJ3NmRmCOwXhZyfDE5Wsevczt1jMtWSvy
	BjmwevjmdqvBkJAPxml+033azVBh4O9dPyTpdlocNDtJZKXI9lmsBgoAJ+BKjT6ycfuIuxx2Cq/
	RKIHCPEfsb4UFJCiEL6LuH/rbfl+V6q3SjwQ7Pcub64Jt06/XDFfyHjIE7zx0hkzSKSkEEk0ejy
	12XreHhjIcZR6HCsm2JglJfKlauJ1HxgCdjH8iO2SgqP666RF9oluVA7nxz+MglvsKDBMtdDmn7
	maqPCpoaYOZKINVGvClNqoN1MVBZ9C0RelajlTU=
X-Google-Smtp-Source: AGHT+IH0QRS5i9KETlG0jB7271dzRb/nop2A5bMYeO5KDf0OX2iwJSjXN/fAmn1BxWyAb/yXgomY4g==
X-Received: by 2002:a17:90b:52cf:b0:2fa:6793:e860 with SMTP id 98e67ed59e1d1-2fccbfbc738mr24120841a91.0.1740300519252;
        Sun, 23 Feb 2025 00:48:39 -0800 (PST)
Received: from thinkpad ([220.158.156.216])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceb10fab1sm4240658a91.32.2025.02.23.00.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 00:48:38 -0800 (PST)
Date: Sun, 23 Feb 2025 14:18:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mrinmay Sarkar <quic_msarkar@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 6/8] PCI: dwc: pcie-qcom-ep: enable EP support for
 SAR2130P
Message-ID: <20250223084833.xdckixxfezlwovgw@thinkpad>
References: <20250221-sar2130p-pci-v3-0-61a0fdfb75b4@linaro.org>
 <20250221-sar2130p-pci-v3-6-61a0fdfb75b4@linaro.org>
 <20250222165038.eyausqiccrivkv5t@thinkpad>
 <48B09581-F4AA-4196-8445-1E02041915AF@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <48B09581-F4AA-4196-8445-1E02041915AF@linaro.org>

On Sat, Feb 22, 2025 at 08:06:02PM +0200, Dmitry Baryshkov wrote:
> On 22 February 2025 18:50:38 EET, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
> >On Fri, Feb 21, 2025 at 05:52:04PM +0200, Dmitry Baryshkov wrote:
> >> Enable PCIe endpoint support for the Qualcomm SAR2130P platform. It is
> >> impossible to use fallback compatible to any other platform since
> >> SAR2130P uses slightly different set of clocks.
> >> 
> >
> >Still, why do you want the compatible to be added to the driver? It shall be
> >defined in the binding with the respective clock difference. Driver should just
> >work with the fallback compatible.
> 
> Well, per my understanding (or according  to my feeling) different set of clocks means that they are not completely compatible. An Ack from DT maintainers supports this.
> 

Hmm. Thinking more, I tend to agree. Let's be as it is.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

-- 
மணிவண்ணன் சதாசிவம்

