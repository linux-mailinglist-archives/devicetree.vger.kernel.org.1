Return-Path: <devicetree+bounces-136203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A53E1A04388
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36C50164C70
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF691F2C59;
	Tue,  7 Jan 2025 14:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SMR06eDI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B801F0E25
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 14:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261981; cv=none; b=l2AVVYqo7yYkLQEJa/yIZc9jIs+AgmqZKG3iPObOgwkR30eGz8Y0liWSJJx/okZngUR9s76eXAtV9t+iE0Lyy43iSrye6rTXXlXqlskN8E3hzhXRBHjTdYuBoBmnmQ3ZeviALhEDfprNCXPdSD8FD8LHva2BoKU+UoGjbFx+6sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261981; c=relaxed/simple;
	bh=rwk2c38iwo7mVDzYO6kOS55wSuGj9l6YRCJLROAsy+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RfRltTV5GUqqyJQiUJWgD1oZj1+pu5gg5hH+PDAQKFnp3Q6GBgA0sawWKm5J9TXL8JEaSuO4EcHr69+XQnH9WvxdIPJXBMO8q/3+ftbTi5RVBPL8YDJSohixQ/pmkCqBTqhhTTObzofSniI7ZmLHh8Zg+USgpShlyCHNM/1Bb+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SMR06eDI; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53e3a227b82so14216968e87.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 06:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736261977; x=1736866777; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4+tMXMMx3Gas7S3TmVN5d5qx2ZmZWgcEv2HRlb3nK6A=;
        b=SMR06eDIEKF+dDTG7hCemZp1Pv/K7eLM5xZbPRV6kloIKGmk0xRsXlx8+6Q5VLqo+h
         oqoEJXkHsL5ng8WWWPv1ul7k6KCaxP88wkuuQNPt7Fd0l2Ku8kFJE5W+Tsa1OwMedpil
         678XlzXuLexANdM/vTDL0iH09nVylhPfiiCk9E4Ht6VADP+qDmfrqO/B7WriyaDI+EbC
         /FSb0gRJu02+Lmomcx/3+uzFDrlUfxAjUb01JOnoq5QKXOxsfk/2XMQDbFaBolFr98dZ
         XhV6cjhvlaxsbldPuDM/E7SqO4inpmOoU5u0bkOtfuymd+/Z02wMcF+SHutSjCjYsQwA
         BcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736261977; x=1736866777;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+tMXMMx3Gas7S3TmVN5d5qx2ZmZWgcEv2HRlb3nK6A=;
        b=aI3iPCBmWZJ67y3GZZMQvhJIDOwUOm6qRzfjq9ZObP338joevWFa2lLx5WwvhJb4OG
         qABNmR8dq14sL92MwNfgh7bMyrbEFYKZKyrh9p+CKQ1UXbKcHqNJ4S6c66rwUTkJ1hnU
         L4bKNnYw9sBZyVMMUbhSDENXGbs286BxFqT1U5K1VFDJitIhdQHcOEy0TJqCleJFCYo6
         yUUyk2V9a7e786PymOqGJsD3W6OImnmNr9L5phnSyEevNZWNSBBYtFCxVcevfs2WTkmo
         eWdf9CnX/ttp6vy0GbAlpInVTXwqaQCcNpKhoTFYlNSdrdPHtODpsQLgpM3WFlAaAS7Q
         uBmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwoP06yX0pXJrASNc6TtEGklNyJDGlopPeZ2/C02CzNbUQ/9eJBUO+qlqtaqbQ5GjR6xlPEmELu6NX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8pCoKZadI9R+SfP2SccVMuPPQg9j3zxxtlmOxjkArnRQ0W7/y
	F1fYPbMK1SP304ncbE/iIDfa5KbpTdCgTkCFoPHwM0eFmowk0snOFxd7yUzCTwI=
X-Gm-Gg: ASbGnctpFgqK7/oHY0VidzofhzhakJBLO/PAjYNgGm8p7CQNCLSyasrrGojJ0/1RvTN
	jf/R1sRPvSm7HF4styaWw92Xcw4aaCMDWgf3kj3P4OvCK2vay6J2qx78Lm4q/+7mbAOVMpO9mqr
	AWma6NhQBXTIswJKg6bdxYhCGOXt8pGmYeOpp3IPf2ULXY3EztONuJ/nBm8BjTojX0f5otJ5Kww
	o+dGVZkeAHIpRVpFrVzK1YYAnKZCwFMTpvF9i6j/asWFNTz+G06sUDwnxdi8KAYZfdQFB7aZSTC
	zgP/Zv3/rf2sOMRZmifqpL2ebL2n3YlHRZOa
X-Google-Smtp-Source: AGHT+IEfA6+3JA9QoZe5TfehNOUHvzxEVNx4Xj3j6hOCVSTxt55YSawGeAotiCRHoqcs1nEyys1w5A==
X-Received: by 2002:a05:6512:12c7:b0:541:1c49:270 with SMTP id 2adb3069b0e04-5422956b990mr21327115e87.49.1736261976763;
        Tue, 07 Jan 2025 06:59:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b082e3csm57916231fa.114.2025.01.07.06.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 06:59:35 -0800 (PST)
Date: Tue, 7 Jan 2025 16:59:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] clk: qcom: clk-alpha-pll: Add Pongo PLL
Message-ID: <hrykjklurrj3gqsauwtdiptyqf7uuiu5zuk6dtevchukrsrmty@tqgwqhtgqkbe>
References: <20250106-sm8750-dispcc-v2-0-6f42beda6317@linaro.org>
 <20250106-sm8750-dispcc-v2-2-6f42beda6317@linaro.org>
 <nasilduqcbrdtfnx7ef5rzp4blyvbwhyypjpkzlmv4o6oohj4e@gz2a6kffkf7p>
 <940a744c-ca5d-4edd-8a90-be2f8c7da7c0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <940a744c-ca5d-4edd-8a90-be2f8c7da7c0@linaro.org>

On Tue, Jan 07, 2025 at 02:36:52PM +0100, Krzysztof Kozlowski wrote:
> On 07/01/2025 13:36, Dmitry Baryshkov wrote:
> > On Mon, Jan 06, 2025 at 02:44:30PM +0100, Krzysztof Kozlowski wrote:
> >> Add support for Pongo type of PLL clocks, used in Qualcomm SM8750 SoC.
> >> Notable difference comparing to other PLLs is the need for calibration
> >> for internally generated clock followed by wait_for_pll().  This is done
> >> in configure call and at this time clocks are not yet registered, thus
> >> wait_for_pll() cannot use clk_hw_get_name.
> > 
> > Is this still correct?
> 
> No, it is not, I forgot to drop it after reworking code.
> 
> Patches were merged, though.
> 
> 
> > 
> >> Locking during this
> >> calibration requires much more time, thus increase the timeout in
> >> wait_for_pll().
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> ---
> >>
> >> v2:
> >>  - EXPORT_SYMBOL_GPL
> >>  - Move the PLL calibration and wait_for_pll_enable_lock() call to
> >>    prepare callback.
> >> ---
> >>  drivers/clk/qcom/clk-alpha-pll.c | 165 ++++++++++++++++++++++++++++++++++++++-
> >>  drivers/clk/qcom/clk-alpha-pll.h |   6 ++
> >>  2 files changed, 170 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> >> index 00d3659ea2124e26dd50c1b4e88ba71c1411442e..df609f7e394de2dc73e60df01b1ad71714c0719d 100644
> >> --- a/drivers/clk/qcom/clk-alpha-pll.c
> >> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> >> @@ -58,6 +58,7 @@
> >>  #define PLL_TEST_CTL_U(p)	((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U])
> >>  #define PLL_TEST_CTL_U1(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U1])
> >>  #define PLL_TEST_CTL_U2(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U2])
> >> +#define PLL_TEST_CTL_U3(p)     ((p)->offset + (p)->regs[PLL_OFF_TEST_CTL_U3])
> >>  #define PLL_STATUS(p)		((p)->offset + (p)->regs[PLL_OFF_STATUS])
> >>  #define PLL_OPMODE(p)		((p)->offset + (p)->regs[PLL_OFF_OPMODE])
> >>  #define PLL_FRAC(p)		((p)->offset + (p)->regs[PLL_OFF_FRAC])
> >> @@ -197,6 +198,23 @@ const u8 clk_alpha_pll_regs[][PLL_OFF_MAX_REGS] = {
> >>  		[PLL_OFF_TEST_CTL_U1] = 0x34,
> >>  		[PLL_OFF_TEST_CTL_U2] = 0x38,
> >>  	},
> >> +	[CLK_ALPHA_PLL_TYPE_PONGO_ELU] = {
> >> +		[PLL_OFF_OPMODE] = 0x04,
> >> +		[PLL_OFF_STATE] = 0x08,
> >> +		[PLL_OFF_STATUS] = 0x0c,
> >> +		[PLL_OFF_L_VAL] = 0x10,
> >> +		[PLL_OFF_USER_CTL] = 0x14,
> >> +		[PLL_OFF_USER_CTL_U] = 0x18,
> >> +		[PLL_OFF_CONFIG_CTL] = 0x1c,
> >> +		[PLL_OFF_CONFIG_CTL_U] = 0x20,
> >> +		[PLL_OFF_CONFIG_CTL_U1] = 0x24,
> >> +		[PLL_OFF_CONFIG_CTL_U2] = 0x28,
> >> +		[PLL_OFF_TEST_CTL] = 0x2c,
> >> +		[PLL_OFF_TEST_CTL_U] = 0x30,
> >> +		[PLL_OFF_TEST_CTL_U1] = 0x34,
> >> +		[PLL_OFF_TEST_CTL_U2] = 0x38,
> >> +		[PLL_OFF_TEST_CTL_U3] = 0x3c,
> >> +	},
> >>  	[CLK_ALPHA_PLL_TYPE_TAYCAN_ELU] = {
> >>  		[PLL_OFF_OPMODE] = 0x04,
> >>  		[PLL_OFF_STATE] = 0x08,
> >> @@ -337,6 +355,12 @@ EXPORT_SYMBOL_GPL(clk_alpha_pll_regs);
> >>  #define LUCID_EVO_PLL_CAL_L_VAL_SHIFT	16
> >>  #define LUCID_OLE_PLL_RINGOSC_CAL_L_VAL_SHIFT	24
> >>  
> >> +/* PONGO ELU PLL specific setting and offsets */
> >> +#define PONGO_PLL_OUT_MASK		GENMASK(1, 0)
> >> +#define PONGO_PLL_L_VAL_MASK		GENMASK(11, 0)
> > 
> > Does it really support such a high L value, or are there any additional
> > flags / data entries? PLL2 uses 0x493, which should end up with 22 GHz
> > clock, if my calculations are correct.
> 
> That's the bitfield also in datasheet (except downstream driver). Not
> exactly answer to "does it really support", but not sure what else we
> can do here.

What is the PLL2 frequency if you program config->l as it is now
(0x493)?

-- 
With best wishes
Dmitry

