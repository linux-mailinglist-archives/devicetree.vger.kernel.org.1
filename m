Return-Path: <devicetree+bounces-149426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC920A3F703
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F793860C6E
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 14:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D40E20E335;
	Fri, 21 Feb 2025 14:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TfZ/XAiQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878751D5173
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 14:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740147362; cv=none; b=XHcSMde5VUWP0W4ZlS7s54jlxnk38Nmj07WucmIT7Xj4Lm5S0Z6OpDRYcOrg6oO+FrB9VSQfKlp11J2RaKyrY1JR48dV+KRlh4cVgrvFCuhq1aLWde5mbYePXq+9pTlVf0V9WL6EQj3AaL5CCXPWLe5VLA3NRSuxBOd1Qz/l+iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740147362; c=relaxed/simple;
	bh=YL8jPrvdUOfB9pwVp5vmJysM82GiiQMfRYQJGXragaA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IGOkSo3bn25ca+0nnkgf8N0yWl28V9Iq39c1MymV06JpR6yQKcFNS1haYRSeoqTybHdCA/9geKkRghYzRqJHNy2RfEnPsjeC6NNIqmiJCtYK6/pI8HH7VpQjt6QKMnReYEwLG2pah7JiRQNRUJlq4QC5wswuEM5A4yHErfPQru4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TfZ/XAiQ; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54524740032so2252235e87.3
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 06:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740147359; x=1740752159; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bqdjIBWXWliY7LxOtFti2ta/kieZvqtrvhn2QZYRayA=;
        b=TfZ/XAiQ/dqVQYV+db4LvYrIxxwDgYox80u9LDOli2xH50N0+fCmfyznBklgdXkRsf
         LM/+Tpioub4av8+aOSGr8Z3o85VKcY/+wrJk6wKnN1ERvW8WsOmUzw6alSywzeyMtdzI
         UZ2ZXBio49v5oOEmJjbsAWk0+ZoCCjffFqjYKk42Z4mXkGniSo49F2lMoQyShEVbOZ1x
         rMrngwfqDEwrQtgHOwgruFyCyQhPr5pi9sR7ThTfg2kJZWvJcKCo7HdOgCAtJB/D6v6D
         WSqUd5frdEjTRrdP2j+Ddj5j0PShB/Zbw+BgYhSQXlqobXqb067QxhDujTV30fFa2di7
         WZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740147359; x=1740752159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqdjIBWXWliY7LxOtFti2ta/kieZvqtrvhn2QZYRayA=;
        b=pIPyZkRJ2FrmquLTiE45FarvyjYwqFJtm94Jw85W6MJXgTg+7zrnBmjCh2/2Yhh2Wk
         HlY42KFX+J56F20x8bwDHEeqHBctqEJ5HiervVOPtC9U/noanBAkqcnfyJdp+avrwiRl
         yA6n+C950rzbungSollCAcu8ydmo2zJdtGLw0Yn7+Qx9JDJiW5z718E1n6hW2HJGQ+qn
         3EEMAzyuhmwkCh/xG4tsQZp7FMcoIyPvpWmob6zpf3BNgArR9KbycBCtQqDiQB5Sm/YN
         0bobDtG+Feg9QMfRy61NhCv++JpcXPvIIm7/JPuXNqMhi96zRS01fIi2fMXP9id/hg3g
         exSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTc0Q/RdDcWS0adNhtBMUSUvcH7525tULkT75u0yPoBXmbDKUtdlB6uajn1bdpKZ9Myqlz4UR+C9I2@vger.kernel.org
X-Gm-Message-State: AOJu0YwLRTtOb85dhmnWEl0bQqEwEJevkWVMmrjmmXIN+wsEPl0DgYeV
	OBSwfad0bgnDrWb60DCp+V8v6vJk58r8Iiexe66oknDQjhOTDbqpAkZElDjrOoI=
X-Gm-Gg: ASbGnct95bzCtP0N5PX1ubFjbD4hJFDhJ2LQ0XMCji1q5wulkSaT7jIsSZ4YY59Kbtu
	FCo6OsIMxQ/rma5A+yj8BOMcm1afbqCWWX2jdu6+eILz9xEplJHq+hI/qN7zH0Gf6v4X9prlCkO
	gd3yXmUxuLeuDo4Ij1496y7X2MUoB54PlBX3AL/vq49G+sV3+/7o/J9b30NJ1jpEQGvJgnM/Tou
	CllHy3CWqrCtK+9x3yjClKa/n8ZkF6Ugo41YnOYFUMzUljAi4Ycq1exNWlk6x7sXoQLO1Wmmm2Q
	9M+1hliMWzIhZoqLR1uHp5J9VX3WD6gUqRsH1RRbYdxniJ59R5W3YdFMDTK/8G02NlW+/4MLi0e
	CNKpaiA==
X-Google-Smtp-Source: AGHT+IHxo/Z2Vypj16VF0GmKYfWym8LubvFupfQd41+zMTMPmL04EgeKmlFfU2NqFPOowvlrSSrsuA==
X-Received: by 2002:a05:6512:1305:b0:545:764:2f8d with SMTP id 2adb3069b0e04-54838f77b46mr1359150e87.44.1740147358594;
        Fri, 21 Feb 2025 06:15:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54530b2aeb3sm2115666e87.175.2025.02.21.06.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 06:15:57 -0800 (PST)
Date: Fri, 21 Feb 2025 16:15:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8750-mtp: Enable CDSP and
 mention MPSS
Message-ID: <7ge5bnzqggaeoyme57sjbchehdla5icblyjc6jiop6f64bfk5y@gobmmlvp3cie>
References: <20250220-b4-sm8750-cdsp-v2-0-a70dd2d04419@linaro.org>
 <20250220-b4-sm8750-cdsp-v2-3-a70dd2d04419@linaro.org>
 <dihnqsdjqxq7uhomceeiejey7dezfyvhpnyc3zyzhyuyfdjtec@d4ruo5xbxid3>
 <e4630796-49b9-4a09-b511-fffff1352350@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4630796-49b9-4a09-b511-fffff1352350@linaro.org>

On Fri, Feb 21, 2025 at 09:38:09AM +0100, Krzysztof Kozlowski wrote:
> On 20/02/2025 17:19, Dmitry Baryshkov wrote:
> > On Thu, Feb 20, 2025 at 04:44:13PM +0100, Krzysztof Kozlowski wrote:
> >> Enable the CDSP on MPT8750 board and add firmware for the modem, however
> >> keep it as failed because modem crashes after booting for unknown
> >> reasons.
> > 
> > So the modem crashes on MTP, but does not on QRD?
> QRD was not tested - which mentioned in that patch - and I hope someone
> will test it and tell me :)

Then it might also be broken. I have the same situation on SAR2130P,
ADSP works, but CDSP crashes. Please separate modem to a separate series
and clearly mark that it is not supposed to work. Until it works on any
of the boards I don't think we should be merging corresponding driver
bits, which are known-broken.

-- 
With best wishes
Dmitry

