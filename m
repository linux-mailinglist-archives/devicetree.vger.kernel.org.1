Return-Path: <devicetree+bounces-205704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0261B29D5E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FC7618856DD
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93C8221B9FD;
	Mon, 18 Aug 2025 09:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C9W1K+cT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7E8305E1A
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755508419; cv=none; b=LRxbXP9/pCrhFf2yd0AjEfLOKZpzoelhD3B8Yg7d79TAPJcTOgNkWoxkPn9m/pOAYmhl00fkrUNIbO4vrvADxHrOJ+QI/XCEVM9TBZ7pJXf9dEoKzgh5glanlTjja7PaSPKXGLE2vlV7xtQz+e8GJsyrdMAAB2b5QpEpKdyFeEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755508419; c=relaxed/simple;
	bh=xelw41k3pm5cV8Se8ISfXTeVZHnkMuKVO9e05eqy3No=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZhdJvXcVv4Eq16OUbiwxQUjvUjxsJ/U6F634hrbWGiZOJXpReaxXzNSkskZQRp5i0yAipTvxwvc0Dl3xUgSopN1DKVUxG5h2qrTiRbdwHZUODfxQwkrFrkwwtucCH5A0ehFhiS7gR/dLwsPaTHdLiK5gjsFrKeraWHJOyCqhf7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C9W1K+cT; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-76e43ee62b8so1594822b3a.2
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755508416; x=1756113216; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ByAqf7ew0qsvJFSkObrVJcMa/hiCKQ4k7aVcvlUbpt4=;
        b=C9W1K+cT5ps42o3H9HzYBnM4SPO26FQcXEVBikx9EfxJIgbUgTjQh/A1vVVVo0ipZw
         jTt85Q9ciyP1y5VGy7QLDV7ft41Qzb4FfkkXL3slsxH1+rlgiDc7Xd++nU6RtiIoBPKI
         L6/Rzr2zHDjL3GN5WoEfYPn1SYFGiMQULulV2qc+3FERwucLibJTdVxqu9RQyaQyeyf7
         wbHN/lijD+5af2eb/dNiOcq+WDmqkixx3thL2CRhLntiTtBcNkdvGms9GTQMmAYWsuCR
         xfu1AfjnzJsrrzFuL8m3f/Sggy3ty+PKgb3TTH8tmbLWYYOWRQHDH3z5+ysD1MHb8l+3
         8ZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755508416; x=1756113216;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ByAqf7ew0qsvJFSkObrVJcMa/hiCKQ4k7aVcvlUbpt4=;
        b=OjoqqoYuRj4O+3BDArgjvJjdatPqKPLeXu4QBwJfx9UVbcZF/XWqRPk0uQITcg9rzY
         FrfREAgK8CbYCe8Ed1mnUHxrQkjSZqeWv0Vy/xTld7tijEcg2cxkBahpPUKdMiFs5Wq4
         A+fzT9c7xxwjf1cNbSzQvBnP+aO/1b00U1o7VU51WStEZSF/Ocel1OXH/qOqtzGbWu3r
         AJ137XgMNAU2KnIFpWVrsKvaWjODvSRcC0n35DruaH+jSd+932nW2/3pYvBTACSofuIz
         pi8TdAKJK9ly7UhB0MUA+UNI1HkwU2hYZbzq5XWDVDveVZppLQ7rCrPxevBR9OjOo9Mg
         GK+w==
X-Forwarded-Encrypted: i=1; AJvYcCVznId++1YJ58cfGT38u4UXbVpUHLex9DszlC00JQ+cZ+jEwrsPTp75AvEj4SnEDtv81uMkkJbKgoqU@vger.kernel.org
X-Gm-Message-State: AOJu0YzR3xyZoCIt33SurrsSnhKbZaeuYHcLG1ZLiLVNKQSGsu3TQyO/
	1+R4YK/OTvVzi7rFoPAkpuAQhi0RBJ2rL4UBM7lnud+Naklduo540vudaeGfo/EI3kA=
X-Gm-Gg: ASbGnctbq7jKRIjXJDB3PiPJvp0I1+dn/w3oeT0rgecfra5WrfSOtIc1m+i3vEeI4cG
	WazN41qZPpmswcKID+q0n8rNnH0cSgRNr7UvpBr0gTrqHqlJGeVtpdDhgTpgqV9V1FDnkX74+lc
	RFSLc+bdOcx7fkfBvzh9Y1SmucFQytlaMiuVhGZV40XxBZHR0jwQeIAVGWPQtEa/oH98V75tOVF
	GxCidZVRKkh7vxRbTI5qTRyoCsjdtJg3FdbiPI90dKu4tMH/YUmgMdZnFVHjvr/Q9lzMUV4TJ46
	jWcdVUdDYdrcOlFe9MS+gIIyW7VaC0OCjNjuvAyhvKvuRQ/g5Cz61P4A1nj6wlznvEH3OQpX+hb
	3VzpmTOLZP4Kt9Bm6D0TmQWo7
X-Google-Smtp-Source: AGHT+IH4KDM7M4CRQXVnB3k6j8efu5yywyMexkJLQg2z4smAorz+ZWupNwv9P9EteJCL5oCvCbiASQ==
X-Received: by 2002:a17:903:1b04:b0:240:150e:57ba with SMTP id d9443c01a7336-2446d6d33d2mr159454275ad.3.1755508416372;
        Mon, 18 Aug 2025 02:13:36 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c4d680sm7505714a91.21.2025.08.18.02.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 02:13:35 -0700 (PDT)
Date: Mon, 18 Aug 2025 14:43:33 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8450: Add opp-level to
 indicate PCIe data rates
Message-ID: <20250818091333.qlbipfkg2hasdzwi@vireshk-i7>
References: <20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com>
 <20250818-opp_pcie-v2-2-071524d98967@oss.qualcomm.com>
 <20250818090240.in7frzv4pudvnl6q@vireshk-i7>
 <5f3261c3-3e44-42a5-bac7-624ce4e7041f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f3261c3-3e44-42a5-bac7-624ce4e7041f@oss.qualcomm.com>

On 18-08-25, 14:37, Krishna Chaitanya Chundru wrote:
> I tried to add the level as prefix as that will indicate the PCIe date
> rate also instead of 1, 2 to make more aligned with the PCIe
> representations. I will update this in the commit text in my next
> series.

Okay, I will let the DT maintainers confirm if that is okay or not.

-- 
viresh

