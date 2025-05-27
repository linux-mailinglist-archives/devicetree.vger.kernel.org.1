Return-Path: <devicetree+bounces-180856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E31EAC50A8
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 16:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 566AA161AE8
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 14:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5C7275864;
	Tue, 27 May 2025 14:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PWoXrTj5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A036F253F3D
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748355452; cv=none; b=DOCj2zfqCnXXLP+q94zmHOBABLXQkZ36BdPg7Neb8lyMcYQs1eZ/kutZEjezMw5NBObXj4aY+CV4B/NXSr6HLBC8kkG68Uz1PBxllJCBBEsc3oEso7+1aI9VaUPqRBCiwjnYM0B4oeEg5DlMk5G0ah1mB3z0vvEErx2q30Iq6MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748355452; c=relaxed/simple;
	bh=qzCxInDBL5zoEuqaKs+Cq/1I3KI9pngcneQ2CyA3Ujw=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=S0NbBnYZ9+qJe80pBAphp/lLjk9/QL0m+yG2gFVGq5OFbO5eFMcNmG5npnC+pX/Abo3EbEwNBB9ZKTNUzxZeT7IEc/iBpd/5VELKtcHRdO5hPIw+aD89ndJ1NSF69JuUWHrMOlGt5I0qwNvGuP9Q5bitRfyNFnmgWe2C75ZpFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PWoXrTj5; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-440685d6afcso42767125e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 07:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748355449; x=1748960249; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzCxInDBL5zoEuqaKs+Cq/1I3KI9pngcneQ2CyA3Ujw=;
        b=PWoXrTj5c0wrG0Y6Jv8+00M6uhEEK7DhE36StAOFiZjUSCyW/eWIQn12d7nMnaZ138
         DiAd7KJDg49x7dkOkeK3TDjE5S4gGSLFpioteWAyQnw7gnsmHHPxo4WC4COBWM4mFQzc
         oX8nTtYncuXaiCNKex3BZGNMPbsIBp+jmAi8LbUkq8fZY3x1S+snE+zBQ246zwrrg1+l
         d7eOPRCNZNTfK+EiySop4Hb15WQriDh9wHVIKrqV7LzmYFKaTEAmkj23Pan4sDkQ6eDs
         YeRUFCn/B/n7Add3qeNupatooyaoDQd8mDu6AmkpQ06yqy+YgL9PNSzf+CuNMMC8tejx
         4Blw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748355449; x=1748960249;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qzCxInDBL5zoEuqaKs+Cq/1I3KI9pngcneQ2CyA3Ujw=;
        b=uongzKYHMxH1+s2csG/WZTB/Zmnkrbb4r0mdxOuUbSXGZx2BsBTFF037MiWH0usG+5
         UYvby1i0q6q4bm/2tRs1nD8YVBTn351jZAnq1DtHaO+1mIpv9KEnET+fYfgRN1wR04pV
         miNDJcObGjOqoNMzkuE6C4NoA6k6PPR1EREnE9YYSjZBfUl9+rCFrA0RfjzHSBXAGGvl
         rCR9DHXP3EUJFZjYLzloZ4j6WKj1m+qQJ7MN6OShoJ1a3E5zByabJF1p8JVrXVsI0k50
         hnuvkv0EtmEaYoLezWTkVAsZjKHnuYFuRYKUOCdcMICdtj60a2doNYqvhb7BHPNrwNnQ
         Dlsg==
X-Forwarded-Encrypted: i=1; AJvYcCXUnfzgblsyVjzR/szjJhc62Silu2pqDZHiS4BhTZb1/h2mB7ZoUyTcHwV8/3dIgG0MQuFxITo4yc4X@vger.kernel.org
X-Gm-Message-State: AOJu0YxC6wkACf6iJpwZjQtKJqiTVw9rbXvvm1AntP4Vjbu4wXVR4Eii
	tWHdfy5QuMLPrplCGGiYp25iYS1YIipMhfO9owpTnA/t0GZEThXu1e0i1fBhHWhUMxY=
X-Gm-Gg: ASbGncsQlW8YTJ608HkgfqdrWFrVNuQo6T7FtZuoj9OKHlQsvcTD/jtn9a0W8r4RcOp
	S25wIq9I/uRyUjKIo41QBDFVE76EkowgskVwDqCPeGd/mV+lTzjk0sCVAG4z2X8E3J+cTZ0wqSP
	tQr82EscW8yLISzJ2/sjINu1L+E+fsPT8TUy/ELuTGWl7LAgxIZygRZNOUIhMSqVnGDLxR8/c1E
	5CiI5WWiABqnDF6LF0vm4+kQnHjPfw0s0EU4GdIFFit4shYZnYi0yljJZWa83BjIrTU5QwHU12K
	6k+ZEYlusAulB/Z79mv63Wavx1ay3IgOjgY8eVjXvghG7pjXjcBM8By2kQ==
X-Google-Smtp-Source: AGHT+IEhc9SSryCY2JDYzu6BuvIZwbGB1eIwIJMculZ/SWsJAs6OkosbQI944ev/3eMu/PMW8z+Bgg==
X-Received: by 2002:a05:600c:5103:b0:43c:ea36:9840 with SMTP id 5b1f17b1804b1-44c955da49fmr100008385e9.22.1748355448879;
        Tue, 27 May 2025 07:17:28 -0700 (PDT)
Received: from localhost ([2a02:c7c:7213:c700:f024:90b8:5947:4156])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd99absm266645615e9.37.2025.05.27.07.17.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 07:17:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 27 May 2025 15:17:27 +0100
Message-Id: <DA70A4LOJ57L.1RTX2K0Z6PU0L@linaro.org>
To: "Prasad Kumpatla" <quic_pkumpatl@quicinc.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Linus Walleij" <linus.walleij@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Srinivas Kandagatla"
 <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
Cc: <cros-qcom-dts-watchers@chromium.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-sound@vger.kernel.org>,
 <kernel@oss.qualcomm.com>, "Mohammad Rafi Shaik" <quic_mohs@quicinc.com>
Subject: Re: [PATCH v4 0/8] Enable audio on qcs6490-RB3Gen2 and qcm6490-idp
 boards
From: "Alexey Klimov" <alexey.klimov@linaro.org>
X-Mailer: aerc 0.20.0
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
In-Reply-To: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>

On Tue May 27, 2025 at 12:12 PM BST, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>
> Audio support is now enabled on the qcs6490-RB3Gen2 and qcm6490-idp board=
s.
> The updates include adding the necessary audio device tree support and th=
e required
> dependencies.

Do you have topology file and mixers commands (or UCM profile) to test this=
?

I already asked but I don't see any replies. How this can be tested?

Thanks,
Alexey

