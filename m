Return-Path: <devicetree+bounces-155797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C8A582A5
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 10:23:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBC023AD21A
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 09:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BDB81A08DB;
	Sun,  9 Mar 2025 09:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ab6N48KY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD3A192B71
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 09:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741512200; cv=none; b=B+gI4sUMT16U4ajDN7s8G0eT0pJ/V0O/MhKZoPeh8DunJsKTBp0kguZ2MPRcdoPBGuM9AiRyVkXv37puzSRhiyfH2KRMaJdwaGrwM5Hc7RDPV/IN5XDtqQg6eJAKHV4kAN1u5m1RHYainVFrv9uo4Y1Ne5iMsLfOF1k2tcLG40E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741512200; c=relaxed/simple;
	bh=64WZrmgyPkgy2YnI7U81yn6KSZ4lJ6AYo9WRW6tDuIQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjAJupv8dfrPnAzTNZJ7yXWiPpgH9ju5CYBwisLlSiDYKnyzb+e0kD2f41ti5YbVfASdV0KDV4hpwvwZaYBvdeaXN2WbifGNNMj3K7/ecnXtUBISzwHb5j2DTFWVVjJN5K86G0+Lb/umewgAVNxN3070Gl2eoiB4C3qy3EMEWtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ab6N48KY; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac2963dc379so19738966b.2
        for <devicetree@vger.kernel.org>; Sun, 09 Mar 2025 01:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741512197; x=1742116997; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WquEMt/nHeDbDu+wCTeJFQKwvIymjPr1TDpYSMcRfWU=;
        b=Ab6N48KYUd0NByEI5BB3psqhklj+00GGIuGJaQNZL4IGNMtzOgG0MyCOJsoSf8Ethc
         T40UWinA5DgG9RXZKSVL8k6xvYFl1N0inDBPZpXwpO1E40NhEwxTTlIKm8KOo+JWTSb3
         Pg2VJe82hNpzRLTxKrZBk1y5bsPdjguKP7H7UTGZSXamqAVnLo7EZXOqACSmksIUsDHV
         VPMaKl6FIKarroYDl1A5Pu3z+UgVDX8wxrypoILOSZ6aoVq3AwBx8+xnKUubS+5shycn
         d92qZronz82QiYKsqo2Y4GbVfbSenxKdEdiS6BxLIAXQ5ip04kP3p2QLHd5ZHy7kGrcW
         Tn6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741512197; x=1742116997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WquEMt/nHeDbDu+wCTeJFQKwvIymjPr1TDpYSMcRfWU=;
        b=EIUAwQcL2H0/XKctNoV0IIxg59d4wjQJcqGYLcz4tNxPwq8WOXMGUo8hXmWEG+YuQE
         Zx08PvBSeOaoJM/YPdb0Ayrq4J1/mEAymWu8Aavb4e6PxRIAEKpl7IrqgOh8FjlJiYTK
         5I6x+gzrW+qhcomlqhIA9N/Tpak8xCVDCkg2ghWT4Wi13EMVoEB7OtJiYQthkAzc4PDB
         45j18FtD+A6AEc73Fk1bOYqiRSPpWpkJPoktyqZ/KNJq6I5dEd6Z+3zguxFK933bZRB+
         qXlvXjXDuriBcXOQgDRIVJlcATNl73ASpcZbHisM88giO04mzPwd9w7d7gEZYmPOlz5a
         jmpw==
X-Forwarded-Encrypted: i=1; AJvYcCXORflMFAglD5ZO+JZUBt3AiLfxF8auuvJQuAlrfdA2LgsVJ1zUBj1bwnsxbCKcz4qQ4UdZv3gZdfVz@vger.kernel.org
X-Gm-Message-State: AOJu0YxsEeAxTLYTEKmPbiE3k4S0bppQv1ZBQC0Kk/IxHolOkTdFkkO5
	36S4LcBOfEaeRZ7EJVPQUyl2HK2F2KKxxYlZBd4y8swKp+rLclT7tGFJCaC8G8I=
X-Gm-Gg: ASbGncta/c4Ni5k3Gwp3Fjb1XBpYO+Ui45TaDYPQkMW1b9Fj9MPbbr8Bj7dzKcC67fW
	4eY0LWWvZ1OOJnMp1obZJQYkON5zbOe0KJDuH7u/7Fd0HcslHQYGFPQykhec/FHSnENUnOSsWrj
	7a0FgqnttjFR9v8R1+ZihpgoYq/Y3DPd7RbMETv6qf2dRQrB4UX9ReQjpXyLEWcQ12x5SdX/GRn
	D+kR+LgjuVHGk+r1B6lc3xgo7H/4DZbCjys1150l7S67dXxGuQ3CCtDcpAx/fkvFp6KS8mZnutW
	r9qoNdc2FRhyawh78NzG1ON/4hpvK/xdz06xhtObCg==
X-Google-Smtp-Source: AGHT+IETCUltWmQN+zLCmKRFkdNtCxZ4Os14U+jDnEz2nSP339omXsmyTsnb1B+RdPyq0H+r5s5iRw==
X-Received: by 2002:a05:6402:1d4c:b0:5e5:b53:fd49 with SMTP id 4fb4d7f45d1cf-5e5e229e46emr24575900a12.3.1741512196682;
        Sun, 09 Mar 2025 01:23:16 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c733fd48sm5071517a12.9.2025.03.09.01.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Mar 2025 01:23:15 -0800 (PST)
Date: Sun, 9 Mar 2025 11:23:12 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v5 0/4] arm64: dts: qcom: x1e80100: crd/t14s:
 Enable Parade Type-C retimers
Message-ID: <Z81eAMoXb9li4lba@linaro.org>
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
 <ea9344b7-6646-4329-b8f6-45d2b51f183b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea9344b7-6646-4329-b8f6-45d2b51f183b@gmail.com>

On 25-03-07 23:03:07, Aleksandrs Vinarskis wrote:
> 
> 
> On 2/20/25 18:42, Abel Vesa wrote:
> > Since the driver and dt-bindings have been alread merged, it has been
> > agreed offline that there is no point of holding on to these DT patches
> > even though there are some issues with plug/unplug during suspend in
> > both pmic-glink-altmode and ucsi-glink. These issues are being worked on
> > meanwhile. Merging these means that even though this will provide external DP
> > and USB orientation, plug/unplug during suspend will give some splats
> > and render both the USB orientation and DP broken. But then, other
> > X Elite boards already have these nodes described, so lets bring the crd
> > and t14s to the same level.
> > 
> > These patches are just a resend of the ones found in v5 and dropped in the v6
> > patchset of the driver and dt-bindings.
> > 
> > Link to v5: https://lore.kernel.org/all/20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org/
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> If you will be respinning, could you please add link-frequencies to
> enable HBR3 speeds, similarly to [1]? Alternatively, I can also send
> fixups once this series lands.


It's already re-spun here:

https://lore.kernel.org/all/20250304-x1e80100-dts-crd-t14s-enable-typec-retimers-v6-0-e5a49fae4e94@linaro.org/

Waiting to be merged.

Lets make the HBR3 enablement a separate patchset as I'm not able to
test it in time, if we want external DP to be part of 6.15.

> 
> [1]
> https://lore.kernel.org/all/20250226231436.16138-1-alex.vinarskis@gmail.com/
> 
> Thanks,
> Alex
> 
> > ---
> > Abel Vesa (4):
> >        arm64: dts: qcom: x1e80100-crd: Describe the Parade PS8830 retimers
> >        arm64: dts: qcom: x1e80100-crd: Enable external DisplayPort support
> >        arm64: dts: qcom: x1e80100-t14s: Describe the Parade PS8830 retimers
> >        arm64: dts: qcom: x1e80100-t14s: Enable external DisplayPort support
> > 
> >   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 321 +++++++++++++-
> >   arch/arm64/boot/dts/qcom/x1e80100-crd.dts          | 474 ++++++++++++++++++++-
> >   2 files changed, 785 insertions(+), 10 deletions(-)
> > ---
> > base-commit: 50a0c754714aa3ea0b0e62f3765eb666a1579f24
> > change-id: 20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-325cdb7b097d
> > 
> > Best regards,
> 

