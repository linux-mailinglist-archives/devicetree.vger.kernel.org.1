Return-Path: <devicetree+bounces-49013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E036487498B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 09:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95F7C1F21501
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 08:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61DB063406;
	Thu,  7 Mar 2024 08:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TOv7QaC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39036313F
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 08:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709799970; cv=none; b=qgkoQDkIr52pZqPQ4X70C53qb8VgBWodfWqUMlOVj0ViUrNgLLClyyT1CthhxXOBlA3pQxKi08HbFZuYxkZv0262IfPgLp02qz4glEGjvYcAv6fQ94KOfidIuovpsSAV3YhWyGmZm8+JyAUNCd7xd3ekl3xzb0k0YPXSk4oM9JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709799970; c=relaxed/simple;
	bh=PBrebkdCpvbZ4ZAMRT2TxIwYjjN/Xr9LjZ96/P/xG7A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FZixUD2M3ODYhjHKOSvGoKmzkCceT+vqLop1lxKLQUci7Eb/m9I3bav7unX+quPlWaqQWLB7R/o5RCbHDyvBGkURwWClPxZ43WBuAq4qD0rsXcUvdZ8bAK0sQpapIUfO78MhXFKByChmh8VDqRzyL72P+ur9WeL1Ue3rv9jkeig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TOv7QaC4; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dd014003277so488960276.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 00:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709799967; x=1710404767; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6DcLOdltzgyu5CHIfol09n+T7xDDM7p3Zl6EDPmpyrY=;
        b=TOv7QaC4rJJ5yU9DOEzIn8E9ux7bx42y8xWkuxpz3aCcuOLu/aYo5Abpa9kVV0Qn9r
         wuaSPyP13ZFcDRkxZi1F+VKs5ppsHNk4C5I096E7bbSVbCoWJAGx4KWnGPiNQA576QjG
         CwDTfTsW4QxBMiIyq8RJmoOd/k1ARC/RzhTz++RbFLwynHJuG/7BcufPCDJflPoJCR2b
         yUMCCQX4HPQn7Bq5ddslmW/TDUfcOR0ix3CxP86k1sxRZ8583WR4XRX0s0tsdnU6eB2s
         IeUCAJG24n5ZC9mueDIaolAUKxWpUVnTDH390p+sNQkQoKlOiCllT6Ldu5xMT+IED0oM
         KffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709799967; x=1710404767;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6DcLOdltzgyu5CHIfol09n+T7xDDM7p3Zl6EDPmpyrY=;
        b=LLO7V+zRB4sdtdt6p/UJ91ZkkMaCLAmVRq8J4Hgiev6fWakn9Ft2F3Ou+VzFyaRggF
         BRh8/TyCwo12Vnw3wmsMqP5TIhE/rX7+/G+UETD1H/oRcbGfncE+kBPYlDR8r75Xpf4T
         WeSVHuzmt4S/uW+xdYboYnj4kPfvrJVqfn4+PHGSgPQQ7nSgr2vl07nVYo6IGTCYL9Gg
         SuIdxRsAp3lVQwTzKfpqgiFtnHauphDn6GKNWATIj0UriWrwwl6gtWgreFcZ9GTKTSAj
         y6KaAam3ltRVTUhBujBcZbebLdSAf++BMhek9uZh29MCBt2ez4LSaRs4hvMbdnKnx+Nq
         GYDg==
X-Forwarded-Encrypted: i=1; AJvYcCXoJrJZX/ANHGM8xFj0IRqyWTKof2teeVN64Wy5SjVFzsmYm6cuYPOyWdjpxG5FAKSz+i7gUYGAQry4EupUU/UEfVxr/binxPIYFw==
X-Gm-Message-State: AOJu0YzYNQ3rwMoI1xHjpm/AW5nDfpbv0YF5/IBSdcr28AxnBmabdRfO
	VXL/LmXweqx9mL48Y7r8eM+wEOn7IvK2ErQsbxfclanqkVh/KtWC2s38rOF4SdCEkF7gP4BbmsX
	zZYjICX5VREMmgrdeaVrgiIjkoOIc60JvFO1fbQ==
X-Google-Smtp-Source: AGHT+IGHsOCpTCeuA1MgZHwchJtg+1eD6vRYmvHQnpMoHVvzORgTKaoNedGZXQv0+HzxqBuShcp/yC3fC0jYLU57JeA=
X-Received: by 2002:a25:9745:0:b0:dcd:3663:b5e5 with SMTP id
 h5-20020a259745000000b00dcd3663b5e5mr13333447ybo.25.1709799967726; Thu, 07
 Mar 2024 00:26:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215103929.19357-1-quic_riteshk@quicinc.com> <20240215103929.19357-3-quic_riteshk@quicinc.com>
In-Reply-To: <20240215103929.19357-3-quic_riteshk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Mar 2024 10:25:56 +0200
Message-ID: <CAA8EJpoYi3qSrukuFouGeLNrH5fB6MXcKJ33h=g_OQ2k8SV-ig@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm6490-idp: add display and panel
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, m.szyprowski@samsung.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Feb 2024 at 12:39, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
>
> Enable Display Subsystem with Novatek NT36672E Panel
> on qcm6490 idp platform.
>
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
>
> ---
> v2: Fixed review comments from Dmitry and Konrad
>       - moved pinctrl-names after pinctrl-0 property.
>       - removed gpu disablement change after validating gpu.
>     Rebased the patch
>       - rebased the patch to resolve conflicts.
> v3: Fixed review comments from Dmitry
>       - renamed panel supply to regulator-lcd-disp-bias.
>       - moved backlight as per sort order.
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 92 ++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

