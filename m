Return-Path: <devicetree+bounces-138984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DC4A13816
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 11:38:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BCEB1889075
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 10:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6580A1DE2B4;
	Thu, 16 Jan 2025 10:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vohKc3eW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870A81DE2A5
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737023916; cv=none; b=CdAuix+uqCP467e1LwNhFqSp+NpimM5UQE6tvJ6LqnDPcGNbVeBeXQ5xdDk2zhrFpqyMx4hm68nYwKr7EkV0a6L5ZlvwONZ17NBAFrIVe2C2jZCShsJQ1rh6vcZ2XuUdo530rshqz90UZJJMCwrhHpNC3draeuC3KfphVul1GI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737023916; c=relaxed/simple;
	bh=IlhjavGIe2MHWqoogZgT0Tv9nU2JtOgo2Ll+57Tw5AM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F/y2LqVvyOLeJ0VGckbNXxSqfN3EHadfASU339Od69dfG/baoC6LKtrIK3k6AMQo0Ie7Fzmn/dH3h3tSjcd3eveMrHKGWxA8/NpW2AtOTce4vXw7DZfZyQqVh285BXgjxgtq8EU74PeAcLPfYmoWeEsS1rULxOMMz4TasU6hRYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vohKc3eW; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54298ec925bso899998e87.3
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 02:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737023913; x=1737628713; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pBhCNj1Ot5T/tQjv1DMwwgWfzqJXz8/rTbkNJze1yOU=;
        b=vohKc3eW2PvFiWfDQ7KLmO10JJxLi0K+wEgZEA4fGiMrkwNm5+2CPvimg3isK7xrkd
         43f84EtaoBKjJz9m6c2nATcfR2qa1mTtfU15DW1UeTxy3GYLAaYZ4tonHGhZuXiEqwNF
         VJgrBTSC/lhHvKObiBblSHRWHSAgyQxLSMDW9mCeF8pr3LqrVDS/XcAt0jH609KpZfjH
         DPX+qXundgLtBeMt9trenk6McULbYPpKMUxn+uzB+4FA9/HlatVERjKz5SZVH4R/1deR
         PKncHI0GvceIxQQ9lnLO3Ovhh4Bh9J0VBwJMJeIfMcx8Rm5qlhkkVSRwiEb9FeOaHWar
         FHuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737023913; x=1737628713;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pBhCNj1Ot5T/tQjv1DMwwgWfzqJXz8/rTbkNJze1yOU=;
        b=HVsGmYQdRtQuEJph6v+/Z6qpxt3IlLWfDJaW66hjU7PKxtzVP3h4utnnxQxPzpGUeq
         TekCJ9jih77wRYPOV/VtxWAHLtgJrKYOqRbet0/CLZV7GoOVMm9JAkyd0KJMKRjJW2ZA
         /I+unsuuRv0KDHFZ2OAn2xN2sP7NiTNq83rMHmfxqwYDzMCB58Y3J+Jy+VCL089JOdc/
         1H8wDRDMbRPT4vj6o3X7HhiNo05Fo7gtpllmYJBKMgtwnDEq0F8x48YowYleUAC0ovv0
         0wXOx1SFzcp8W7Cs6sT7OpZ6lvDewd3OtIzQ27mSJ58wrZUeCBa5LoFI1/p2cCPX/mai
         1WPw==
X-Forwarded-Encrypted: i=1; AJvYcCUf8TWSW9dA4c1noPv75+iOX1GKMHmrzufN++quYNvycVwHsg3AGCggHD02ByU7386IMqpCY9ei85yu@vger.kernel.org
X-Gm-Message-State: AOJu0Yygi+ds1zGno5kKeQm6N3yHiCCu52MzpL8HBFx/enbGok8xj9FE
	U+QjNBKj6ph71K6bVNSeJnxQI2c3xFD/l+RswC2LorFT/hg2Bav+rnCzrHZUDzM=
X-Gm-Gg: ASbGncsOaerkAO6iVbhaKTM2lezN0OIATb3T2OMs3rl1sXAPYFBiB2EeZMYuRikREPS
	MZJpnWEbzvQVA4joRAKYvlbvpYpFPnM2aDyB/36RAXgOnX2tG7Y03faoFIhMM4PyLO8tL2+m9Sd
	S0tB84LvPMf8QmU2/EYL1N7kGpC1OMcnJ6TiFHRsnJlzDPFFHrDOZOSQ64ou8VnWxr6b4ruF+yu
	ryl0VcX9nq1GZU4xjRi84ZngtaO1+WinF9R7gBSRYsyv4jVJ3QDRiVlJqXJoQJQPnO6+g7Ao1rp
	bv+6tys6K+J+3173WSH1P2KTrVVRw7EromO0
X-Google-Smtp-Source: AGHT+IFhXBoiRlW8Mx5QhOgFOK20C7MGzfmBzt5IEaG3JdqNKEPDxs1ULyLjSw62pHB2VYYJC4Hffg==
X-Received: by 2002:a05:6512:3053:b0:540:251b:fe09 with SMTP id 2adb3069b0e04-542845b9becmr9553305e87.19.1737023912650;
        Thu, 16 Jan 2025 02:38:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6a72sm2265097e87.151.2025.01.16.02.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 02:38:32 -0800 (PST)
Date: Thu, 16 Jan 2025 12:38:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: quic_vgarodia@quicinc.com, quic_abhinavk@quicinc.com, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, p.zabel@pengutronix.de, 
	hverkuil@xs4all.nl, sebastian.fricke@collabora.com, bryan.odonoghue@linaro.org, 
	neil.armstrong@linaro.org, nicolas@ndufresne.ca, u.kleine-koenig@baylibre.com, 
	stefan.schmidt@linaro.org, lujianhua000@gmail.com, linux-arm-msm@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	krzysztof.kozlowski@linaro.org, johan@kernel.org
Subject: Re: [RFC PATCH v10 27/28] media: iris: enable video driver probe of
 SM8250 SoC
Message-ID: <wyvecqo5mral7oosaidiyx7zbefckah2k6et7zyfyg5mequjjk@qzxufrvitgyf>
References: <20250116070234.4027116-1-quic_dikshita@quicinc.com>
 <opr6hm5ci2palw3ilj3qrotqnkxbrphngfknddd6yhgojf2ixm@kfu22wuaylek>
 <054c5dcc-9bb3-3c38-9195-e9efd4189946@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <054c5dcc-9bb3-3c38-9195-e9efd4189946@quicinc.com>

On Thu, Jan 16, 2025 at 03:51:52PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 1/16/2025 3:50 PM, Dmitry Baryshkov wrote:
> > On Thu, Jan 16, 2025 at 12:32:34PM +0530, Dikshita Agarwal wrote:
> >> Initialize the platform data and enable video driver probe of SM8250
> >> SoC. Add a kernel param to select between venus and iris drivers for
> >> platforms supported by both drivers, for ex: SM8250.
> >>
> >> This is for preview only, and I will post a proper v10,
> >> if everyone is OK with this RFC patch.
> >>
> >> Tested-by: Stefan Schmidt <stefan.schmidt@linaro.org> # x1e80100 (Dell XPS 13 9345)
> >> Reviewed-by: Stefan Schmidt <stefan.schmidt@linaro.org>
> >> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
> >> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-SDK
> >> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> > 
> > Hmm, it seems lore has only this patch from the whole series. Was it
> > sent properly?
> > 
> Sent this as RFC to avoid sending full series.
> Will send the while series v10 once everyone is happy with this patch.

Ack. Then you have my comments :-)

-- 
With best wishes
Dmitry

