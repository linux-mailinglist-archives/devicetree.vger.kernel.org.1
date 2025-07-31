Return-Path: <devicetree+bounces-201012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E320B16F6C
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 12:25:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E20937AB9CE
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 10:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065522BDC3F;
	Thu, 31 Jul 2025 10:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n7lQX6do"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA1C1F8690
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 10:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753957530; cv=none; b=MkSMmDxhaRAZHjoGYVGknTLmLwYxSqboVdWxDglIYh1v/Y/8jU5XREWV9++OfU5dTrHb2U3JVOJx4deArhTGbdznHPWb+a+x1qPFCNvtro79FhiDdal3QQNz058gLtughBF1CmQ7GHPw6p3HpKrGwIMo3UFGD0BeFDlFxyhkEbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753957530; c=relaxed/simple;
	bh=Fdd8rVwrOI/ftl2mALt/laddxSDrHqp2Ly2OA1Dp8PM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=T74dM4R6J5B2qhLOOD13yzmjg46/GbCSR1cD7mXXYY/MrnWorpSOH/9ijj/FOYYeoRLz3dCazm5I6+fDSQ1+3SXlR5FrWR4jWY473fNiAMOWPsmunNAtkDqCRJ9eiA6dZw7pZWBRH1rm0B9VdMvtJnx98sqir9mb+ad0tuhONPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n7lQX6do; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-455b00283a5so1491745e9.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 03:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753957528; x=1754562328; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fdd8rVwrOI/ftl2mALt/laddxSDrHqp2Ly2OA1Dp8PM=;
        b=n7lQX6doHNPHdI2TT/LQiEalgtdlDGkvQyblsljcHnUr1c8H3yY+lEBYDgG0ncVrSk
         eUH1G3URucTH+Fgq9Y4JtEovxF0pnkXXQbvROtfisvPGCsuBUkV0RctF31rJtPqtwTwV
         N9immdBKWtAB3zgNm+qJ2kL1DB4ZX02sypjRe8vCtLjJaPXyKJ9tLQhZkyQlSOLDZEsJ
         0hEru0hjgjCpL9b8ct6PpXOXafujAcbxplAzxK8E6STkj537HFCF54lBtC8C5iwK1zF5
         QS1te/6wYff6KBGyWwIin05zP/kgfzyPuLGv4qtXy4BIn2XtbsFvVHu1RJV9wUrpfyC+
         fS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753957528; x=1754562328;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fdd8rVwrOI/ftl2mALt/laddxSDrHqp2Ly2OA1Dp8PM=;
        b=jvHlom23tWm7s/pKjDDNfVZ7tcNzZU+87UpqkedqbAMF6VL+hORsqF1+vszOJiEH6r
         JBc71o0Fpk5TvEgbr68zEWsuYkFXwcHZ98L1Qbsqz0mD2hbQveH9endjZhOp6kCK3ZBl
         +M/QVfG5YHDksNZBNRt5/MFWpZn26NbAKmy7efwY48grYcNPQeVoyKgZcmM7PHX5azYI
         //jPlLAtDabyMvblHXgU6b2g0RpcAqmHk1Mhu243+n49NihRmoqo5zcFf21WDF8/YSjn
         jOluQpkvZ+nBJIEZni7er55QNm0MPnU2DWevKXTS66+u6yriEWhRgvXr55/RfkAcdY1q
         Ergw==
X-Forwarded-Encrypted: i=1; AJvYcCU5gOM8wOAx1fIkF2q1bcqpURHHUaQ6RK9mgiEXV4bc8hg54C4pPSZRmww7Oae5UYded+T/BJRdKhvB@vger.kernel.org
X-Gm-Message-State: AOJu0YzXNuwXdtsHsaloPCLQYSXkCxa8NK/X6DTxpjjza+Y2dybiu41Y
	r1pCCeKGpjjNMMcYrCAmM7ZOKxk8uM037SKI6/1CZjBOE1nfsckRdV8EWtf0/GKLY6Q=
X-Gm-Gg: ASbGnctWwHI7BqsPG1fE9DoI/eXU/prGbwaNzB/c6qFZ81LbcA2nwfgc8B9EyjLIMrF
	xTzS0Xrxd65VBbVWHDi58Wcd1il7waGuZr1T2UIt7wa4NJnsNyeasb8eMJOi4af0jZHej1ygmJD
	HYux/YQ8yOQMRlGM4IcR0C//KgrzPgYKQdITDHWkR3Fx7syKCCAoI3UCG2Iu79EzDwbu7qSzAz/
	mVEDORlFSEPcGbXvXvz6amC1w7fniL0eWN61KpZcMnjobf2LmPN8N6tg9JD6oGIa3ZXuA1IsS+q
	GoibXVwJi6od2nNVy4OoCSHzwitLwrD5STSdWtBIcnFwZUP+5jbuwQH5ieLjov9e8rQl6dQqh75
	UJAc3CeAwPO6rys62WWDRfVsXvA==
X-Google-Smtp-Source: AGHT+IHhqyP93G+ZH0mqfHoo6oZhMJUnlWvEtPn99Mobxr9hcWgTGsVHemxeWgkdcIjD6PVicJSyoA==
X-Received: by 2002:a05:600c:1f92:b0:456:207e:fd86 with SMTP id 5b1f17b1804b1-45892b931ccmr73450555e9.2.1753957527737;
        Thu, 31 Jul 2025 03:25:27 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c4a2f03sm1888068f8f.72.2025.07.31.03.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 03:25:27 -0700 (PDT)
Message-ID: <afa34f49d502d7f921818141979167920b8d924a.camel@linaro.org>
Subject: Re: [PATCH v13 07/10] firmware: psci: Implement vendor-specific
 resets as reboot-mode
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>, Bartosz
 Golaszewski	 <bartosz.golaszewski@linaro.org>, Bjorn Andersson
 <andersson@kernel.org>,  Sebastian Reichel	 <sre@kernel.org>, Rob Herring
 <robh@kernel.org>, Sudeep Holla	 <sudeep.holla@arm.com>, Souvik Chakravarty
 <Souvik.Chakravarty@arm.com>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Yan	 <andy.yan@rock-chips.com>,
 Mark Rutland <mark.rutland@arm.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio
 <konradybcio@kernel.org>, 	cros-qcom-dts-watchers@chromium.org, Vinod Koul
 <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, Florian Fainelli	 <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Mukesh Ojha
	 <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, Elliot Berman <quic_eberman@quicinc.com>, 
 Srinivas Kandagatla
	 <srini@kernel.org>
Date: Thu, 31 Jul 2025 11:25:25 +0100
In-Reply-To: <473f7269-3852-64a0-8aa6-7299be0fc85f@oss.qualcomm.com>
References: 
	<20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
	 <20250727-arm-psci-system_reset2-vendor-reboots-v13-7-6b8d23315898@oss.qualcomm.com>
	 <b45b157593f1865a402f4098cdeafc298a294c6d.camel@linaro.org>
	 <b92c164f-c6df-a2c0-1416-67652a01b179@oss.qualcomm.com>
	 <34c52c88fd8fcbf68c453c1e94e4cd6294becff1.camel@linaro.org>
	 <473f7269-3852-64a0-8aa6-7299be0fc85f@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-07-31 at 11:05 +0530, Shivendra Pratap wrote:
>=20
>=20
> On 7/30/2025 8:53 PM, Andr=C3=A9 Draszik wrote:
> > More importantly, if e.g. an OOPS / panic happens after the reboot
> > notifier has run (and set vendor_reset.valid because a reboot mode
> > was requested),=C2=A0a panic handler changing reboot_mode to warm to
> > retain RAM contents will have no effect, because the the original
> > code above making those distinctions can not be reached anymore.
> >=20
> > Above scenario with OOPS / panic after reboot notifier could e.g.
> > happen as part of device_shutdown() - see kernel_shutdown_prepare()
>=20
> We can handle the panic path by adding a panic_notifier in psci
> and make vendor_reset.valid =3D false. Do you think adding this can clear
> the panic scenario above or there can still be some leak?

I think that would work. You then can't convey the reboot command, but
at that stage (panic/oops) it probably doesn't matter anymore, it only
cares about the crash handling which probably is enough.

Cheers,
Andre'

