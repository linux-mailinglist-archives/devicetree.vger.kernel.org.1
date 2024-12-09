Return-Path: <devicetree+bounces-128581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 143D09E9102
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E6D7280D5D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1888216E02;
	Mon,  9 Dec 2024 10:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zCHOHbPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909B130AC8
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733741629; cv=none; b=u5b+IFkJxKfgCr6Q0KlfC03x25x2xatn5hOULlxcLwYyMy1VI1mLbdOpv4nIYx5xwehUi2GHW+hTV5U++o0B+bdlX+f6VHbxVMGQ5ExW6/tUtL0mHJzeTAEW1U0glJrpY3AdyEpEyKiyxpcD2ZJxG0QsoQu6/CJNCTAry7tWykM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733741629; c=relaxed/simple;
	bh=VJe3OFxjYH/n+Js2Q+bcEVuEUQwrmmLqoqv/4AKrmog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jaP+wMPcFULLIHeI+RaQ2PRdJ0dROfCKYeXm630ffhGeXKNG5XYwOWNkrL99eSC9HNt8g/Ty1DadH87CVXpVAdcvytnKmWmIYIiUWf1HC1qM7ULlpQdMBgawAfJYD7E/k8y7Hu14Cqg4SobHXF0QPLSe/rw7XqjM27jFkWYAqr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zCHOHbPG; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-30039432861so25466981fa.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733741626; x=1734346426; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zuxxa4msj7g+VEGAF/7cr8B8QGdlor53ZC2L8A5c7uk=;
        b=zCHOHbPG6r7bWn4j42EHdJy6zU0JjyXHf4N0AwyVP9tAJsibwe3R+kSCPNuJKpx7JI
         v03X6DoKASeuYHVnqoBLeJIhaoC7aZpGG6Z5N/aP1LRewijie4A+g4Hz0cueRsZQaE/D
         gU8mQLbTvBc5vW+lqIpkytIsB5tPnQOr2VzJjREGKokqjMA+XongMhw07vhF274MSUPx
         mg6uTveUHOdjeRv79CsIzC5sRLoJlWVCpfXJP6K1XST0AH1YthBB7yY7cxYLSGCeDmgk
         SiTnTAk84sDNS21Rtok962vNrlpkw1dii0GEVj+w7lfdLGpKxfmm43BnYrrUDWHSP931
         qFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733741626; x=1734346426;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zuxxa4msj7g+VEGAF/7cr8B8QGdlor53ZC2L8A5c7uk=;
        b=lTMrz1gYYCQO0JoOoWB4EIWJPjPjf2yVOJqyTSVK6IMpDUsG+JyUnpWqZhhvjK7YBc
         +EgmeFcnGRlhnk1rtyTKgvj7Hgo9hWV+aZ93DK5gC2nF9j1/AijIEZwVYfLDYEwSbQAU
         vJ9uKK7DoksHvIcIoctXf3B5k0vFi/TryT9w2Obb5kHntc0kngNG9AJDMLD01UwVd3/t
         RwrlsUb+vjauaeWrLZyYtK4b+dFRpeuv5CfdloAKi1II52GzOU7SAV7xGoRKvPhskyu2
         IoduexB5Scoo7R70SZ9YArdN/yyNMbuRwQ0O5mhX5oJFCOCeZ2By8vesHgnfLgTwn49M
         zkAw==
X-Forwarded-Encrypted: i=1; AJvYcCVkZvpc5ZeIg04OuIJtm6Cpr2SuyFX47qEjQpCjZfHzV7F8+B1ak0ZBWzUVsDCbuujweeex2Lo52oFm@vger.kernel.org
X-Gm-Message-State: AOJu0YzjylNKMqzuRBsoJhTvMkkUgasoi6ntmUnsL1x06zTIENNornOF
	meodvTsgAhh06SbOg542QD94Ro+3BhWNo1H82sPpFN1X0z81/P0+H9qYhnWHJGQ=
X-Gm-Gg: ASbGncsrM/MWfpDCsJdSBHi2PUIkzs2qALzMcb2SCr1f9TZE6E59PN0xLMcxDruxEIt
	jKbbUton3+psdW/b2NvYrASjBk6yIIm7vgw0nnQISS8JCt0vmNwIyNsL6eWp3L3ZpE0A4K4DC99
	7oKvvwZvsm9EDSpY31wWZaJ7jTaC5zeTGNn1a+dnjfOBWFpxMbd1LhB1Py/GIPvvWZA28dDOKLP
	MvYFxxO6n/2Zqn0IIbFND8FomxxfafdYeRNiXRabLyDz6mlRFvDqu0TScHiyv6qDz5q+vBNpX7w
	WF93MB67A/g1v6EwzUFxxEwTbsriMg==
X-Google-Smtp-Source: AGHT+IGt7OXGzTL0fiwZIjrAOU2/hihahldE2uGCnpjjBi748Y2s+MaTsaJJHjw3nMeqmjGyZAEh5A==
X-Received: by 2002:a2e:a595:0:b0:300:3a15:8f2a with SMTP id 38308e7fff4ca-3003a159395mr31671461fa.2.1733741626366;
        Mon, 09 Dec 2024 02:53:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-302226fe9e5sm2863291fa.0.2024.12.09.02.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 02:53:45 -0800 (PST)
Date: Mon, 9 Dec 2024 12:53:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Naman Jain <quic_namajain@quicinc.com>
Subject: Re: [PATCH v2 1/2] nvmem: qfprom: Ensure access to qfprom is word
 aligned
Message-ID: <plemc4swba7ybrncyxt3axxpb3qjbdktfkt7kqt3dqymlusfpq@sfgwakjp7z3g>
References: <20241027-sar2130p-nvmem-v2-0-743c1271bf2d@linaro.org>
 <20241027-sar2130p-nvmem-v2-1-743c1271bf2d@linaro.org>
 <60068361-ddb7-4906-84ca-195e5eb13a0f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60068361-ddb7-4906-84ca-195e5eb13a0f@linaro.org>

On Mon, Dec 09, 2024 at 09:55:14AM +0000, Srinivas Kandagatla wrote:
> 
> 
> On 26/10/2024 23:42, Dmitry Baryshkov wrote:
> > From: Naman Jain <quic_namajain@quicinc.com>
> > 
> > Add logic for alignment of address for reading in qfprom driver to avoid
> > NOC error issues due to unaligned access. The problem manifests on the
> > SAR2130P platform, but in msm-5.x kernels the fix is applied
> 
> Is this only issue with SAR2130P?

I don't know. I know that it manifests on SAR2130P, but in the vendor
kernels the fix is applied to all the platforms.

> 
> > uncoditionally. Follow this approach and uncoditionally perform aligned
> > reads.
> 
> If there is a need of having proper register alignment this should go as
> part of the nvmem_config->stride and word_size configuration and not in
> reg_read callbacks.

Thanks, I'll explore that option. Indeed, it might be easier to handle.

-- 
With best wishes
Dmitry

