Return-Path: <devicetree+bounces-141129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75798A1D797
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2079618881C3
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119811FFC71;
	Mon, 27 Jan 2025 13:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FQvupOZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D7E1FFC49
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737986198; cv=none; b=FI1sO4j1Cb8+EnBpCYCVn4okl/pqRCCSy8y9gd5VhfkCc/Q/rsdqZ+JRdbbVAqk411plSdcJ8OsOaUiaFyXuFXDCJzQQjGroPSSFfNcYstXB5r+q+6IETbX6tY2bbKUaMNYTeFTfzlRD6SZfybtDMB4s/0K4+7kgEt9NKcAZ50A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737986198; c=relaxed/simple;
	bh=IVx90ZZkaqdTBCEZvkxMvKj6KlfbrZxHyQ1UuRJdIJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YixI0gyax0HTHnk/0HINiNX7QLLrD+Mm8swqDEJE7x143B8B1+nNxg5cX4/1hlfoZmdKPf6EJ4f4zxN3wGCrNVvIbP0POTX42/rAK9EOve3wzKc2IUEWxddIGjYZXgA7d72asxZJEn7O4xCimpcWKMD8Q2ggVuca4BQeU22yTgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FQvupOZm; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5439a6179a7so4753894e87.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737986194; x=1738590994; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b0jN9V1y7/L/MLutakuws/1hYWGughdKy3zYiBzIvC8=;
        b=FQvupOZmCEmUyp15kiAn/WPRzwBdY8DgFuKEKZ1nM41qPrXVLHyUHz36TwBpmj2kpe
         E83tKI1Ybn8WiFnYAFt2jz3PxdPnHyiKoZ2FtSFLgs6no5ONEVnhvfIhXDUx19FsvO8o
         jiUB2ouXZX+IouQCsz6fvWpnUma0TrxqbWU8Esjbb1oDHHJBDFI8jduhUfp2lV6Xy2Q2
         ePRFlZt0f3LdBdVaoQfrLSGy1e4WVE+/ot4J88lVvE2uDJyS3urvZbQB0jrasJTGEgI/
         injH6tx8Titu1/RWDZJXah76r150UGEQhNQgu8b4YJauDPSBjOms7aOJQQ5Kgv8gSkyJ
         QaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737986194; x=1738590994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b0jN9V1y7/L/MLutakuws/1hYWGughdKy3zYiBzIvC8=;
        b=E+iidd6EMab/BT0LG6UiiUTheLDzTz4uS1rEZ/rdtD1OoPHhCm2WoDaHIWb8/5N//s
         K+kKWfWuApfajbDhd7J2oseLDuJ6U1HdSsAp+4wqLDXt7UvZKZa8PrTUZj76E4A2G9lu
         1CQOzAkGAjU0/PSjT3ppBQTyBkA4mWKe/pkUeh5X8o5QrHXKr7wha1EwekPNQajbG9b/
         7DYeZewsnR2A1rBPmbBcJGeMCFDr6l+Vc9zQu8C20NiFfHYHifBAR49UTtkpTC3XILBr
         /nz9EEddt8vpmq8EMg51/yKsB54Mu2BZiPv27rQ8qOl4Gc398Mfz75/xyWEKf3TAKzmZ
         zmqw==
X-Forwarded-Encrypted: i=1; AJvYcCU0nU5FpiVwmlzumncPG2d6z9mA9e409wFKBipDu3wiqJDrD0eLb0a35RcSev/ryE09mwTZeqSHbY2a@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3lvwBuVyMC7kl/knJ4U4vFfBjwWRp3ZQEl80XcpeFvMPXizPA
	Hmb42lagxt8SpgmDMNKbJSW8dhn/E7jx3bvZo1Wlga49fpxmuFa3Td4j0E8H6Mg=
X-Gm-Gg: ASbGnctpvFcaRfmDgwMSaCHJIAocoo5pJkvlQy3rbKkRJ18r+B9BP9sXKA3iEPOYCtN
	IiTMyEQ+qyI8XM4831zYJd5bztyrDvblfiuBIGk9W40P9tbeDwppgAMo950+gML2MBfhGs7TjYb
	akKu4jGqz55BVXGFgPAGreK4uelM+849imcKD4ZbGrTtQFl0duYph6FiBDWpxxfZHPTxYSODwgI
	Iaxber77ycW4C+Bf+XKoLVb2lyAaq1ggtR7MDbq5q/iW33uz1XvpzROYHFZTaDUj+J7C4Vo6CQ9
	yABweBA57z0/6xBBCFr/iIOhdJEFLo1XJ9nLZAbDi+iCO2IFo8Am9kyKtFHg
X-Google-Smtp-Source: AGHT+IHG9/yPxuIf8B66VeTSgcjJsNkURdMjzUehFN2uAgC4UTEwONtiZ+J8Xd6ZdMacU2Hf+AdBDg==
X-Received: by 2002:a05:6512:3a8e:b0:542:2160:26cf with SMTP id 2adb3069b0e04-543c7dab42cmr3865470e87.25.1737986193710;
        Mon, 27 Jan 2025 05:56:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8367e2fsm1313995e87.157.2025.01.27.05.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:56:32 -0800 (PST)
Date: Mon, 27 Jan 2025 15:56:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/24] ARM / arm64: dts: qcom: Use the header with DSI
 phy clock IDs
Message-ID: <jtm4kapqdivdqafmj3jqipdujff7hzafbme3a2oa4irnz2sbwl@hf2hf7zcr3sn>
References: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>

On Mon, Jan 27, 2025 at 02:47:33PM +0100, Krzysztof Kozlowski wrote:
> Use the header with DSI phy clock IDs to make code more readable.
> Changes done with sed with alignment/wrapping fixups. Verified with
> dtx_diff.
> 
> Depends on:
> https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
> 
> Please wait with merging till this hit mainline.
> 
> Best regards,
> Krzysztof
> 

For the series:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

