Return-Path: <devicetree+bounces-247541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F446CC8B0C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D96CD31C3B2D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:53:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF3732D0C8;
	Wed, 17 Dec 2025 15:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="g3b439YK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E0C33858A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765986682; cv=none; b=l243FhV2eh7mdAwR88Pmh82aQecAsUw4a3BpFsYm0tFhvI1NDr5r7Ayv2oUx75+3MXjCUfwRK+ZUIbCEwyqIqidp+2FATqCnNB35M1ZABGiDhLiRUo3TiA3nVgkdreNbSHBS2FE0ow/V0aytAGxnaHF2XV3GHHGS8adzOqklazk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765986682; c=relaxed/simple;
	bh=RRSNoCwWSkSsSJSStXarDS9OrDXxoAI3tdsIvcS6S/E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sT3+Lfhc809gdlAlnpdxAdG78EZ4Urdv/v6H7MG+orKUUc/tAqybxOPeRZ5yZs3TTlP7TE5aF3/sy2+I+VBzvBSWprb1TNFCtLt3WY+mks6zi0cFGAHRSVsQ1AnM51hbTGSOstsFSyvS1QHdPZvShTGFTZkHs59lolI0Y9m/Iq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=g3b439YK; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29f0f875bc5so78367665ad.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1765986679; x=1766591479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UaQln5KFChsYDlbyGz32xYd/pKZvVrs4NRGdlUfoF8E=;
        b=g3b439YKTZvFel6P+68l3ce16QVQk+PGFjAtRnMdKA6CpkM0Go1EcDGwpJAqo5VuKo
         D3VbpOjfbnmpfCyModVoXvFJaLcx+aaRWhr2AhXlfJqAd9fAtLXuk6lnclsHAReViSQ5
         QtPD7MWgFdT9gcelzIbqtQ0UsXAWCTuKx89TceSOzsPCa1c55xkBbFZ6tyjmv7+JRZQ8
         mYzNhcJ8knWUjOSBOdtW9Go9v3vQLDrzCVO/DMxVILG/TI2aq2NWbyUdcSn0VACtpAEO
         BWE5irZ2tffErqMURB5QEeNLIgLbtNNPUWm3HFpJFS6PNqgq+dHTlLN/onGvJNASjuBe
         tLbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765986679; x=1766591479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UaQln5KFChsYDlbyGz32xYd/pKZvVrs4NRGdlUfoF8E=;
        b=oXR9+xhw/VoxoirwLh6Mol7GdOMLPa8XC8q9gUJEVKVyiTN7D2fNPIAOGxvinpxM8e
         uEBLeE241s23taNoDz8yfhkt5Ep4euOtwCtRKfKXo9lUi0TnAXJRKINAPSRM0dKUX9R7
         +h53u48i6gEoVAPHWBEUjrxVgQIowTuMPhjQ4rKJo7tEaJ9tQxeKW8NbQLqxVa3aPFsF
         BghJ7VR1T4Da/znxjEEpA4efUMG+1Sy+rsrLe+wmNir1lU0IKjuLlNpl1j9XNQZeTW8C
         qJL1IqKm/Psxmcw1YkdXspzvcKHPRxqse1vcDJ/Y2ACjMk9HZUYY9tyRXkIcwfFDi74d
         Bv8A==
X-Forwarded-Encrypted: i=1; AJvYcCVPFaQRqHPRDXI0mBNu9kEQx0QjbaWdTVGdj8gz3kYhVXcgJkJWVuuCDnEvX/2gsT9GrDorKM3kaS6l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9ZVs6OczsuJwXIryzDLQ2AvvoO5NX2+HKZphogpqsl69bo5KX
	+7R9ZIvCTzALREKE9NFdO7V9BKyEeqLv0/aIzfiTQY4IurpQHDIqXalWE4lGS/+RDWCnOiPpSaI
	jZBqRFFj7iVjyfADceDAoMbq3GR7pi1Q=
X-Gm-Gg: AY/fxX4eZ0KhtDln3Xo5HwVDAW7/l/Iib5wpb15WuhgbXtUwpnuxIEZS280Co5Z7Vz7
	dj79nbko7l9IF57IOOcP1KwubJSYgI0j/pcA6D2hhdSbLXKkjGCjZEYHzT89bFX37Lo+SQiMQna
	BQ0/u8e3aZT3BD9DnbUomHeiBwfXFax5VjKXnPvijyI0l/TSVzBuQp2FI/WGUDxKq6OL2pXhrja
	Te/dgTUWvD2LKLx0Fmtxl0V8xmtwqBvZikzybV+dGDrBBOOputCcKTKebhwRwpB2JPwMhAaW8iZ
	RtjiH2L3drgQ
X-Google-Smtp-Source: AGHT+IG18aJElwDN7YRoQnIcAwDG0065E0+p1N7BsBoJnGjywb6Nug0W+C/xZ5Tt8D+SSlmv4DAlXZUSoIL+EflnzPA=
X-Received: by 2002:a17:903:41c2:b0:2a0:9923:6954 with SMTP id
 d9443c01a7336-2a099236ad5mr145593875ad.27.1765986678903; Wed, 17 Dec 2025
 07:51:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251127-reset-s6-s7-s7d-v1-0-879099ad90d3@amlogic.com> <20251127-reset-s6-s7-s7d-v1-2-879099ad90d3@amlogic.com>
In-Reply-To: <20251127-reset-s6-s7-s7d-v1-2-879099ad90d3@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 17 Dec 2025 16:51:07 +0100
X-Gm-Features: AQt7F2p7Wlo1bqa7Hg62xU3xs1iBlgAI4mGSUgZiNcPZaNc3prffLkE7u9Mu5-Q
Message-ID: <CAFBinCA19ws1OmfZLh+OSmiEuvY4owOKyzFpaz5KO6E8HaKmmg@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: amlogic: Add S6 Reset Controller
To: xianwei.zhao@amlogic.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 27, 2025 at 8:30=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
[...]
> +#define RESET_BRG_MAIL_DMC_PIPEL       167
On the S7 SoC this reset line is called RESET_BRG_MALI_PIPL0:
- is MAIL <> MALI a typo (seems like it should be MALI)?
- and is PIPEL <> PIPL also a typo (I don't know which one is "correct")?

