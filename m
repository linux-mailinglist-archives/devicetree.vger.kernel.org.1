Return-Path: <devicetree+bounces-153663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD76A4D6A5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CB1D3AA6D5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F24D1FBCBD;
	Tue,  4 Mar 2025 08:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lo1VmYry"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9061FBCA3
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741077476; cv=none; b=N2aUyExR4vSHmp8zMdjz8dzl67oG8NYQUqhqtWtCSI2+vfK6Rz/0ikZi1SZB/XOhL+N4hZ3IocM0HjkDUT2AoufuP65cACardQhWi4uwJlUhNPpWq3Jsy6In17C2CYIAZBXVQ2wJ8o8mV7/bZGPEXtocZ5MK4zK7H/182vYW1/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741077476; c=relaxed/simple;
	bh=KH3nMYakHro6elhaWLocPclcTEHSIfo+DXjkmYQmSBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=agoaGS7sMuSPnntjYIwuoWpARbZ6RNcpdnfjlrw35s2EuO2wGFjeKhdhJBGkC8C6MC6IlvrGgy2Q3okUTHprmfw5gA64EWrf/mQj58kW0mPTtTupuFduKtC4AGRjsk/Y//SjAbQFbXcoc6ugz4pl7xDJJsSU2zHEdviCZDXiHe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lo1VmYry; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30ba8e5658fso4464721fa.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 00:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741077472; x=1741682272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZVbEQw6RFiytzLhO8ZjD5z9kjTR3miKMHmSj3wWemVg=;
        b=lo1VmYryAiBxPVDFIZC5eSkNeqBI3deA4pp5EhTPCjr20kw90PmXx/I618ird/ga8f
         daZjZvXvOrqK+PgohZmmxDJ1YRWaPqUFF4ng3fO8hE6vdlTpxeA4lmykiQNBn2noVQ6b
         KJQJXjBG/e5HQUaEMkugy/42Lq3yTDfpfdUKnC+H0DuK6wwaw8imvybxzL7l38RuRl20
         4uiFO85T6BkwziKY8/Is8Oec4zeXy91ThjmtaknsrlSD2OdrObQ7yzXxSgf5SyaP8BYU
         X0eBcorAx+o1uSEQcbVG97kMBPSfxghxp+MWCXH9CdUQoGfBDCqtIj2sc0UnDCZBDc5v
         2SQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741077472; x=1741682272;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVbEQw6RFiytzLhO8ZjD5z9kjTR3miKMHmSj3wWemVg=;
        b=k9AIOect+fdqEzzBbVOzTyTIj+W5upLMJXgdarIou7dNGRFPm0UKHae9hgM1pddOco
         nCwzoa9By77jDrm40ogsRbKpnUv8enqxsG4+FJoZ8Kxt1NEFrehePYsYBRcLfxppiSkd
         AIDaF573DeIM8r6UmTuacKahu5AdGAzyo2QmqO+mHosrv7AMpjIc9+lOrin2ndQNKkoy
         54GrBFDK2lymRAyZIVbqZMKJUcI35GwCRiXdOC/7o9XBGg0rktlq4h8bj2DNBNPqp4wY
         IoARLw4cHCPj6CQ5drH8JwWfMIuFEOeNgMNUMagEyHcdQl20SDi1oHi7l9z/S+cA+tOp
         3kMA==
X-Forwarded-Encrypted: i=1; AJvYcCVi2ZlpHJPonNYazsIQ/GgCF7bGYBvImt3A6S5aMAUxBz3beQR1C1/knEd9093ThUgILBryzEIUfg6w@vger.kernel.org
X-Gm-Message-State: AOJu0YzRU7ocCWTdG0aEgmmQja1RPvMqkxvd1S8aHoDlWH9XDF2g5V78
	dAF3VXA2zglVJIDomNtD36JcrgD4PLrJ1bxwkHqYvDVJXjT9poSE7FmI5guA1Js=
X-Gm-Gg: ASbGncuXrgYUUZsbQQJH2sZ30xhWgbLdPm09jHaN3o6Ppor5xUs6qmNbZkh2/89OXGu
	GgkxJr4nFDEbbJVfPoJCOusCSTWMz7fXueV7kW/wEp9GpNiHsHXqrg8mWF9jSp8CxQEcaVYjCl8
	LXx65xGrVRFXujbjqHrVO6FOuegE+EVDdUKNMqT+I2woNr13Twd28GV5F/5ec0KVMblbmgR/BRa
	4ylokeJ5WdhngY//r9ouaptxGe8uizNpWvY7go0v5goUvJL4CjCqIqGSUNGAMPvH0TbZ4mYkhXi
	d5MbnWOiU4iaX+KITDTDCLihLm8NGlzPY5tv3EYPWAjEP8fpxpAORi5nyq0fTaeLh5GRJSOMSsH
	XA/sC2dy4CAJDPdUNinst4NM=
X-Google-Smtp-Source: AGHT+IHGTvkTD9fu2h/LbSP9/Yd5RUBp+SzgqOd1D6QzYUrOIsCFuwNCMHHcoRnNNIvYs952GekM0A==
X-Received: by 2002:a2e:bc87:0:b0:309:1c59:ec89 with SMTP id 38308e7fff4ca-30bcbb0c89amr3368341fa.7.1741077472196;
        Tue, 04 Mar 2025 00:37:52 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30ba4ac5f05sm10058081fa.22.2025.03.04.00.37.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 00:37:50 -0800 (PST)
Message-ID: <3210a484-b9c3-4399-bee1-9f5bbc90034c@linaro.org>
Date: Tue, 4 Mar 2025 10:37:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
Content-Language: ru-RU
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/4/25 01:53, Dmitry Baryshkov wrote:
> On Tue, Mar 04, 2025 at 12:55:21AM +0200, Vladimir Zapolskiy wrote:
>> SM8550 Camera Clock Controller shall enable both MXC and MMCX power
>> domains.
> 
> Are those really required to access the registers of the cammcc? Or is
> one of those (MXC?) required to setup PLLs? Also, is this applicable
> only to sm8550 or to other similar clock controllers?

Due to the described problem I experience a fatal CPU stall on SM8550-QRD,
not on any SM8450 or SM8650 powered board for instance, however it does
not exclude an option that the problem has to be fixed for other clock
controllers, but it's Qualcomm to confirm any other touched platforms,
for instance x1e80100-camcc has it resolved right at the beginning.

To my understanding here 'required-opps' shall also be generalized, so
the done copy from x1e80100-camcc was improper, and the latter dt-binding
should be fixed.

--
Best wishes,
Vladimir

