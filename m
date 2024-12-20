Return-Path: <devicetree+bounces-132910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF469F89DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 03:01:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15D28188E7F6
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 02:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B363153AC;
	Fri, 20 Dec 2024 02:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JuStQCl9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13832594B1
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 02:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734660080; cv=none; b=AhLoqP09b6RIPwt9CXN3SGCinQMGsPMCYxX998Ty5oz12Irfjubfomm6U/VAa5Y0TzS6INxRG0zXKNn8/wJDQYgwVdD3hiV3B//itJa9pIuzoRM3J/N+CaRoNzxETZUEmgHbO0AbDHuGJ4M2vDg4hSDysFXCb478EL+zL2NQUxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734660080; c=relaxed/simple;
	bh=IYteWfDmq4XWXPk/0vnLX7SnG6C9kP8SjmbFCewBF4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W/Lnw9+3gR9P7W1xiiNTZ6kDKuoa+VUlRQlqKyiuJQ1UjoSqrZfmGnbSdoPSYgHhU4qSP1M0bz8D+C10MV2GMj/hEG0upqL1ksuMdu7bhEsirfmJ1ke4zCakGks6bBbAkqVVskKnpoYzCqmvhkzofOGW5HyDhyIAGLIyoGDGeds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JuStQCl9; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e3a227b82so1233272e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734660077; x=1735264877; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWBTHFNbhUAO2tJHYtLJkSARvPMYrKVes0xn2BSQkPc=;
        b=JuStQCl9YkZjzR+EsYzcEsB8ixxi3vXXbwNdgIAXjdczGrZGccDBit7/2BqPl4iuEZ
         T57zSVd8rSZWLZesVAQ9j2Xw8sfPvkALLdPe8KgEO0jCB2E6o+QwViRRTBZFMi7gm7eB
         AyEF0nojSBpb3I87PcDoFUCjo2Dx5/1Tx99G/EGKtwZXW387ZIzVqfS6PfAWSTolkfF2
         aZnige9nNQfp5izYmXAcMNods75m4GyfTZZBn9LJtLWWpKyBuZU0kaKmwaL0MC5yfGLB
         gmGd5mSfuUXLeU0HwnC1PLk0SJi8i+tdVIUirPXnR/5ETorMak2EXYx8k65BXQ9Hd4Rf
         X1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734660077; x=1735264877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWBTHFNbhUAO2tJHYtLJkSARvPMYrKVes0xn2BSQkPc=;
        b=tnhJSb2Uu7sMGE201S5Avohtnl48vO/pRzuzoK/kvdBmUXnjJpHEQOAorNST2k2+ad
         tnVTQb4+SfwZW2g0Q0DarmIgbj59eEkyWQ6VdRJkedP3iatWfeDkQ0EzEyi2rGA12zWA
         IPjx69w26FAdQrnR6wPy5JABQyA38zleoV0Ju2Fc24fgaHFCJXM1pRa9jiVzsXNHV9at
         OfREJHzTgaYzEPy1sJnDj8cPS7FjLPeAku61mK9xLGfp13alPTuqiATEkwtphsF5y3DE
         /Mn7QorNwI7FVIpXI395V5ILfRPGGLr2jAUE+c75gmE1t5rujPjnmGrjYfLd/qPa82sK
         QpAA==
X-Forwarded-Encrypted: i=1; AJvYcCWSxX/xNg66DoRaJOqHiG7ajrmOBS0W0ldg9TPDfqcxvFlf12xBdWMrtYMD3TRoVQzBDPPVUvXjr+cO@vger.kernel.org
X-Gm-Message-State: AOJu0YwiiZ/QzoarNeyS/S3Ahn9L5UgD1x7B8NC9qXG8Z92X/eH2A/Ey
	3Svkvl6W79rpvsgPS7HhRues3/Oafy/zM1AMLTOlH8o7Yo3uxo2VZLqpR9sDVOI=
X-Gm-Gg: ASbGncuAE/0PHpOrWTsa7D9l1K29MY+uzuu34n1RuNBumfpuW9jhfGH9en20nFMZpPF
	wgVvqB8/VwWVd/9eFGgeupXffPAvMqoLwjfuNqeoki3n9DP0NSxmF1D7Mq8l7El5nElTXPHTdA4
	i5LFQ1vrQL84sOclgM3WkB3mt8ZWTTJEEKniNm2ESHC8wmoUjxq/ubn+cik41dGTyK0Gi+7Fvfp
	3hL6uAJw7h5Lhh2xThKD3IDOruG+hBruyWoaIQE2vtAtYz3q9ikWI3X+PsktO/Z3bHqKnAxs0HR
	zgK2Y4zdMUHkVyIKVjlCFbOSV/T49qeutpB/
X-Google-Smtp-Source: AGHT+IHhyKDZ3R905U4863Iiit2Hr7nBV4qFueikwh/HiT57AnESraqkbGPykNmkeBs/b1aNdwU6wQ==
X-Received: by 2002:a05:6512:118e:b0:540:22e0:1f80 with SMTP id 2adb3069b0e04-54229530295mr201261e87.20.1734660077002;
        Thu, 19 Dec 2024 18:01:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600724sm344911e87.90.2024.12.19.18.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 18:01:16 -0800 (PST)
Date: Fri, 20 Dec 2024 04:01:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
Message-ID: <pb5ds6pyugndyfttqeyy2czumaltagbuns5zfclvqpwcp5gdez@tfsgukr6irzh>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
 <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
 <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>

On Fri, Dec 20, 2024 at 09:46:24AM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2024/12/20 8:22, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
> > > The modifications of DP register names are as follows:
> > > - Add the '_MASK' suffix to some registers to ensure consistency.
> > > - Complete the names of some register to their full names.
> > > - Swap the definitions of LCPLL_REF and ROPLL_REF.
> > 
> > Three unrelated changes, ideally means three commits (I won't insist on
> > that though). Also please mention that LCPLL_REF and ROPLL_REF were not
> > used by the existing driver, so it's not a bug and there is no need to
> > backport it.
> > 
> 
> Indeed, it would be better to split this patch into three different commits.
> However, I still want to keep the fixes for LCPLL_REF and ROPLL_REF because,
> according to the datasheet, they are indeed incorrect. And I will describe
> the suggestions you mentioned in the commit message.

I meant that the issue with those defines doesn't affect existing code,
so there is no need for Fixes:, etc.


-- 
With best wishes
Dmitry

