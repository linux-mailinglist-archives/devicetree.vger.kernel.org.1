Return-Path: <devicetree+bounces-193957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B58AFC5AD
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FD6E7AA591
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC9C2BDC15;
	Tue,  8 Jul 2025 08:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hfeHRS9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9485229DB78
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 08:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963500; cv=none; b=l+Ua1l/K+E2L+p0dwIu4qoLQAvW0KUnbgB4btTtcLTz0NgCo31c8inAVHtymG7lw3Qnl+ht4zb9m4Y7oTxv261rW8QT4vbkR/Urll1nKexY/SadltWKF+q0WzwHNl3zYhfUL+62s/WxtL+XAMC7NNciu7RagpsL/PbKXEhs3Ud4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963500; c=relaxed/simple;
	bh=K3aWinX3PVP5Yiw5FQcueQIu4e5wbM0J5reriCTyZ+o=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=OfL88P2h42kPeIVRy5C8GDsjTSwv/44xjH9g2R7+GK5AGzvxnNqoHjA54258/QjyJx3uBynLC3EP4WCC2KQVBg2zpAnC2h+i+SrzGr+P54TyZ99rbbeD30ElZVM3daLyT/KAfLRQ7d+CGZ1tcCo4mBUXltv6Rw7/Mn1RXVoeyFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hfeHRS9d; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae3c5f666bfso663243366b.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 01:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751963496; x=1752568296; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SbTxGbzVn5eaG424GOYCdjKTORbkvUlYm6kHb9cg2Nc=;
        b=hfeHRS9dK9JfXpGVTfJ/jpmzUIVAlVCFao0McWDCEeiincK6aPJK3W3LW4ysxYmDZc
         DL6iGUeJh48HCFckeLUIb5GqFrM02A/EPJF8fsC8yKouxTSFvTdaQi5YZ6N94MHbRmnK
         ksjLMuyXURlxQvomm0dyyRvLDityalJU2IgRugf47m/vaF4hfhDdAmIOu1wYqBO+wT4z
         NIeNlXdmeBY7p95Dk9f4DEEIpEZ2jRq5vNYhwBZsNLadYI1nLjEUbDYoquWI5XPi796H
         R3MbMClpgzoiiy7BQZ33vuW0lbQN5YTIOCrWrZBaP7/vCjvxr/w+dF3Cy/n8R+Ny7bPu
         MONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751963496; x=1752568296;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SbTxGbzVn5eaG424GOYCdjKTORbkvUlYm6kHb9cg2Nc=;
        b=M7z5JjTOgCf/LO/SCte6BOhJc0nUZw+ksdEI32uZhDCZXclOK45co3UyA3Ioihp5Ve
         hzMIm08oQgk0Sm/jmaJRRsER+wmN9VKQCoQDIRFqe7vj0kRl53BiaWNsl/ZjRpwbTrS1
         Hih7i6vz5j4mDHFdQY1jXCqwcxuLJJiv74RFOR16t3g9/NEtVSmaY4GjPk4sQwte29wK
         fa7H71oNJ7H5YLIfyqic4jbnruqbQF9ssPJBJIMflYsqm7oOqJ2Jtk4mIl0tN2ddQqN8
         CYjlqJkuvsohFE74bWQGEstnfytYoUwgF+x7m2h2CSOEMUvIeRtHAsxJE57q80TTuhHn
         GMQw==
X-Forwarded-Encrypted: i=1; AJvYcCXrVpo2/cu8W3KjQ5M8dKM1tPeB26viiZ6Y/VNFSTLeSuJRY7Wqqbf5X6zxELRV19WziAal43/yT9sx@vger.kernel.org
X-Gm-Message-State: AOJu0YxYOSrLkPkV8vtKYd+QoNgGNEF8I+4FloLX/sSb62Z793GLKA9k
	LlYvzDGlaAEwxiAgVf47OdekqqIsiLo1Yh+bDVZThA82g4kTMB1GjQ1RH15//ZLZ5fA=
X-Gm-Gg: ASbGncvyfk2MScdlZnkNTP2eT98wGpsJDdPMS5xheAHtU0/c8JB+QAStV5xZ+IlUPX2
	OZ6Iy4E9/gGI4ZXRaNuZZLYaB5+1roJ7EoF6HeclTP6pz9XCer+ocfKqzd15ST1ojb8VK4tvhpc
	/3LLVFl1dUwVlAcYAqnkA7So3MGQEQf3cuo6xEs/Gq1RMOKEK8OawWzX3/Buc4+qZH2sycSErQ6
	qYFSJxrFDHojTLOs3PeNyolCMzlR5S+SQnep/W1AZ9AxLmChrZR+wDJeHqdiyq9y43+Ir1Ex/0r
	SBnvbCh5r+VFQ66q/pgh0wwOI+yO23pgrkgnlupArgGNChaSdx7jG5L+r+lGHaMilbYqvhyT4QE
	mhoItPKnhfTiFZkQwHWEi1pczJyYeGGg=
X-Google-Smtp-Source: AGHT+IEm2XH/j6x08TGpkx5iGujBffEeCcav0ZoSdLi8Q5WO8Z9zekT2MKuOG8WCqq09Q57awzXAMw==
X-Received: by 2002:a17:907:6d22:b0:ade:6e3:7c4 with SMTP id a640c23a62f3a-ae6b058b82bmr218443366b.23.1751963495784;
        Tue, 08 Jul 2025 01:31:35 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e785sm840185766b.155.2025.07.08.01.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 01:31:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 08 Jul 2025 10:31:35 +0200
Message-Id: <DB6J86NHFTNT.31MFYDTZ6B4O0@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Document qcom,tune-res-fsdif
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
 <20250708-unicorn-of-ancient-excellence-e8945c@krzk-bin>
 <20250708-stoic-slim-bison-ac55ee@krzk-bin>
In-Reply-To: <20250708-stoic-slim-bison-ac55ee@krzk-bin>

On Tue Jul 8, 2025 at 10:21 AM CEST, Krzysztof Kozlowski wrote:
> On Tue, Jul 08, 2025 at 10:13:24AM +0200, Krzysztof Kozlowski wrote:
>> On Wed, Jun 25, 2025 at 11:14:56AM +0200, Luca Weiss wrote:
>> > Document the FS Differential TX Output Resistance Tuning value found o=
n
>> > the eUSB2 repeater on Qualcomm PMICs.
>> >=20
>> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> > ---
>> >  Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml |=
 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> >=20
>> > diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-rep=
eater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater=
.yaml
>> > index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e299273599806=
3b3ca390e04a03930d 100644
>> > --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.y=
aml
>> > +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.y=
aml
>> > @@ -52,6 +52,12 @@ properties:
>> >      minimum: 0
>> >      maximum: 7
>> > =20
>> > +  qcom,tune-res-fsdif:
>> > +    $ref: /schemas/types.yaml#/definitions/uint8
>> > +    description: FS Differential TX Output Resistance Tuning
>>=20
>> Resistance is in Ohms, tuning could be in dB, so I wonder what are the
>> actual units here. Neither commit msg nor this description helps me to
>> understand that.
>
> I checked and the values are in Ohms.

Yes it's Ohms but not 0x00 =3D 0 ohms, and it's also an offset in ohms
from the nominal value according to the Hardware Register Description I
have, e.g. 0x7 =3D -12.1ohm from the default

I can try and create bindings using these Ohm offset values, I didn't
worry about it too much since the other tuning values in these bindings
are also just register values, presumably from before Konrad had access
to the docs.

Regards
Luca

>
> Best regards,
> Krzysztof


