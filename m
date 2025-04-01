Return-Path: <devicetree+bounces-162223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9F4A777C9
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 11:32:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDD41162621
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 09:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64271EF37C;
	Tue,  1 Apr 2025 09:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Q+/vI1Sw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8232AEFE
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 09:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743499962; cv=none; b=GAYyd4NN6rvSCoA9XQFCkJksKYpU9lZzobt2GigrO01ngjko6Adonc097w4f7/DlGbMEHw0vhiqjFRKgQjW8/OO3VEeVL9wCjIZ7WNCh8Ty3rn53pNmyRFbuGsLxox69eod0I9YXgSEGGExsxREWOSqZ/3XrERzQvJBU2rmgzv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743499962; c=relaxed/simple;
	bh=N1MnFFisJ8cMoy9BLzrQr7gNzud5JLemazDWM0tzY0g=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=SfIgP7GX5VN7+ZwI2V95yLB9zViwqpezWcD6qbOik1nM9t9yiHABUtLLk8HSwpp+eXTHOj6jnSinpA3dwP1t1/ihXnhonKGIr16fPfkFAqEQm9ot0K6JlC4ABJroYElIWJODdNfi/fk5bV4ozC95WaZuYecc+aZRl/UOzY2ItjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Q+/vI1Sw; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e5e1a38c1aso7177924a12.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 02:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1743499957; x=1744104757; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZBzvWcIsDBo3G9LnKcTDplA9cLCR7b0coAB89MP6E0=;
        b=Q+/vI1SwRfZWQwoY93Fy51LnPDjMgpLxg7Fx5/i/+OcCPOLJTd2S5rRZCcHmWAudRv
         q0UckMmJLRxFRPC7WUHc2fnEWhQCg3HO/sWTSFkXHnpyO/aabcc/w2tAfdirEaSMBAWQ
         STYR0fzRQpRyPgsI9SoZnWGFlatiNT7VyM1/DWCh9G4GnIOpJ3m6zWPHPES15A51UjEF
         +D/bxbOosb60o6frKyXoJOVS8mmJZZlKJcvKZOuIuS5pNffzCYzD35xPr26c/esIEKzK
         vJrBkHtJ4yCrpPZ7r1MP852RJOOoEpbScRfHMTGCVPvQQE4serwScgJ21sog3UWp0i6S
         V7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743499957; x=1744104757;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OZBzvWcIsDBo3G9LnKcTDplA9cLCR7b0coAB89MP6E0=;
        b=MsEErm01XnahvAdS3WFSKG0qmzAnVfv2a3ME/tduLUubRLSoJeRSMUKJxYHldRov/I
         bpW1jpCA01Jp/8wiJH4pgQ6/AA2sGUlKkSaK7AD2dsqLHI1OEbshuXpGuk6+EHLutiLO
         AudnpiVUXossg5LYZ1ctGd/2oXxGt9z6zvXkzHsXbVq85kntRlWR/oCveImFL6VErEpd
         hHQCNlxLkPw1diC6xu1tjVSrMb8OSR6atzmolXzvMesa1sMZ2GN0X0QY7T1W3hk57+wZ
         kvXHPYrZoHfKF7ZpP+jh/LEvDcnkNEZGR+dApah3csAjDwVlNl73VFibBzkspzvVmiqQ
         Clyg==
X-Forwarded-Encrypted: i=1; AJvYcCUTrZl+jLiqhlgOWJA9OPn+Feve+yN2XDmsatK+DZDhO0peFsAqHdfalnNNEXjYlXM40UF/IOgDWhxo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoof7160PIO8HzXY9ddk/JpdM9/EugRWMzUjNlQpnAgBodF8Lu
	43BE87O77D0/Uv580eAF+h5SiKRIjmNtR7RRhIwPXKdkE0RmJwvqUa+HLYeWH2U=
X-Gm-Gg: ASbGncvqlMo3vLL/hlJS99UO3tlGBm6nH0iYa0ZmAbrlZVF1AVYMm94IKw3rOEdp+Cj
	HIWonWrM9DrtNg5pChVQ5W+33rgQZY1OqpeEMU1oly5i+rupr0KmdBMpv/NITLjEabFz8agxcJ1
	h8KjN5PSISRz/mC/ECrFaj4iFTcY7T2MrtCCLhVU8qQOmd8FR2/KREShjnsdVSJZaREahW3VJjR
	k5anKneF4D5YN4qE+N9OjbYWOF57lHeMgkRYnnpXEehmZWz5UfAVEzzJ8CBC6G//502DyQc6tGH
	h2idzgBmyTumH4jRW1KoKKw3SbtOUjldU8Z+w1KCLPn5+g==
X-Google-Smtp-Source: AGHT+IFiDVwfIgbHWBVxHJV1fUXGWM172/jD8Iw3qWJRy89QsLVtEytv5j6FHvB1CN3xyra++dE96w==
X-Received: by 2002:a17:907:7214:b0:ac6:d9cb:58c0 with SMTP id a640c23a62f3a-ac738b82b65mr902203166b.50.1743499957495;
        Tue, 01 Apr 2025 02:32:37 -0700 (PDT)
Received: from localhost ([41.66.98.107])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac78bdd54a7sm47785366b.22.2025.04.01.02.32.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 02:32:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Apr 2025 11:32:34 +0200
Message-Id: <D8V75HO8O4CO.33RMUJLKQ7UG5@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <lumag@kernel.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <cros-qcom-dts-watchers@chromium.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/3] Fairphone 5 DisplayPort over USB-C support
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250312-fp5-pmic-glink-dp-v2-0-a55927749d77@fairphone.com>
 <y7dfv4mmtzkv2umvverkn6qvjt3tg7cz4jj4zsb4t6vu4heh4d@64zpkjihjc23>
In-Reply-To: <y7dfv4mmtzkv2umvverkn6qvjt3tg7cz4jj4zsb4t6vu4heh4d@64zpkjihjc23>

Hi Dmitry,

On Wed Mar 12, 2025 at 8:06 PM CET, Dmitry Baryshkov wrote:
> On Wed, Mar 12, 2025 at 01:05:07PM +0100, Luca Weiss wrote:
>> This series adds all the necessary bits to enable DisplayPort-out over
>> USB-C on Fairphone 5.
>>=20
>> There's currently a dt validation error with this, not quite sure how to
>> resolve this:
>>=20
>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: typec-mux@42: port=
:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpec=
ted)
>>           from schema $id: http://devicetree.org/schemas/usb/fcs,fsa4480=
.yaml#
>
> This comes from usb-switch.yaml, it requires that 'port' adheres to the
> /schemas/graph.yaml#/properties/port (which forbids extra properties).
> The usb-switch.yaml needs to be fixed to use port-base for that node.

Thanks, do you think the attached patch would be suitable? It does fix
the warning for me, but not sure if it's too lax or doing the wrong
thing.

diff --git a/Documentation/devicetree/bindings/usb/usb-switch.yaml b/Docume=
ntation/devicetree/bindings/usb/usb-switch.yaml
index da76118e73a5..9598c1748d35 100644
--- a/Documentation/devicetree/bindings/usb/usb-switch.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-switch.yaml
@@ -26,11 +26,15 @@ properties:
     type: boolean
=20
   port:
-    $ref: /schemas/graph.yaml#/properties/port
+    $ref: /schemas/graph.yaml#/$defs/port-base
     description:
       A port node to link the device to a TypeC controller for the purpose=
 of
       handling altmode muxing and orientation switching.
=20
+    patternProperties:
+      "^endpoint(@[0-9a-f]+)?$":
+        $ref: /schemas/graph.yaml#/$defs/endpoint-base
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:


Regards
Luca

>
>>=20
>> See also this mail plus replies:
>> * https://lore.kernel.org/linux-arm-msm/D0H3VE6RLM2I.MK2NT1P9N02O@fairph=
one.com/
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Changes in v2:
>> - Move adding "*-switch;" properties already in earlier patches
>> - Move wiring up SS USB & DP to SoC instead of being done in device
>> - Pick up tags
>> - Link to v1: https://lore.kernel.org/r/20250226-fp5-pmic-glink-dp-v1-0-=
e6661d38652c@fairphone.com
>>=20
>> ---
>> Luca Weiss (3):
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502 redriver
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Add OCP96011 audio switch
>>       arm64: dts: qcom: qcm6490-fairphone-fp5: Hook up DisplayPort over =
USB-C
>>=20
>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 103 ++++++++++++++=
+++++--
>>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |   9 +-
>>  2 files changed, 104 insertions(+), 8 deletions(-)
>> ---
>> base-commit: dcb11dc4740372cd4cce0b763a4a8ec4e9f347a6
>> change-id: 20231208-fp5-pmic-glink-dp-216b76084bee
>>=20
>> Best regards,
>> --=20
>> Luca Weiss <luca.weiss@fairphone.com>
>>=20


