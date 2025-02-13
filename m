Return-Path: <devicetree+bounces-146122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEF0A33867
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 07:59:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 32499188C49E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 07:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE6D207DF6;
	Thu, 13 Feb 2025 06:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nv2vRVlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11474207E08
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 06:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739429991; cv=none; b=CrLDGZm1CYRGcIwTlcY1EqQk8lyY6X61O2IZ1oJ8SYA9AP7zGpX4vNJPb/qWVE/f0jrIYG/BZZcNHa108cMXsDje7CTEtV1Kd5ps1Wl4ot/T9JMFnZuym/QAfENfSHZcFg0kyPc4zaqwRLAoaBn4XToT3Bxb5WdKELLtcEGwcZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739429991; c=relaxed/simple;
	bh=L+lWu/Bg4y/1hXkYeBGzl87ktHtA28/BQP0FvLsbWBU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cpFpqDYu/MJ00IZ359nGorktMG3Ujt5Zlw/Kr+ko7UUGx1LK+ZapN6plV6nytO6SJ3lGTCuRQBN1jBHzaPKWNfMX57q9VhZzUv9ZeEbJAcU3Qy5nq/yqzsEas8bglMuSRnb7BDnk9sGJe0VSXzi7eo0ngIeEfHoyRDj1PsVuDQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nv2vRVlT; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4395f81db4dso2659395e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739429988; x=1740034788; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=L+lWu/Bg4y/1hXkYeBGzl87ktHtA28/BQP0FvLsbWBU=;
        b=nv2vRVlT60qu5gy4OzVc1C794oBvXfrksMC4mdRnFyRbGtw1Y/C1iKLUE4sqvb2g65
         pOHovNAlBEvS/lAihl9nqVtnCi2BeyffT7eIRTD/nscnvxtQ7Tl7iSxPT/TIk9jjZrgB
         p3rtuXtER2DjlhjhfZ3jJLFrAv0gKE83eREpfHP9UluMuPhwaVAzOajoMiUelMk/6MjD
         ytmnIH6qAQgdmU6ej2LAzrukmEBWK0m6Q3x31Up3yfLMAPf93rl+9+ZbCSMYmVPe0Pev
         iH8L/X1Uzsv4ox6XQGAgwYU/RXmD7frtOk0J50JFYNKRsCtwoBGAZDWOZzKnWRdV+iDx
         RrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739429988; x=1740034788;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L+lWu/Bg4y/1hXkYeBGzl87ktHtA28/BQP0FvLsbWBU=;
        b=wGR66vTBCKhN3R1xeroaSr+EKhBtenLCgqs6UvkjhHo2R4EaZjmB1gRXIJGiBwau6T
         Ebnfh9rUJXqq6uOcWxTDm0RnpOhcTyo7LQTIq8pURU+wjyquM8jM0RZb23dhActeZfNW
         Vd3SzQHH5WtPerx1w/A4yHxKhQf5RdfdzVDiD0J6/+sa1iXcqzXyGuDlf/J4TI6I8U3f
         vDbmP9+9I8h7X5aLqIw72ACf9j15hWr/gylEQ7OjX00JmUbgvsHTmW2Mew2YJrBa/9qs
         UKPQRiQjwpMw3qFGlY93sSvRNL+iJ0kNxtqfjl+oS5mkgQqIGuq+XmKnMNLN0LdGWwla
         fkQg==
X-Forwarded-Encrypted: i=1; AJvYcCVSXB2y1Ittnki0k6xEfFsn4NUBlWUV0DVcWzc5fhtfj7javDZoU2ji39Ys5NqLjIrt8s+TSw6Q/KJr@vger.kernel.org
X-Gm-Message-State: AOJu0YzCf70FjXGh6GV+0/6AZ5+u3hEb69erYOOrkgKIrrrJqArU62Lj
	PSijCiDocy7e09pUx2l7oSRviEKYfxkZ2O9nF3mSivNwItvUtt9dyddKdhiIP+c=
X-Gm-Gg: ASbGncvJyF54jyk9OtRfuNJRVTID+HMl7WFKWK8nq2G8ta6m3wu3ujXN+pJOPvXt/lE
	Cp+Z38xHebfU75Qf0Kect9tGz+Ari1sNqtzsgx6lF3qJmwkebvm5UNk84+gy4Wg5e0TSqISgikP
	URHSXKjaD4/Aq22HYBtzZD4N2lHWqofPvuAEGvASpriL2cIPoiw9QtyRdXRV5lSFM/X6kE0oaYa
	/gzpRkl3B4rOWzaEAAEy49HAbwUpUGeo2K45YbbRmUG4rlF4f3tNiXF2TBMGB6l6ZV7JBun06hX
	h5jPAxdFFSTXCK+sglM=
X-Google-Smtp-Source: AGHT+IEcIbIDDwYQdOV615CUjCJxgeMnQC+DGesANA1ClWsaF9ced93N0m+sAVSXmRf6DZmkMUCY+w==
X-Received: by 2002:a05:600c:214:b0:438:a313:cda9 with SMTP id 5b1f17b1804b1-43960c068d9mr13823075e9.10.1739429988348;
        Wed, 12 Feb 2025 22:59:48 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f85c2sm995229f8f.91.2025.02.12.22.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 22:59:47 -0800 (PST)
Message-ID: <f5f6194db4d3ab2e61ef8800531475af1b5680d9.camel@linaro.org>
Subject: Re: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,  Marek Szyprowski
 <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
 <tudor.ambarus@linaro.org>, Sam Protsenko <semen.protsenko@linaro.org>,
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>,
 kernel-team@android.com,  linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 13 Feb 2025 06:59:46 +0000
In-Reply-To: <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
References: 
	<20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
	 <75e01bf815e5f7692d4b7aa261054851a943fece.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Vinod,

On Mon, 2025-01-06 at 14:26 +0000, Andr=C3=A9 Draszik wrote:
> Hi Vinod,
>=20
> On Fri, 2024-12-06 at 16:31 +0000, Andr=C3=A9 Draszik wrote:
> > Hi,
> >=20
> > This series enables USB3 Type-C lane orientation detection and
> > configuration on platforms that support this (Google gs101), and it
> > also allows the DWC3 core to enter runtime suspend even when UDC is
> > active.
>=20
> Friendly ping on this series :-) Do you require anything else?

Ping again :-)

Cheers,
Andre'


