Return-Path: <devicetree+bounces-229495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EB023BF83AA
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 21:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C90964EA158
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 19:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C1E351FC0;
	Tue, 21 Oct 2025 19:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KJzp5mEe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0A43502B4
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 19:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761074405; cv=none; b=KugcdfL3P73gF2Ekwk3y4hETM+D/44AllCEf3afStH7vDNGnLxUgo6c7mavadMwFXEySDsiT5a7WeTyS+8Nnj/WwQORzJq/RylMJtwnUKPahqAsw+/zKHkzQ5e/IHoMTljwWl0hCl8cNPxuvTasQx2JbVssyWTUB7lsfQJ4/yaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761074405; c=relaxed/simple;
	bh=XF8lCN147t5Xy+RNN4uA2G5rBZdwuSV7eZQQMLT017w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tXysBh0kOrI3H8cvgtUJ6zuE6i+tkueFBamy9b4MmWF4aETmlJXiQ2yhIcz2sA/wVRJo36QprHWIxP3PF964ELgam44I1z3xX8y96mvS2GIFUhZRszO+sRSSgWJ4fxpbdCL7FZ5/ip6/oH9yjYqszgtEY0+4+holdHEPQedcF9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KJzp5mEe; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59093864727so7120615e87.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 12:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761074402; x=1761679202; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XF8lCN147t5Xy+RNN4uA2G5rBZdwuSV7eZQQMLT017w=;
        b=KJzp5mEeYdJzzxlbjsQEUTFlebHJG8X9iqasxhpDiJjOyHQVv8yr6M5jC19Ug90/jF
         8QVJxqseckDiji0y3dB9+X7jsZTWWWCgSW+ZicH+YxC97GT6Aw+CJ4KY9IH2v2RtsznM
         HlQD5njAaUEaRmRk/e99i/t5Qi6Ghu9YlQ07AvI34/W7gy4uTsa17BItBcOUvcU7j5wp
         dh90R6vrw+OHPNcXGEk358SGpOsV0+usztbhfaR7UJWVEL1ieaNlHc6YrAxWc18ia3L1
         erQMtyHcq9805U0nCintbV5EiXyVKfP9OeUccXUUWTsTp/4t5RfpjWIZ9chAKE0JTyng
         BIUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761074402; x=1761679202;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XF8lCN147t5Xy+RNN4uA2G5rBZdwuSV7eZQQMLT017w=;
        b=rI+F/zyi9pGvwMMkdL1js2EvVuTiHz66jXVnUPz+zAQJMToihbWZ+ooY+puGo8Nu2f
         lHvJW0KraTXS6IcvTrm5KMjODYwaof2rFz/ibnbVgY0R/zHzx5GD2GO0HidzksoQxDkW
         7hTMThiZ7n1JERHnJw62YsOQftMRtY5sn2UfkDqF1frga1uQEEuyz8CKFr0k6aU7TSkE
         RdpsqxtB9n7y2jWtJv0XpM3RVYNB63ge8BqWPclseOylPb9b+J/ZhWTNM7BzA8yD8DMX
         dXUgM1/cdKWyHXkQnzDwk5GxSj5sYxprz7fi/4gvptIFChm/9q6KRvL9yAPzFolAFLHv
         9zcg==
X-Forwarded-Encrypted: i=1; AJvYcCWPEq5UPtG0MBMsizBINVSgY5i9A9H82URT3+80toUWarpg5I/X6zLA5rhLLk1KNpYrsOwIdJBRF1Y5@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn+yM33g+c9kYD5fzcvPdNXLQ00haeeOaRaeLmiQ+sOzAOTyS0
	njwlcUy0fx7pdfyc7KjIGU3/colqLP2iy9pmOi1RdIJ7iOqTYvE2dONhnPmMIwQOCexWoM3NYeU
	yWK1h15HQmJadBxepVqCxkPQZOBA9pMY=
X-Gm-Gg: ASbGnctI63gzF9F+3JAqNO9n4aK4blT8hVfSJ5ot9CimYNLzp5qY3vHj4RRN/ocFlDW
	JK7HWxK2K31rgGPr+Ux8XXmsJvaFlqM2CZZTYVufM4LtwURn2i2QorFlSa0EyX4U100ONDayXjR
	BOi+/RX+P5OrSniJxNab+urnrwRk95JZ7JoiJLgp50V5XjinvvMYjuNEIucXsxyWUWN19kQI4h5
	LJtce4/AT5PnTl4prIeZGjdSLUqcG3Wt2IC0ZRIHexY+Tb7PyVDNAgriDIU
X-Google-Smtp-Source: AGHT+IHwT8B0R5exz7jadTBxGXmtid9llIfQluzOLS1CeZTO457I56feeO6M9WQOY+sC87UPLBULcwRCSiIfs5oVYqw=
X-Received: by 2002:a05:6512:ac9:b0:57e:6aef:3ffc with SMTP id
 2adb3069b0e04-591d84e3c8emr6604351e87.4.1761074401398; Tue, 21 Oct 2025
 12:20:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021-tegra186-icc-p2-v1-0-39d53bdc9aab@gmail.com> <ee6b80a7-4505-466e-a433-5f186d747945@kernel.org>
In-Reply-To: <ee6b80a7-4505-466e-a433-5f186d747945@kernel.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 21 Oct 2025 14:19:49 -0500
X-Gm-Features: AS18NWBtcweEvCq46SenFYFanpeRQLBTS4t1fv5OY1UgDaihsUSCmyvFCcSEBGM
Message-ID: <CALHNRZ9nXYRgjmpbR5KiQpsSf4hu4=qcgoh8F9_5b9yXF_5Btw@mail.gmail.com>
Subject: Re: [PATCH 0/5] memory: tegra: Support EMC dfs on Tegra186/Tegra194
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 21, 2025 at 2:11=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 21/10/2025 20:29, Aaron Kling via B4 Relay wrote:
> > This series borrows the concept used on Tegra234 to scale EMC based on
> > CPU frequency and applies it to Tegra186 and Tegra194. Except that the
> > bpmp on those archs does not support bandwidth manager, so the scaling
> > iteself is handled similar to how Tegra124 currently works.
> >
> > This was originally part of a larger series [0], but it was requested t=
o
> > be split into smaller series.
> >
> > [0] https://lore.kernel.org/r/20250909-tegra186-icc-v2-0-09413724e781@g=
mail.com
>
> Please keep correct versioning and changelog in the future. Try yourself:
>
> b4 diff '<20251021-tegra186-icc-p2-v1-0-39d53bdc9aab@gmail.com>'
> Grabbing thread from
> lore.kernel.org/all/20251021-tegra186-icc-p2-v1-0-39d53bdc9aab@gmail.com/=
t.mbox.gz
> ---
> Analyzing 6 messages in the thread
> Could not find lower series to compare against.
>
> I think I emphasized last time how important is to make it readable and
> easy for maintainers.

You said to split it, which I don't see how that means anything other
than 'make new series'. How am I supposed to keep versioning when I
had to make three entirely new series?

Aaron

