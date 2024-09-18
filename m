Return-Path: <devicetree+bounces-103689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B0C97BC3F
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 14:32:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53E59B2075D
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 12:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A69189B98;
	Wed, 18 Sep 2024 12:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+2GypYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E3818800E
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 12:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726662746; cv=none; b=RG2VshXRmt4ui2Ypj8fD1nJEYDBd5IcSh+GrslzQzoGNZ4NFJ2jlwVWKT/pBW8l5RcP43PZmn/rbhfDxcgkOxl/pCv4Gg+tpZ/eAqg1kdDJDMOiXkYgaE3p9TQ6Lej+7kK0atUGDir2aqgyqNbn3E/xZrfOGF4VjVT704jAiXJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726662746; c=relaxed/simple;
	bh=3gVQ9JaYTaBdvDz5MGdsXx0ayVEISpaMDfcREkdX9c8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hDvzhEFF11j5XKizrWzuWbxYaI9XPiKOfy7tEdQKAYUZ4gDvnx05+10uzQxqV0Cpy1llDsiNJEZCMOCz6Eyc2QuMiXopTezVBw4Uo3DlSXZDpbzaYYArCt3Db4IBNoyOxBrtVXmSVu2vXjpd7fXjAp41SWZwCFu5EKTQuWtghnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+2GypYD; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5367ae52a01so6174433e87.3
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 05:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726662743; x=1727267543; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QldvlS8/eJZac6pG0e6NEdXcfsAi5+t2N8DBgSFO8Rk=;
        b=K+2GypYD3gvqB4wezdF1ONJGmiuElFPIW3MxSawSSrNDMxe3f9v/pSSpnkpq6OXX/Y
         aWTS3XIpx9iz5CLBWmoUqqMLgB5nJlSU+z2IowwLG928nhWsgldW0u3qFptNAtAEkXa1
         uqsT6LLb/uVXoypoWodr1Aj3jRT3XuNfXssLoCjPfJ+yq26aWG4Is/lrXbygXj40M7Qs
         bqAkP0Yz5HtnAS+qWbosrohj1+VED2F8RMgCIGsbkjJD6i91jZvMemNZILZcD1fIuscp
         b1bZcsUEeFrRkx/mWf55chIaQskhYvl8ymzbHDkPAIH8wU4Xa+FFsstwChP8Kso04Ecu
         Tb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726662743; x=1727267543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QldvlS8/eJZac6pG0e6NEdXcfsAi5+t2N8DBgSFO8Rk=;
        b=Yyk/LQd4cxN58VNniKt5R/1E6FWEeFVHuomW80I3nox4pTImoHDgHfd4JKQmlV1LRH
         vwSlpn8M2H4tHQjokoSkGLagXf9W6RocwPj36CF+J94XfKjF2BW0+uWXpPYvmnq4oaa8
         gZ0//mlsO+eNPR0sJ0fCLx6wNEJzgfQS1hwqTsyYUZGERCDaXPk250Q9BuJxqkvvqk+H
         iWjS07oXVlxzBZx4DIfdRsa5JacrHYJb5aeTO+acra5kVvIP3Afm/HQdAOAMWgV2LK5x
         32aMhhtPl3fqhC49rLo8NJqwD1+8fjej40XGp8YFqtgU+UCVU7TQVCee3TODBT356UxD
         Ok9A==
X-Forwarded-Encrypted: i=1; AJvYcCWWAmRx6dbgP4NqnSE9oiIUNJxB1IaP+++QRVpMS+2gAPU6C684TDx7PubSp7oBUYAEdRQhX8kKoELH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Nr18XNuO1naUOJfB/UX6AbXQVwFjh7KafB2KBK8BZnBgGZX+
	nnfzrbJe9F90WGukyEdA1lI3l27bFFaCG73eZDTCUZFEkyaq9F6TFPtwdC08vRM=
X-Google-Smtp-Source: AGHT+IErvjmxyimyd57IGMkKNpdAXZ02gL2PuI7e7vGw8BlqbmJRMt4iCTe0zO0FnjQKvmbmHIhaUw==
X-Received: by 2002:a05:6512:33d6:b0:536:741a:6bad with SMTP id 2adb3069b0e04-5367feb95bamr9279710e87.12.1726662743277;
        Wed, 18 Sep 2024 05:32:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53698c3dd4esm797163e87.13.2024.09.18.05.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 05:32:21 -0700 (PDT)
Date: Wed, 18 Sep 2024 15:32:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_bhaskarv@quicinc.com, 
	quic_mapa@quicinc.com, quic_narepall@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH 1/1] arm64: dts: qcom: qcs6490-rb3gen2: Add SD Card node
Message-ID: <4g6ao5bbt57wdro6sroq7nodxtgdk5ecdxsdkrfvttfrsm2zmw@jik6og3np75z>
References: <20240917090630.1025-1-quic_sachgupt@quicinc.com>
 <gyasvmb5q3e4pgmfpj7njovclydwhsvsxt4ayfxzbh5njwgwsq@zfhlm6lqfirl>
 <5c0f627b-058d-4213-9c2a-5adb2f174c0d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c0f627b-058d-4213-9c2a-5adb2f174c0d@quicinc.com>

On Wed, Sep 18, 2024 at 03:58:04PM GMT, Sachin Gupta wrote:
> 
> 
> On 9/17/2024 7:08 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 17, 2024 at 02:36:30PM GMT, Sachin Gupta wrote:
> > > Add SD Card node for Qualcomm qcs6490-rb3gen2 Board.
> > 
> > Consider adding mmc0 or mmc2 alias for the sdhc_2 node.
> > 
> Thank you for your input. However, aliases you mentioned already exists in
> the sc7280.dtsi header file.

Ack

> 
> > > Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 33 ++++++++++++++++++++
> > >   1 file changed, 33 insertions(+)

-- 
With best wishes
Dmitry

