Return-Path: <devicetree+bounces-142223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B792A24921
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 13:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 266BB1886586
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 12:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E731ADC6C;
	Sat,  1 Feb 2025 12:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dR9aU7Ab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84F1E519
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 12:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738414070; cv=none; b=TSSaoTCaOzaVvUQNONuf3C/6b2+/ADixeCh94Kpvn12QuJWXtqAQp7XCFA2UUe/jS+ji7Kb/m+rzoeziik833PH6tNuNyqMOfcl9zgflnSZGFtrxZdB9aNiE0MHiCGircjYbck0FgW5zLyYjtsOdDFWkkbzvMvPdlwKEAn2HWEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738414070; c=relaxed/simple;
	bh=4RZ7OWUNYW5slaMOvnaTZEv0LT0QnKX108Pvk3JR9fI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RGPqN/k7f2qRuyVzbVFtMx1JtAHe0zlxq+di8fHGnbNe0txOJC1c+sd51uT3ovdr4q3bO266j+VCs7DYPsiHoEqrB5vJev1cEd+T2oR1Nk1SXOAuSVTAvJjy1TBkBT2Vojs4221C5orM7vCtOiM8Ett3E6NvgBvv0JR5EgoLGiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dR9aU7Ab; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-543cc81ddebso3304807e87.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 04:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738414065; x=1739018865; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E7U/QY0AwysjlkyJl/K85+VbcTx0/u5THnr6ChZjWiM=;
        b=dR9aU7AbxafwVrprWCUJ8NE/NHf8HV50uNkOdlz+V4sapnL5kQFmO6pEk87IXsE13s
         yc82VvDgDH8wYrR7yqJxt4R0TiLadmO6TOOGspSFN/qA343nXTnLh4qVjuapTD7v8Vzl
         vk4X7llsCDKpsYLsQQXZn68c5eqTrcUD69pa9Ul+7n0Wq7yC+oOF2wS9QV4mkIIfTp8v
         Soe2t8Fufd62LqavaXWA+cG0jROTGxzaKv7i7kXYV82mDQ3Yl/tuwvnfWDtmiUdUb7aO
         nu7qoWqW19JJPaJzeC6ycfLvqWW2tLO38F2sQS5j93z63vBtHQPPuvDvoMzjiII/Lpl0
         qPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738414065; x=1739018865;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E7U/QY0AwysjlkyJl/K85+VbcTx0/u5THnr6ChZjWiM=;
        b=qJJraThU1TKL+vpQKHiWwY2D49DE/qjF3375ouhc37SkpsmaR1QzKSqEQ42jv12zk2
         7Cp1B2osKNRZReI6d5QvGindNp+cBcXTzDQYYQYvyhMIpQeCPaV/Ba5hdEQmiYnyRPa5
         m74+Q1ZwJm8xNiJ2zTh1HjOGEeGipd2ohHRSy+NqBYsPD173H3ey2QCPT9uO1szYQCsS
         UsFkyOQAVmG0n8hsvJOt/MKynk4lpkUjxDzOp/aX0KXcwwTsc4NwrvLY7+thRxTEhVrN
         9bwvbmp39NtKRhM8iKYwIEXX5MTMnfe8s+e9LEExZTf7Tf69uWUkgUD2QC+4zln1l82c
         dW7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqoNkx8zavQduH+wf06ObrqKIJXEef5g7F6eowCg/kdzi73ObBXoFjFvIaU4znEYiSoJ4FD9rf0KBK@vger.kernel.org
X-Gm-Message-State: AOJu0YxHJIeGVKkkL15qHTkeMMm6RwXtZYhbcxpy+tjKvEZqdoADnM1T
	2WhwYEZUy1RrvuNold0rZ+545KnxSWA7CdJuaZCsji10PmCOWYBmtsXgitYGJRE=
X-Gm-Gg: ASbGncuytDmECMFhVhRm5f4p9CEDUt38ttsYjUZUK7nA8zA5G0ZWdwcFaBCY+l93Pik
	4/qPq46iLc84jdpmXQIph28SqiMwLDoR3K3bpJ/BQsn5Dnvmmdl8goQqExKE7um6DJjTJyh98oY
	b6573fCrx7BbEtESNNoNLpiB3VI5t8fliXblohAyT1v+boTLfkb8UvryOjoYAX2YNg/hlSZSQRo
	BJ+Ov1nqQfOe3/Ms5Qx6aS9o9GILH8j6GSvYDKCPwolpiI3Nv0Q+TIbcKIG1bhYlEhhJrBbcT1+
	H73cr7fm4W0X8MY5/w63fljngwwlw8j7dlfkPy+YuZNTwexGXxDpsFTlRdCWYlITMDLTHbA=
X-Google-Smtp-Source: AGHT+IEy2qDiVDwdoHC9BRZ37NSRP2KIMWzIo3wkTY5DJjgfWOTjn3aNna7i19+0q/ldZYCNWbFmWw==
X-Received: by 2002:a05:6512:234c:b0:542:29ec:d5be with SMTP id 2adb3069b0e04-543e4be0016mr4629444e87.10.1738414065247;
        Sat, 01 Feb 2025 04:47:45 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb06desm741428e87.145.2025.02.01.04.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 04:47:43 -0800 (PST)
Date: Sat, 1 Feb 2025 14:47:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/4] Bluetooth: qca: add WCN3950 support
Message-ID: <whxrzliiyqsceodr452u7xf7zlo326vygiknpiydq67vp2le7f@kggswwh4hbef>
References: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
 <20250201-rb1-bt-v1-2-ae896c4923d8@linaro.org>
 <13d5026c-3274-4b90-b941-22f08a8ebdc4@molgen.mpg.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13d5026c-3274-4b90-b941-22f08a8ebdc4@molgen.mpg.de>

On Sat, Feb 01, 2025 at 01:15:29PM +0100, Paul Menzel wrote:
> Dear Dmitry,
> 
> 
> Thank you for the patch.
> 
> Am 01.02.25 um 10:18 schrieb Dmitry Baryshkov:
> > WCN3950 is another example of the WCN39xx BT/WiFI family of chips. It
> > requires different firmware files and has different current
> > requirements, so add it as a separate SoC type.
> 
> Is the firmware publicly available already? (In patch 4/4 you write, it is,
> and I found it [1].) I find such information helpful in commit messages, and
> also the firmware names:
> 
> •   qca/cmbtfw12.tlv
> •   qca/cmbtfw13.tlv
> •   qca/cmnv12.bin
> •   qca/cmnv13.bin

Ack, I will add it.

> Do you also have a datasheet name to review the vregs?

I have it, but I don't think it is public.

> 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/bluetooth/btqca.c   |  9 +++++++++
> >   drivers/bluetooth/btqca.h   |  1 +
> >   drivers/bluetooth/hci_qca.c | 25 +++++++++++++++++++++++++
> >   3 files changed, 35 insertions(+)
> 
> […]
> 
> The rest looks good.
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=421017641e6a6ef389190ac3edf67885183f3de0

-- 
With best wishes
Dmitry

