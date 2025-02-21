Return-Path: <devicetree+bounces-149407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D07A3F627
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2D411882BE0
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 13:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65DFB20B7F2;
	Fri, 21 Feb 2025 13:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gpeZ8WE4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D42B18E025
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 13:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740144834; cv=none; b=Es4eOPyIaay+um1b3QPlg0xS0RGehHY/umpULlBcDhx7N74Pjrp+RdGaISSv5Wy0FZ5jym56K8cfyWrOFp+I7etyEKYRLZ+iltQkktWoybqmZolHNEkqlj0DVOqPY3/svyTiFxoWYGy9hQ8XDX5Iuxejc6UvX8aJDkjwvNdR1Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740144834; c=relaxed/simple;
	bh=+xQvuAjburFLy08XVkCb+80zAeokEaI0amiqRDkhEsY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qTK3rVThmuDj1QUJmmQMgUVaeZqhWVl+Sw0UCIbwSgmkAcXm0/8Ihva0mvL6Dwnaj2T61wAnpyaymJSKpWD0/lhFKLF1TT+YxxeEHJsRAFu8MuH+f2xwJk6EBo+1EiRGaesPeMyk5BUmW6jOZT56mypQZceU0F8Qzuza1psIHXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gpeZ8WE4; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54529eeb38aso1760196e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 05:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740144830; x=1740749630; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ieh7CBVPmu3X5DHV02AR8XvoaNx/S0Yj7VuoRST8SJM=;
        b=gpeZ8WE4mNKi3cKUMjepdYuJw+p0NzyZQiXfPgFp5wijkg/BcKfRPxR6ei1OyfghJj
         czGw06jPXtb5j4q3SsQ17Zh3yXl5c4BgU9z96rqwfS5v4id3hj/VE2Tkcp1NA2gKMmxi
         N2ZSR5q0q+oALPUtlkXujI2RjS68itut87mvrXhPqqA1eDs6ntmzOeY7eFaaxqoaYWrq
         OTJEG/j9Nsc1zk26ZpftukAhK5/duS2tTgJVldLVLl9X7zyH6xycW//xF8m+ew6VNYWY
         PWwEjfb326oRDRPCwe4ko5UQPIfWx88H7NuApvOvHxZAUvMwXNExRolL85KRLFHk0XNi
         bajQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740144830; x=1740749630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ieh7CBVPmu3X5DHV02AR8XvoaNx/S0Yj7VuoRST8SJM=;
        b=nn9b87UT66cMnN3j1bqb3J/Pzg8clFQgIyeh14300d1RBnSHen9Tym35pypicsvp5f
         N6DNf5Y3GO8s97rNflj2XfYc8fucthuX64sGsUF6/ISXZ6hyVjkc8oACrgR0A5XgGj9W
         taGtzYv2drdn7SjG2U406z2UimfdkEHkI9VREgJVhHyx9habzGrYMnpC2VBPIcOyiDfi
         xyC00fPz11O+lrurYtMOkCCN7N6U6BONYlRcGYXtYm/D/13YVPDYSs3E4noZwTaxSyyg
         h3qEL8JIoDpO+4rHq1AMkjadjK8l+PFeTmZP9UHf1ug7Yt4fY7FxpAq1hrtXSCARyNQE
         a0Vg==
X-Forwarded-Encrypted: i=1; AJvYcCXqiXd/zbVbaU5tVHma480qZo3pe1AngNGunlHJSdLsDQt1s7MliG/LNxyDTBvh2nKRSr3Xj0dz/ASa@vger.kernel.org
X-Gm-Message-State: AOJu0YyV8bGLoJDQWwQ3Ae8QBnM3pO3Y4ugKXom9B0L/sJhH5iAKLYpw
	aHU0A5SVoy4t5Lv3eftfGlWg3+cv6FLayuhBi4BZASsc4SSVeaVic8+j84+YKJ0=
X-Gm-Gg: ASbGncuNxvNtw8vc948fobRJtldie9NHQCertmKdc9gN4TblVyzsYzcvS64tHbAkQdd
	B/EGfAYcBtESxx3jMg2L0elYEHpryofhUQkuG+D5qYm7YwezCibJD8YYTSR1CK+Hn6Iosa4q6Ak
	++zngJkl+AdZfixLZPCUc4Du5xWmsYZZb7bKYLI2BLOH0h3gG7F5JlIUIt7Y/va075e4BZ5ns61
	TvJSBP+TvJvd/Wy0RgR60aySOTV3IhTtK922wYTI690YuaVYUWXtPK+/eNp9P1Jjfu/uVr/xBdL
	U7izCFsZehZWgG1My4DAj5qsC63/CXxtZdGez9ooqOHC2ob/2Mgubt0fJmwEhHRgchzd/fVkws+
	h7jurrQ==
X-Google-Smtp-Source: AGHT+IHiz5c3L+HbXFi2J+BpEhRbGbpZKCFTjF5dKolaGhW+97N+o7e5V/9KYwQhome4h/soVI0ylQ==
X-Received: by 2002:a05:6512:3b0a:b0:545:ab8:2be4 with SMTP id 2adb3069b0e04-54838ef5a15mr1252449e87.27.1740144830527;
        Fri, 21 Feb 2025 05:33:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5452e4b08dasm2235004e87.87.2025.02.21.05.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 05:33:49 -0800 (PST)
Date: Fri, 21 Feb 2025 15:33:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v2 15/16] drm/msm/dpu: Implement new v12.0 DPU differences
Message-ID: <nls3qurambg6ioecf2y7zp74sekgmshlu4nskpelulvfad36lv@4tpangvp7m4a>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <20250217-b4-sm8750-display-v2-15-d201dcdda6a4@linaro.org>
 <qlotuliwnm5spneolztca7avmh2a46pz2xqlxzqbw5kwa53m6q@oyhnzz7fhay3>
 <4b2426d2-a7bb-4c19-9ebe-77f6a90caf5e@linaro.org>
 <CAA8EJpquBhQeac0E66NqeagkxP-qY0whmah2ND0xziUQdxc_7g@mail.gmail.com>
 <883fed07-1d21-4ab1-8c72-9a1750ec1606@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <883fed07-1d21-4ab1-8c72-9a1750ec1606@linaro.org>

On Fri, Feb 21, 2025 at 01:36:51PM +0100, Krzysztof Kozlowski wrote:
> On 19/02/2025 18:24, Dmitry Baryshkov wrote:
> > On Wed, 19 Feb 2025 at 19:04, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/02/2025 20:18, Dmitry Baryshkov wrote:
> >>> On Mon, Feb 17, 2025 at 05:41:36PM +0100, Krzysztof Kozlowski wrote:
> >>>> Implement new features and differences coming in v12.0 of DPU present on
> >>>> Qualcomm SM8750 SoC:
> >>>> 1. 10-bit color alpha.
> >>>> 2. New CTL_PIPE_ACTIVE and CTL_LAYER_ACTIVE registers for pipes and
> >>>>    layer mixers.
> >>>> 2. Several differences in LM registers (also changed offsets) for LM
> >>>>    crossbar hardware changes.
> >>>
> >>> I'd really prefer for this patch to be split into a logical chunks
> >>> rather than "everything for 12.x"
> >> everything 12.x is still logical chunk. I can split more, but without
> >> guidance what is here logical chunk, will be tricky.
> >>
> >> For example 10-bit color alpha looks like separate feature. But
> >> remaining PIPE/LAYER active - not sure.
> >>
> >> I can split them but I would not call such split necessarily logical.
> > 
> > I'd say, the following items are logical chunks:
> > - ctl->ops.active_fetch_pipes in dpu_encoder_helper_reset_mixers() and
> > dpu_hw_ctl_reset_intf_cfg_v1() (with a proper Fixes tag?)
> 
> 
> Ack
> 
> > - 10-bit alpha, border color,
> 
> 
> Ack,
> 
> > - active_pipes
> > - blend stage in LM + set_active_lms
> 
> 
> Ack,  but you do understand that this is purely from new hardware, so
> new registers. Even the 10bit border color is actually for new
> registers. It makes no context outside of new hardware. same here.

Yes. However those changes are logically separate, they cover different
parts of new HW. So it makes it easier for anybody reviewing those
changes (now or later).

> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

