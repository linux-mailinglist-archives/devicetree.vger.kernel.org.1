Return-Path: <devicetree+bounces-217248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E39BB571D6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F30B1895BC0
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42F02D663E;
	Mon, 15 Sep 2025 07:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V8n6zf7B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4ED94502A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757922388; cv=none; b=NEs+L2dr0LVY5j2jsnSdv9e8JpPToqgExB0YKlNyEMqK0//i/JlZ4OcxbHKAbupFfyMccjL3IH0SO0ONW5Ti2x03yJ7GX7EwEVpuBHsQHOXw+r1QxgY5EgFaH9m3KnZ21x21awowtXgjpMHF3Mb73ckHn+Ego7hOxi3disoXD9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757922388; c=relaxed/simple;
	bh=rxgBGv2zMZRxz4TM397vl50YX+5rV/wH6l1JB5uVKT4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cdX7WAx31XlINhdO5F9wW6p7EJR96SfnnS1Hgmpz/5cPNnv5ePlAjMJanqVqgmFYWHPuzno5d3t422x7nM7+mqiUt4OMzTAmdULUt60ZXi9qnUsS0sE6mQ3BHOfgPqmqn0R/ay/UVbneONE3OFJIrDP5uy6Hj3cySC0+bJAUkng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V8n6zf7B; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45dde353b47so23116485e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757922385; x=1758527185; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rxgBGv2zMZRxz4TM397vl50YX+5rV/wH6l1JB5uVKT4=;
        b=V8n6zf7B2GCu6e2opOUBFBhGIpz5wG0nHLqtXHW2OD3gyMT+lEotEp5gupeb4Z5Wfr
         gNojRbFUEzisxILvPenML4ZLC6QiuoSS1wjKzUd2ob85vpmuTmNmqlKhbOjrhnLZRl7I
         9zSYiqXxh0X/r1kKhByZR4eLWGFP5XvWPbHn36MXcrftKeOTeSutuLTRk3Hw8FMOA840
         gfiImqfIzJNeZJe4dGP7dZc6NpnCjRl5KiFoWq6hQSjqU8+n8xCoXPd1iMk9Fo0MCYHh
         U6FqY6h7jPfRFV5sPasorwF6FL8mdB9hLYBeisVBWo6zA+0GJw12GohQKBTipHZSj9JJ
         kBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757922385; x=1758527185;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rxgBGv2zMZRxz4TM397vl50YX+5rV/wH6l1JB5uVKT4=;
        b=Q0Rh+IhXkz/pfm0J5nhziJSg039aHY/s1bjX/+UnBYCTEMM1VcIRXDo85xAi6UweqQ
         7igTXEGtVzZ+43tanIUBDnxgvlNMhjXjW9bJ1o+5gZxGC/8xqDHvfwm9wGVQehdKNMGg
         w0RAl6DYLe9a5hsRrj0g7lFV9g363eFU6EvZeKRvAXyRyVeN1KUQ38lBMFseEJjA0cqB
         Emj84f6iiAzPeJmg2JwZeA67Nhwjvpgb17Ohs3qUPcYFPZZAOhkybkBtEwriw5bW7gSR
         SE4dqkhPnvExgDpTkGoxCXlyw9uesYSF4Ycp24+cy1aW9X0fI5EKTNXBs/ZywY/jIk3+
         cciA==
X-Forwarded-Encrypted: i=1; AJvYcCVG8OfzQIw/kMV4ppqxjpqXkxfgI2pt0rDYEt/geVBXMBrkn0PjyeLROtFYgZ8xSkT+q2PpuTXw98LI@vger.kernel.org
X-Gm-Message-State: AOJu0YxsZ64NpgJeIqgo6Axi8rZF+NyAkufwx7ELeOGEQXPeX+SE8Tc9
	Sakmz05JJGu/y1oeG8+PWivDSdUApnOy0rJdVLHhGgjou7Cwd8I5xw7Bq1N3khFiqfA=
X-Gm-Gg: ASbGncuOMdZBbfIR8W00au6UJQJqy9wokXkYevU5KQ10N2Zs4IbiJuVeX5gIaX8Tfif
	aMBdOs8YIm4Tj57bniUBxqfRKu5x1zYbYL1bJtkSxYTHFDHNd2nX5dCmTFffJLDnT3NRkWtuAMs
	A0Xkj7noxAK4FCy19XcH4eSdJliSMrO3KXc+CIoidjPFcgboTUf6QyugVjCFo2SbpevUxgKhTu6
	lQ20RDrA9lw2EEjzBtDV/3fFfRZS79BoXZgASMiAuMQjmPmMUtodhq0bmA89KFRlQ8jRd6ZwCpP
	dj5qwjyqV/6cUniFzbZXXWYxbamNr/c5cHMbntpOu1tXf+guHSOSdO833bvKYhnMkT8WAlD7Pol
	Z0ddOLnfbs67d9t7tS1b0MqyLgw==
X-Google-Smtp-Source: AGHT+IHyyuLf6J5x2h8+77IB2PsvJAJV4Tes0P0hl/pG4jVOFAqE/MRdKs5G4GFgkNVlw9YzjUjKhg==
X-Received: by 2002:a05:6000:26cc:b0:3e7:458e:f69 with SMTP id ffacd0b85a97d-3e765a08312mr11049943f8f.56.1757922385224;
        Mon, 15 Sep 2025 00:46:25 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9c2954b10sm5452113f8f.50.2025.09.15.00.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 00:46:24 -0700 (PDT)
Message-ID: <62d7c5221b9598f390102f4db8db483af9f34289.camel@linaro.org>
Subject: Re: [PATCH v1 5/7] clk: s2mps11: add the support for S2MPS16 PMIC
 clock
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo
 Choi	 <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-rtc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 15 Sep 2025 08:46:22 +0100
In-Reply-To: <20250914124227.2619925-6-ivo.ivanov.ivanov1@gmail.com>
References: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
	 <20250914124227.2619925-6-ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2025-09-14 at 15:42 +0300, Ivaylo Ivanov wrote:
> Add the support for S2MPS16 PMIC clock, which is functionally the same
> as the currently supported ones, with the exception of a different
> register.
>=20
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

