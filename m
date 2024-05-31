Return-Path: <devicetree+bounces-71184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 120BE8D5F7C
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 271201C21C84
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 10:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACC2155726;
	Fri, 31 May 2024 10:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bnKYacDX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EE11514F6
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 10:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717150820; cv=none; b=I+caS+QDCzOgBaXL45JZdkDwNX9+uONOFH8udQktzKP3xBSQx0ffArGLuHwLRjRex8hteMJBC7fa9lMn35YPc6kdwNuqHz32ZGYsr2KQG9Gky95Lz5e0Mo93EtR0JSVmCg4HjSiOXHdme3MP/Fc38MW33hvK6+qeT9RjS5aQuHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717150820; c=relaxed/simple;
	bh=oDkCy8oJ2WMeKcy9+Uh0V14y9VWvcEu1F1wyVC5z6LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gF1Z60EWAKMI6b6wFlZs2+vHsMbSWH/vDaUQANUIERtUNxq4VxCkxf5RbiEF2CTgEgLJxC1KlJfLvVR9Czd5MxZDV7tP2uiB3LifUSAi0DR7TfqCF1h8nYWvdEUyfY6juwsIYNCsalwXD4CYc1URCkdzdPmhJD5iL0Q0V08tM50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bnKYacDX; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e964acff1aso19000691fa.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 03:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717150817; x=1717755617; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJg6C0WVWn0Vp3XGiynuZUYf7BAqZo56bxrIXpikvkk=;
        b=bnKYacDXhez1MqTGVeWrOL+5JJaLnb9p3zFOqceh0WtJCB67KE92/KGi0vdy89MUVK
         ZmzcEDKnRN14ckXyJyTzPYQgyX2XFe3+LHsohJq/buvNOHPy/nE2XNtX/Z1JUEGvYIGS
         7oh6/5mOYKagnty2M4xgdc52j5kiBrOtH3Yq6JGMVrZ975IQNMZn+068G30/TaW6QxQB
         nZ0YNQg8x+TqoGDO147NneP/+3mS6WvNVddL8ioH9Ieh0flKvavUXII+yNHub0q6CKUd
         30jYWl8pJ/cVPBCqLflWK61ySmiwe1n/4/WyLUlwaFv5eTnfpIfWhrCZ9NSmd/xVbpIG
         jzzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717150817; x=1717755617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJg6C0WVWn0Vp3XGiynuZUYf7BAqZo56bxrIXpikvkk=;
        b=GLLWH027ulZl3rEo9ej9md3Xg5FaHm5oCmNJVgSeUSJsQSqEbr9LU8V9bARLTFSBTG
         wdxxkFRjziKF767H81VOOZsxvR46AHEGdeOrvdTAPdVhktXqpcBjIAqidwZjvDZZFn9R
         hhBYsUqVp5GIjHUwktWD/ELT2fCDJZf27IOHhOjXLo86NTEGxesSwQElBRsPkkdx5dYK
         6EMWimW4SVMTZAtQZVLXj9j/dLnjIRK0mSEdictbYYZXe1rZwtUTN6JcWtWxEJi2fOSH
         WCyk1VjwUQzbmdlDUG7TzKnan7sh/EWzqEjMVMeL2f4wEde8MOmV9Kt7t2EhuepESeR7
         SlpA==
X-Forwarded-Encrypted: i=1; AJvYcCUeZE96pmhgoI/H+QYlYSgDfIoxYQWlysvFzIx11IfRbpRJbj1dRTtxA0aK1gGrzu2zsQuGM4Q87m6ZWmAes7xZDyK2AvAz0/Xybw==
X-Gm-Message-State: AOJu0YzF60uaAeb00IzP5vM4TVWnycULBrY+SXJXuZH2fYBOZB7GHFVv
	/4wg5lMw0fDKUTTjlRRnpES/uvYw6UiFkRm2CCRVRy95SbcswtqNTCu7qZFRnuA=
X-Google-Smtp-Source: AGHT+IH3eDhHYffts7P6CotucZIC/1NV5s1KOoULl1yKA9WH7Y4N37DO0QUnBGhOLPU2OlwFm5r/iw==
X-Received: by 2002:a05:651c:2112:b0:2e9:8374:3820 with SMTP id 38308e7fff4ca-2ea951dfc12mr12587551fa.40.1717150817101;
        Fri, 31 May 2024 03:20:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91b9d744sm2653711fa.28.2024.05.31.03.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 03:20:16 -0700 (PDT)
Date: Fri, 31 May 2024 13:20:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/8] clk: qcom: sc7280: Update the transition delay
 for GDSC
Message-ID: <3dasezpuum7jnafhciv6atfi6n2tqra3lo3q425s7f36wuoc7i@pguvou37vhpl>
References: <20240318053555.20405-1-quic_tdas@quicinc.com>
 <20240318053555.20405-5-quic_tdas@quicinc.com>
 <3293d565-ceb6-44f1-8a47-d18e9d0083a5@linaro.org>
 <a671ba20-f000-425f-914f-54a9d65d79c7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a671ba20-f000-425f-914f-54a9d65d79c7@quicinc.com>

On Fri, May 31, 2024 at 03:00:40PM +0530, Taniya Das wrote:
> 
> 
> On 3/18/2024 1:23 PM, Krzysztof Kozlowski wrote:
> > On 18/03/2024 06:35, Taniya Das wrote:
> > > Update the GDSC default values of GDSC transition delay to avoid the
> > > issues in the GDSC FSM state.
> > 
> > What issues?
> > 
> > > 
> 
> The GDSC FSM will be stuck and the GDSC will not be able to power on/off.
> 
> I will update the patch commit text as well.
> 
> > 
> > Why none of your so called "fixes" are marked as Cc-stable? If they are
> > real fixes, they should be.
> > 
> > > Fixes: fae7617bb142 ("clk: qcom: Add video clock controller driver for SC7280")
> > > Fixes: 1daec8cfebc2 ("clk: qcom: camcc: Add camera clock controller driver for SC7280")
> > > Fixes: a3cc092196ef ("clk: qcom: Add Global Clock controller (GCC) driver for SC7280")
> > > Fixes: 3e0f01d6c7e7 ("clk: qcom: Add graphics clock controller driver for SC7280")
> > 
> > No, don't combine separate fixes into one commit.
> > 
> 
> I will remove the fixes tag in the next patch.

The intent was to _split_ the commit into 4 parts.

-- 
With best wishes
Dmitry

