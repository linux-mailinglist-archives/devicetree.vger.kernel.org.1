Return-Path: <devicetree+bounces-182898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE15ACE589
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 22:09:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 220667A2DCA
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 20:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5131F4C8A;
	Wed,  4 Jun 2025 20:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RLjgNwuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247331940A1
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 20:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749067781; cv=none; b=HECvrucMAOiaN3KoxXrUQCSUWFr6UjpYUW14XOni8kkbpPJiG8eC2OYsDq8/eIyJVoEtKU+Fm/kDioH/5Z05lYDoduE4M5drZeyypxNfPkD/fIj5m6ACIJhveBlfKPZBh50o5UUcoyLbnGRrBrhK/qGCfh14G8uolvBcDoz1Fc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749067781; c=relaxed/simple;
	bh=m+9cioOEbudhepUywjfVI9ITBQV/u+Nkg6uYOHe/678=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=erFL1KX4TpkrU9XWguO5e+q/sVAMtK5WGnBzcJA2PEkYixmcW4YE1e+u+E+a51p729Xc5NZMrBjv0I6lT35rYNd9+qPL1YZpZmm3c+gBmbdplFSQnxc0w0cJy/0HBiDm8Tx9aXIbwNvKerEcKDeX5CTJLDHze26WEIQC01tDXoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RLjgNwuA; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e818a572828so10364276.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749067779; x=1749672579; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m+9cioOEbudhepUywjfVI9ITBQV/u+Nkg6uYOHe/678=;
        b=RLjgNwuA3ZgsuSvwW5ct0y9YJXa0aPW3Lux67O6T5yZZ0Nn7Mo5gUQLfCr78PV3nJI
         bgUcCGQIcHLOqjbpxz/mjleI987S2mgL1XkFxg9h61LQVejQuQ+VOWKH8aPHfHluvyzM
         zsyxMpaJy0VHmlw/vxkplZA5cKosTYTaRmfLU1Z/VXUX4WQs+8TKtb9LbUJuVOz82tNQ
         ah83EI+MRPb2p2kaPq0HRm7cDZRUgnexOaAMOsLekTU5ASPcf2mLTl38mhaUcZalkCrl
         ghP+8MKqjZPJoMRvZPCjjHNqCBB3LBGEdoDZfNqsiwNtc1haUOjHpYRUehH6Zv62dVlX
         V6oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749067779; x=1749672579;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m+9cioOEbudhepUywjfVI9ITBQV/u+Nkg6uYOHe/678=;
        b=a04wJTzm820EZxbRFmFIdICoerhiB+Wi5US8Ak8rmK6mVDWYDGuZ993uVBj04wYh1p
         Q0eKdM01sHcNAmuWfuEcfEqZLVkgQLqkRAJlUjvmlraCuPaRYK61OWwJqpw51y/NkDKG
         oeZozJZzgIpsGaSyWD212IvemC4/Qnr+MWoW9/QC3CpmrgaoWPNFHt72OyBOOAw3w/Pn
         XQiNDJdLUgCTU2GYV+qOW/ZVE0ON0bJLyLp8KIQyVmVqgEtGokHr34GcCftbqwUEDXWp
         WTdn57uWs6c4lfq6zEkJ3aKffRMaD3wQKEtQ1ZNrfKYgCxCtz2ZT/81XLgmPQuidiMVC
         AZkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRwIt96Ncw8Bt/b/vY/xXtKDNOBVzJKBoKorOeDoNcjsJx8GgRPdCmaP3IXOJ9aqjoCv+Mdr0XYuML@vger.kernel.org
X-Gm-Message-State: AOJu0YxqUsyEQOFZs6s/LeN4YK5mVaWCIAa2U2LK76zA7/0Xm8Io/FTw
	cfftZbqVNWnF5Mak3N9HAFyx6XvFviFqZfPVGppjfA+75cE3xgok+zwppzI2FjMoQqUQ3wUneEq
	ei91vSbetI8D5Vm2P85hFyMhqZ420AVqG1RBkbgkxiA==
X-Gm-Gg: ASbGncv6YYD5cXHKMLf3++aiSX8aodq/1sOn3AQqxvLZZJx6dSY7aMG9DJP/ZZyvmsc
	fUCMA2UU/Bre3ChR1fooieFbhRd7w5WnQ4WVE8US0i1LtTKgryNBe/+xZadw3SVUsKUP0vldywz
	5AwN8fggGBfovY/vKeJwYPquyDkwlqoAEMrQ==
X-Google-Smtp-Source: AGHT+IFfyHVpl5KOssQDfj1VF9PKEb6eRaVwPXBHdJuglfUTXJlEBLRN4J2v8X9ZotLnlmipHWNU4MoJGSrUZ7zPwjA=
X-Received: by 2002:a05:690c:4b8a:b0:70c:a854:8384 with SMTP id
 00721157ae682-710d9df47fbmr63637507b3.11.1749067779039; Wed, 04 Jun 2025
 13:09:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250513-gicv5-host-v4-0-b36e9b15a6c3@kernel.org>
 <20250513-gicv5-host-v4-1-b36e9b15a6c3@kernel.org> <aDhWlytLCxONZdF9@lpieralisi>
 <CAFEAcA_3YLMSy+OsSsRayaRciQ1+jjh-dGzEjrh2Wa8BqdmqrA@mail.gmail.com>
 <aD6ouVAXy5qcZtM/@lpieralisi> <CAL_JsqJ5N2ZUBeAes=wexq=EstRSZ5=heF1_6crAw76yZ9uXog@mail.gmail.com>
 <CAFEAcA-JrS0BiT66iin-pRVFadrY-pnJZ8TkDNxcjErknSCnUA@mail.gmail.com>
 <CAL_JsqL7x53an2-MaLHP5tfVXb4JxT8ORUMaA8pL-gMsWLJqkA@mail.gmail.com>
 <aD/0tuak7Hja8k4g@lpieralisi> <878qm7ec19.wl-maz@kernel.org> <aEB10JC1bwwOJfWh@lpieralisi>
In-Reply-To: <aEB10JC1bwwOJfWh@lpieralisi>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Wed, 4 Jun 2025 21:09:27 +0100
X-Gm-Features: AX0GCFumJ6vnRiYJlX3zD1JbrCnyiM_8nPMgYGa3ClGdrZqd-3fF2TLHNRUNxvs
Message-ID: <CAFEAcA9xBJiRQ+UMvyOSOqOwMPYrjja0Vhk8j4_0V7f7_0ETtg@mail.gmail.com>
Subject: Re: [PATCH v4 01/26] dt-bindings: interrupt-controller: Add Arm GICv5
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Conor Dooley <conor+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, andre.przywara@arm.com, Arnd Bergmann <arnd@arndb.de>, 
	Sascha Bischoff <sascha.bischoff@arm.com>, Timothy Hayes <timothy.hayes@arm.com>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, Mark Rutland <mark.rutland@arm.com>, 
	Jiri Slaby <jirislaby@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	suzuki.poulose@arm.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Jun 2025 at 17:35, Lorenzo Pieralisi <lpieralisi@kernel.org> wrote:
> Can I ask again what:
>
> status = "disabled"
> secure-status = "okay"
>
> for a device means in practice in the current bindings ?

From software's point of view, it means "if you're NonSecure,
ignore this; if you're Secure, feel free to use it".
From the point of view of something creating this DT node,
the usual reason for setting up a node like that is that the
device is only present in the Secure memory map, not the NS one;
so marking it that way lets you tell the S firmware where the
device is and also tell the NS kernel to ignore it so it doesn't
try to probe for the device and fall over when it gets an exception.

> When I said "a separate problem", I meant that, extending secure- tag
> (that applies to the "status" property only) to cover other PASes is
> independent from the GICv5 binding *if* we define, for a single DT an eg
> IRS device per-PAS (with realm-status, root-status, describing what the
> reg property represents. Is that what secure-status does today ? Does
> it say "this device MMIO space is secure-only" ?).
>
> It does not look like there is much appetite for tagging the reg
> property either and making it GICv5 specific is a shortcut IMO.

I think something GICv5 specific is not unreasonable.
secure.txt is careful to define the general principles of
how the naming scheme works but then to restrict it only to the
specific cases that we've blessed as OK. I think that's worked
pretty well -- it's fitted the needs we have and the GICv5 is
only the second time in a decade we've had to revisit and say
"we also want XYZ" (the first being /secure-chosen/stdout-path,
in 2018). I think that's a pretty decent track record. In
adding whatever we want to do for GICv5, I agree with Rob
that we don't want to accidentally open the door for more
general use of secure-reg or whatever on other random devices.

thanks
-- PMM

