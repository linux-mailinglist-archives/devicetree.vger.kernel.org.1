Return-Path: <devicetree+bounces-164705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 309D6A8202B
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA65918948E0
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1090225B67B;
	Wed,  9 Apr 2025 08:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rgGauYbU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5F022D4D4
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744187763; cv=none; b=slURDyMqRyEbaaLI9YPW4OAI21RJp/Pi6Ox/GYw08hF/cj1k7HelHxuVfScSO4vfVyQsjVYJCCTvtGsyA2p2F4K47oapoqky+jD/e9JURdWlzAWecqKRMOKCuVs98XhjWJcJGZy7L7Nc6Zy4BSk4GxukSRVapzt9eubt0Jx192s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744187763; c=relaxed/simple;
	bh=Gj6WtNoFSpFYRXUN9kESBueSyd6F3Fb+6o3j9M5Kdvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rdhCH4M1sL+/K9YfJ5+nsKP0AmQLo8G61Wh6b8r4ze++Gj9hAnxt5ihPc0Hj89wuISM/RjNliNBj5e50bu5cf/A3tIrBzGWiQ7kdgY8KIZTBlF68nHuVeCq3EEQvD0mdLqHYkGQ2mXAp3T2aqwWUkvV/nt7WvxnwVpsjHUnvFj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rgGauYbU; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-af51596da56so5287759a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744187761; x=1744792561; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LtnsbI0xn/MWrJ60E74sl+r7UIlveALJ5mHP+oWEsOI=;
        b=rgGauYbUQZMlrNFoOVUcceBRiNyLo76d43Jnk4MVadMHfEFkwDell9DJydDlBXyFJ9
         ss2Sdbye9LTcdxn+vYA3UH+MMWU/Py37SGm6uCYvVoU/j0tLHUVYRiphFX6mmx57YU4S
         1LpcDVjZfEs05CzGD8W9Ocfii+bF75BgjJKasqiWROIIshfIit9nGiFaI1zrbsGDYS9Q
         5zQrNNQsjhBcpGxajyQhsRVVVdfUJD24WEhtgP9dYfuH352NxeM6QNl5feQ3jdpYCW/H
         rX7d0mKxWw1l4WqLWCfvmTmA2KfyVO/ns5+A//KEIM2HZIRZa3gUWdF0UQe46aCGZBBJ
         xVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744187761; x=1744792561;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtnsbI0xn/MWrJ60E74sl+r7UIlveALJ5mHP+oWEsOI=;
        b=nkQtU6kCjcOMC3Jx/2OAe0xIKGqzpd/PqECKt2pCjjiFfXAu0UI0HMfJjQMdsLo0JS
         p0MhYvXFmqYtKjxh15J6Y579/VDlAhi7J12LsoixfYJUBCOS7vhscWRW38gf0S858Eio
         o37WMVN1iG72W/YDiCA0bykfyrHugt7v6deDojZ/NeetjKi1L24NfdBF7w/KSw3KyE7r
         BGEaR6iK40AK1TcgfQtX4CeSMTdpDM+omiObH+laGtk1jgeqiVFwLa4sc03P5Scxekmv
         XlituDd3sb+xN8hcnNK36C7V8BtDsw0gqqyP5Kcbf4LceDf/o2HP9MjS/XOC/MhENhCU
         lRfg==
X-Forwarded-Encrypted: i=1; AJvYcCWpHxrwXFqUPWt5NFQsyRW2Ubfq1Mh/BI4BawlLR80QsUnUDafHnbnTTAhMFcWl8yRc/IKtZWrHM+x2@vger.kernel.org
X-Gm-Message-State: AOJu0YwQo/zXyRBLeLlJR7/hES34HCnAqVeGQRN9ey3QrK85xjYK1Ry2
	+1JOiaJDMqlQhNwZGWWPCTStfRf9I03Xz2XRifF1j6IGBzDM//Qrtm1hs3yFi9g=
X-Gm-Gg: ASbGncshCeW+M+L6EasusYowonsIxa+O8/gdPAOA7gKnNeAyjjuRPNWIevJzc8XZOp5
	h80f6Ad25KCbQIdjbJ25IzCE4drviv1WeacIj2hr3RHJ1iIEkjk69BPtZtgX9aFWouEFd6I7fwi
	4/PI16t4Nu+QygrIqN8OfonkdbDk8EasC/2XlX38fj5axXxTxeJ7usp1PR/vpsJiujccEy6+bcm
	aHiNNJNdBiQTx4pB4QQjlcr8nYrBBc30n+VFEICc6UFLHBjNrT8octEn9Ssw0YiBho3zD2qeynB
	DGM35O5ICf4PDyoUuL3LBnCmPrxn0/7L/qbjfBTdudju/oB8BDqTBdvjPlZYx5k0ADWu50EC41u
	9
X-Google-Smtp-Source: AGHT+IFaM4ht/uWK6nf/t2wImg96pc3MqERrzfxlvHDfVyaU0p2YvxDUtwTqEg6xPRFUlfT51nXPQA==
X-Received: by 2002:a05:6a21:3982:b0:1f5:6d6f:28e with SMTP id adf61e73a8af0-201592e22cdmr3092745637.42.1744187761022;
        Wed, 09 Apr 2025 01:36:01 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a2d3a250sm574589a12.62.2025.04.09.01.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:36:00 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:35:57 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Andreas Kemnade <andreas@kemnade.info>,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-clk@vger.kernel.org,
	Tero Kristo <kristo@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/YxbXZ6Wp6q6kNn@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-3-sbellary@baylibre.com>
 <174377855887.1313159.8477749895324191477.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174377855887.1313159.8477749895324191477.robh@kernel.org>

On Fri, Apr 04, 2025 at 09:56:01AM -0500, Rob Herring (Arm) wrote:
> 
> On Thu, 03 Apr 2025 18:44:58 -0700, Sukrut Bellary wrote:
> > This binding doesn't define a new clock binding type,
> > it is used to group the existing clock nodes under the hardware hierarchy.
> > 
> > As this is not a provider clock, remove #clock-cells and
> > clock-output-names properties.
> > Though few clockdomain nodes in the dts use these properties,
> > we are not fixing dts here.
> > Clean up the example to meet the current standards.
> > 
> > Add the creator of the original binding as a maintainer.
> > 
> > Signed-off-by: Sukrut Bellary <sbellary@baylibre.com>
> > ---
> >  .../bindings/clock/ti/clockdomain.txt         | 25 ------------
> >  .../bindings/clock/ti/ti,clockdomain.yaml     | 38 +++++++++++++++++++
> >  2 files changed, 38 insertions(+), 25 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> >  create mode 100644 Documentation/devicetree/bindings/clock/ti/ti,clockdomain.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):
> Warning: Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt references a file that doesn't exist: Documentation/devicetree/bindings/clock/ti/autoidle.txt
> Warning: Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml references a file that doesn't exist: Documentation/devicetree/bindings/clock/ti/autoidle.txt
> Warning: Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml references a file that doesn't exist: Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> Warning: Documentation/translations/ja_JP/process/submit-checklist.rst references a file that doesn't exist: Documentation/translations/ja_JP/SubmitChecklist
> Documentation/devicetree/bindings/clock/ti/fixed-factor-clock.txt: Documentation/devicetree/bindings/clock/ti/autoidle.txt
> Documentation/devicetree/bindings/clock/ti/ti,divider-clock.yaml: Documentation/devicetree/bindings/clock/ti/autoidle.txt
> Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml: Documentation/devicetree/bindings/clock/ti/clockdomain.txt
> Documentation/translations/ja_JP/process/submit-checklist.rst: Documentation/translations/ja_JP/SubmitChecklist
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250404014500.2789830-3-sbellary@baylibre.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

OK, thanks.
I will check and re-submit.


