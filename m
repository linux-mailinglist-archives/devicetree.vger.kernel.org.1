Return-Path: <devicetree+bounces-73238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 247EE8FE4D3
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E92E1C25D65
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 243BB1953A0;
	Thu,  6 Jun 2024 11:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UqxccRwf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F88B18C33C
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717671775; cv=none; b=IEjiNH7VPu6JFg60alKS0Cp9yabO8eJuLBKdxdkpAPXioWHGU4IcxfeY7CFwuTCDEpQwKnrp+JlKlmCZ0Rnmd/5VJ0bIE1ZCEKDr9YPc5IdXA7CZ70S87LVvWpTOWBHIXjWuWP73zowzvwEYyqrI1cc+aPyDvRoZVZGLv9+zkgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717671775; c=relaxed/simple;
	bh=Cy7BDIGhJq90NEejjiiM/tCn55ABVYtvqQk7JroaAV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k3jhssCkmORHgy8AXqsTnWh9kcj0m+tslC+hiFX4Nk4nSekvSP/+4g16fpA9JVKeQLRUlw7OZ3bLSg962tOmwAgLyXImOHCSo7tb7KxXAkz8HEVfHWJqQVsKYf8D6z4f+VWHUHTvN7SZZfLqx4is5gZ8XQ2N4I1L6mGmijd5Ylw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UqxccRwf; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52b88335dd7so1011911e87.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 04:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717671770; x=1718276570; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2we3UvQm0ruc9y6s7vLBgq2e/TF073I7KSHo1LCy+WY=;
        b=UqxccRwf5sIz08iNLQjlbgLxW6u0n2M/lQ9sv/WJ0Qx6BV4RgQq3DtlpLjv64lLGwo
         A0tf1K2SMeJRkJUiKTDrLX/DRzLeVzl8DoZO2jC0FbI0g/D8GIiM7NeW1oz6VGRgXHcO
         JhSJbKEmvaCZ32LXW5j0pgtrhaDLa7EGf3dezbhNJiScAL+LLFS8M/dr5nzZsiV55PR+
         XesNsxpEUxr6EDeO/8v+HOl9X7iTKbD+Hh6kKKTJIx9rhHK7CYXHeXQIlKa5NScvRdxE
         uE6sLVNgJMSps6PgW3bWrbXLeLsdeln9jCoBnJGBOLXcKSfhoE+8MVGIDmqo3lLbUnXK
         t7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717671770; x=1718276570;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2we3UvQm0ruc9y6s7vLBgq2e/TF073I7KSHo1LCy+WY=;
        b=LW46OZyYuiyERPJGtgW3ORQ0E7ZdVSnZlcYiQPNcw8QTc86Y75FM5J0EJsHn6HyVCK
         q98MYG8aOo3b20xMgfONaoSK7N+9f3KvlLVAha5x4HZrNx9L6FYFipKdo0Uw8SPF1eA3
         KVgEWjnSjkCHPCGI1aVlaMffPfoTWSzPRJPS3w/3srvcgN1YTIPo+JJWoURhm3q1BDwm
         KCjXONKG83XV8/6Xw7ODcVBfZB0R/HFbmtXwCFpBAURuUwZzoKESG5XpYOSfe5vC+2XH
         8/smBmF5P1ZiOecNl40hf12JTxDGdLPRBP03A6opvFbNJnkjAzCNs/yDsBcpGuDEngUZ
         UKwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFdQD0bWS+WFRyZ3aauHHiCHSacmlVC2tkY45vCv1wp2Aj3sIRKYSv2mCznAD8X3WoqzJ588u4wtuJUcL7hmEFbLd2B6f9FTDukA==
X-Gm-Message-State: AOJu0YwchF+i3VxfZ+s+azljRF9BzGRuLFlYxtsUe2OCzmy8vnjmVL+T
	di6feK/Rvl1luEaBfdaol71ylTKKqP6LP4KLlAW7SVLY2nLB5jd5ET9Ud6DtDRg=
X-Google-Smtp-Source: AGHT+IF9p1szntCshLotWnxCi/rmgp7YpoVJZQDdl0N+OgyfDtLJTqF8KnfgwTxy662gFKSGekyIjg==
X-Received: by 2002:ac2:5227:0:b0:529:b3c9:7276 with SMTP id 2adb3069b0e04-52bab4c9999mr3043026e87.28.1717671770468;
        Thu, 06 Jun 2024 04:02:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1f1fsm163923e87.46.2024.06.06.04.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 04:02:50 -0700 (PDT)
Date: Thu, 6 Jun 2024 14:02:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: Add remote endpoints
 between PHYs and DPs
Message-ID: <pnjfcxrlkzfteky46wpkpji7vhxpdsn2zamklbqvaaqtfiqym5@uo3one26nxhb>
References: <20240606-x1e80100-dts-pmic-glink-v2-0-972c902e3e6b@linaro.org>
 <20240606-x1e80100-dts-pmic-glink-v2-1-972c902e3e6b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606-x1e80100-dts-pmic-glink-v2-1-972c902e3e6b@linaro.org>

On Thu, Jun 06, 2024 at 01:41:52PM +0300, Abel Vesa wrote:
> Describe the port/endpoints graph between the USB/DP combo PHYs and their
> corresponding DP controllers.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

