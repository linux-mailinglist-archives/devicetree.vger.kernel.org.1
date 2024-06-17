Return-Path: <devicetree+bounces-76495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C990D90AA97
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 12:02:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51B7B281D32
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 10:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D90D194094;
	Mon, 17 Jun 2024 10:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y9VscPbj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB3D18FDAE
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 10:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618551; cv=none; b=LjZ3jWndPdCe6sKrGHy09uPeOgCEyJq9nYaNJbrqBnJnBrheQsV7+gLga5uTtrq9BTdxbyC/Hqq/1BcuuToJz1CnjtaHA1FF4pKaSkVPRJ40eaeHV+mMrW/qVVe6YLelm/nvLDd8VArhfFmCnCWsC/EyyZcoORWk1ykiixzU06U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618551; c=relaxed/simple;
	bh=yTSkvQPeLcq+zIoeJ8bnkpUSp77IF3hUoXpLG/uRtng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vr3InGuFI5k4hVptHA90NrBdiPjRMImNG2iKh+UIy4rx/+TWVfiudNLK3/DPmyllYIt72CPCgXQ9Sn62+HIsY98a1xhep7qLcfR48/PJ7ydo1lsJy9Q1gw9qqqEQZk1UU5afoeKuuU1i7GBk5VsG+MKW6x5LwfDiAYNZPy9+YFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y9VscPbj; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ebe40673d8so44143021fa.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 03:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718618547; x=1719223347; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f2ZohGJxhqyAKmW/bgp93YikD8cmmnsvoaV72UHkdjc=;
        b=y9VscPbjMi/fnqhCrFfzg0GN94xIPUr7eLqbL06UY8unHGKKx8WRtv/fHmhtQf4xO1
         vDY9SXmXETGt7Bk5XKbY7Abb6J5pYV7JQqiWhAd/t2SA9gigXH4J3j5pi4b71RYIKZbl
         HdOdtzwL0clo/auEjoXSbFlYFg0oqMi8H885NOTeRaG37zdTPyncG16xIEG7Dw1PVMwL
         eEXzC5BVI0IMofBp5wEdD42TYcJpcl3t8UsMU5g/idk3nb/ri1QXO6LAVkZHODCeTgmR
         KPe34xjN7bM1QE117cSwcLgh/cVaugPAbq7KFfp7Mzj3LjWJm0MVlxPDESjJEyFKMAxA
         WSvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718618547; x=1719223347;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2ZohGJxhqyAKmW/bgp93YikD8cmmnsvoaV72UHkdjc=;
        b=D8/LN9OJ/nfIcul1SW/BEy8SAcG/bwmFtSmff7ACdgp7gddm64HpB7CgCAGHmuBzUH
         +WPnapED8btnshbvjri6e3tOMq3OyWK3N2lO6ctXF0/qd1a/PbBnih+QlAlrLX0E/Whm
         QvXqi2eiFxrUjXbZewU28fqW80ptwfurzpYAYSlb8X2p/NBZL3Pr+DtuI5mbLXjGGg0/
         x8xhtrJzDvf3P6RCCn/YEpIs+dx4zII2sKRECpAetczPupVkn6Ngssp1inwfX2TVVV7Z
         dC9vJiY4d05cZdJ1BUFZmL8Ecp+kyDiFaTY+dmHINj87mAUwskm+QMyp4ACxtF4p+plR
         r34g==
X-Forwarded-Encrypted: i=1; AJvYcCV5bEWsPBJzqrXFDQpjCPlBK36xq3uYitNaAqNU1kWy3QqKhf/qhfCpHo4BxUahBY9FzqQyoNCS77MzSvHh2GlEIatb9XyB1Ucrhg==
X-Gm-Message-State: AOJu0YxkcpXDEBQuWJ6d78rRtIaeghdu6yUp3tpTjc9lmeTqdrUW0cNY
	seFkZ6nKMrlfHTUnf72a/u1V4VFMkgfopfYSzYp1GSLBxIOS/OqdYIQmFZZTy10=
X-Google-Smtp-Source: AGHT+IEBuXxmUii3zvoMKDN3vhvyXR3JH4iWC3OMw6c36KutClASgeHJ87tvcDj0tZ1+CeAE74VzDQ==
X-Received: by 2002:a05:6512:2206:b0:52c:c156:15c5 with SMTP id 2adb3069b0e04-52cc1561638mr114653e87.41.1718618547080;
        Mon, 17 Jun 2024 03:02:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2872080sm1210511e87.181.2024.06.17.03.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 03:02:26 -0700 (PDT)
Date: Mon, 17 Jun 2024 13:02:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Naina Mehta <quic_nainmeht@quicinc.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@linaro.org, 
	manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sdx75-idp: enable MPSS
 remoteproc node
Message-ID: <gvrflsxzuliszkayegdlbzyvwc4fnm43zxw3nt5kdtj4h4q7sv@7fvnckbus4a5>
References: <20240617093428.3616194-1-quic_nainmeht@quicinc.com>
 <20240617093428.3616194-6-quic_nainmeht@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617093428.3616194-6-quic_nainmeht@quicinc.com>

On Mon, Jun 17, 2024 at 03:04:28PM GMT, Naina Mehta wrote:
> Enable MPSS remoteproc node on sdx75-idp platform.
> 
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75-idp.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

