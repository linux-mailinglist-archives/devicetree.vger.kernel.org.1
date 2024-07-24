Return-Path: <devicetree+bounces-87895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD093B5E9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 19:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 035BC281B4A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 17:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894861684B9;
	Wed, 24 Jul 2024 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbYKJQV5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51D21607BD
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 17:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721841994; cv=none; b=r2daqJx4m8QAEy16hL7FZK4srf0eWBQNkR3afyrw5RelhAe+iJ/rVwYUFDguP1a7Yy1VRdkgh/PHY7Zs5oLpxugXY9cFCajpII2wKnOnRAkZxDGnrCRI0SICIVzWs/WCCFtSNTVivB159K6kwEWk1iYow5VKGfHcZclJ49eg9Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721841994; c=relaxed/simple;
	bh=nirmYw7F2dXu3jHlu65M8bPLc+xMzWCodmmYzuIxjFM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pDAX57SsUyn91zgUvMW/oZd2PgXbpQ0C0VjG1KOIJSSOxNsjwXFYD0ZRxD107vFZEyP3zTKAsFgF5eHct08tEW4iZERASSbDs58uJFW6MwO+nc395HkykEzRm2rMARioZ7YNbdsyl94Tof9MUyK/BrFhTQ6duFcpb6pelSCGou4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbYKJQV5; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52ed9b802ceso7243405e87.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 10:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721841991; x=1722446791; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6gyjxRwZj2E8/gds3ss9PWGb0Bwbvl9UNoycwou2Ge8=;
        b=GbYKJQV5Z41sZnnojC+2kzGUU+MonqRkjCXhv9/obP9BXZgxny5EqvZPetqJnvO1Uq
         1P5NdFEABffi7lU50WcObF7T6iXcxvaIt3eR9qOTqvafr2gdFs8ExXQYZBh2ymIilGM4
         RdfJt8zQeGkZpQPgcNxBuG/JOOhBpyL1y1D0g/KH8L3kNYzusrRJGIz+qfQZJHhgyEbZ
         mgSosZ853dbEnic4hAIjvMyP8IsCJwadXP4c/qQ6x9gV6kRoseJ9GPiqgFyEL7Xy06t9
         /YebKDcwSa1VuoO4VLi0meaenERQIPWu1O/coxcO1ngTn5lM06OQP4iy3zOYsQNJLmvt
         vJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721841991; x=1722446791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gyjxRwZj2E8/gds3ss9PWGb0Bwbvl9UNoycwou2Ge8=;
        b=P7bNLPuK/bpLhwkF+SyqoFQm33WVPfvyqB+LH/O5AWhKyYgrn+SrIZEX3aRy1HZK7U
         CYfySFvJ2my6eeDWiQg7c/6WsizB7LgHnA15HDsshhay5D/AUI2QPn4XkuIICWYkUGzS
         0WRJsSpZYwnysWutV/e+Tso48c2A71N9duAim/uYCbsIP0R2K+LK63rQpCKWjsJe+Udv
         Jzip9Lt3t6zgxLpmUTOiCnyXJskN1Kz3VkI5KkNUhKVr5ISPhPyAXCrbwwrUTfnHhKV2
         3Uop1r83dE8E8WiRWB7lU058p7dbOE4ip0zRRnaCokJOe2y9frjQwyhDB/1h/NOOsC2V
         6w+w==
X-Forwarded-Encrypted: i=1; AJvYcCXkIGxmx92OD39mZw+cx+GxDLTwAWqc4dQxPfei61dTLu6KYZG7cfk3p/mQtPdyz/NcXqAUvNCtmA2F0D6lo40hz5MswLMAMbkEvA==
X-Gm-Message-State: AOJu0Yz0ujpgBhgF51hY2y94Q5s3y9dY96oW255TlJafnB/BQRI++hGq
	kcUJyHNYo+gyvKiJyh8nNIgJiCgYlYZaooPFjtbGY+Bbt4LgkClSP+6TBeLFXx4=
X-Google-Smtp-Source: AGHT+IHlDpSkUv36Gv/Yk9ACZKyixMbYij87/r4e8rpjoasoFjkXepMGnJgzlNprXteCON2oLyXFpw==
X-Received: by 2002:a05:6512:b84:b0:52e:9b9e:a6cb with SMTP id 2adb3069b0e04-52fd3efa634mr362510e87.15.1721841987977;
        Wed, 24 Jul 2024 10:26:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52eff3bd6ecsm1445088e87.4.2024.07.24.10.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 10:26:27 -0700 (PDT)
Date: Wed, 24 Jul 2024 20:26:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, ilia.lin@kernel.org, rafael@kernel.org, 
	viresh.kumar@linaro.org, ulf.hansson@linaro.org, quic_sibis@quicinc.com, 
	quic_rjendra@quicinc.com, danila@jiaxyga.com, neil.armstrong@linaro.org, 
	otto.pflueger@abscue.de, abel.vesa@linaro.org, luca@z3ntu.xyz, geert+renesas@glider.be, 
	stephan.gerhold@kernkonzept.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
	Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v6 5/9] pmdomain: qcom: rpmpd: Add IPQ9574 power domains
Message-ID: <iy3l3ybmvllqxtyqq7fifiokxaaedrs22davveel4ikjoqivdm@dinswoc52qpz>
References: <20240710061102.1323550-1-quic_varada@quicinc.com>
 <20240710061102.1323550-6-quic_varada@quicinc.com>
 <d454e01f-3d6b-4a02-87cf-3d289bc6957c@linaro.org>
 <ZpeLYG6vegJYZ5Rs@hu-varada-blr.qualcomm.com>
 <ZqCD3xtkLHbw9BHN@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZqCD3xtkLHbw9BHN@hu-varada-blr.qualcomm.com>

On Wed, Jul 24, 2024 at 10:02:31AM GMT, Varadarajan Narayanan wrote:
> On Wed, Jul 17, 2024 at 02:44:08PM +0530, Varadarajan Narayanan wrote:
> > On Tue, Jul 16, 2024 at 02:15:12PM +0200, Konrad Dybcio wrote:
> > > On 10.07.2024 8:10 AM, Varadarajan Narayanan wrote:
> > > > From: Praveenkumar I <quic_ipkumar@quicinc.com>
> > > >
> > > > Add the APC power domain definitions used in IPQ9574.
> > > >
> > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > ---
> > >
> > > Could you please confirm [1]?
> > >
> > > Konrad
> > >
> > > [1] https://lore.kernel.org/linux-arm-msm/57dadb35-5dde-4127-87aa-962613730336@linaro.org/
> >
> > The author is off for a few days. Will get back to you once he is in.
> 
> Have responded to that query. Please see https://lore.kernel.org/linux-arm-msm/ZqCCpf1FwLWulSgr@hu-varada-blr.qualcomm.com/

If it responds to voltage values, please model it as a regulator rather
than a power domain.

-- 
With best wishes
Dmitry

