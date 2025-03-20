Return-Path: <devicetree+bounces-159466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 902FDA6B024
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:47:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A35B1896806
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 21:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A19227EA1;
	Thu, 20 Mar 2025 21:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sOIhLCLC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83EC524F
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 21:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742507257; cv=none; b=dAbESoXjjIlX31C/T+kf2BjSpNrHsTqAdBbJvUZ4crKLWKc/NGx6fnVSvI9AtZOFq54TEmeYmnpTA9dz8YejmBoEePdTMx3f22v6sTqXCVo/mE9KUukn6qSjRq5xGy0wvmsiZagmvODKhKXN0gkzETQ7FeS6rP0Pg97aIJaBuNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742507257; c=relaxed/simple;
	bh=6aFeAcQOrE9iX5bnT0IHoBmr8TSEA7XYOZSeAKpYzh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QmprzAsP4pJzNnRnW4D7H6ptP41W4ns0DBs7/tFHZJ2jXpBcxp7x0Hp/cmPyEbmpmf+3w9Bx9eMYQlltsCOi3CD9SG4+6rxfO9f1caoBCO2n9CymOYlMfC3MUM5R/bbVs956yAIni4r6UJoN879rsy+jexApO/W7VYCxyUs/NsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sOIhLCLC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4394a823036so13242245e9.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742507254; x=1743112054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0pDs0WVPO2a99lut0kg8geJYSA583A+0xvILgC594aY=;
        b=sOIhLCLC4KdTb/cpTmXDZvW3uho4lVcm69fYU4rW5iyvoV8Y6ux/WSuIjwE1fZCdcD
         VAUtny72w+EdsGYjuOqFulw/uPPQ+rFsgQkOsQTT7sGyFNvqbze5PnRUkL/mcKr4qfIg
         sWPfKwqc+y7sE0EC3unb0RR2Qz+Zs+Kidzj0/TWlLU0o1EA6AltMeLNo7vWiOExR9Aiu
         8syp6JhTW0V5zD/+XZzlfvWfwj8kzIwSZDfV+FDyJYtiWtxd5Ci5oQWZebWSV4QZNzig
         STgOCJae4/84EEZpeUja9eSHuR5bBepwoMhlgDRkb406e9kCOwfFXbg6+1grryniDstr
         oZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742507254; x=1743112054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0pDs0WVPO2a99lut0kg8geJYSA583A+0xvILgC594aY=;
        b=IrfFsU84DPaRTGYOy/UJwzleae+QzXCh7nXTBYaJ6wcBkA8isg3AGpaoErBIgmluzn
         BYqz4rehxw+nCJki1PhYWTKhZeFsa9DnJM89xPoANxY7uzIrvh9Gddn76rykJPvTs3cV
         XAw6MJxMoL82pDPL8lQeDulfNZ0knjrt3qTrWrM35Pd3x3U+8qIfLB8vwTD1/95nrXDi
         opQKvb9erzi0JoVygoS5tTTRifX3IeRv4PJtq0BfiTiLPpur2bFls7sdOTvb9AbhEUqm
         ejYrSmba1J9Hz9+iaPg9NU84y7JWNIIZFXVH1ByqHzYXNrT5Z3sPsJvg5G0NRwTogfeY
         0lMA==
X-Forwarded-Encrypted: i=1; AJvYcCVwQuppGe1ipYKWZjf6ie0RoL+7gpac3aiHiKpsTD9s2JBcLu1TGYwtuJObhMmnaRi8WwuC3tsKk9S2@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Yrug2KhhnUjjhTSUPLe3yDkGoGV6wGotec1w64TZ/8RGjaVp
	BPOpAb3XeeWikRw6ewt58EKG0dBlKKLiM8V4sSEcdAhWZIPtxZMWEb86gHr+uRM=
X-Gm-Gg: ASbGncs8p9G3aT+p/ZJyK+0k0crqMCDnOn5HdDGJwuIXGcYjF9yP1AlIqMr+BUNf00+
	KsHk1xbEy2lbWU56iAyjJ29x+ksQD7IqPJ8kTFnZI6WrBvvKriRni76FS1qL1RypzGYVVbP1vDx
	P/gTlbVVZ4VI/86E41b+jE1IH9aMR7k7WUwDZw/H0V2bbgEW4SsDcfBrU9k+rnfpw7df7mZsA4+
	pUpYJnuwlOmuxIpz1tbean3hM9bY7qsEa0Fy9V87F4q6Gn9GKbh1pWoKlFOzZ7ZI2Zamcv5/BvN
	pe6tsVm35rOXhb19Sd7U02C+frYe+EkH4uZMr2pXz23v0JDArydwzbvlYAJfttAit3HfAZ3zT39
	xeqWhooD4Lw==
X-Google-Smtp-Source: AGHT+IH1QR2lA5j20mnRQxFbbvbhsn3PhLymz9T80NY3pVx9+kYUunZaqACuc30VQqERvPO4097GDQ==
X-Received: by 2002:a05:600c:1e26:b0:43d:300f:fa1d with SMTP id 5b1f17b1804b1-43d50a4e498mr6521745e9.31.1742507253926;
        Thu, 20 Mar 2025 14:47:33 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d3bb2b2ffsm67871675e9.1.2025.03.20.14.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 14:47:33 -0700 (PDT)
Message-ID: <a4134aed-0b6a-463e-828e-326636fbadc3@linaro.org>
Date: Thu, 20 Mar 2025 21:47:31 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sa8775p-ride: enable video
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 sumit.garg@oss.qualcomm.com
References: <20250320-dtbinding-v3-0-2a16fced51d5@quicinc.com>
 <QmxHHC087sYySMBmJH4INHn5KxydFiCpjxuGSwMWq2izyyd5JQByDX7LBzvgK_SccwtrWn2FzazAyF3252YvDg==@protonmail.internalid>
 <20250320-dtbinding-v3-3-2a16fced51d5@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250320-dtbinding-v3-3-2a16fced51d5@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/03/2025 18:06, Vikash Garodia wrote:
> +
> +&iris {
> +	firmware-name = "qcom/vpu/vpu30_p4_s6.mbn";
> +
> +	status = "okay";
> +};

You're out of alphanumeric order here.

Should be:

  };

+
+&iris {
+       firmware-name = "qcom/vpu/vpu30_p4_s6.mbn";
+
+       status = "okay";
+};
+
  &mdss0 {

---
bod

