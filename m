Return-Path: <devicetree+bounces-219224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F56B88B1F
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:58:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF8617BB19D
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775F82FC036;
	Fri, 19 Sep 2025 09:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jfOUJ6QX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757CB2FC010
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275844; cv=none; b=iFbQCadt0qMHdxVVL5ZG0GDsbRS5YwwPA6I2z40+lOthNC4bShrpzaNX09M/HTL0r15M7zpFkXcwFDiUsF/UlWZIbaSPgC9Y+O0/jdaTSKIcAlXy6rIaxE+VfN6UEE9n5cQXSbVl1C2aBfLtiiPH1WaBD2xXBfcqzflBw/s2m+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275844; c=relaxed/simple;
	bh=LycB4bibBN0sG1r9icmnH6TMiY0AyiR65Cqg0j3cYEA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESfUMv5PCKAC9rHJj+c/TbRiDCywCOaLPXS5hYjHmq6MHrE/Ixly3eok2yslYAVP/2pN0cOO7xeRLDIK7pin5vbwhhaG9lxxy/bOcfPdCCKqJZe0XFCnaOT/cjP/LMJKrLqqKAuupsFFdf/iEVk/dP6hwx+vF5uiPo+PT8RM9wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jfOUJ6QX; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b211ccfda1dso262980466b.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758275841; x=1758880641; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wv2XGzpppaOOQYxLEooc1OtelSQcdn5WbjJzV7E12kI=;
        b=jfOUJ6QXF7XMYHTBhL5Kj1uspvoYCock91qyVJdZr8NC5L3vRX2aiCmh4UNTbhAA69
         Cw++WjGL6up1LL8oRjvkPvfydktoUbxQnweki6DVfRczxDeIG7xRMc/PUDatFxo4JAsr
         Ow0um9K+Dc3rdx8vYvZ5k6JeiR2yZch8D3UPa4cxBveOOhdMg6RD4QpeueFrfI4OQE6O
         Yzsd9bExmQ+gBDfe/JKvsNQgGJke0Lx+ogY17U2wBFuZGA/nObJELloauLnmRcryyWmS
         yVucAeLmcYxZuXU3jI2Z6DlI3vjYtcc1E74b8pbsj0veUz5LMVm0tWUXjKhNaP0bqqVN
         U+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275841; x=1758880641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wv2XGzpppaOOQYxLEooc1OtelSQcdn5WbjJzV7E12kI=;
        b=lS9VZmJ5IVE0NTOR0aWAfUuY1mXp5RELAs60KG+TAn/kmY1r1xxigsWWUsKryKGQDO
         iAzw5qhT9id8J5t7Ad7Dxs13oTJU+nGxRjTZLdzbXtSWfOUCD1rFoqF9vg+WIgLP/l6o
         QwAxeMGhLvwGLLrN/xuq/Ohy6zNvwfCjWtPXyB36WdE+e5oX5oHOcFfkheaNckzKwe0/
         AanJfvT7WZyLR+g1/VNm/+ILcm+9zh7J5N/SDxF+QwjgU7TMtDLI9DRlGc2XxrMcetOm
         LUvsbuS46MfeHgZ5yEkoTE13OBsn49s4/S9uYoP+HGOFFFgOxefksm8BQ+Wp3btOUUgv
         GZQg==
X-Forwarded-Encrypted: i=1; AJvYcCVVEmO3yHxHM3TPbIoSSFDxfpkdQPTS6lxbaMUiqJnB6qQJKED194Hq0AdcD+tAyWbm6zlv8jt08pRO@vger.kernel.org
X-Gm-Message-State: AOJu0YwLn12Yy+9Izl9i9aFpSPxQM/fFEX+y6LDDoG9u3QPkFINT5OXo
	bl7+ZdIsFuVhPR1mgs2iXCoettCLhFDWRpy/iUfXY2Q701gK7q4O3uKodpkRWp7TsFA=
X-Gm-Gg: ASbGnctljh9olwKwCvj1FGI39rboGg9XpBX3wPwSGqfmHheVrYPdBlALPr0QyVHEHoU
	G4d3Jpv4TbVQjdOMJZY4pNq0zL4mrosFb0NuzFgDyuIrQYw+qdGHph+15y5/0By2HFTDlIaoSXV
	yfw755iGfbPqhZo0mQ4O3ASEJ0Z38zspaB3NkhsyhpsdLP164T6StIM8tUalAiMs+bvmqcVXWod
	O8OaS2BLFDf034VOh7JQ5tkuM+XG1271Aqhj5Na1YJ3HeAX8SWwK4DOSHIL3+y3v9DCSbS0Fseg
	UkPnkzzLqaS00PxfI66nv5qjECk7Sq9t1b+kvIJt9Fb3cZJJ2BG3zKJq0eGQVOGd600gRqiKy/c
	eRevuIQp/zTt5xs6Yfw3omJniB9J1ptsC+GtJ6L+lyLo=
X-Google-Smtp-Source: AGHT+IGCfKpCurm3wfgSCSPPlB1C4atArsiZ9t/p/nlcpmWagcJL8S1NnymeJqiU90CiaiP1o7FQiA==
X-Received: by 2002:a17:906:c10f:b0:aff:17a2:629 with SMTP id a640c23a62f3a-b24ed97e436mr315741866b.3.1758275840313;
        Fri, 19 Sep 2025 02:57:20 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:5f76:e388:d005:f08b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe88d6esm399165866b.66.2025.09.19.02.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 02:57:19 -0700 (PDT)
Date: Fri, 19 Sep 2025 11:57:14 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vincent Knecht <vincent.knecht@mailoo.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916: Add missing MDSS reset
Message-ID: <aM0o-phEMI0wSPA7@linaro.org>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
 <DCWOLHPCYG3X.32KTGBE4SYMDV@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DCWOLHPCYG3X.32KTGBE4SYMDV@fairphone.com>

On Fri, Sep 19, 2025 at 11:49:20AM +0200, Luca Weiss wrote:
> On Mon Sep 15, 2025 at 3:28 PM CEST, Stephan Gerhold wrote:
> > On most MSM8916 devices (aside from the DragonBoard 410c), the bootloader
> > already initializes the display to show the boot splash screen. In this
> > situation, MDSS is already configured and left running when starting Linux.
> > To avoid side effects from the bootloader configuration, the MDSS reset can
> > be specified in the device tree to start again with a clean hardware state.
> >
> > The reset for MDSS is currently missing in msm8916.dtsi, which causes
> > errors when the MDSS driver tries to re-initialize the registers:
> >
> >  dsi_err_worker: status=6
> >  dsi_err_worker: status=6
> >  dsi_err_worker: status=6
> >  ...
> >
> > It turns out that we have always indirectly worked around this by building
> > the MDSS driver as a module. Before v6.17, the power domain was temporarily
> > turned off until the module was loaded, long enough to clear the register
> > contents. In v6.17, power domains are not turned off during boot until
> > sync_state() happens, so this is no longer working. Even before v6.17 this
> > resulted in broken behavior, but notably only when the MDSS driver was
> > built-in instead of a module.
> 
> Do you have a link to the patch that causes this behavior? I've tried
> looking through the git log for drivers/gpu/drm/msm/ but couldn't find
> anything that looks relevant.

It's not a drm/msm change, the change was done in the pmdomain core:
https://lore.kernel.org/r/20250701114733.636510-1-ulf.hansson@linaro.org/

> 
> FWIW a similar change to this was also necessary for sc7280 (as done by
> Bjorn) and for sm6350 (will send the patches very soon).
> 
> And happily enough for me, with v6.17 and that reset, a long-standing
> issue on sm7225-fairphone-fp4 has been resolved that the display init
> seems to somehow fail the first time after bootup, with the screen
> needing to be turned off once and back on to work. I traced this back
> to some power domain behavior as well back then.
> 
> > "mdss_gdsc needs to be off before mdss/dpu probe, this can happen with
> > genpd_power_off_unused but not guaranteed"
> 
> Anyways, I'm hoping this is not just a coincidence it works now but
> will stay working on my device. Just the reset in the past didn't seem
> to affect anything.

You might have had multiple different problems in the past. Perhaps
keeping on the power domain during boot actually helps ensure a clean
shutdown of the MDSS/DPU and then the reset is enough to bring it into a
clean state for the new configuration. But that's just guessing.

Thanks,
Stephan

