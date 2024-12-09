Return-Path: <devicetree+bounces-128884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5DE9E9B29
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:02:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF305162AC2
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0F8613B592;
	Mon,  9 Dec 2024 16:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YqooIQC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DCB23312A
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733760035; cv=none; b=XrBOLeifX/tlSjG3KMoe6/9tBZKSjrHe5JBYMEOzhjcz//7IV0nkWuM4DZfpBWUoH14IVAWEhvoUyTHO1soLSwuBhA7fbax5lZ9C9kXNtqm2mJWrfVE3QFg4TQ9Gd9lLsGmgaZwiIaDFU9ApuF1MCmr2P+PxbDDl2evHVM5WCyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733760035; c=relaxed/simple;
	bh=+XrSxkJiYVwip/7h/15X2p1fvHKqGqNK5AfKn5ODPPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kmp+zPQwSE2c9DV+OCetFo91cNIqCrvdx9TYdjpjDGS0pPH7AzGEnFdWyGQxMFDE/pf7PSvxaLcGR2b2pazBwXyVT3SwVFsXaySxt7LHlcjXD4MdsBE9klagV3bBSqlwXElThsykuer4jZfV8wgJj/e2i2s9NPHMJ7vMxErctpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YqooIQC8; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e3983426f80so3622731276.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 08:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733760033; x=1734364833; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aiUSjuMsBxtwBF92JKugclqDOyqNzANQlkYa4tpiQ0I=;
        b=YqooIQC8Q0nhKSNk8+F8SGrvo/fXo0qlIN7+9CDuJxRkCLkluMjgsGLpFR+uNmw21s
         ioozeUeCLPS3V2geL+E6Cir51KTFdQWcOAFPlRdozNdf5PQmNl4ILq8C8MqUUrjzW2S+
         EJ6eifBu3DMyTaAk6pLPBpQUbjJQsHUbNzG1fzYXexaAYAq7NHkBw+zKCsIJCQjMXIs9
         9E9sn1M8eAN2fXhSqzV7dAuKDFDKU5WT3C1Fdw2iBDWTQBkU7ppPiBTm8H1LLrE7L528
         rE2JKFu4Qd/sCdvoeTN1n/MOqUBajIDTPLdhRbtbmyS2VJ2f/6k/fkTp0ZQMyvrdyIaf
         4iJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733760033; x=1734364833;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aiUSjuMsBxtwBF92JKugclqDOyqNzANQlkYa4tpiQ0I=;
        b=X3P9nS+Kch4hP2Kmw4RCYpUErJjlm53d5fu0YvgelCB16UZw7Sw2WvcZ+XijXnZXlo
         0CkvKYQtCZRVFbEkEG24VwdW3uyz7/nrn7As9k7cMcsg/11F5259BqCF087rHLTXM7sS
         DY96+ug4r4JRwDxScPhZgEWpFDQi6dtb707fogwKZxHeakd3smaCt4VWhuPdIehrGtJG
         Um77pZprq6NgTo1b2VxoRl/1kltKdJkcYQR8gTLR5/eaUE6qfWWbj86A5tPXoQxPUbfm
         4dv1l55y3fZOJjYhK1NZ29xCqjisexE+VKPMeIMVHosOIm75HMANotA+803N4ouiB01Z
         GJ1w==
X-Forwarded-Encrypted: i=1; AJvYcCXGXW8VunKxetj8OxbE54ATxvPpbVkFOl0gZhqsk1PNXmlFl6Dtqf7i2ha/YDdSecemPbpoPYRhrJOd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz36Wio3NAJo8H5k7lbqN4VdMNiKIciL2nvFU1sZqRVTraQV1Ty
	t2auzJCVgf5NSpYZARjjR67+7vG2b5/utshIad+dpSUeUu5E4lw+DLaCz4wneGWFenzQrKOiYAB
	xYaaBor7jdXz8/dIBZjmLBcnA5A2/copDtpckRA==
X-Gm-Gg: ASbGnct8EmRvDW38RtQT3aMnyFrcPQO6JkUKn7y3UStQqee6cZa2EVQppIHk0gf9Is8
	lLjC1HXRjgjnlc+KYyKadib7pI/IK0D9o
X-Google-Smtp-Source: AGHT+IFgKCTASVGhuRkk7fgCBN66ESQ6+aXeXlUzLv8tl8DoC0dwlZWyfOK453pZ6S12UOf+JkQoe7zxwbety074Onk=
X-Received: by 2002:a05:6902:841:b0:e39:9633:fc15 with SMTP id
 3f1490d57ef6-e3a59b27115mr959168276.27.1733760032634; Mon, 09 Dec 2024
 08:00:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241209111905.31017-1-johan+linaro@kernel.org>
 <iw2c4fceyppf2w2gueevsqsz2z7hatbqo33vufx3veatprczu5@u4k3j2igy6ee> <Z1cNHOqlRk2Cxwvd@hovoldconsulting.com>
In-Reply-To: <Z1cNHOqlRk2Cxwvd@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Dec 2024 18:00:21 +0200
Message-ID: <CAA8EJppcQrJkZe1ft_PLaB1C5d6vTke6BOSDZXJuNwrxy3kJKQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: dts: qcom: x1e80100: fix USB OTG regressions
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Marek <jonathan@marek.ca>, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	regressions@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 9 Dec 2024 at 17:30, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Dec 09, 2024 at 03:23:05PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Dec 09, 2024 at 12:19:03PM +0100, Johan Hovold wrote:
> > > A recent change enabling OTG mode on the Lenovo ThinkPad T14s USB-C
> > > ports can break SuperSpeed device hotplugging.
> > >
> > > Abel noticed that the corresponding commit for the CRD also triggers a
> > > hard reset during resume from suspend.
> > >
> > > With retimer (and orientation detection) support not even merged yet,
> > > let's revert at least until we have stable host mode in mainline.
> > >
> > > Note that Stephan and Dmitry have already identified other problems with
> > > the offending commits here:
> > >
> > >     https://lore.kernel.org/all/ZxZO6Prrm2ITUZMQ@linaro.org/
> > >     https://lore.kernel.org/all/hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef
>
> > > Changes in v2
> > >  - revert also the corresponding patch for the CRD which breaks suspend
> >
> > As you are reverting two commits, please revert the third one too, it
> > breaks pmic-glink.
>
> Can you be more specific?
>
> I was gonna say that pmic_glink works since hotplug and orientation
> detection still works, but I tested now with DP altmode and that is
> indeed broken unless I revert the third commit (f042bc234c2e ("arm64:
> dts: qcom: x1e80100: enable OTG on USB-C controllers")).
>
> Was that what you had in mind? Can you explain why that breaks?

See https://linux-regtracking.leemhuis.info/regzbot/regression/lore/hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef/

For some reason commit f042bc234c2e ("arm64: dts: qcom: x1e80100: enable
OTG on USB-C controllers") seems to break UCSI on X1E80100 CRD:

[   34.479352] ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: PPM init
failed, stop trying

>
> I'll respin with a v3, but please answer the above first.
>
> > > Johan Hovold (2):
> > >   Revert "arm64: dts: qcom: x1e78100-t14s: enable otg on usb-c ports"
> > >   Revert "arm64: dts: qcom: x1e80100-crd: enable otg on usb ports"
>
> Johan



-- 
With best wishes
Dmitry

