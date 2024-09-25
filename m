Return-Path: <devicetree+bounces-105367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0D698685C
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 23:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55E11B23535
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 21:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054391552E0;
	Wed, 25 Sep 2024 21:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vpHxw83B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEDC145B2D
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 21:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727299905; cv=none; b=HXX3mm81JcMI0fvIjlvvQC7sx8UFbgEloboDuLhty5z/cgzVwhh/nvabMvL5QHHWWI3XOgNju/JcZG0r+QGxcH4+GvjOSnP6kjCMT9LTdOqLnlIvYv9n+00Y4YBQ4wt6VEotnP0VsqjFtGcwsQQXdrlNi2f+a9yenqO+JAQIBXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727299905; c=relaxed/simple;
	bh=q1hnfW/UYENj/VV96bgSolK/g/2vdQSz2wVyhQteCPs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sb7AJoe0k60T2qv3giRnnzlhDtLk79+x8VtmeefzM6a6tw0EJVwGZcnmHG6PKaoSUyrqq1+pt/iBZTEYfFyFQGisNhgqwFbxvS00B/b4KX8Dr2LMGeOU+WhCLqPahX/kcFgm4bAGv73h+7JVynEiLggDSAXMdJu09b0+SGebQAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vpHxw83B; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-536584f6c84so420342e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 14:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727299902; x=1727904702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g2gRWXk6um8ssZG0dTYz3h8O6sPux+vtNyTeziNQM+4=;
        b=vpHxw83BEcxXUiXAHcwannMowZ5Cp/Zm0//e9txywTNF+VvbYNu8F1jTKNov+mH/Ns
         5hHQflIjhKUl5G/IPTQ1QlYBoyLU+pl1Qt4Mx572kqq6ImpdtT9nvn7R1iEEZdIHMOxB
         SzftUfPVRDvh/dh4iGooNg+6fQdfSwKqC2XOKsnIbMuGDmC0MWWgUrNTgHl0q+YB/QjH
         E6TDD2eqeFktH3aKA7aTMaEBEEEm2Bnp4OTeVI5cdWgWqIyT1MrP4YYAq9UO8Q2phjMl
         Cl+YWdmPf1FQZtaE2nhr2VGc1ZXKepGxtu0tMXMKlhUgIh3yLSandXdoVQjX1kgBeB6r
         TSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727299902; x=1727904702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2gRWXk6um8ssZG0dTYz3h8O6sPux+vtNyTeziNQM+4=;
        b=McYqAanOc7ipzuyYM+9jDxfYQ7WktRUaC/mIZF6BU+SlMMRZp++UxOXW28/28W3u0J
         L8gMjMyhELF/HyRUfBRwDsaia0ALyHJIx/nkU68V4HaUapuUAcHdlheH55JoyI5LwgfS
         dLBiWIeDwRP9q6ZbuRrcb0VHQsqHJAliM2yVtuANMDzf7rZFeKzOMiLe7mfO3TdzElr1
         MUO/i1vNr/8dBPmsJLgcEk/+k9FGHW6ux69VVDFVTrRTxCHHVIzieY2Dxnc+QiQOoB4W
         1QDOwXbg6pwwvtOU2mGiaEn5ANLMq41zGzatXhDBT5uaYY4N+HfI9ODfBA1SHGtgU4Hk
         7Wyw==
X-Forwarded-Encrypted: i=1; AJvYcCU7vCqXd3UpQEiwKcSxU0HlUkjbSTTaA+GBj0all4Ki0n4iKDElBgG97PKUzxBSlDESQJul4itbsDty@vger.kernel.org
X-Gm-Message-State: AOJu0YwOlIpC8J4on8+GhITdGdgUGpnzvpYPxWz4eoiZxI911gvVdA8b
	uR5tA6Gkf6BqXCHDxPdLVTjIeB2dfeyASTYTH2PBo4fe0bemIkjo1tIbImM+t8k=
X-Google-Smtp-Source: AGHT+IGRtxkMp3x13jBkNmqIgOxnVIpZ0WovylKJsjpSzFGlmQuJwR6WMxOTZoa6v7kxp+tzwKvB6Q==
X-Received: by 2002:a05:6512:3a8f:b0:536:536f:c663 with SMTP id 2adb3069b0e04-538704986fcmr2778800e87.22.1727299902152;
        Wed, 25 Sep 2024 14:31:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a86408dasm623111e87.144.2024.09.25.14.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 14:31:41 -0700 (PDT)
Date: Thu, 26 Sep 2024 00:31:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, catalin.marinas@arm.com, 
	p.zabel@pengutronix.de, geert+renesas@glider.be, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
Subject: Re: [PATCH 8/8] arm64: defconfig: Enable IPQ5424 SoC base configs
Message-ID: <h6ajhgv5rqabxupove4ge4253ywzbjyxoqq75c7ojmauudd3z5@hhhkbbzfmved>
References: <20240913121250.2995351-1-quic_srichara@quicinc.com>
 <20240913121250.2995351-9-quic_srichara@quicinc.com>
 <4dxqbm4uuuuht5db7kt6faz2pdeodn224hd34np322divs22ba@dzmjveze3b4f>
 <2a16d5a2-17a5-4988-8a25-34ac10ff3d08@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2a16d5a2-17a5-4988-8a25-34ac10ff3d08@quicinc.com>

On Thu, Sep 26, 2024 at 12:34:56AM GMT, Sricharan Ramabadhran wrote:
> 
> 
> On 9/13/2024 6:23 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 13, 2024 at 05:42:50PM GMT, Sricharan R wrote:
> > > From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > > 
> > > Enable the clock and pinctrl configs for Qualcomm IPQ5332 SoC
> > 
> > Please name the device rather than the platform. The defconfig affects
> > all users, so it should be justified.
> > 
> Sorry, to understand correctly, you mean to use the board name here ?

Yes, the board which is generally accessible, if possible. You are
increasing kernel size for everybody using defconfig, so at least it
should be obvious, who is benefiting from that.

> 
> > > 
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> > 
> > Usual comment.
> ok, will fix.
> 
> Regards,
>  Sricharan

-- 
With best wishes
Dmitry

