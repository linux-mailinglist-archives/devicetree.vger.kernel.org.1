Return-Path: <devicetree+bounces-191431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5779AEF4CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E91874A3431
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15722270547;
	Tue,  1 Jul 2025 10:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zh96yD3s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4552526D4C1
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751364992; cv=none; b=SBB1bwEF+9xE8gmH9ZJKSPCaKI3EEf/s9DejsjTRVbILP3kuAp+UV8BY7H+U/T4ElqJQ/1+V3/i/FxgDDVdBpaPDWu7wV69VtOWkmkPLDzdvr77aDkhP1R+zVPB/lwM+yxtte5sert/Ys236HIJXc+vrMbdzkYqta2+5DnDpE78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751364992; c=relaxed/simple;
	bh=2vbNBkeXRi/g9zbIjofBUV/jYjTJHU7Rfds+Aml04H0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=PtQE2+8eyrLX0C43DLzumsmOypq1CYUckcpUNscuU6UcYK/dSFhWmECRjUzxxE7lhMKAsF4p4mbQkxu3c5j3AQAL7TuIRJBl3xnTDZjVyncFLpIKkzPjN+YVFjytxF6UOEcJf2kXHHudQwKoWb6aVE/DGGIvqKCRP4aHd8f0iMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zh96yD3s; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-605b9488c28so5832280a12.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751364986; x=1751969786; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xXy8h+9TejItbdqFIzK4yC4mViXvShPTEKGB2PqHcA=;
        b=zh96yD3skf/xfV03qpXhZd1nGNC115XO4MNv74tXOedn0eHB9Vvo8Rw46RLhfB/oL1
         zCyZeh6vTszxpAOexV8RLJl8JO1LwfxElToDDOC/ky9Ic3+98LMymGsgN4/Z6wqwMmZl
         KambGpZFVDIdwsj/lYwDo8d06n9IHCfx1pmR+cH6X66tVAQuezaBJWdm5zrhkIASoslP
         TsdvZoe67FPJCt/PQGtpwFlvWdMULe/hOWpzunz0o3CTZOP2ctqxKX2zKF0zU5dLBI7C
         MeuZXZ3n7/xHalaFUm9G+77KNz6RLZcUpX0DSfU68mMFO+R6NnSn1KeBipf85L8BUiVy
         EphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751364986; x=1751969786;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8xXy8h+9TejItbdqFIzK4yC4mViXvShPTEKGB2PqHcA=;
        b=bGG+277UfbVjr406atVi4x0kcG8cfRrVnU0L9YQfSXJfXneRLbmtgEST/gaTAKACcR
         7Ps+Bjsfsm83/7APAy3ba9xS6CNpNyBQ0tbkN2WpnyVJyO6HrEHKcWoWXPmEoEJGHjWY
         fVTm8qQfXLcHIUaJciwtAa6w+AtFCQJzkdpF378TPnA7PaLHqzjcpS77zeKqKb3jx3ql
         obv42ZCPRlUJI7ggkGOf432VPiIJ/ZjpjxxZq4VGm1uOG3fvYHj8sEUqJhsputYlVOJG
         rtwFd7y1cbx+cQUbX0nJh+d+YftAJ8eZA0kaEq0x8536t5bVZn7PFBFFqJgWKTUQdY6A
         I1uw==
X-Forwarded-Encrypted: i=1; AJvYcCWa2BsLNSYCu0PULWQTmPGQEMuBUy5HngbRk2m0XC0xOtMRmuwwkD70ueRlSVcMXt39JLA2Nts/XHkf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7evtFfsBon2HDsSiyqJ6P7w9g0ENJS3wRhruo8NoyAgRSiJw2
	9N0KexW7aAiLAtEIQ02PA6DE+/8R6/v1zUSnG0avw7AplA35pl9HJrG2vWO67xgrc+4=
X-Gm-Gg: ASbGncugJgaqQqse7uKM0bpN2DL5+SscZtgIy0a/dnXgF3I8QTdpN1/leJPaJMaH0h2
	kaacgUvMVWCkAjm1cVjkrE1pjpOILCryyOIQevPVBJ6q4xMTj79UaLo/CkhyRPdddWRS18LYE8b
	HcVUDqtslK+OnGHAaQXpYphIYpPkLOEKL7FaIELj1MZaPgc9OIhzKFXrt3Nz1X2AXU+hplroXVk
	upYE1yAU//AOpGeSAJ7/pgjerc+BxLtqEZ5JFljxnyXYMSalPIgixUunzO1dKy7kJ65qfxpqjYK
	WJnDhZD5A1BeYZ12L+gJ9xH4Nwc6Izxn417MtRkn+SkBy3KcUSrdUOECnALRbCJqW4ouLy4wHI9
	vLDU1+LJZx6qqCRnExW0P2RAtIBvNigJqiPW5AuDlF+dUPIsBMk36n18KlyEVH1lwFvuepRQxqG
	PHKlb/VA==
X-Google-Smtp-Source: AGHT+IFzOBuC3mZoHMgSDKxYE+Gp2QoQjARO39dkLRc1i2qcYef9U28ETLuq2rRvzxSOj1rllcECwg==
X-Received: by 2002:a05:6402:2694:b0:60b:fb2c:b7b3 with SMTP id 4fb4d7f45d1cf-60c88a41c83mr12973871a12.0.1751364986494;
        Tue, 01 Jul 2025 03:16:26 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-c4de-d39d-05f4-c77a.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:c4de:d39d:5f4:c77a])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8320b5aasm7072967a12.76.2025.07.01.03.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:16:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Jul 2025 12:16:25 +0200
Message-Id: <DB0N2N5JIUNS.3UFD0C81VYS9F@fairphone.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: remoteproc: qcom,sm8550-pas:
 document SM7635 ADSP & CDSP
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
 <20250627-sm7635-remoteprocs-v2-2-0fa518f8bf6d@fairphone.com>
 <20250701-pretty-vivacious-panther-540ff4@krzk-bin>
In-Reply-To: <20250701-pretty-vivacious-panther-540ff4@krzk-bin>

Hi Krzysztof,

On Tue Jul 1, 2025 at 10:14 AM CEST, Krzysztof Kozlowski wrote:
> On Fri, Jun 27, 2025 at 08:55:43AM +0200, Luca Weiss wrote:
>> Document the ADSP & CDSP remoteprocs on the SM7635 Platform.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 37 +++++++++++++++=
+++++++
>>  1 file changed, 37 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pa=
s.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index 2dd479cf48217a0799ab4e4318026d8b93c3c995..44cc329be5067ab6cbaa0a46=
7669cb3f55c7e714 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -18,6 +18,8 @@ properties:
>>      oneOf:
>>        - enum:
>>            - qcom,sdx75-mpss-pas
>> +          - qcom,sm7635-adsp-pas
>> +          - qcom,sm7635-cdsp-pas
>
> I don't understand why this is here and mpss and wpss are in other file.
> It is supposed to be in one binding file, especiall that:

Is that the idea? (see my reply to my sm8350-pas patch)

>
>>            - qcom,sm8550-adsp-pas
>>            - qcom,sm8550-cdsp-pas
>>            - qcom,sm8550-mpss-pas
>> @@ -165,6 +167,24 @@ allOf:
>>            minItems: 5
>>            maxItems: 5
>> =20
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm7635-adsp-pas
>> +            - qcom,sm7635-cdsp-pas
>
> it does not fit existing cases!
>
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          minItems: 6
>> +          maxItems: 6
>> +        interrupt-names:
>> +          minItems: 6
>> +          maxItems: 6
>> +        memory-region:
>> +          minItems: 2
>> +          maxItems: 2
>> +
>>    - if:
>>        properties:
>>          compatible:
>> @@ -185,6 +205,7 @@ allOf:
>>          compatible:
>>            contains:
>>              enum:
>> +              - qcom,sm7635-adsp-pas
>>                - qcom,sm8550-adsp-pas
>>                - qcom,sm8650-adsp-pas
>>                - qcom,sm8750-adsp-pas
>
> sm6350 fits, doesn't it?

Not quite, for sure the firmware-name and memory-region for adsp and
cdsp on this SoC requires the dtb firmware file as well, apart from that
it looks similar enough.

I'm also okay with creating a new (after the whole renaming thing)
qcom,milos-pas.yaml which contains the bindings for all 4 *-pas'es.

Let me know what you want to see in the next version.

Regards
Luca

>
>> @@ -239,6 +260,22 @@ allOf:
>>              - const: mxc
>>              - const: nsp
>> =20
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm7635-cdsp-pas
>> +    then:
>> +      properties:
>> +        power-domains:
>> +          items:
>> +            - description: CX power domain
>> +            - description: MX power domain
>> +        power-domain-names:
>> +          items:
>> +            - const: cx
>> +            - const: mx
>
> And again this is like sm6350 :/
>
> Best regards,
> Krzysztof


