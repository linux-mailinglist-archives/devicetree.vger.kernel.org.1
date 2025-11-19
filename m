Return-Path: <devicetree+bounces-240176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31746C6E413
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:36:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 3D18D2C490
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 431B634D4FF;
	Wed, 19 Nov 2025 11:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PHlmx8Jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A933334695
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763552159; cv=none; b=aEbu2dkQ8rfIK3MF7zs4TKyvL6q4iMOeh0erEazDqagWadV1PRIXvO2wnbXYiOv48J7u6Ujnek3qu8BO2Mt2E446PSvosSl1Od/SVGPHB1Gq924xbUOqerEOdCArvOgNB7BkvFzi8MNkp/LIJGFy5HFKFJv8JJQglOIwJ7q0wq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763552159; c=relaxed/simple;
	bh=XeetoD9h5YFMO/jwCNj9WxEZ/IVBUdwKo6worfpDAPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oaiqs9P7OTt8zevx833xpbbSZ67EHF9Z9SoYBnZGs8xOwsTHBLU/7zPtOmrhfEzYfKimF0sByknOCx3uGyvYSWohXjpp4o/j36kN/BjPbctQPQ4uswkijCh1rNkcF2d7A5aHCbCjE/AzqqSaJb4pdD+Usau+qrZBxLw063EnvsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PHlmx8Jt; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37b996f6b28so61666451fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763552155; x=1764156955; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mOjKGZlnAXgjmbnxI7QvaAPBMson5j4nh4MkPbAPAEs=;
        b=PHlmx8Jt5vIs0Pvnug1QmJeSQ5mJZAvLJPcg7XqiobEHEwNPbruwQnDhUp+JSuzS9B
         JxwRPIB3f1HMWPOmGY/NzQlUJOplyXYmGzkjduW7sUfVOnEd+BB2rBUDXq8MNHqkOP+2
         ZSYNlwtmpopWVatk9zFLQU7+lgizzq0I+fukdiq2O7Tnzc2ksSutSKDlXOVR+jqBdPWP
         qCpK8cA+Iimqah34r/DWOK1MtFc/JpyVJjlgPAAPHv0DR1KcBx/83zieOztd4jliT/5p
         DFJeySbm5rLUFaNqxr1PDR/Kmul1+fwyuNg3AeG3H3tebcTV5HDQR6FeRUaZHkupoOFA
         VwOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763552155; x=1764156955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mOjKGZlnAXgjmbnxI7QvaAPBMson5j4nh4MkPbAPAEs=;
        b=Q6+FJk6GfLfYlkqqB1A4idaK5oFJp5OCk/tHIK7PBhFVxJsZYZHvGs2d1ew95qPfiF
         PJW1jJKJHw7HuHIEkmPzQqEx3snv9FH0OPMgl30Ek7kuJkC2SjpyQZdCT6b2eWWEXemB
         kbVcCZIbSOOKIlVlmzXeGFuOLM6Jh4r5opDoSOTG1f0WG1AmiPNz5p9Lpd8HYiiRHzui
         KUQtyLaQ2CJgOUk5RY797If0gCfTILUb1BPWpTDXCEUlaWLPN8L+bs7CHNCML4vP1Ct1
         dU+vz8OD7rWkIbGt2ICYxcEx+hQft9c0+Ad+Hzaw2PJFn5v2530CGHmSJEnhqYMCMmlb
         UURA==
X-Forwarded-Encrypted: i=1; AJvYcCXGdEeeg9QiMEF2B0Q3K4Kjro/EWtvHdNhmOxNRJ6R2J6pTVFw8UieQ1b/3VUeaDsDTSGvJxTplxfpy@vger.kernel.org
X-Gm-Message-State: AOJu0YxAEWAdnP1gqZytSeSwVBSpRXe4A+96DNWAyDoEkh8tNo8Kmbdr
	d97N0tAbGvkKxiSiRUwWq0NPpErm0K1z/WkeZp5uUADbTdQA06TouxBV+CQfad5AkLTv3tF7YCY
	YuayZdAp3o0Hp+BtqW5No5m5LAau6w6g=
X-Gm-Gg: ASbGnctkJi5CAAMa5F9+xAO/HiPY2VdD5Mm+sh64K7v6Eiz9TGjN7sq7PyRWr7Fxvfz
	TDMD9HFnjPcNHQbzD+BghZWvUyUMYabX3qo1d9Qq3E1XVzem/+SRnoSsfh0bX7vuniuxa5stl++
	4MUdNToMQAZdGCynR0Q/n9Jm8zIVaVx/WPvMzC4GAaRjifOtY+uykmZI/d5O8XlUQU7iJwj0Wmw
	iNHwCW68mOBS6IUBHYLeBNhZhrwdC7cmvNoctq3CJcp8XNWE2E3ksZp5uaPLtj0ub9uVA==
X-Google-Smtp-Source: AGHT+IGLB87l3c6YQaMAVvCIZHa9Iaw20ytZFxmWh7hR2zupdPWm65PeLgAMP+NHumhl01ckY9NXDPo9Y80ggn2lAT0=
X-Received: by 2002:a05:651c:20c6:b0:36d:4e3b:f1e3 with SMTP id
 38308e7fff4ca-37babb619famr41318181fa.13.1763552155407; Wed, 19 Nov 2025
 03:35:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cf6e08dfdfbf1c540685d12388baab1326f95d2c.1762165324.git.xakep.amatop@gmail.com>
 <176307584246.496508.12079514999315183214.b4-ty@sntech.de>
In-Reply-To: <176307584246.496508.12079514999315183214.b4-ty@sntech.de>
From: Mykola Kvach <xakep.amatop@gmail.com>
Date: Wed, 19 Nov 2025 13:35:43 +0200
X-Gm-Features: AWmQ_bneNTA_MoPN6LwNuV_BB7nADqcezocvI0r4IOjj8wtQr6qn-bFxwXAym-o
Message-ID: <CAGeoDV_R8GBSs9qjY4772ymU=LsLiP=LTTx2-4uBLkB2PAuVhQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V
 regulator voltage
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Muhammed Efe Cetin <efectn@6tel.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 14, 2025 at 1:18=E2=80=AFAM Heiko Stuebner <heiko@sntech.de> wr=
ote:
>
>
> On Mon, 03 Nov 2025 12:27:40 +0200, Mykola Kvach wrote:
> > The vcc3v3_pcie20 fixed regulator powers the PCIe device-side 3.3V rail
> > for pcie2x1l2 via vpcie3v3-supply. The DTS mistakenly set its
> > regulator-min/max-microvolt to 1800000 (1.8 V). Correct both to 3300000
> > (3.3 V) to match the rail name, the PCIe/M.2 power requirement, and the
> > actual hardware wiring on Orange Pi 5.
> >
> >
> > [...]
>
> Applied, thanks!
>
> [1/1] arm64: dts: rockchip: orangepi-5: fix PCIe 3.3V regulator voltage
>       commit: b5414520793e68d266fdd97a84989d9831156aad
>
> Please start new threads when sending version x+1 and don't append
> that new patch to the old thread (less confusing for tooling like b4).

Got it, thanks for the explanation.

>
> Best regards,
> --
> Heiko Stuebner <heiko@sntech.de>

Best regards,
Mykola

