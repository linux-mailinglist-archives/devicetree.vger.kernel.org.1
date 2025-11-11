Return-Path: <devicetree+bounces-237099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5A8C4CE17
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:07:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93ACE427E2C
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 09:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC552FD7B4;
	Tue, 11 Nov 2025 09:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OvU9fWSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C42FC030
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 09:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762854855; cv=none; b=bR2siiU3Z/de7JeOGFcdUFo0mxPnt+SXww4udHB3RuYTFaJDAlmSnHgQEdsDGiMQMLQ1AbN7tKNMIpTsTQoOAkldgvXxr7wWWH4woIAi0sEckbRlezJwOzxP5BMMymDn8fzftOM/aN4qvFD8uN3ADY0+xXiyEpYgnzVQKp1wTGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762854855; c=relaxed/simple;
	bh=NmRrZd84HeJfVx5ulbp94fMcHAZINk/9ovlAxd4Q0nI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DsnUUGlbp+qJhd86t9tuTSz+p1ss/uyCy68cR7jqsuVD33YOaPR540LWNCbvVH/j1lnPUP1aGoRZjtDoh/l9hIdqmfumWcJYrHje0uVVdr/Sofz8Zipn+XlyjLitn6k5zQSn16PFfYnNo6OdqgSfdnbx+W1fe70tECs8r485Rhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OvU9fWSG; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477632b0621so27214315e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 01:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762854852; x=1763459652; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1RcLpKAgVroVokPJ6qJZ8mFHk6ZFFVxhlD+S4Jv219I=;
        b=OvU9fWSGPM2xDQ8BNPYyQ4X8z/zuENPNx5/sJJv6aEIk+lQL+DEiTQj03RPS559a7H
         AqgY4dyY8GqdWZea6SvOQApjo6wwgoXqTouqB87E8ZdyI0ZfDXi2E+YMj1G8CpQEuAvr
         QIjBRpBfAQrCqEaLKY22ypGGoKLkkkXYaxppE7RW9uSqt1Rqu50iAzCFq84TSW+M9ifO
         +XKMDKVUfVKJRVKxSNM7Ydmc/MSOh2zR1o09OYfRPIZPYMpVci/SVlf7a72NSFri2bMc
         ydS3eirwYKAZZ77fiSj5a+n0qaYb6KvgYqKSPwrneMkpc5+aAQ2KqdonBsXZm2MRBHXT
         k97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762854852; x=1763459652;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1RcLpKAgVroVokPJ6qJZ8mFHk6ZFFVxhlD+S4Jv219I=;
        b=OmEAbg77yNDKLcL0E5oRcSu8+627IA/ZD3Apa1sXKF3sfFgDmK8ru+dk64c970qINh
         QI/2ipaUi6il0xjNkUzVR2rqlpscxuP/bEBHXPw+tywyAO/w50NsqIDdStVHkFUGxcTy
         buafDxuRt2Y61GwSNDy2UtKkeJ8zQ99oVSNbzKcoMhe1ib6iWW03FVp6LBAKouIGwYqt
         a3w8KXFpF2c3jn0X5VnCsDR44psp+2oXuZuIlgLx0nhyRq9mXpXaMn0pH0yZ6joZB+Cu
         kOX8eBlXjpiN1yerDHllIB/HiPaO4Sg8jJhrTepCJR156u5T1d4R/QYIv0UadW+JTVm6
         1UmA==
X-Forwarded-Encrypted: i=1; AJvYcCUmMyS00GqasIKde70P+Nb3oRj1pvHmPw9HJN9JgvBSsCrp6YGSMD1tvjMD6suTjSEsQbGBzhOaGZq1@vger.kernel.org
X-Gm-Message-State: AOJu0YwJwIknP4PmDIs3oki/kIemjUTg20Xceha49baPZO1YQF3AbH1S
	wfAtLCUSo0S6MYoF8JBKoWt176vIz8yKOhivQ7bqti/U7VkSUrHPuY1/9qM7xfUPgNc=
X-Gm-Gg: ASbGncudyEo8plAm3ydhZWJzo0oPBApHaak8aXGPuXI2kn00ZSkkbU2RL/tRJ8mQbI9
	4lVVgZTFhb6bw5cWeiaCT0w7c+Gqh4Qx1PZJ8Spp8mwcaMdzGkPG/WbBjTYWDt3HOZk2gVHVrnG
	Ru5P7GtjtiHN7/gMOrz1CWK1zxBhcZfpvEMuod4vBVNYU5PMIK5YTtlwuEck1/sqbY5VxZyJ/aD
	0gCZGSJlw7wTHOE7/LLqqgGc8jeb0jyJjP6Pu/IgbeRP/6DpVS3IsvvXT/cbNHtzA1uqXhNVTvA
	Bnmr3TKB7yKjFPXVoiVTribskN43FU3y5CjsMk7uWBqnS6uXALZn/GmKCJzCDBquVjMkyJLFuzF
	2gB+imEsOHrxgiZpCvoctcr1xFGHsl5Xc2V7zOgL/bZUQtvVdqvT/uUbAu29fImWXVQxBNqZzjL
	5LihvgdCiUYm6Cx1Di9XnQgW14QUj72TPzdg==
X-Google-Smtp-Source: AGHT+IFL9npt8OanU5c12NGRVwnOxSJ1VHU8qFzZB0+lZ0yamOH0/N3ycPmTghVrBE6IWk6zyD+evw==
X-Received: by 2002:a05:600c:4512:b0:477:c37:2ea7 with SMTP id 5b1f17b1804b1-4777327cb82mr105157595e9.21.1762854852310;
        Tue, 11 Nov 2025 01:54:12 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff23:4430:b142:7c48:bde4:7b24])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4776bccd35asm242845145e9.1.2025.11.11.01.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 01:54:11 -0800 (PST)
Date: Tue, 11 Nov 2025 10:54:06 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Georg Gottleuber <ggo@tuxedocomputers.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Ettore Chimenti <ettore.chimenti@linaro.org>,
	Srinivas Kandagatla <srini@kernel.org>, stefan.schmidt@linaro.org,
	wse@tuxedocomputers.com, cs@tuxedo.de
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add device tree for TUXEDO
 Elite 14 Gen1
Message-ID: <aRMHvhf77BgRvuAp@linaro.org>
References: <20251105154107.148187-1-ggo@tuxedocomputers.com>
 <20251105154107.148187-7-ggo@tuxedocomputers.com>
 <aRHre28Nbyv6ShbU@linaro.org>
 <r76wptwknylaxlkwmdkd4pinrzufnjiujrutj2q32lgt75x7ti@zibmax5uhwp5>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <r76wptwknylaxlkwmdkd4pinrzufnjiujrutj2q32lgt75x7ti@zibmax5uhwp5>

On Mon, Nov 10, 2025 at 10:11:12PM -0600, Bjorn Andersson wrote:
> On Mon, Nov 10, 2025 at 02:41:15PM +0100, Stephan Gerhold wrote:
> > On Wed, Nov 05, 2025 at 04:41:06PM +0100, Georg Gottleuber wrote:
> > > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> [..]
> > > +x1e80100-tuxedo-elite-14-gen1-el2-dtbs	:=  x1e80100-tuxedo-elite-14-gen1.dtb x1-el2.dtbo
> > > +dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-tuxedo-elite-14-gen1.dtb
> > 
> > Please also add x1e80100-tuxedo-elite-14-gen1-el2.dtb here (similar to
> > the other lines), so that the EL2/KVM-specific DTB is automatically
> > built and included in the installed DTBs.
> > 
> 
> Please confirm that this works before adding it.
> 

Yes, I tested it on the TUXEDO laptop a few weeks ago and it works fine.

In general, I don't think we need to ask everyone submitting new X1E DTs
to test the -el2.dtb separately - the hardware/firmware situation is
similar enough on all the laptops that chances are very high that it
will just work. There are not much device-specific aspects involved.

Thanks,
Stephan

