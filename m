Return-Path: <devicetree+bounces-215829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F1B52C8E
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FDBF3A7745
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9462D4807;
	Thu, 11 Sep 2025 09:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkqDh4DI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE56E2E4279
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757581358; cv=none; b=tgmgZPfOsaCtbFPOIKI6V49A/YuZZ3n/Sfrp9WUyq6UZTpI4AbPf7DtP0d638HTxwWiJBXhoiDxvCWAPYDSDHoZKJokk+nleqPPqabtXOgTXG2EYzz5r9ZRAPYWFwioO5kZH88fkF2R7hn254DtDrcVVou4UYTlLb3ZW4dc4w+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757581358; c=relaxed/simple;
	bh=UzTJmRwSuBGTfGbVMCEkyvO+DHGhYaptU6WgQxWrQTA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXXrS3v91+xH2vPYffxh14yXC0gwCT7d+a3ZPF+myu9Q13j15LjVi7QKX2wn2l//zom6FIOr+4OPnNQk5C5FYl8kW+U24zNfKurZck8LlmfcFV4lNb1V4r2Hx9NuJZAlNTjNK6BUxNp3g+IAcz8IweCLHweuz5MeY0o2LSZwVeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hkqDh4DI; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3e2fdddd01dso107687f8f.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757581355; x=1758186155; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/zaq74E/O3TMzVibuqo9ZKl9wzf7cmcYOC6wFsi2v7Q=;
        b=hkqDh4DISaB7oAIHe4HglXgyLYqEFnawP4hhExdDMqktLmUn5k7fUjy8b0aVhaVPcW
         UYNRJjDTVBPn5lzwxe03Y/cEw17or3OwbQlAyaJOfyGl0Y2OpPLLMqlvqry647pQTNNW
         8jOYGy0e8d6b+J5HjOmcFAtWgyrhmKRhR4xipyolOfDOZ7+w3O+lN+TVTPjpT/d5oSrz
         w/YhXrWxFztXum5Ptgg5nrn01UzRIxs/7xPAiLkzmzoIprMpoP94+4Y4c+6nAcdYaLa+
         6EYhTGzjC3jZVOFdoCzwANKN1aV/WbGnniA15fH8eRAlPPQlu2xiKr6Sjp6Ahnhe4yjo
         Ncqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757581355; x=1758186155;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/zaq74E/O3TMzVibuqo9ZKl9wzf7cmcYOC6wFsi2v7Q=;
        b=QEvuarX8RUyMpm8YbT+1FRlq7YPO6j25T3VJ+jAuVRUrGSxa2KOo06D4YJ4csA3lZS
         Y6r4+6ZFKhO86xKk65YSOeJmwkOb/Ti5Y325ogrsKC27aHilPkMxuepQPX97b913OxdN
         ShTCGE6UdFg3b6CHIEVli21wFm38SLe1Yo/0UgqRmSP7PwFq7FZ0gIWnzfpypH3m4Kmu
         5eGELgiKLRFaTGFYLI0coMCs2mchEhaETlk6PIEpKc4GbYAu+2ZEuvV5ES7tGmb1v/QG
         Nk7HkAPIZmodUXe07MmsIhi4fQtx7fzo2IwyRzKlM3TVUln9qo5wPuUYtcIQS15Y/m3N
         RyHg==
X-Forwarded-Encrypted: i=1; AJvYcCVMLsHNKg37kUDPPh+uciwjNcz/v/NGW9uRYLgrOBQWL1qCGivjNyppl7sN32c76iIMGPvFRKRmSk4X@vger.kernel.org
X-Gm-Message-State: AOJu0YyByBGa9edLSvO1Ak8+PYo//KMvWjNAVi8Jqew3oDEy2FAnHbQ8
	8+ODC39rBLXKEgkvNoifxXLOHhTq9z283ZMAC/wAqd185BvINBkenLyKxMnEugEfckc=
X-Gm-Gg: ASbGncvoMJYs5f4jo5D6zi8zxpar1NtV0lLsOpGuE9Da3VXNC1LTTPoCoGloLgg7hFO
	zxH+lwQqS0bVcl5V5MBaleMSXOXHT/dFGCr7aDHm6zBOJpFDoHnbF4fjY6yBzTm1Q1E6LsYtxUI
	M4gN7yaTDQKqQ9Hfdc3dR5fsaF00YlAAg4t1RozgjEYTyoTHiU+BGy4qZ/Di7gOvhPSOnQid9rF
	cBlwu/arD9x1ORikJ1fs5jtT7nmEtuThHBkMkjJd06eTw0dVm8/Y1nn3wmKJERp4IH0fnunJTFX
	QMuKkvV8KBlkgZ3Z9drL6UG8nAOI/3wemwL8mXroep1qMSx2r+PBwVwXRaIcvZDYCHIJBhQXACP
	lKalYtrRyaW4/GUHjYvr+11e4H+A9m52RG+IaaQ0NQ08=
X-Google-Smtp-Source: AGHT+IEpmqZKqS9hAWz+1L1aJGWyXbmn5CbSirxedo3gzH/80b0RJpaQWoe7+bkeQmLZvMcrOVYvMA==
X-Received: by 2002:a05:6000:25ca:b0:3e7:5f26:f1e8 with SMTP id ffacd0b85a97d-3e75f26f670mr1923478f8f.5.1757581355207;
        Thu, 11 Sep 2025 02:02:35 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607e13f4sm1606771f8f.57.2025.09.11.02.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 02:02:34 -0700 (PDT)
Date: Thu, 11 Sep 2025 12:02:32 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
Message-ID: <i7ckqu325thggaw3qms2ofoklh6r5rhthdwkuko2uzbaqnryhg@qrjsc5yh3dnb>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-1-02553381e47d@linaro.org>
 <20250910-obedient-ambitious-oyster-5efa6e@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910-obedient-ambitious-oyster-5efa6e@kuoka>

On 25-09-10 13:32:04, Krzysztof Kozlowski wrote:
> On Tue, Sep 09, 2025 at 01:07:26PM +0300, Abel Vesa wrote:
> > Document the compatible for the Glymur platform.
> 
> And it is not compatible with X1E? Say something useful in the commit
> msg, instead of what we see from the patch contents.
> 

It's definitely not compatible with X1E since there is a new version (v8
compared to v6).

Will update the commit message and mention the new version.

Thanks for reviewing.

