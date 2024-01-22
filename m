Return-Path: <devicetree+bounces-33732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 409DA8362D6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:12:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A1A71C21E00
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1853BB3C;
	Mon, 22 Jan 2024 12:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qrwm6BJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6E43BB32
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 12:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705925522; cv=none; b=YrsZlcyC4oyu36br1SGObghYOUwKc1d5BlCnadiBzYF53TUtvVoO79YHgcHI6Vy9eJ0jtOWNdCbifjjbAesJkttJf/cZlZSc2x4xAF/hGUFKdRmrx/yGTJNQBn+iVR1H/y0M5KDMNS3ylwu0sWDQ2N+7+qfhBuefHdLeGuMhaLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705925522; c=relaxed/simple;
	bh=XsjrwFUbPagjf42Y9qmXToMWE70jnXHEmc8i9mZpqmE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nSzBsYDpkcIOLDmtFCpmj3qEt5khmIyTocY5RMCpfwY3hQXny9dDtrRZBT5W3NC+n+7Bp6EmKyz5eESI48RoTwCmflLFdJP5kNAxUjRRd4gcpUbxZxlZxwMedGmWp/hKai7ShnIetc14exO8p2l/XM5e0h5nCZL4B3ay4JON/OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qrwm6BJP; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40e7e2e04f0so34503525e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 04:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705925519; x=1706530319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JZISQUpNOr22c4fKmEuMChAKwdEFwddCk4q6QmgaO8M=;
        b=Qrwm6BJPQMrg/yf+dB6DqVc63A3X/YXFuFsXUchGmEdtnF0CoE9EkuJOU+uonbw0ot
         ZvxTPM0Y99+Z92I26CqD8T85SBF56LaXey4dfMyVlWbLB9WrTfmEX02VoOTCc2/S2Sg+
         yDKOjoS4hwFdu+Z4KVAD/d3ImKhspswD+6jDK3g+vrO98j8gVkh3V4x4yHqrPcFqeuWF
         cw9ZJ7rqcmURhwpTaZEuYkk7evH5nMDnGSWXEuVq1deKnEyIDAxIFNM2jQ3PSK4dtUNV
         PEcSnSj/TKAWdSDHGWdHnpZUTccyZyMqs3YcQ1p5UHVtkmasx4KKpPTRUBfx4ERTPzwc
         +SOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705925519; x=1706530319;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JZISQUpNOr22c4fKmEuMChAKwdEFwddCk4q6QmgaO8M=;
        b=i2bdxVg3yMYnabelXDzoa8iP4ZTxNNjuAY9XQ0DLo1DZxpCsYHB5zzQfqBWOZaoJE4
         HUVt9JYOeknATNdQ6luVoXf9NNyHwC1tdvCKz/w3V6O9tUkJVdRc5+TAzKejqF33rcFy
         EZ1tTpTOe49Bs43H3LZb243GXm0OmnUCT+FBsrzFyYNJEMqpAnFWJGtihXSOE2C0b8hv
         N7wEMkiN4NUIQlMzSQEE1etiXBXsLYcXJkPARQtvkL0H7rF9Lzsr/hcOretgl4VwaP8Z
         dX0sBxWwob5PN7h64WxYUmExZawPIAhMkbGmhFkTwhd6ulLuDkMjBCpF1ytcW5IATMq9
         Cgtg==
X-Gm-Message-State: AOJu0YywAa2ZshsuwIaRWaBXKdbheWR5XULvpfVz7G+/SXJE8NAv5+6p
	Uv3y6t4zVElfCrAlFq625yADxwaiqaoMXXOnRSgMURPpjnhoXGgkZx1pKuyFKOg=
X-Google-Smtp-Source: AGHT+IGCG5Khoe/1oQjX1DFLwPQkaYesrnTTQ5bk157a5/61v0MK6kfoRoDLbJ0mfk1ZEGN224EOGw==
X-Received: by 2002:a05:600c:2d52:b0:40e:47de:d804 with SMTP id a18-20020a05600c2d5200b0040e47ded804mr2091816wmg.63.1705925519179;
        Mon, 22 Jan 2024 04:11:59 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:371e:2a86:62f0:bc48? ([2a05:6e02:1041:c10:371e:2a86:62f0:bc48])
        by smtp.googlemail.com with ESMTPSA id c11-20020a05600c0a4b00b0040d53588d94sm42839717wmq.46.2024.01.22.04.11.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 04:11:58 -0800 (PST)
Message-ID: <e4288d81-cd0c-41cf-989f-85ce10d5904e@linaro.org>
Date: Mon, 22 Jan 2024 13:11:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: timer: exynos4210-mct: Add
 google,gs101-mct compatible
Content-Language: en-US
To: Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, tglx@linutronix.de, conor+dt@kernel.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-team@android.com,
 tudor.ambarus@linaro.org, andre.draszik@linaro.org,
 semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-2-peter.griffin@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20231222165355.1462740-2-peter.griffin@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 22/12/2023 17:53, Peter Griffin wrote:
> Add dedicated google,gs101-mct compatible to the dt-schema for
> representing mct timer of the Google Tensor gs101 SoC.
> 

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


