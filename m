Return-Path: <devicetree+bounces-109898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 345D599865B
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 14:43:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DB5FB24353
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 12:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88CD1C579A;
	Thu, 10 Oct 2024 12:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CrHXBqDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A2E1C57A7
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728564116; cv=none; b=tlFXSscyVJIovrwqaNv94uG5S5nyip//Rzv5UimJ5MZS1EE8NavcQ4YPoAPdXLOMaEpPCv2jnUNH9rhwZvXLJkfOBIyT8zso9E5RHhrA2fkYeoRGcov9y2SSRMNQ9oATJvsznkSs97XPVrlVXkQjWwe8YraFRu9HzNb65fgxxdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728564116; c=relaxed/simple;
	bh=WLqZDrSYW+WetA6c31VliZ+hc6ox/PCcc9Js0qtVKn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ObYatyLjwHE47cnjjn7GjKbuMpcGZQuAchyqoZqQqziCNWT3C+c2zz1uYP41sT/V2Tb+RPx4AYI9ox2ru5RdDfLICbzYO3YJqkDlssPZkLw6G9vshjpJ7zwgaymAYeG6zWZ4sjnIXZ6bLwKvCzGKGzjCYJ3INS/w51HeLOHdjao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CrHXBqDr; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5398e58ceebso818447e87.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 05:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728564113; x=1729168913; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4hH54g7776gCYVY8urOB6qAJvXyK9fVwOb//sgz1sSQ=;
        b=CrHXBqDrgbS5mhfQNs2kaGkzAJ3elzC8F1mBZT4qdI+WiFZbOeQZlsq9bYDQW97HRa
         +K+/aCzF/UKjSojEbWmJ5oYOBOgG7kaNiYb0XFWKpKdPVLNXVo5qNG1uFZL7isplY5ZQ
         s4N5cazmDlj2z03piiSqojdJz6HhdMIa1+ZV+kP61EMkOA2l1npw7Ppvl8j1Omkcpt2I
         mHWYkWf447YyMuuomjhQmVtOqK5GSvQMrCS4e2i4Ldk6YBoqNylkQI22LVTIKtL1yUzJ
         KRapQOF4gTAQ0P7gQZHbp5OK1gR/8jQdkOJs+lKHU1afMZTkf5cfjblYNWi0tENxIdt8
         xnDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728564113; x=1729168913;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4hH54g7776gCYVY8urOB6qAJvXyK9fVwOb//sgz1sSQ=;
        b=DowRH1WyHf7lF4DIXsgW/GhkFOifbSBylNZ62jrppiA4NVSUrfp9ECO1dyib9mOlqd
         dypKiKCfKH7AS/3U9MIf3MHn7HAQnJbAf6ZeF+Q/Fs01SqpW464LIM9VJQSOxTFhu/LV
         kzQT2cG2dc4yHLjnsO0X+dkWSSp/6jxla9WFAsmDRqInHV4dAPjIw3/Z9b90FOcyonC7
         HZgSL8RKNAsVElAfFkL4SKtau+AK1m0nXZKCrUJEzjgCy12Sgl6xhFh21NjMnSjyZ890
         4cbnGvMxTVVoJa3fUmvQ2MpFzDumsUNYlzVNZ9Rl/sI/8zBGZAIIxdG8J1Ib7/6aOuVg
         bRqw==
X-Forwarded-Encrypted: i=1; AJvYcCWxto4KWan3GR8VssMyXMpzf188Nx6byFpRfBPah4qVjECGqnoIq6lq48VCnTfEFSHWQF6fHvcTVcfy@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6tEiC07V/EhwT9DgJnLD//DAcwfy6Ah6hYrB2iLk+cV/Yd3k/
	Y/apCt8qFHF2awYAAp8UWchEeq+HUwu564hkRCuIABeK0FIQsA+JfvVtRshMnVsAv4MquEGajJd
	7nlg=
X-Google-Smtp-Source: AGHT+IEFKgLpasP0gVcJUzeb9+3RF13OHVEn722a/Yk0fUFVhkS2KwI3JLtqwkDQXkOHM1LhnYI+YA==
X-Received: by 2002:a05:6512:130f:b0:539:918c:5132 with SMTP id 2adb3069b0e04-539c981da6amr1141321e87.0.1728564113214;
        Thu, 10 Oct 2024 05:41:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb8d7f0fsm235415e87.146.2024.10.10.05.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 05:41:52 -0700 (PDT)
Date: Thu, 10 Oct 2024 15:41:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, quic_mohamull@quicinc.com, 
	quic_hbandi@quicinc.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: qcom: qcm6490-idp: enable Bluetooth
Message-ID: <uefit6yg4wl3tockznodkph6g34zocw3hgdrafgnhsmpol5t5x@jybqavdbhtaj>
References: <20241010110456.829-1-quic_janathot@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241010110456.829-1-quic_janathot@quicinc.com>

On Thu, Oct 10, 2024 at 04:34:56PM GMT, Janaki Ramaiah Thota wrote:
> Add Bluetooth and UART7 support for qcm6490-idp.
> 
> Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 123 ++++++++++++++++++++++-
>  1 file changed, 122 insertions(+), 1 deletion(-)

All the comments as for the RB3gen2 patch also apply here.

-- 
With best wishes
Dmitry

