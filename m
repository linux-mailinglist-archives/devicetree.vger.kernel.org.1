Return-Path: <devicetree+bounces-69197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF3F8CF14F
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CBC61C208F7
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 20:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF7D5128807;
	Sat, 25 May 2024 20:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iyLuhf1Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357CC127E2A
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 20:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716668206; cv=none; b=mazvq03bXKfaGdr8DDqw9smQcqA4X7V6noEUPYFLdL8F5bHOwbvOWUirh1jdGBhkjyGXWmnSLdH2OfcXePrlN7fZJZuhkKnrisZA4T6iHYGQQ5nXW2S7kR6PTzv/painfoSL0CzIWVTie9Lkb2Bde6khiGM6XXnArXChukQnfOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716668206; c=relaxed/simple;
	bh=2HHhiCt8GLLLa8Gr8o58I0NCI8HzVXKCVVmS/vYl6jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKpsTd7Olhg3TUsQQtDKvY2VpPW6VxTWesMwOZzQf5cd565xZ6KRYWgIOxwwnUE5ro7QjxozpPBVZBKgQfYv93xPqpPwuwc2hwMMjWR9eGB9VpxqIXKsLyzEVUwttHHkpLg2wlaO9/E/bV48oS1IzlAKzqRCHRoSJ8yRj5DqcQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iyLuhf1Z; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e6792ea67fso119719081fa.1
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 13:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716668203; x=1717273003; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vxSNjzTuJf4atAWp41vejpcFG0wlQeaP+5dXZqy6R+0=;
        b=iyLuhf1Z6c2i08uFYfcGoxKDkZnElnVmtX6Rlcg25Odhw5mC7SvLZXvYIWD3Q/HWCq
         Z5iL441LviOVASqAqYTNIA5f2Zen+XTE4pwB7GR9sdHLWdvbuPuM807+faNepgZHD0JA
         CAtomdSqfQei0PLkV1gc9WUott/skesHrSYhOypIodDjCPA2dZ9DlK/Jfpsj2plXcVdR
         x1EEJi67HkzpAfRFG0DyqPvoNsN4KSAljdMB25VdSPhApwpiZJkPP/Uo9d+xF1q/v68D
         U8sTlGuoOvGDyCnElWLPDeUM+BbUQzdt8+TATlh/CgW2kZ6oVepn2H0/49SYyTDIPNjJ
         B+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716668203; x=1717273003;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxSNjzTuJf4atAWp41vejpcFG0wlQeaP+5dXZqy6R+0=;
        b=YD2TbZtC/Uu+BAbXZPv8e93zFBSrUawZpRnZaC7+1dDJ1qyjS9HqbHC49OtkM1SxP4
         4nZySlIfTWvFJR0HEIt2WhHdpoSdhsSy9TMcDpasphjRvwUXb0l1ahu1DdIThl3Yvavo
         8PTt7Y83Pl6YH+XY7myrW9Hyl+7NF6JAK+Ax9pD11iryEzA3gUfJpIx/6tRKC2tdiSem
         pzIqumuwRWSiFBIM+XG0o4MSGw11oJTconKAcJwahEwaYoWfeOWVM6Bf45zUpXyFlBno
         7s29yDQNzAEiWXdnbo2I7Nyg4Tf6IAcp+s1Qs6k9ZiuIft7KiaWveGBY9/gDnipPmChw
         1/fw==
X-Forwarded-Encrypted: i=1; AJvYcCUyTvfmRuRPMlkK+UtwaRUYSgMT0odKdQEdWGlIdLoQJk8ZW/lS3ak9jFEAinjDQIkiygCPd79kF4nxPKmxuwJE6OfgVyNkWgwkRQ==
X-Gm-Message-State: AOJu0Yy5HveIu63F0ASYFm4AU0ZXnuq3zA3hDqiUeKjot7i7oRb+VvZP
	IkThYn+3qGwlxH87udMsOMy+olKScWv11iqN0X0cjoAeIlQAOxxoFwPAGUUff1Y=
X-Google-Smtp-Source: AGHT+IGqRSHwvMo1bs7rJRPMNeOrxq/sWSDnSnLjjibtRkPVSgOa8OApgnvVYNKAuqZszWWcJU2yVQ==
X-Received: by 2002:a2e:3e0e:0:b0:2df:b63:a8 with SMTP id 38308e7fff4ca-2e95b278708mr30593201fa.50.1716668203490;
        Sat, 25 May 2024 13:16:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bdd1517sm8813861fa.82.2024.05.25.13.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 13:16:43 -0700 (PDT)
Date: Sat, 25 May 2024 23:16:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 09/10] arm64: dts: qcom: sc8180x-primus: Enable the two
 MP USB ports
Message-ID: <yqpnfhh5cdi3uxzg5ii5677lsjrt7nothm2neysf32mjce22fk@erbpp5lhmqrq>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240525-sc8180x-usb-mp-v1-9-60a904392438@quicinc.com>

On Sat, May 25, 2024 at 11:04:02AM -0700, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The SC8180X Primus comes with an AUX card with two USB ports, fed by the
> two multiport ports.
> 
> Enable the involved nodes and define two always-on regulators to enable
> VBUS for these ports.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8180x-primus.dts | 60 +++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

