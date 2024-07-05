Return-Path: <devicetree+bounces-83363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB09282F7
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 09:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD7A71C2244E
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 07:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777E01459ED;
	Fri,  5 Jul 2024 07:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="yXsl8Ou9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A241A14534C
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 07:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720165301; cv=none; b=MASdL2p1+6atGcSvq2MqbLyZJplG+EDPBx4OZEDc33rKetGO8dlYv+cRyXOGjQIrMXeAHzYcL2TmIO7OWAI4wGo27x3Ngaq6SshsTijgYQU3C3c0ty5rQpVSZtttrTzJk/7cNkMDMD3v72xzxvc8zLGF9hTkxzLX4qciXaKAnZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720165301; c=relaxed/simple;
	bh=C6Aj5EaEfcJqX9TIxh32n8SJfeYFTf/M3EglO+bsVXY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=TM08jWMC+t/Mpu/n/VUpgC83eA3UyMceh3pV6xe2pqRKHldqSTj/qA5NGQekYQRRXAmt1GaiFtL+dcbq/UA07yfZ13zRqJqb8LZ3lw55/lnLACfSmrWL4uCgbPkFRJ1U5fUCHdIbVNqdvOnFZJlMBMOVU+k7AuxM9UYb748gyWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=yXsl8Ou9; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-58b0dddab63so2118822a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 00:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1720165298; x=1720770098; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQlN9N4OmBSWIwYhAl+aMllt25uIxXclcKeBS5OjPEs=;
        b=yXsl8Ou9ZoVHo9/OSJYjcJYasG2CGtiuQlZ+XkRNCJz3mFDRc86LcEzpaKdKVuBh5v
         mxbtDCiv7g2kA8OA1wSYZIEBur5O0oS+aRtvKjaWywkC0RqgzKFEyLJRs1xrbqVH+yFw
         E08XS3j8LQJaeVqvqrZM6k6tNiH7WpWo//UkwJAbkFP0y+aSabL/7PmZXIGna6or2eX+
         QxOkaYaVTVhAvTXlHB2cTLLMWrlhbOc4BvJsv9kb91BeTV5qNVsoAuEQF81NkJ1Tq9Hz
         vurgEw50Ty3Fnbh2oGTM8wcWavMMUigcYLbCJyqqelscN8M/wA557X5pioPttkQCrK3i
         a7NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720165298; x=1720770098;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PQlN9N4OmBSWIwYhAl+aMllt25uIxXclcKeBS5OjPEs=;
        b=U2CrEnB60MeDE2LKKVN0ZxWxaszlbA7IEHrnQsirSz0N4Y53f2Z+mKMG+kPOhrj4aC
         zPFxKY68DqmRI0+BPiGuGf7jHaFZtm2e8sa9r987TJcdbolXjjXD71aEXtJFJ6UQfE92
         0yiKqyPEhmkl8ILifdc2V5UhlLEMNWu/J0RaFs+iKF3+ub1pAJx5/+h+0yluvdFdf5tj
         wg6UJO2AfuPKHdm4EVodpdxOUkjZf0LpLPupqicgdFRxtDCqfZiMvwZZs6hIIC7u9vWI
         Dl2SKFR2OXMyNZWPMFABuXFNaVBgDhFk3lHuM3CPFXSlOMq7SrUfOdcGpn+zNWanYUkj
         PTKg==
X-Forwarded-Encrypted: i=1; AJvYcCV1nVL0s3W2DdqdvoOY6qTT6ulzDqjvRYa+DsyEZ+HmsY9zO6aGEXzL1/vVuErsCxGfq3UzLGvRbdzcttPiwy55B6jqlYxAU+LAlQ==
X-Gm-Message-State: AOJu0YyGYi/XXv6aZvnIHhU2SoQR+ijEtaPAY+aOSBRIgI985FkJ+8/7
	Qv+1mVZfIT/allR+56EtMLU3VgGEi2H54GsJOkykAnFOZkP/ndRlWwqvFMETRN0=
X-Google-Smtp-Source: AGHT+IEIm5temVbaI8ZdtQAUcJOvJoAb9XFwL+Ws+RRRznQkvBa2ZdaAzA/+T629AmJ9BRsiiBvWyg==
X-Received: by 2002:a05:6402:27ce:b0:578:60a6:7c69 with SMTP id 4fb4d7f45d1cf-58e5c72ffedmr2681374a12.30.1720165297727;
        Fri, 05 Jul 2024 00:41:37 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-58ad8730dcfsm5059338a12.7.2024.07.05.00.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jul 2024 00:41:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 05 Jul 2024 09:41:36 +0200
Message-Id: <D2HFPG49HZ8L.P337FA15VAA9@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@somainline.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm6350: Add missing
 qcom,non-secure-domain property
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
X-Mailer: aerc 0.17.0-0-g6ea74eb30457
References: <20240703-sm6350-fastrpc-fix-v1-1-9f127de17175@fairphone.com>
 <wlqlcrlh4ogzxkbwmte75hvfatiysodt3ohlxxsyzhxkzyukh7@epjxupcod4z3>
In-Reply-To: <wlqlcrlh4ogzxkbwmte75hvfatiysodt3ohlxxsyzhxkzyukh7@epjxupcod4z3>

On Wed Jul 3, 2024 at 12:43 PM CEST, Dmitry Baryshkov wrote:
> On Wed, Jul 03, 2024 at 09:03:01AM GMT, Luca Weiss wrote:
> > By default the DSP domains are non secure, add the missing
>
> nit: secure

I did copy paste it from previous commits but I guess they're wrong too.
I'll fix it!

>
> With that fixed:
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thanks!

Regards
Luca

>
>
> > qcom,non-secure-domain property to mark them as non-secure.
> >=20
> > Fixes: efc33c969f23 ("arm64: dts: qcom: sm6350: Add ADSP nodes")
> > Fixes: 8eb5287e8a42 ("arm64: dts: qcom: sm6350: Add CDSP nodes")
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20


