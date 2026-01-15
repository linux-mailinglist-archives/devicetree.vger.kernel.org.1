Return-Path: <devicetree+bounces-255345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F0CD2261A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A7DC3026C34
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D540E2D3750;
	Thu, 15 Jan 2026 04:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VAqV74t/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4703A2C237E
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768452646; cv=none; b=VF9bqLUhnW2GHmngFB9g5xUCxnRjMqzHD3PN9BwDWTQuflIKnUWbZytCGNeUb4kCiwwvqPwP1FXnc7Hms+Cm5s7zwou+I3QCEfB80Swc72DbHmU++hqcaWfHVj8nU2ymXrn8UBoAkvs1mE26C0Bk3k2fu6lHpf/Z0hQmZNHvao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768452646; c=relaxed/simple;
	bh=bwH7TKQitdKzloCZTOTMKs7FMvbuDSsPsScuXO2XnSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DYSU/evCCIqzkXKJnAHRgLQRFeX/zYRnA+rDv1fuYPuhEXfpHWsidBJgjpFzQKDyUoxVXgLbS9TiBro/dYepiWf2nQ+9C9FbAEfQ3v7WEmDb9DDd5qVF2L6rNPtBa7GhHE5bMfcXmKHoUVy/tLKn92S+5DsXKFLcwg502HT7NKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VAqV74t/; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3f551ad50d1so172046fac.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768452644; x=1769057444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gaxkG3FjcBbVuAmcMeHgDVclONwI7K7qJ4Bb/eS73xU=;
        b=VAqV74t/w3hqcpKjdurhyCLdERsArrjqT4Nh7ItvYgIORi1xyGz6fnccOymsJYnO4V
         HUAAdkaLwnEOoDYkapMZEsrDOruvgYHBj8I0lDbmAAG+ddByUstdzjnmnLn1ycivhusD
         sTKkUZ2N2+pDlinagoD5mNzDjZS2MVofA4Em1tE+0LY/PnV84xn7DDfZwqy2tM0RKue6
         TOOTvICAZfFAnJm3hbjS+apTERfDw7KcFFJe/NxnamvrY1whsXqHLx0MucFIdKF2vX7O
         QwLCuSRxYtRIoBhHxFjMyJy91QEtxTiVGUwEfVSnDeHodnz/YkAKeIg+oE0dTXmgEAPD
         Z/XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768452644; x=1769057444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gaxkG3FjcBbVuAmcMeHgDVclONwI7K7qJ4Bb/eS73xU=;
        b=VYstZz2obyvWUNuTDBiIp15v4wn2aw9DD8fdYWLq8WAURjUsWrrtd+42QM8zlkyJax
         jurMKsOdSoUJLSY5xcqjQN5W2fZ7mYKRBGGrJLtcWBjPURiiqAUa/Ap6eH7SKSc+DMx4
         yB6FInxo0WmqotzMPsbJE6EnN1DKBld16U6LZBPtkr96FRPAVTx/mi0osfcXbUZl+isz
         mamA3x1i9VZ1wGA+o+hsPPCUBzEwvDz3sOZmNXcG6RxkIYoWRMv2FwLBt0k3TQvfWj+X
         LtYOmklKXGS363qUBQVGFpbs8aSlXMiA4I4HAHUNl77trgsKAa2dL6BqV59433Qi/2fv
         Ku0A==
X-Forwarded-Encrypted: i=1; AJvYcCXh653ybptSn1dNGvcsEJgxM6trYuZYdfSsBi7A1japg4OE+3XlK+gJUqNSc29RFour3nvvP0/BHJvM@vger.kernel.org
X-Gm-Message-State: AOJu0YyWCN1xxilVURHTrlbBkpU7aPVuUOtTft03IBZ7AzbflEye//IB
	lpnfOxlnOt65d4lt8g/BjydDdlcdz6QEXH4uvABer6xXdQ42ox4+xMZz
X-Gm-Gg: AY/fxX7+wx2KrifN5peD+9mqlUbYePsdwGV4k3WS0Pof/LblN4RChdoy4i9FUDXJ+tB
	FaPRd8uYK5hf+PCFEDcXXThf+j042Ay7CP6nZOjJrvy3k4dlHUkkeyp3lPdq6RgpVxlYSRG1hOh
	VhQqhnvmIn2WZ+w0V9nmE7KenbKurYSXn9ITElxASVf6KtoSreOs+TewlepVr6LDO0OXwmR2M4l
	6X1jIBFsifMrsI1RAo7dmtPWNB2oEEdhhMPr/3F1FB1hL2yOfvsGgVfPPOWJFSzcpHL0+tRZ+i2
	C8+YPjznR/OXGO78iQDclchD6eEnFwn9tzqNKfaQShM5ahIyhNVeJaTn1IPtwxdk/KywTck26P7
	bs0vIF3Ql4N0pRuoOd305BR7Rao+yXJLtlHL+3Kevq8huYgVdLRBlk9QkE6HjtC+kCPlFrLW1XA
	vJUGsNzf3Bf2duyrUqL6iV5acsnn1vqwHtXS6Qg0pc8ok4QiJPaXmmzuf4+z3aThys4uqw5Sef4
	PJHRofhxS3rB73ZEAPRIHMEEJG01Y4=
X-Received: by 2002:a05:6870:c0c3:b0:3ec:4266:13f7 with SMTP id 586e51a60fabf-40407197688mr3586919fac.29.1768452644055;
        Wed, 14 Jan 2026 20:50:44 -0800 (PST)
Received: from nukework.gtech (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de8cbfsm17750746fac.3.2026.01.14.20.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 20:50:42 -0800 (PST)
From: "Alex G." <mr.nuke.me@gmail.com>
To: andersson@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-remoteproc@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
Cc: mathieu.poirier@linaro.org, robh@kernel.org, conor+dt@kernel.org,
 konradybcio@kernel.org, sboyd@kernel.org, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject:
 Re: [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native ipq9574 support
Date: Wed, 14 Jan 2026 22:50:40 -0600
Message-ID: <5206383.iZASKD2KPV@nukework.gtech>
In-Reply-To: <cfa31127-2208-4c65-b8ef-3b5d534e050b@oss.qualcomm.com>
References:
 <20260109043352.3072933-1-mr.nuke.me@gmail.com>
 <4814455.tdWV9SEqCh@nukework.gtech>
 <cfa31127-2208-4c65-b8ef-3b5d534e050b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, January 13, 2026 11:42:45 PM CST Vignesh Viswanathan wrote:
> On 1/14/2026 9:24 AM, Alex G. wrote:
> > On Tuesday, January 13, 2026 8:28:11 AM CST Konrad Dybcio wrote:
> >> On 1/9/26 5:33 AM, Alexandru Gagniuc wrote:
> >>> Support loading remoteproc firmware on IPQ9574 with the qcom_q6v5_wcss
> >>> driver. This firmware is usually used to run ath11k firmware and enable
> >>> wifi with chips such as QCN5024.
> >>> 
> >>> When submitting v1, I learned that the firmware can also be loaded by
> >>> the trustzone firmware. Since TZ is not shipped with the kernel, it
> >>> makes sense to have the option of a native init sequence, as not all
> >>> devices come with the latest TZ firmware.
> >>> 
> >>> Qualcomm tries to assure us that the TZ firmware will always do the
> >>> right thing (TM), but I am not fully convinced
> >> 
> >> Why else do you think it's there in the firmware? :(
> > 
> > A more relevant question is, why do some contributors sincerely believe
> > that the TZ initialization of Q6 firmware is not a good idea for their
> > use case?
> > 
> > To answer your question, I think the TZ initialization is an afterthought
> > of the SoC design. I think it was only after ther the design stage that
> > it was brought up that a remoteproc on AHB has out-of-band access to
> > system memory, which poses security concerns to some customers. I think
> > authentication was implemented in TZ to address that. I also think that
> > in order to prevent clock glitching from bypassing such verification,
> > they had to move the initialization sequence in TZ as well.
> 
> Exactly, the TZ interface is present to address the security concerns.
> Also, as I mentioned in [1], on some platforms, TZ might access protect the
> clocks and registers which might prevent the remoteproc bringup and throw
> an access violation.
> 
> We can keep this support added for IPQ9574, as it is good to have, but can
> we keep the default compatible in ipq9574 DTSI to use the TZ interface,
> which has already picked up an R-b in this series [2].

I think that's an acceptable plan. For the TZ case, we'd have to keep the 
clock framework from disabling the "unused" remoteproc clocks. Do you think 
"protected-clocks" property is the right way to do it? Which series should add 
it?

Alex

> 
> [1]
> https://lore.kernel.org/linux-remoteproc/21468f66-56df-43ea-99c2-7257d8d6bb
> 7c@oss.qualcomm.com/T/#m688033ab79c63a8953e38f5575d1c0ff6b37b13a [2]
> https://lore.kernel.org/linux-remoteproc/20260113092021.1887980-1-varadaraj
> an.narayanan@oss.qualcomm.com/T/#t
> > Alex





