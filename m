Return-Path: <devicetree+bounces-238924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A734DC5FC97
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F2771357A3D
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 00:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62B119755B;
	Sat, 15 Nov 2025 00:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kOhzwIcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574A143AA4
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 00:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168290; cv=none; b=ZHDMoJUdLb1hpjQwqE0CCrg1EzRlmbXZouelab7YPnCCPW29t/wy7/1RdqcFDdI5cAi3fzrUsv0Os+IZhuoO0A9AC+MXoR32iIhyq1trC/BPeRmEvc7zOXiiTQhPvrJaT/DH5H8Kznw7Ov+mUv1b2lverz6SplQtUMMVCmLbC6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168290; c=relaxed/simple;
	bh=OhgMBzBFmABnP0/gJkc/xt26r8btIyn0XQcPsvh2ptc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HrZ6dr7Uv+xsfU1h686TsDQrouFM0XKTmzGd9bhe0ZEmr7ajiElYEvmLUcAVXwB38r6VrnZFks2V+I/l+FPmqn3E7zUkXJkyarwnNJz+sLfUzIToFrPJwPlE87aWaJUIA2USJ7Hvjs8tBfACQeG74WV4JtdrPURfaunHMQwA/oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kOhzwIcJ; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-55b219b2242so528151e0c.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 16:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763168287; x=1763773087; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mEO8hF75rBOxmwN/ro6wDW7KvehJwNDYbmq5YFbJcw=;
        b=kOhzwIcJf2SyKsHF+ZpJ1DSg2DqwE0vc2ldPdwdjX5jkdjEMR6kk1TpF+HYU42nDMW
         LaHNRUGm3dhsC0GiuFec0vyocTaWSzennMxMrcBpUeczZJDJuJLoNEfpowBNTr8X2YYH
         XTCidp/OjmjRjwCJjqC47RzpaHLIIADd8T/9MO7C8MmfWQSe2OhafSg5ji6f9BfQxzk6
         ePjRTkvTsqPvzPmydEeDzlnvLKHBawQJLPuk8fPHB5ERkaSAW+mL3DZsUKSXDeHdeiYB
         g4EGvaAEsg3trY99cQ0f64oPf6bdPnyYmP76nlj4oBJn9zowTq5mVjqLBGZee7t04ZgY
         0vkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763168287; x=1763773087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+mEO8hF75rBOxmwN/ro6wDW7KvehJwNDYbmq5YFbJcw=;
        b=OYVYffVTeddaP/HgTHD4+CYCJrP36lzIZUrz+4Na3wtFShjKYQV+0MCRkjZ9Np5jyi
         pErki/q/T5feaosQIql5CAfRaBHhuXj5J4dwvVvBDCAOyR3AsjnHhpvXIy2dGUEZxtPO
         C4wqDTTYAkj2a6UHt2/GaLrt7OyrKSEceDWdkLN7e4r8tW+AFM6SJEzHteHvEgYu7EcN
         BYBKKxBx97Qa3jyILu3voPfwBbP9LfGwoeIVckEftc3D8As5o4QOTTwnCz94MeS8jZpT
         ywX00KCnxHvy/RvN6Ybe9rzyog5iwUrShFp5KYeFKohVaRI/VNjf0JmR2MuQzte9VIFO
         5yYA==
X-Forwarded-Encrypted: i=1; AJvYcCU3/lCRcE4tIRoNQM8xByRp0yB6LaYTLLF6wKX/ev2txk4AQq4vGOkZ/7CYVCoJScYR4M89H8zMLIRN@vger.kernel.org
X-Gm-Message-State: AOJu0YxzYwUMkCjqo7L1pAI0yUOtAdP5r7zRBbiUD3zFuViIVYv0/kSj
	c+umePWH46U5KBHuLtyPi9m+LxgEk3NvSNpQYtNTRLmoSEBGx+oKETOZY+hX45H0z8tApEa/Shl
	kVnOtZI5vVmoRSVab9xLQCaqcRqv1zY4=
X-Gm-Gg: ASbGncvQcq+cHezG2FRfv+boU4jg93Yixc+tVmqxhTOn+9fMFuxUOcv/mOl/RGEvD6p
	RyfojVjtnixsk9QGtggOv3lCRLhSf8tV/KdGbyg8dcPDGfBF0XyQauVP0/V4LoNBjgkAwqGvH/x
	gHEdrF/7z0kGv0+nN5HRrRjTw9KpEAkANfbL6aBZrPgaTmdJQeeKaEXdVCRbDs/MsdwUXoIV96E
	9tzG3XMEsnxkdmj5poGeVzjzrJtDz25eA4Cqe0WFUtHBNwHCTMbDdt0twHdYFhAGxeRjW8d
X-Google-Smtp-Source: AGHT+IGn0I+Eso4Cl7gDk3Yoo5jaaOT0AQELEpomQjJxykud0vEW2B5emaAfM8xWxt/7WFzYwb97Hw1Jyv5VyD4metQ=
X-Received: by 2002:a05:6122:370d:b0:559:14e2:9fc7 with SMTP id
 71dfb90a1353d-55b1bbdba89mr2374742e0c.0.1763168287188; Fri, 14 Nov 2025
 16:58:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251108233200.2068334-1-alex.t.tran@gmail.com> <20251109-hospitable-poised-scorpion-bdf833@kuoka>
In-Reply-To: <20251109-hospitable-poised-scorpion-bdf833@kuoka>
From: Alex Tran <alex.t.tran@gmail.com>
Date: Fri, 14 Nov 2025 16:57:56 -0800
X-Gm-Features: AWmQ_bnUGRKNx4anGJI7E15WQQM6fLUvzVkG8pZZsuzwuehenpZli6XJcrmAT94
Message-ID: <CA+hkOd5iAwbKQoNM_qhNc1PpNHw0we3S0J1rFG=W05RnSHR3Bw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: media: i2c: et8ek8: document missing
 crc as optional property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Hans Verkuil <hverkuil+cisco@kernel.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 9, 2025 at 9:18=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Sat, Nov 08, 2025 at 03:32:00PM -0800, Alex Tran wrote:
> > Add the optional crc property to the endpoint node for the et8ek8 senso=
r.
> > This property enables CRC checksums for the sensor bus and was added to
> > match the new driver support for reading it from the device tree.
>
> We do not add bindings because you want this in the driver. Please
> describe the hardware.
>
> >
> > Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
>
> Your patchser has broken threading. There is no patch #1.
>
> > ---
> >  .../devicetree/bindings/media/i2c/toshiba,et8ek8.txt        | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8=
.txt b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
> > index 8d8e40c56..5fd30f59b 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
> > +++ b/Documentation/devicetree/bindings/media/i2c/toshiba,et8ek8.txt
> > @@ -30,6 +30,12 @@ Endpoint node mandatory properties
> >  - remote-endpoint: A phandle to the bus receiver's endpoint node.
> >
> >
> > +Endpoint node optional properties
> > +---------------------------------
> > +
> > +- crc: Enable CRC checksums.
>
> Looks like SW property, so not really suitable for bindings.
>
> Also, no changes to TXT bindings are accepted, so first this would have
> to be converted to DT schema.
>
> Best regards,
> Krzysztof
>
Thanks for the review. The et8ek8 sensor has hardware support for CRC
checksums on CCP2.
However, the receiver must also support CRC for this to work.
Whether CRC should be enabled depends on the specific board design and rece=
iver.
Regarding the conversion to a DT schema, I'll follow up with a patch
series v2 that fixes the broken threading and converts the binding to
a YAML format.

Best,
--
Alex Tran

