Return-Path: <devicetree+bounces-246752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1057CBF91B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07BD83014AF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA17248F57;
	Mon, 15 Dec 2025 19:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a/z+urM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C4C1DF75B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 19:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765827632; cv=none; b=K36OgJjPeqCdlbECIA3RzDghrrTUI6GnhtlZDfSQZyZpuJqrF2hEyCF83JxQHpNq6rJaKpb/SG+En0KltE8sUZsfks6UhBmdac+sN4Jxtl3SGzyFJklz4ag8hDh9nMIIOu3NWwAJ2xf7JakKjNg8Z+LJ85MjqkNLmj+55f4ozZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765827632; c=relaxed/simple;
	bh=9y6b7in2ihxMbdfZC7ltYTi57MN5j8PMIpwtOwO3MuA=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QUefaXynhylVdrthepB7hEUWaFm2STsEaiC+7TKLFQVFnZ1L7cnDo12A7WFIBZLyUzJCSX9ZVe0QMgOYpB5UAU31g7CVOWSvCxggDQXnSDhHp0cDaFY/oL6a9hTCH5z0wycitqI9O3vJ0bhPZwY6gkjCRiQa+SpgKnGSlSKdLYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a/z+urM6; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42e2d02a3c9so2641365f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765827629; x=1766432429; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lEzLk2shy9y7ypTsgQweik1qhExZjCZM7//mLI7mL1U=;
        b=a/z+urM6NcCmcznbw5oxHj/gKRbiKtJQuXOwb05c394qijWVDRdFjmvsAz7XexH/Vs
         j78OoPemakb7ltpHKLsFP97w40zYEwA8qGdltY7GfKGXztC6BdiubqsP6Fr8ahltlGbw
         SLK56Fp3cuwpUIoMC42uxg74+F/OC3B5YKl6Gcs5DfHO4qR3DRUh2yM21mtQNfVWEiSG
         9KnsuTm/p7tpwnWhVeXy97j74eiJbNwL3GmadZ5mba9JG+D3/95KR4qKGgwrwQ4yVebz
         Bso0KYwW1v0Zsifyc49VGkGx2+8jItciMabB9zvPddYW/saf/GwbOvmdmvrbTU9a3nQS
         v+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765827629; x=1766432429;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lEzLk2shy9y7ypTsgQweik1qhExZjCZM7//mLI7mL1U=;
        b=WdX5pk1YNu5jaEJeihfice6M9YhO18K48a0GJDDlJoQN8w/QJFw9yBkXiS9k3cvxmi
         o0hRZKpK63cde2FWEuKVwIVRjf9QYXT+ubbzDklFXU2Oh/XX9mBREZlXsOmL7RLIDZ3i
         8gG4tHsQlckg+V0e7oEbe9KQr7HJXZKQ36M2FR0ZU4sIT47ovV4pNzgf2wuiyBqvxNaZ
         /PiBeSJ83ZDc487g7vpgZPgoo2Kclyz69MiAX+9gVmkY5WUkNLYEhZdTSdbh9+qzFxEH
         jGC3sPeifzGbm7+kAUpYDbBZO+/A11O/x9B92yRTlwlF4SnzrwzS7bG9p/dOWZUlPnCT
         Yn6g==
X-Forwarded-Encrypted: i=1; AJvYcCVhc/tzBuZ6QQnN5QTh+CTBt9Qxx4XIWQsQmIHuUviu9C5XFEOhI86anTW2AF5tTBP0IrUNEwb9FlOa@vger.kernel.org
X-Gm-Message-State: AOJu0YxQzlirHXqwDGhXB/dM9msDEfBmPQnh2aJM/avwI3MQCSSO8yva
	z7rmlSJ4t5A2NCy3FXlPpXk3SNMaARz4Hel1TMiYZf69+s36b/tOLKne
X-Gm-Gg: AY/fxX6yjIb4wn1ZgY+1NzRU/1MXbC5//2GcwwNN8QlLPQ0Dw0rcSLTVRkkxzoimegt
	Bi79/VUpRPBmA3oYQ6l+iXoMUE+Kg+qnOk9FbphjUN+LrMbuwPzlt17h0PeJd1/7akQ9WK/TL5a
	EhwdY24mLS3+Lp66cdk3Dymvqk3+lD/55oQJHqm+aS3V4ACedRcOT/xpY9UoIOiL6a5IogsYAKb
	xBUAJlfFR8x8ZOODTMro4SjZwcSOpk1u053PZEsw0iBgn67H97tMxSfaljyQ18I7ORO78ziapsp
	qb+5CRmUEOlkuIh0Gs9iudGpa1ELbprDhY9BeXMW1cIs8eL10uhkMlWeBkd6pvei/IUNLB/hqW9
	yNfa4bNMQm6GFrYSQnUFp4TUiUVp9jwe0fTXdnIKcjlgMwPX70o83rqGgVI37Nr63hRpqT9NCJY
	U+qfpo8AxdpkubMTlh/aoqUPVmteFte02ANDlyTzI=
X-Google-Smtp-Source: AGHT+IFP8gJNON2onfOKCApiokNk+T6Lm2ub7YeNtGawfNOx+Wvx+oGbaozuj1Z8ekx9b+5qNnJgZg==
X-Received: by 2002:a5d:64e6:0:b0:430:f5c3:39fe with SMTP id ffacd0b85a97d-430f5c33c72mr8793616f8f.4.1765827629338;
        Mon, 15 Dec 2025 11:40:29 -0800 (PST)
Received: from Ansuel-XPS. (93-34-88-81.ip49.fastwebnet.it. [93.34.88.81])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f280cf30sm16923974f8f.3.2025.12.15.11.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 11:40:28 -0800 (PST)
Message-ID: <6940642c.5d0a0220.f68ee.f1c7@mx.google.com>
X-Google-Original-Message-ID: <aUBkKboJLyCatA9w@Ansuel-XPS.>
Date: Mon, 15 Dec 2025 20:40:25 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm/arm64: dts: qcom: Drop unused .dtsi
References: <20251212203226.458694-2-robh@kernel.org>
 <c2mvshcq36eyigsmo5cbwlpk5usfsog7knrd5djwahz2s7crmb@hpen3pruobgz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2mvshcq36eyigsmo5cbwlpk5usfsog7knrd5djwahz2s7crmb@hpen3pruobgz>

On Sat, Dec 13, 2025 at 06:04:56AM +0200, Dmitry Baryshkov wrote:
> On Fri, Dec 12, 2025 at 02:32:08PM -0600, Rob Herring (Arm) wrote:
> > These .dtsi files are not included anywhere in the tree and can't be
> > tested.
> 
> I'd say, either this, or we should get device trees, using these files.
> 
> Christian?
>

Yes I can port some dts that makes use of these. The can run linux.

Thanks for pointing this. Would be enough to prevent having to drop
the dtsi?

> > 
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> >  .../boot/dts/qcom/qcom-ipq8062-smb208.dtsi    | 37 -------------------
> >  arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi      |  8 ----
> >  .../boot/dts/qcom/qcom-ipq8064-smb208.dtsi    | 37 -------------------
> >  .../dts/qcom/qcom-ipq8064-v2.0-smb208.dtsi    | 37 -------------------
> >  .../boot/dts/qcom/qcom-ipq8065-smb208.dtsi    | 37 -------------------
> >  arch/arm/boot/dts/qcom/qcom-ipq8065.dtsi      |  8 ----
> >  6 files changed, 164 deletions(-)
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8062-smb208.dtsi
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8064-smb208.dtsi
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8064-v2.0-smb208.dtsi
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8065-smb208.dtsi
> >  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8065.dtsi
> > 
> 
> -- 
> With best wishes
> Dmitry

-- 
	Ansuel

