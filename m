Return-Path: <devicetree+bounces-41409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DDF8538F9
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 18:51:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EE961C21D6D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 17:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06BD604CE;
	Tue, 13 Feb 2024 17:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z7oDrq7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6227A5FF08
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 17:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707846684; cv=none; b=n58YcFmD+J9hrY/laEb8oXp9ovqzLhfOoCEyO1ovEnFTClVeeQMsgRuCxE1wsgz1NDzwejpWfAGUW19LAypXQe6TqyrrpHyXzjVANk8nBJgEiapKaG4ONgtp9F5sUzbC5TKUx0UJruXV6GVRRzCULNFu6gJ8fO1EFeqzSchbQik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707846684; c=relaxed/simple;
	bh=E/LvFyL4pfiUZegDtERhyPrQ0GB689M3GTCWPgPEMxk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=llXPxLtrTUWMV4mAr0/14z2Ge17g5InHgpXOmPWfpV4WqaAlksLO9r1K+LVZyUh/c+8/i0kyP9OI2Vc1n+i/lvMn+WZQOfiq31GUGACI5j0+onsYw+W0MdZEk0yafhIVqa74pXYtj7uxgZ2ks3oVQgeGMWv6Co19lU893gIZAjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z7oDrq7i; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-295c8b795e2so887982a91.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 09:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707846683; x=1708451483; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9TLdNuqXzTO2w5/ka+t0YKsYCwn1V8IlWERUbhKLe88=;
        b=Z7oDrq7i0wDlBLIait68TNXCfro/nhBVB1+XDFLGmMnRWLYaagdvaMfpQ2Bg2qPZJZ
         fk6RTxiorxYwFV5umzRMEnQLnzuluLZ5BqHnquwPK2bSpB34JXN1BTfYoHQmQU5/25Ki
         jtb/VD8YvwcRTrkgZyuAsbiCbrQVUZt4CxD19JhCrfau060wA0TPqeU4RhfeKCowgs6b
         wgEwjUzRpWeqJvOOpJaIfRW94rS2xqOW4UostM1fzG0qNAnVM5fHtqvA/nFaEabG8OYn
         vNoQuAEMu0UgmLpOpwEWIWv5uuYvFCvgMTykl5O+6n63kC5ZgpLc9cYxzy1IZ4igDHvj
         aVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707846683; x=1708451483;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9TLdNuqXzTO2w5/ka+t0YKsYCwn1V8IlWERUbhKLe88=;
        b=AGWDVjISSI6Whdp/lWZw10u/K9CgxSj4JHmWYSB6JfsyJydzZ2U7av4tMAzZCQDlxQ
         zCVomA5omdGGho8vHw2dX7NMJEWHPgEDvT+7K3hNi+EfHiPVjSpIznFyLfwL87oTAPyQ
         BpFON7B3Lxy7xHCgpoH9uOZPNxiTfHydIqSLH5ezmip1l/fBAUnhTWAepr8S04sEAcNG
         Qvk+o/iQpcPkEC/1UYDXZa5msQ6qtmroj+ARSOm+QJSW3K5WT9wcOo3lqnUges0ncRNX
         WR7hjUWGI0O1FJBP39hOsgz+Dio/qi2jGwdEFDQDDJG9nTPEZeWveVg0yQMVP5T8SnkV
         LQhA==
X-Forwarded-Encrypted: i=1; AJvYcCXvOrEyOSsoWNEfU+9v35HgDT83kbR6l8Lz9lWFDr7uliI1lS8sc4eCgGHWtynUQvBPKs1/A0ALAIVR14YnXxRlcptpbsGwI8NSvQ==
X-Gm-Message-State: AOJu0YyMDjPGF2WV62r9yifFVYMVnFzJZzXKZHAMu7JoDvpsBHrqW0wr
	+wdV6luQC96TgLQKKWZ1pcMHAMRLFrOUZH6/DEhivHsnOnyBqIAczzbNRboLoA==
X-Google-Smtp-Source: AGHT+IFsr7hJmo9gmDMN8k7jf65TnKIzpKFMCr03CVdWTCsY5dqkNPVVelrznea0R1Ejj5NnyLma3A==
X-Received: by 2002:a17:90a:c246:b0:297:11a7:e789 with SMTP id d6-20020a17090ac24600b0029711a7e789mr149465pjx.45.1707846682692;
        Tue, 13 Feb 2024 09:51:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW0mHwyYc78YP9/He2J9TYMOW9hV7rEWl4Mgy+2hzXbaVqhhIwfYfJR2im7o8F8s6BwHA6qEYeYSPStj5qVkJN4TGnB4VJIY8u5e5X89eSOb4/d5UMEy5ky89FZqvzHKR2N1GTGl1Fg7qlZS43mR6zbDt+17nAHZPFu1m3UIfu58/Omv0W3f53upEcSrYzNew92eqIgB+ts5PcgR+iRTOYg7JxEfom0hqwPCoeZkAZguCMgyFo+klb3300/nojKNj0ohJvkjyFXmkieiF4TqgSfbGbdJleICIQ+17xtXIMZmBBJ2YHeX4B/03xY1VU=
Received: from thinkpad ([103.246.195.75])
        by smtp.gmail.com with ESMTPSA id b8-20020a17090ae38800b00298b4e896a5sm1531414pjz.46.2024.02.13.09.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 09:51:22 -0800 (PST)
Date: Tue, 13 Feb 2024 23:21:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: jenneron@postmarketos.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] arm64: dts: qcom: sc8180x-lenovo-flex-5g: fix GPU
 firmware path
Message-ID: <20240213175118.GC30092@thinkpad>
References: <20240203191200.99185-1-jenneron@postmarketos.org>
 <20240203191200.99185-2-jenneron@postmarketos.org>
 <20240213171416.GB30092@thinkpad>
 <94bdff480e699f27f25f483e1207a22801f41174@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <94bdff480e699f27f25f483e1207a22801f41174@postmarketos.org>

On Tue, Feb 13, 2024 at 05:33:42PM +0000, jenneron@postmarketos.org wrote:
> February 13, 2024 at 7:14 PM, "Manivannan Sadhasivam" <manivannan.sadhasivam@linaro.org> wrote:
> 
> 
> 
> > 
> > On Sat, Feb 03, 2024 at 09:11:55PM +0200, Anton Bambura wrote:
> > 
> > > 
> > > Fix GPU firmware path so it uses model-specific directory.
> > > 
> > >  
> > > 
> > >  Signed-off-by: Anton Bambura <jenneron@postmarketos.org>
> > > 
> > >  Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > 
> > >  ---
> > > 
> > >  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 2 +-
> > > 
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > >  
> > > 
> > >  diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> > > 
> > >  index 0c22f3efec20..49b740c54674 100644
> > > 
> > >  --- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> > > 
> > >  +++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> > > 
> > >  @@ -350,7 +350,7 @@ &gpu {
> > > 
> > >  
> > > 
> > >  zap-shader {
> > > 
> > >  memory-region = <&gpu_mem>;
> > > 
> > >  - firmware-name = "qcom/sc8180x/qcdxkmsuc8180.mbn";
> > > 
> > >  + firmware-name = "qcom/sc8180x/LENOVO/82AK/qcdxkmsuc8180.mbn";
> > > 
> > 
> > Where is the firmware located for this device? I couldn't find it in
> 
> NHLOS partition on the storage. I also maintain a package in postmarketOS
> 

Could you point me to the package?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

