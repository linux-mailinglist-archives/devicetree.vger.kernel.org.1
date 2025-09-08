Return-Path: <devicetree+bounces-214156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C1CB48495
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 099EA189790C
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 06:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3874A2E371D;
	Mon,  8 Sep 2025 06:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mCDATx/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C837A2E1F04
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 06:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757314600; cv=none; b=FEm1cp8Wt7knQa03qZKY1/u53f6xtIpObQGEFFgCH0lZ8jPvovC/in6ncHycglFhG+ttsPUlg1I373QVuBceLVE1HyXEFE025pmCE7Wge2C1iIp6CrL2VEk6DDkyHUeHx8ulbwD9bMcmVWDDvOSr+dP/BMr3GoQqcZqozCDLpjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757314600; c=relaxed/simple;
	bh=Csq17eCLJmv7/7QqayNfbYw3ZtrTeNIABT5r2MMdoUw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lSPMXSqcr5r2hwh3MR/XsDUsi2/cW+MXdbfLyTY/3I9i3IRrLsB5vlmQOwclMHiKINkH2PI1yjm7wu9ERedVOz3nfRuBlOFL1Q+6piJ6Ieu6Glrs4Hyz4ZGUiovx8w0nDlyIBnI/t4IngesQ4I6bKayAhH5/t7jJNDw+4f2H3Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mCDATx/3; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-24458272c00so46545525ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 23:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757314597; x=1757919397; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vfO9YzOQHvlcLzI/Oqj9hLG6esUOkytAkeiwFxmfpUM=;
        b=mCDATx/3yiX1K5qsI/04JjsJivHS4KLolpgblY0iOgK/9Zq+BSieBrZtQLVO0Je/ke
         McavgOlHN+BUVOpD+oxZjjwEymV9gaD0mMBDdCr85p3TrUJlFjmbOdK43DBycCFsI3ZD
         Vjj23N7CES8gSNHEl8PutjuSWBoaZ+JbxFm6UhdF8X72cpLYI/vnxcgvsx/1/lBw7pb/
         lz0Y7BJmn9JPQj82NBmoxl79rKYZMoYbA/kMcfHGPLVCG8Mbzx7LisyXKuTPbn80mSzC
         cCgSLUMCPr0VFZZTUL0uTs0dBqjD6sNcvpCaz2GeEXb5q6aqBwrY9AmJ8NIJbaCr74bd
         QOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757314597; x=1757919397;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vfO9YzOQHvlcLzI/Oqj9hLG6esUOkytAkeiwFxmfpUM=;
        b=WfpkWAW0Q8sZyBy1AiztIRyR1qJ1eSwAuZQyEUwei+8uEl1wPBGpoq9+jL9jviIeO2
         9NzaS6jlNZqS5LeFY4KwKIPe2mYRyltHynGjE01EVyI+Jbc6Wc2SqXjzGxKEP+x6crWw
         BmyzE9wyndwM7ALgR+NU4DWRTwXy0Obh0JOSF/mnqgTwpqCM2KFFlo+ZGVsK45XgrFc9
         fk9rGmo9g94On8jOQTpDF5ggAyVynOnPqbKRa8WkxVbYV1QM14wZ9Yn06CPgPprru8fc
         HNQOTea6Ct6Hf3UX/LTfqwrBgEd6p9QgZGxB6Wx+OE7amARgLciLcfUcnivALx0y3ol+
         xc/g==
X-Forwarded-Encrypted: i=1; AJvYcCXgbvY+My4rU969nwxgAiGt9nkuyKI9m4O/H+DdojmyMaJdIs7VB3aeWixFUDT/UBCx5Mhv5zI5E1Gu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Cr1TSrVdZGvTjPNSSJ1LBgZ1qfLT+Pn8tNlVMiVpy7v1tcZG
	wD2GJrATWdYdSsmqyFTn42l16zPZJ1lv+1CP87QkdRt+HT9DpDRwL1ekIIzqhHQY1/8=
X-Gm-Gg: ASbGnctVKgOA7co5/sR/F8osCg/fypzbaPAE8WICefQtfXQVmX+k6FLIYyB5DmpyLZk
	hTkf6B+faDPGSGji2zKlDevO9Y+OWysJtM2yO2Z8KxjNVjohDYt4b9vsIZyi+Vr+4gxLEuplPtL
	Kbb7oV6obHcPyYW0S1hVCNNDk5+s1JiHa5yqZGLJJSgptAaBSKScHsSD+TiPsRaJBooYbtfMMU9
	FUEb/l5Bh84ciPzS8v12ioVy6bXc7gECHUJDwcSQg6Up2UxWePJGpDlb65wbY2FTPSbieMAY3xT
	ugH0P3J3EQ0cPw4lhy5iulVkAxLyRnqDrppAHmnApBXzziY0jY8e4JMyiH3IqG8w27v1ichiMkU
	Pi2mbOHetdxAHQnGeyxAjsWglDl2pz5Vge/o=
X-Google-Smtp-Source: AGHT+IEqN3OfxLAXjoh0BbnNn+jKgNAUzLVPIjM7aPLqTsUdL89FPCgDXAlE/ux9DfFsh6AFqBW7Pg==
X-Received: by 2002:a17:903:3805:b0:24a:9b12:5248 with SMTP id d9443c01a7336-25173ea1a3emr108269335ad.54.1757314597217;
        Sun, 07 Sep 2025 23:56:37 -0700 (PDT)
Received: from localhost ([122.172.87.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24b905689d1sm150907355ad.64.2025.09.07.23.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 23:56:36 -0700 (PDT)
Date: Mon, 8 Sep 2025 12:26:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: cpufreq: qcom-hw: document Milos
 CPUFREQ Hardware
Message-ID: <20250908065634.m4p4tmjyb7h5bcfq@vireshk-i7>
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
 <20250905-sm7635-fp6-initial-v3-1-0117c2eff1b7@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250905-sm7635-fp6-initial-v3-1-0117c2eff1b7@fairphone.com>

On 05-09-25, 12:40, Luca Weiss wrote:
> Document the CPUFREQ Hardware on the Milos SoC.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

