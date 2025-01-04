Return-Path: <devicetree+bounces-135512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ABDA01305
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 08:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AC3D3A1761
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 07:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EBA21953BB;
	Sat,  4 Jan 2025 07:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jsIvTbMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331D618A935
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 07:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735976452; cv=none; b=MHySR78Y4rvE6zgLEsxGBpy071tMZ2VrbLccTC3X2IEfylr7Jv31XbbvcwZriLFDl2WUZNgy+IjRNVqMhuhwU2nJJpniHRuX8/PIOtTvgxDA1kJOGB6DqfoYOkrSoc0wEBuHYbyQnK9e65zBllox1VKHTQFXaPKV1DFP7J7SkMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735976452; c=relaxed/simple;
	bh=bD9cvYB/v3oIIfnzHpurWBx5Ah2yTSnPWPLyYvYKA5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qx/Nf96SlaVU5AOB+eW9mAAktdAIsEVLl1J8G5+l7Cx/VwOU/zPVIy3vPEoI2fxxe9eCpOfz78qY7O7ZL8D3mACR6UkywLFr24ZK0r9JqbHtf02GU/NlVvM/RZV+EwjMNKD3VrqS3AUu+VwJG4zUuYwmqnznATA/9mRopnHL+84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jsIvTbMh; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401c52000dso14587114e87.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 23:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735976448; x=1736581248; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q0MJI+9cycXeH9M/cbiVDnCLxbdncwNilXjR2G6v30w=;
        b=jsIvTbMhwR295lTi+1IRzd39Nk500bxX4gerufT3DwsOr8zAJUxOS5jIEMKc9LEzyf
         CaHxRPn5486HWAdqamITY2D+eyTpJsJnSGSFDdCVJFxz6VAo7colgB3qSkIGhqKZTfAP
         B2L/+2JG/0GK1PjvljAS26V3ptqqf/NL67OPxu2raQklduK6PtNy3rN4xrmxXAVe9FHx
         0SvwZR00gk8xT/A7uJ99lAy7jfvnL2LL8pDAixgGySft5N3mqYVagT4zmZU52J7mfWPM
         czzWYuTl6BtO4pwR66GQeu1a/yTE3YJfTfk6LdgBCWnL1oqopXk5xhx9WvCOZYFJJ/mA
         M+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735976448; x=1736581248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0MJI+9cycXeH9M/cbiVDnCLxbdncwNilXjR2G6v30w=;
        b=tWTjrtYHnTgb22Rx/OjJTMMdBE7O9vX4k8XRC1rb50ONE1bCPo6GEM/dw3FG6Ooa9I
         RykkegTFU9HIpKiid9tCGeMh8DsnPXtt18Gw7O8sIWt+OKQrJTplke0J9SiRElE6Qw9x
         UIypW2fy/U4VxvJRWEryVYN4dSsforxbQtdZGtafBlmIcYHMstFLJGyBxhkrocn44cjj
         OnoYeoEIOJ6QZWfZcOGFl4VrR0/LapkbzW1NtD1ex6RF0HPfL4oYQWeVuDAvA8ZaZYhu
         RGe/XTPeyFrRf/sdLNcULpeDut5ETjvzXAsJzXkRHDcQxWSD0OSndjyUdu4NWklr23yT
         R6Pw==
X-Forwarded-Encrypted: i=1; AJvYcCWBOjGRv77dnrPhJUKGVwNOm8nL8q2kAKB6JvzZAk64Xdz81o/hOK+pCEUQ46WcBfirTFH0ZV5+4KXb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9iR0ESCkI+TLbAxUBF4aOA6Pwun9z/hHBj6nVOqtTnaJlH5Bf
	tEGE7h8LQ4uDEuYvvMUWV3URwKQTA8cqUMx3TkqbOzD+4o6NWHYbQFUYWczc/l4=
X-Gm-Gg: ASbGnctG8XahO6UGtchN3WpPa8INR2Lkm2Uoe7wc1AgIOUaJawkxSpffkgayhIXFpRo
	buPbAEdffv5IaqvDoK2rCPCkgy+xN/qTOez7Gj9GCNzcW7+vg8IzjXfPdz6i2iqvzY82lFB/hO+
	/IA4dBBfQxLPknpTHWq3b7jz6vzb/HvNL1UkHpPY3N/Jhe/TPbRcH0qSUOfyLjGGfZtL9E3OkGm
	/BcW/CbGWVORzj9noYQD6z2bAfg2cZ5Rjsg7TTYDfZyyVtRnZh7LAmoHcC+uICbsOlmMrd2j2Gm
	OYYQC2gRcqrvRt+RWduc/2uqYg0+wHEbjvQM
X-Google-Smtp-Source: AGHT+IG2nq6H7xyAW1mQUxFpByooIqlCa8K7/I4EOHRJTtOWpXN9w4+x4cnSMygTfJ2Xc+WG1B3zTw==
X-Received: by 2002:a05:6512:4020:b0:540:1fcd:1d9d with SMTP id 2adb3069b0e04-5422956be5emr15365408e87.55.1735976448304;
        Fri, 03 Jan 2025 23:40:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832b79sm4396561e87.272.2025.01.03.23.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 23:40:47 -0800 (PST)
Date: Sat, 4 Jan 2025 09:40:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Naman Jain <quic_namajain@quicinc.com>
Subject: Re: [PATCH v2 1/2] nvmem: qfprom: Ensure access to qfprom is word
 aligned
Message-ID: <4ajn23p7tbc2csspcfodl3keavl57luuvnnux3dbdhyn7d57ji@ypptsltflwtn>
References: <20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org>
 <20241027-sar2130p-nvmem-v2-1-743c1271bf2d@linaro.org>
 <60068361-ddb7-4906-84ca-195e5eb13a0f@linaro.org>
 <plemc4swba7ybrncyxt3axxpb3qjbdktfkt7kqt3dqymlusfpq@sfgwakjp7z3g>
 <7924984d-57e9-40f8-8998-b37d6e1bc78c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7924984d-57e9-40f8-8998-b37d6e1bc78c@quicinc.com>

On Mon, Dec 30, 2024 at 01:13:08PM +0530, Akhil P Oommen wrote:
> On 12/9/2024 4:23 PM, Dmitry Baryshkov wrote:
> > On Mon, Dec 09, 2024 at 09:55:14AM +0000, Srinivas Kandagatla wrote:
> >>
> >>
> >> On 26/10/2024 23:42, Dmitry Baryshkov wrote:
> >>> From: Naman Jain <quic_namajain@quicinc.com>
> >>>
> >>> Add logic for alignment of address for reading in qfprom driver to avoid
> >>> NOC error issues due to unaligned access. The problem manifests on the
> >>> SAR2130P platform, but in msm-5.x kernels the fix is applied
> >>
> >> Is this only issue with SAR2130P?
> 
> This is applicable to all chipsets with sys arch newer than Snapdragon 8
> Gen 1.
> 
> > 
> > I don't know. I know that it manifests on SAR2130P, but in the vendor
> > kernels the fix is applied to all the platforms.
> > 
> >>
> >>> uncoditionally. Follow this approach and uncoditionally perform aligned
> >>> reads.
> >>
> >> If there is a need of having proper register alignment this should go as
> >> part of the nvmem_config->stride and word_size configuration and not in
> >> reg_read callbacks.
> > 
> > Thanks, I'll explore that option. Indeed, it might be easier to handle.
> 
> Dmitry, any update here? I need similar change for X1E GPU speedbin support.

Excuse me for the delay, I've sent v3, reworking the series as
requested:

https://lore.kernel.org/linux-arm-msm/20250104-sar2130p-nvmem-v3-0-a94e0b7de2fa@linaro.org/

-- 
With best wishes
Dmitry

