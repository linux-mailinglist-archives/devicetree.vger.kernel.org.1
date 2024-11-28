Return-Path: <devicetree+bounces-125308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDE19DB858
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:11:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A675FB20F3C
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 13:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F96E1A0BFE;
	Thu, 28 Nov 2024 13:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U3WAHrHm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8C31A0AF7
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732799508; cv=none; b=BJkMVU5MH34U6ozgNPqj3OBRg0yjdC4PRhDLm9D2C3YDg/plv9gWAoL131da6Vz4Evg5ec1tyLcjU8S//nYmkyYzYRmVQqyywqjdfCLLy3zFKNoqX/yPsLN1qr1KFnotBZmaHq/KJkCzUNvVRmnSyEPShZIHVD9gIbKqxKWaGBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732799508; c=relaxed/simple;
	bh=AwAAXcVxCiHLyktN94ldFA9g6gNEaV+e4+HKqMAxMog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HUHrf6HOz7xJAUWBZh2KDyePpZEKUE8EevxVjW51iPwVIejBUx1i7yyptapTkaDGmLQdYdRoIPrWrIZWFdu6CfK4ovzT6NICmuL4x/AiRYmcENQAPQwL8uFhCcoehMoJ8pmjQnAWFWtu6/z+4tBwHajT8I12t+XcTiZ8g1CCBxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U3WAHrHm; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53de579f775so1109654e87.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 05:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732799505; x=1733404305; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BPbk5rhV91aF3IvatwJOVn64gj4oSvW2resxKBeQMZk=;
        b=U3WAHrHmLLLkFR9Io/cldCBrDNFauMtpU2xIlN6S27/QlSFHELCaaieq2X3lO1+T+u
         k1OwGp4v46WzR+ailSIl96gZqHC82a+DjILMSebjQU1mDa/5WJKdgnYdiWdRkgGv/ang
         wcyUTijqe4E+Z0hxT5KNGpDcvC8XHwTDS/kmeY4+yJdve0vUSmt8V7c3zFrwGr0j/8DW
         jEXZvKv2vTZ2DxtoMxA/ODnuoPvY851C0eI+RcHfwI6VNWczY7CkHaZAMxfT7qZ2vkiK
         LwKkUtwucszaGTS4lFQtsoKtCC4fLoZhcW8XYMgvK8q99x4EVNeFF8Nls6eXJMgeklnV
         U+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732799505; x=1733404305;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BPbk5rhV91aF3IvatwJOVn64gj4oSvW2resxKBeQMZk=;
        b=B+up7bDyrNMwf9rN+o/0JQ5ZNg+WmDGiqK9ymf4tTtg2pqDBQFGhgBip9POmJQe3UZ
         IqJc6lcZq/qFov3zqCe8OLYECXDGcMkJ3Pwr6aUYjqDEbqAWJzuf9EZ9xD4x9/3SG9TN
         uVC+q4xD8iQHOiejEY8Ex8HEq8b0Yzk/ugiDPWQn6NAKYzOqeTR0a3yYYCBcH2jp2sA1
         Y1ewyndsxCUS75Nhg/UFIxxq9C7nSwKAf1OAkmjsD7w28YH/0TgGpVVyRehK1i6EYztR
         RsK3nwcthgLCRxEU/hN1zWeHOyNHzvDgrZPZToNYKCLxpv/k8Jb94Ltr2E4uK9BtOuqA
         dXuw==
X-Forwarded-Encrypted: i=1; AJvYcCUX9aODAzGBbxVQWxU3D97dt6xrO1+ZZzpVOYomap0WOLrf6ytmQ7KJtnR/CFytKUWt969JaO8qCnGW@vger.kernel.org
X-Gm-Message-State: AOJu0YxYZ9ghoy9/u6zDKd4a/9fBRNqtisIxEO8jOnRNgyrNonGrrcSg
	5P+1jNElh9cCCqiLbseg5RQMiEdtyLTjlfu6KN+xO3OYS82GW18T6fF7MwRt5pA=
X-Gm-Gg: ASbGnctdk37Ct/YX7iBC4CFjoQKNTzqONoL9rSziTUuqDyVrjD5IUBRDMPyYgsot6ej
	yAZL9kln0RIIlBurdFKWJFw3B7FenyP4z5fcATtBPoBsclJWO1kU2Es6uGrRAcQwfSAh86sjBs8
	HbnXJrdOozemFnq4e2xK4OTHQ63q9iRgd/3tjrpBTyvFgVTrDwP5fCtV8I6HHGizfC/XS4iHQ3o
	C/PqOyJy2hz6yZNG+VAOePh1dsWj1H0qyFdTQpcdaxDmYxSNEvaLh9sFWugEdYmDPgWZBxHX/ji
	1QpNcuXGWgLi08W0dBn0J2BW2yot5w==
X-Google-Smtp-Source: AGHT+IHZn+eHpkDk6+N7ur+GKoJQEReZTg7lVnI/e2QDxtl3PhOP/4nRD1I7pB/02VDWpNXcNMAVMA==
X-Received: by 2002:a2e:ab0a:0:b0:2fb:3df8:6a8c with SMTP id 38308e7fff4ca-2ffd604aa06mr55308261fa.23.1732799504621;
        Thu, 28 Nov 2024 05:11:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffe1daba82sm1270761fa.0.2024.11.28.05.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 05:11:44 -0800 (PST)
Date: Thu, 28 Nov 2024 15:11:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs8300-ride: Enable PMIC
 peripherals
Message-ID: <qakds5f4xwoh7tu3u7ritxppdmxf7ppawsm3nfmn7sjetcxwos@7lext4qea6oq>
References: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-0-001c0bed7c67@quicinc.com>
 <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-2-001c0bed7c67@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241128-adds-spmi-pmic-peripherals-for-qcs8300-v2-2-001c0bed7c67@quicinc.com>

On Thu, Nov 28, 2024 at 05:40:17PM +0800, Tingguo Cheng wrote:
> Enable PMIC and PMIC peripherals for qcs8300-ride board. The qcs8
> 300-ride uses 2 pmics(pmm8620au:0,pmm8650au:1) on the board, which
> are variants of pmm8654au used on sa8775p/qcs9100 -ride(4x pmics).
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

