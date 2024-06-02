Return-Path: <devicetree+bounces-71559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D727C8D74C4
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 670971F21C98
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 10:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77492381B8;
	Sun,  2 Jun 2024 10:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UCVOL/rZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284EB31A67
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 10:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717324866; cv=none; b=t/82oeQIJXJfYyuG+hJKprL5zQ5byVj9VuW0pfS/gF4aqTd9JieYxc+iPzlcy2GngQWTHIhpP+L+mGPPr2EeiDsWboLv/FwXpHk5yiIEb4CFCyZr3hvBaIyf/YwX/+ay4iShwneLFV12NHsPgJhlTf1uPIc192tLc+7VFnGqQJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717324866; c=relaxed/simple;
	bh=4lF60Tp1ZKHlgeQKqBEl0y1eoXo68jynVkVk5IO43gc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GTMtCV50YsJIDHM7STP//uwEePiKZQydQ5qF5OVwpZIYwC76ev9j7QYoL79khWc9F2jLtkjEmHG/umLXYSxHH+yZR3y5Td/sOKZ9n8P+g69cA2mu0NlVqnNMabGr7ef+HLzJzMPBKW8qC/29iBWbZik/qev7eQLqnptHyN0KeY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UCVOL/rZ; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dfa588f7283so3518677276.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 03:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717324863; x=1717929663; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mFM4fI0BfVhoIuFo3oNmTS1/Tw1vlv77X7lObWK8gXo=;
        b=UCVOL/rZ46y+nqDNCTB2VxHDzLs7OveTj1xFO+V9xTTVZGDhNCKeMBFVMDp2cSzSFB
         EslNoMOsssw1/Zd1oSM3SZ23gSZ89oULhtK89GyTUu6mUlWIT4AO/tq1t2ayTaC9ptVg
         +cRUWKEFxe6lftRuyyppC9Uyt/9fxt5dxCGObSDFmXX3G0JiuTAhCakJO5UjLF/bvK2Q
         u9MFM3IhoZJhVJHlS2YEp9bmKZJ3YCUMTBqPFKFLY8tJ0BCDBPBBI7LTDxfeVLtH3LNW
         nACTdTMWx/yocZr3nh5Sx+3TWCrb/TxIiBkjFzjV24/KaT4tbncXYBWvREPpFwuAXe3+
         tbRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717324863; x=1717929663;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mFM4fI0BfVhoIuFo3oNmTS1/Tw1vlv77X7lObWK8gXo=;
        b=L7V7H2SW8emabUnIP+civDiprtmaX7kLpUt24t9RyedpDV4P+rSRop/fLNhk3gyd7B
         D6yIJWNdElgMXT+/6Erfi1rYcaobkhf6x3NUJ31eDKWDpf4jRrzipSMWXiUDu0gOUQuW
         1tD8d0tMgGvVGGUfsmwMFSOu7rCT0UTEmU8jcVg4VIVapejeQxVyp2LQRvorDa/UO0lC
         B+X+G7hnUYrAh5lC3s2uFp3lvE2PwVgS5lafCtrG1U8ktXDSvMwtNHujDudkMwg2Ym9r
         P4teiYgo4LH/+lie1KOLCSQxJzvTkQnOgHWiV/atMdWMUkV3ciqBUaXYD3THx5cR8NRA
         FJ5w==
X-Forwarded-Encrypted: i=1; AJvYcCUTbuBVX8iMZVIdryFJFl/reZqfWKkQ8njfvXAElJ9/1AxY84JJRBgQpPm8jXPccn07aie/xFpDq0RdcISuKnOqh6fv1DeBkYbDFA==
X-Gm-Message-State: AOJu0YwCbSCENmLstsELLjWo0bTqmsSfdWrgDLKEs9z017+pyAGGzE74
	0A38fhtb5+kNQPD7AFXTuFf2kL3MszBRyoxsmALBasq+1TRo3x+gnnP/v54M3bQ+cqvaUshSkro
	DhH+pMaAv9sxWIVKrOlft8WLknaXtlTM2YptYbg==
X-Google-Smtp-Source: AGHT+IGAvjZUn9usqBaQXStHYMiIq+xkcrPxemQDbOh6Td+kMNg2WV2GXfOZ2G0rsURmY5+qN2Tsi0NdkrstgDyKMNk=
X-Received: by 2002:a25:ac95:0:b0:df4:ab39:8c1f with SMTP id
 3f1490d57ef6-dfa73dd2735mr6280143276.53.1717324863129; Sun, 02 Jun 2024
 03:41:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514030718.533169-1-victor.liu@nxp.com>
In-Reply-To: <20240514030718.533169-1-victor.liu@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 2 Jun 2024 13:40:52 +0300
Message-ID: <CAA8EJpra3jfmhEmAM6PSpu6eKNdMGuNN3eX2r2JT6YEd7hWsiQ@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: imx53-qsb-hdmi: Disable panel instead of
 deleting node
To: Liu Ying <victor.liu@nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 14 May 2024 at 05:59, Liu Ying <victor.liu@nxp.com> wrote:
>
> We cannot use /delete-node/ directive to delete a node in a DT
> overlay.  The node won't be deleted effectively.  Instead, set
> the node's status property to "disabled" to achieve something
> similar.
>
> Fixes: eeb403df953f ("ARM: dts: imx53-qsb: add support for the HDMI expander")
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  arch/arm/boot/dts/nxp/imx/imx53-qsb-common.dtsi | 2 +-
>  arch/arm/boot/dts/nxp/imx/imx53-qsb-hdmi.dtso   | 6 ++++--
>  2 files changed, 5 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

