Return-Path: <devicetree+bounces-149428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E834A3F744
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B03A9425164
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5E820F09A;
	Fri, 21 Feb 2025 14:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jkb3lJf0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2B820FA91
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 14:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740148162; cv=none; b=Q08Qxr1kl10siqoC5xX+ujiWcZjePtGRAZteIpXMInUC2szzeezitHHrz5vgeP7dxe/3kcD5C9Qv/NEM64JBpxBerxu6kF4nS9JJBu+5EPyA2oI9xAkERvL3gQjpQSJWCfCrNBf03A9bDCoSZ0f8B/5EC/c0Wom2a/aDrmz/O4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740148162; c=relaxed/simple;
	bh=SMB7Oulg94+Z2MBXQkXTAnaPYqD3Nq0hNq1RuWs5tLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cHLPpvqw+7I9fWieTJfGTu0L4WBqQZ9QafpGsrDnKLHg8ttx1WqUAvn1SL1wgD8hm1RzRNwY5JL5cWqje6iFB5CxN3UwvxGR1g3JZROP2ZpKCAMbDAuOUN0PSlahFMvrNkL3rCndCsX8hTY3YjfHazssMYf1vDiUZzeg3etllDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jkb3lJf0; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54622e97753so2006093e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 06:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740148156; x=1740752956; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ddnou9M8kk7fCYmjkasHAfLTYCVLBdDBekbF0GdJqMI=;
        b=jkb3lJf034Vj64vkiINw0tnOwUbAhoNxu2vpPyyoqypkbkLp99lqA0jagH+e2rRBnu
         T+RLJcH0QfKMmCgcYrG9vI/ClOpJY1kvojrkR/ZEkovITtsNOLl9uZbmu+/luZy9p3Em
         rGCAKH1CWAoXZw1IFdYZajuam6XdN0HGduWxCarOUQMJhhEi6VNCE9mRo2gnT9mGKfVE
         v31sF2EelGyJDz05AwxJCZOEJEVV59ZARS4FLrkRTVZfdCP9/ACRkspN999jsHfzkG4T
         6H0kOWDgFHWKnLvoXhy33M+cahmvL++iCUroVGsEORKw5UpxlwASjaGszbQLp/LHRlOq
         Y3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740148156; x=1740752956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ddnou9M8kk7fCYmjkasHAfLTYCVLBdDBekbF0GdJqMI=;
        b=nWwUpVgX6zAo8HzwO1aLh6nr5qfRI2FsLZ3b4banipTmeAulId0FBDUP8KaAIGxsxG
         TWSNwa31shjeiMspZFP4UJDqFfgWyUq1gCBlX4vb7cf5ytZfU9231iUHh+qhC+LxFvuW
         v9MQeh9lqonkSpdICGp+NJG42VMTW35i6JBO5cbHwR5FcjGW8+7CPhiSBvtxjbk70F5H
         Zgp0P894YdCx724pKtGO5xH6F52UBKYk5065TjHrvb853zBepd4+6bUy/Frn7OQ6ISzG
         4Gu9pv8EfboPEMOcTSPFbV+p/Td9nkKQrqjULJHvNLCuERgr1IOkyEHlQB+FOPHmyoUq
         pEOw==
X-Forwarded-Encrypted: i=1; AJvYcCUM6F4m/Gq5CZ/aySkwF2K6BdgRFJWBXonUdDtbQ5nC6Bcde7drglP2PUKFyHj7B9GZVeOeE4X2OGOb@vger.kernel.org
X-Gm-Message-State: AOJu0YyxX90TahTwmpls/vzLuDeADDFEbwVto5Pyu4glPOZvFn0w354o
	9VtMUKaAsbImf1oJtA+8e1AaTuAhNXFKLY0QVj+M18U0W8fHKBJA885CWTgLB2E=
X-Gm-Gg: ASbGncvTksCveCkS0ACLAb5j2xZ3G1/FgtdEsHx0YT7hLtc3T3SsBe12jURo6zdwtvv
	JrHiZ4zqvR+RgBRrES5ChrCeAFC7aTWyolIto/jL3WABKzJVLn//d0ed7TYF0kzzi1y+OsV9jCr
	/OwoReWTTgUZMVKATCoVD50LZvrccoW6HtVaiahZ+shhyZDtM65k7joJquvfvlR8E36oPUulu1P
	S+1M4X4JpnTry6ZG6s7VKsakNcYbXatgBYi7uQjyh+SgGH/7Hdhj8sV0ZEMlUg4FU+3jp5COwxT
	LrMihS18KsrJeIx/Swjq198UiXRFdJsSfn8UWdQJZMNBcPFIdpGB1J0jLvz1z31CPoK3pQs0dM1
	oL4I63A==
X-Google-Smtp-Source: AGHT+IE7b8g0z8/f55VUJfFuqsgXzs5AvZYpknnwAYynQLfST/ypxBMEs0bl4MIebB9oZLpkqp9CMA==
X-Received: by 2002:a05:6512:2212:b0:546:259b:9a99 with SMTP id 2adb3069b0e04-546e0dfc180mr2925902e87.0.1740148156301;
        Fri, 21 Feb 2025 06:29:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a25e60982sm19678111fa.83.2025.02.21.06.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 06:29:15 -0800 (PST)
Date: Fri, 21 Feb 2025 16:29:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: amitk@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, quic_srichara@quicinc.com, 
	robh@kernel.org, thara.gopinath@gmail.com
Subject: Re: [PATCH v4 4/5] thermal: qcom: tsens: Add support for IPQ5018
 tsens
Message-ID: <hmhagxzvumlmzvnbw533ebzilbvknexarsnxjfwi4djq3eabkc@efferfxbxkt3>
References: <zesif5ehsoho3725k4xjqhb3tizj6fj6ufocdlzd3facj5hrrt@r4t5hthvyp2p>
 <DS7PR19MB888370DA2FE2AE936C47C13E9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS7PR19MB888370DA2FE2AE936C47C13E9DC72@DS7PR19MB8883.namprd19.prod.outlook.com>

On Fri, Feb 21, 2025 at 06:13:12PM +0400, George Moussalem wrote:
> Good catch, thanks! Will fix and send a v5 after a quick test.
> Also found that the addresses in the tsens and qfprom nodes in patch 5 need
> padding.

Well... DT suggests that there are 5 sensors. So maybe the code is
correct, but the commit message isn't.

-- 
With best wishes
Dmitry

