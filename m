Return-Path: <devicetree+bounces-60034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5718A7F99
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 11:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E1151C20F7C
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 09:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CEA131BD3;
	Wed, 17 Apr 2024 09:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X7ANKHQ6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9C96A353
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 09:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713346029; cv=none; b=sqouB16f+GBVUUIgn7d2zrFkgrpzWzS7VCbkxbM0jeFHIgzA+YJ4dXqaWSX+jKKqTRVxf4fGM0gwbuIu8sj5RMNXGvJhYlE3ZIH16tAK4LXdeXTkqlL+hYOvOvMBVx/8brwiPi+B9YSlAMgvBmYZZWz7x+D8mOViBmJ5GB9g5iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713346029; c=relaxed/simple;
	bh=Yeu4xYB7BLvk9Ill1dF9JRym+Gaj87Pzo5C6ffxxA1o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RLhdt+f9XKAUnTNCTwpQ8TSfvZcTi+wq165GNcPFe2rY3h33U1I8ze5Lbry47V0mIcFQL02sNqCnYfXL3i6mcBdRr9Vf4R30Oo5E746R+fr57nZkjzaLBiC346Q28aeueUg977bH8m3ntCJ0GKXf18B6np7FAhVQgKoWlBto6xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X7ANKHQ6; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dd14d8e7026so5122601276.2
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 02:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713346025; x=1713950825; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yeu4xYB7BLvk9Ill1dF9JRym+Gaj87Pzo5C6ffxxA1o=;
        b=X7ANKHQ6t1kIywRRD25rxMVggJ5d2i/P51AF1/qNiG2SMx10lDOCt/rLE9S/jpgGtP
         lsLOyjVlRDNM7zIelUtOA8HUPqwtbx66N+USXavTiMe78G29cVuB2EMOAcwInCNx7A10
         1KHNuJ8is2S2ARuXNkYrqAc9n1fuH9qSo4dZG4WtQ08phNSSkayBllK80VrZ/N/VTRlK
         m12YQjJMt0op7s0xIjCY8w5962NmVoueXraBmnCN/nRzqbztnkciCR5FvKlxBxkC9p7n
         8a5KvhOv+5ij2BaayoBnB6NcyqHvHX1nXjyvwX9ni/UVFFRGIeAnrsaliO1N7nVAF46M
         6jEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713346025; x=1713950825;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yeu4xYB7BLvk9Ill1dF9JRym+Gaj87Pzo5C6ffxxA1o=;
        b=VIJ1Mh+CixHDRPlQN7cgoWccuZ+HxSOR7Xf9f5F9nZw1+o5xIdLW/4Mj3Tv2BDggzR
         God6flOFxRF1jynbfjcs39NYxwe6FjI9g1z2n8yxDGIQb1aNNga9rb+BiVd6xWJ5onEJ
         +/FCS6JAzztkJFd2EKi2wgQ6YdEaHYt2gFCRwGPG61rX6BBsg/w+0xdXSqa6CgVkCYPp
         wmTddVjLdnb1ENxFDxAfTkerOFExcdMnOYxLwJHyMEklibwT7fGfPzxDD3su+ruvb1Ke
         bgbcdonTF5uvHRqZUruRHOzCNMBFXZ6jgeoHXN63qkw5s2GgpaB7kM68mgaIr8hABO82
         SELg==
X-Forwarded-Encrypted: i=1; AJvYcCXIIr4bn5k4lHw7TtB93s1a6rRKShI07smJeaEuDZlHfFswyRcOIu2KwqpVDArXdftBNRkg47xsFBI+TzmC5SOfUPMvT8c+QQkMLQ==
X-Gm-Message-State: AOJu0YyLYxJGs7nGwE1Wy6XH+cdfrUTLxqojjTM8IYzd6vQDs2oD19Ig
	GRCxxxnXhKrirjEDLIz67EVPwG7A0fSvQcAEVT+/2KhdnlAo0DcvmMX6gti0y4V+u5Gambp0IB/
	ZuFoq/bEv20DTfZgfndazTmU+nVJ+qySs7mtxrg==
X-Google-Smtp-Source: AGHT+IFd6w46gF6cWcu610WNObxuSqT+OycBvkUkCVvHSq76OEyzFC1DzsPH3oOQFPiC1xVXQtj4MKgadM8M8hUGOW4=
X-Received: by 2002:a25:c58e:0:b0:dcf:2cfe:c82e with SMTP id
 v136-20020a25c58e000000b00dcf2cfec82emr14634228ybe.55.1713346025571; Wed, 17
 Apr 2024 02:27:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240415141743.1983350-1-github.com@herrie.org>
In-Reply-To: <20240415141743.1983350-1-github.com@herrie.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Apr 2024 11:26:53 +0200
Message-ID: <CACRpkdb5f50z34FVsfCRkF8qG-EE3bDgf7m6NcLj1jjw1L2FOQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: qcom-ssbi: add support for PM8901
To: Herman van Hazendonk <github.com@herrie.org>
Cc: andersson@kernel.org, benwolsieffer@gmail.com, chris.chapuis@gmail.com, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 15, 2024 at 4:17=E2=80=AFPM Herman van Hazendonk
<github.com@herrie.org> wrote:

> The PM8901 is used alongside the APQ8060/MSM8660 on the APQ8060 Dragonboa=
rd
> and HP TouchPad. It works the same as all others, so just add the
> compatible string for this variant.
>
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>

Patch applied, fixing subject.

Yours,
Linus Walleij

