Return-Path: <devicetree+bounces-118014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C6F9B8C4B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 08:48:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3F001F231E2
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 07:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFFED154BFE;
	Fri,  1 Nov 2024 07:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w6HmAhee"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84E516A92E
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 07:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730447227; cv=none; b=jOcKrwjqKrNjLNLV3eDOtLs7DRw/+oXI0WmYQ8SWeffSYoUhDsOpSEBIWDsvjb3Td0/DQkPefYJTnGag5Q3FaQMrzDPi9EbCgkH3bSci0Zw+m9WGmNcSPQmA9IORTBWBPfodp0sSYYhby2sjK09m4y8mVY8jr39tWODZohf1/wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730447227; c=relaxed/simple;
	bh=WWEShY4euKxE7zczVzstNb7RApQpM/nsWLVDUKZgZV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r9zWD+gOtimrKbCmPcte2lWD4jMavqWNmTlvr0Iig6zF4Yt7KyiYk7zX/uPyk/IuwYQb6YojGi+PnkrQHebF0WG2zH4zdkrblGD9K65fdpEeBmNlzYjBJx3wSN24fvTsvU7zfJXW/zPb3pstxh2yOFnACLRKmMYuhB7kzXe+Yxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w6HmAhee; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb584a8f81so16309511fa.3
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 00:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730447224; x=1731052024; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3QfmYrjTtt0LfprwqBQtK+1fdf0eWDg7ZLSaat2tCLk=;
        b=w6HmAheeWvu9um9tWzMOTRULdhgWgTv2oqNiwPAsYwqVxemjD2HQwkOqSc7x41frsU
         vAJnLmZ3hdGLInK/6+asg/7SEHgQD7qdVeS6518pbdXYtjsxUZbvMfcaKz/Ko/9F4Bvi
         RuNeL2lYgxpcy0nTUf9LpS30mu6tzKp1ko1l/yyK4VD+3VoNolv4+lmdeRwWJvWEe/H+
         j3AJkaKHKb2VrYq1Mo3WIaTKCWymo+E9sh7iTcYdj2vyJEUfP/b5DmKIzNgpgAPnjAy4
         AfmGtw31lC/cw3jHiN4rsHJi9q8nKd6K6IG++anFxdCSl9OheU+nglWH4kORBgJX09vW
         vCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730447224; x=1731052024;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3QfmYrjTtt0LfprwqBQtK+1fdf0eWDg7ZLSaat2tCLk=;
        b=UgR0R/W6+CXyotM7CrDXxUC196DTRJlQFeb19hnnGOXX3yknRG4sHLiJt+l+GEHHbl
         ed1z3znldP0UZnrWOubppEOlVO2w/9rSnOEwlZxSXYiLwFJvh1BJ7dxLZzv9D3T65xFO
         hmY6gSr1jmfWecDRrBzSynrOIUuQBws3ljZ06wGEYOyvnITEQUJqzOTrws3WEBEFvWld
         wyvJ2ikCTQBSXMThrRCq5ReFYeqjHmU3jflqKrjxk0YxC9vlcmyYNgmQ7p13U6ffwKrE
         pDPlyOu7f52CR9zcyVa2v+RhPPxhBIYXSAjODEX1e46J2dQ55kA+PIZPgMtzTdwMzQnz
         AOmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjAqSkW48Tczk3RjyBt23lHEl5+g+pce755hIkAw0F/hTRS2+IzmZbJ/DQ0GCtpywUTG+DAUxXCeFM@vger.kernel.org
X-Gm-Message-State: AOJu0YwkQmcuCHYamk72BI1UehOVpo0pSn72nW75QhNF/mzfQ6UGJEsA
	8O37lEz3Xd72OJU1fpFFyy5rtGIyVwTEZA0YGND1UpoARMv1T7e9O7oYfxb0gC8=
X-Google-Smtp-Source: AGHT+IGG6mDJzCk5XMjM5Zd1FqUmWkJsjFyLoQYcp+YZdU3HVj3eejfBgRnLxvAnC4qg+sDoR4YgJw==
X-Received: by 2002:a2e:a984:0:b0:2fb:5d41:bdac with SMTP id 38308e7fff4ca-2fcbdf5faa7mr130593981fa.1.1730447223553;
        Fri, 01 Nov 2024 00:47:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef3aeb4dsm4859691fa.12.2024.11.01.00.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 00:47:03 -0700 (PDT)
Date: Fri, 1 Nov 2024 09:47:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Kurapati <quic_kriskura@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: qcom-soc: simplify SoC-matching
 patterns
Message-ID: <iixsrpkyzae5mpwsa2qm5jdyftzgav52ryficoizlhfzw54xbi@gdfxwmjutqp2>
References: <20241101-sar2130p-dt-v3-0-61597eaf0c37@linaro.org>
 <20241101-sar2130p-dt-v3-1-61597eaf0c37@linaro.org>
 <pmgutki3fjqbka5ozalevpw7qptmzykhqxiaofqc2nh4gpnn4f@bgmz6fknavbf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pmgutki3fjqbka5ozalevpw7qptmzykhqxiaofqc2nh4gpnn4f@bgmz6fknavbf>

On Fri, Nov 01, 2024 at 08:26:04AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 02:49:22AM +0200, Dmitry Baryshkov wrote:
> > The patterns for individual SoC families grew up to be pretty complex,
> > containing lots of special cases and optional suffixes. Split them per
> > the suffix to make it easier to extend SoC patterns.
> 
> This is doing something quite different - split is not important here.
> Instead you narrow the patterns significantly and disallow things like
> msm8994pro, sc8280p or sc8280px, and allow things like sa5200p.

Just for the sake of correctness, msm8994pro is still allowed, if I'm
not mistaken.

> I don't see here much of pattern simplifying - dropping (pro)? really
> makes little difference.

Patterns are simplified by being explicit. E.g. in the previous
iteration I completely didn't notice the intersection of the |p that I
have added with the existing [a-z][a-z]? pattern. If you think that
sa5200p should be disallowed, I can tune the numeric part of the
pattern. And sc8280p / sc8280px should not be allowed in the first
place, such platforms don't exist.

-- 
With best wishes
Dmitry

