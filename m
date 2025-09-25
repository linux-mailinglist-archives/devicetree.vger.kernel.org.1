Return-Path: <devicetree+bounces-221361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B999B9EE76
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06C463A8B23
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E807D2F7ADA;
	Thu, 25 Sep 2025 11:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r15s5vts"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350082F7AA5
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758799762; cv=none; b=O8B1FzsOFw3qr6hNXODs2+yBX9laQrZdNXUad4VpI3/aZQCo9eM51nLlCqN9ht6h51ogZ6vbdGLE77/L8uBJF13rA8jxl4JlEltAGbA6eA9/r3kNVTzj9qCDd5F00eny3URXNjU2H5U0uxXlQoxXRxPzt7qRUUy3q17zHirHFPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758799762; c=relaxed/simple;
	bh=spYHYnkrSSHwtTKTP6qwxijxAXFvaPMhOoJbbi3y1G4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kMMOI7c1j/+VQXLDKBfzfIEZnH2IPMdf8wcyIdEXUree9Ham2cbXqVahunto/G1HF0UnS0SjKD8bHcc3XFf4MusCdodLwaEpcrTw0OFq4hnYhagIAlDAAitXV0Ak6VyCq+PlF0M9fgiNako7axXvthArIIwcTeRBIgRXpcMFzsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r15s5vts; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b2b4096539fso155954966b.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 04:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758799759; x=1759404559; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y6tx3wGYofCquH8IJZF9cxaNXEG6TMvxnaVWQMdTML0=;
        b=r15s5vtscaa03tiCNBbv4gRWbMb66XAVJ+ZiMrTqPDeBwkmn4L576yLh/tFosJLJL4
         8civHZtp5Q5gmeQKDTeJuS58mVFae8bhR5EsrHQYtewoej1lGm2HB/m6Z10HW6DMzWCS
         TJyBU5V9o4L7uV4/tWcUzxLjZi06H0JwswHHCu8OdGGB08CR44AUqi8sLje5D8KuqcZt
         /LemIprCECiVzF0cLsHbD1KH6UhablHdjNYK/FeVeKxfd/CWJthx0qxJ9rksrqd+0CAO
         GCpMASmZZE2SMKaC8RuYPb5AZcp6ssFepOOVnNkVkdMavKVzkZBo/1SYaDQVx77iSrad
         7o/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758799759; x=1759404559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6tx3wGYofCquH8IJZF9cxaNXEG6TMvxnaVWQMdTML0=;
        b=pdiEvZlhdaxk2em2RRRG+fEJIRQC8SF9s73t80hK/L/mcZERveBADeijMFvjCrhD43
         B6J89dyXpKjVuTcJ7OaedxrEn72lyr30KfrZ9wd+m86OLqYOla5BqtkvBNC2zuoHlMrC
         DRPCyuveIwTBpum3zUZpJk5XPFp1yniUuI4P7xy99x9O7PXtCDrZOJ0JUsV9Y8l9MWk+
         V5UJlQNMwkMcb64/367Gtepb9C2sogBU0qnNwmK3k/XSU0NuK1M+BTRmd0G8TU6rIQ18
         onJz3dXKn8lSaT9wZoMD4EMKmk5C7ax7e6NzHi8M0nWJO2DjfmHnvrUT/sIQQPu0eBgS
         F9Pw==
X-Forwarded-Encrypted: i=1; AJvYcCUx/jw646+fGVEkC47lBoPA/RBK/0QB/ZiTFUH+nCKM90NRfqXbYZmsD+SFmRtXkLFTXWMpMr07x2X2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw99ktG082Slg+nNdCrjqYd37GNmp4FYnXm0cqbpvLPS7u8LZCp
	FZuAOeZH/FM3XDfOr75Kd3njPWDhpKikcL7nMa79dB9Zf7h52/YqJJLQvr+FhGiqqb0=
X-Gm-Gg: ASbGncu3uPz3I2t7LBjQbZDdLRowfuQMmYGdZMtJfY4uZEVEAtDULpG4SUKkZYIh+MD
	60SQdPjV3V35Nm7+edCDCi8T0sBFDyIm67me9OUBhdaJd5ge5mP2pAWcuy3f4loJ4pOD/5l6YAQ
	TZAdvLiUAVcNQVuifkNOz+Yl41HIZXkghKpxUQgDQyDDhg8JtWmdfVwmj1MCB/uswazR2OPjF2N
	OU3OErc/sgUf2SrQ7jq9phItIgbQXhwbEvop3aXuQ5tgpUD81UuIlVJSXxcmtuk5c6WGOKcxIGv
	Gf/22otjzpytjFUT0qI02vaqxMqmFbiBkTN/JvlYywgDOblQ8kL/EVKMpgjTgNpXaZyMfRhqKLI
	3F3VdLUyFwxqc55ygSIx2dQ==
X-Google-Smtp-Source: AGHT+IECd6eD0NG/1EjdBoivaaCFD3fdU9kTeEF04JLjXlrzueCjrWn5Mmy5qgRiQjAwXUsp8liKjA==
X-Received: by 2002:a17:907:f1ea:b0:b04:6f77:9cff with SMTP id a640c23a62f3a-b354c83d684mr239529766b.27.1758799759330;
        Thu, 25 Sep 2025 04:29:19 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d1643sm147578866b.22.2025.09.25.04.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 04:29:18 -0700 (PDT)
Date: Thu, 25 Sep 2025 14:29:17 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: glymur: Add USB support
Message-ID: <keashhd5gvckff75a4ot2km3saivdetaaxmag5fnp7dnoiisxl@u7tmkokpfdmu>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>
 <dzjj344c6zlkg4rvi455xoedhd4d2kjvodi6yftv7svhvvmxbz@kwq7rkq45tms>
 <66a5084e-3f7a-452d-ad5b-5867528f57a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <66a5084e-3f7a-452d-ad5b-5867528f57a5@oss.qualcomm.com>

On 25-09-25 12:59:20, Konrad Dybcio wrote:
> On 9/25/25 12:54 PM, Abel Vesa wrote:
> > On 25-09-25 11:58:29, Pankaj Patil wrote:
> >> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> >>
> >> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> >> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> >> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> >> flattened DWC3 QCOM design.
> >>
> >> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> >> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> >> ---
> 
> [...]
> 
> >> +
> >> +		usb_1_ss0: usb@a600000 {
> > 
> > This is usb_1_ss0, but then you have usb1_ss1 ? 
> 
> I'm in favor of just calling it USB0/1/2/MP/HS because that's what it is..
> 
> [...]
> 
> >> +			dr_mode = "peripheral";
> >> +
> >> +			status = "disabled";
> > 
> > So you have the glue defined above, but not the actual controller (compatible snps,dwc3) ?
> > 
> > I don't see how this would work.
> > 
> > Same for all other controllers.
> 
> good morning!
> 
> 6e762f7b8edc ("dt-bindings: usb: Introduce qcom,snps-dwc3")

Hmm, missed that one.

Fair enough. Scratch that last comment then.

