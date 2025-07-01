Return-Path: <devicetree+bounces-191430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BB5AEF4A4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 596AD3BB579
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD3A7264F87;
	Tue,  1 Jul 2025 10:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="w9r/QnrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD50125D212
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751364732; cv=none; b=r3mmReGyeafWOfmYeyPh3sVjqPa93ODTYFEX+UDkXofXtSgj3wxPxEl0R8HnO0xh/KZ5U4zUk1TDOjof/MP2ZC1U/XRckT7+C8XOmAzFPSYsNpXomIH+X7JSmLGZMc0IqhN08KY/z9wokJrgUolemsizRfqJOFxbVduJDreF4kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751364732; c=relaxed/simple;
	bh=i677gT0Lf3VOXIYNP0ybjGzvserOJM9ohhVxqFpKZ6E=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=SzSJjRw8RU1gL8KMoXh0+FZ8lVHvZhVEJxPImFXqFsukRAGAeqfekaEm3A9nWD8I9AEOQzZl196VhRTULUIVB7jalxQ5zV8KnkK8bqbr5mzhYbIv0VkfaHWl/3cYLT6sfmwhx86sHr7sraymk1E7wtOenuG+OwLutarvWBVWsRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=w9r/QnrV; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6070293103cso5374483a12.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751364729; x=1751969529; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XjxelGecQDmUYdn9tTQMoWPi1qncMiGAW8E3PTy6vq0=;
        b=w9r/QnrVmsbsmnnURN3/QeO5+tn0+XiaG1bYujOBcgAqQYRp9eACKe175ZWAjxqUwh
         YeDGANvUir+nNPvLiHyYF46AUqUSA82w9t6q4HEN9Wx2gvzKRGKtT8d2nooAKkem8bCY
         RjImig16k3/KyAWbM1gtV7P6jq2CzIbM38XIhX3WPraSTakCboYXrwUwV5xKmkHysrQY
         FOgWipuxmD5d3zfBhb6LtAkpq4znR6mjTLTqizTLTKIFGQqzWhCWzHt0KbjfFqskQvc3
         pN7IAcg1kR8lYVZYdy3WUmfOstIsNA504sIFEN+gPfSB2C+rQWGSxy32txBpNMnJeCL1
         1YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751364729; x=1751969529;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XjxelGecQDmUYdn9tTQMoWPi1qncMiGAW8E3PTy6vq0=;
        b=MQK2e/GpDC5tyLtte7y9a9J7t3tkDXRCGcMmwWNSwaKJ8NJ11vj0M6avnQuyAgCdZq
         nI7Bm7vjIf5YISqS9xa78r5I3djOfYfeWqC7ICmO7i2LbqTRpvcCzUBXOJOtoe3Vek5d
         IpEfN4x1GHQ+EdlHwwTwO+iOenL437osSp+fFHP6PBdYc8SUHp9SJdOzb3qUDzZ+YvVn
         QJTfTS3RK+pObPheoDA5ZMSaiDsCih5uaPsvI/YQKHKJB7+/7UHqGOBIHw2xlZjKOfT8
         h1ByHg+sXXRrITSGxtfZAEj0Sgt4n2fyuUjMApLAS+cQfDTNs2/payq/8qNvps0c/f/y
         1Ecg==
X-Forwarded-Encrypted: i=1; AJvYcCVYS59gE4hQpA5U9pVV08GgbjTHwTb8LOGqZ2In4dqxdfKfPg0j0zGR0ZcJfXOXWfVlTclxuL0ljA7O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/mAYX7i95Dk/piaGrzDkVxRmXh+w57xiH1lNaARCqvSLqRj9S
	zywS8Tzq2W7G15fVxM58E1yVuZdgXQ/pMJJCr5J+dD+B6iHR+IrqMNqY5aDXuPp3Pgw=
X-Gm-Gg: ASbGncvORDwuHsqB6o7iScAQZ4YpncAheSltqctElD6vRZj6tIcVO/iZprns8Vzoaac
	q5V5YhAX0iBre85Z0nQlVX8eCfuS6Pk4J/hYRZ2vFAHqDQbU2GKpmpxKqsX64HmQH37pHqHpqAO
	fPGw1NexTq+h5jizWHBUmimtGSsfyk186Ulb1DbMGfNujxo3DgLLkRXrU/lljNO/owycauMsWpp
	XQ6LIQ9FsqKQz4p7F7KsveqBn6y/zbR5ByoRi+Qab/A8VzDWunKsmGqYSrqorqS8/njDoKF4X2y
	vvUfDp8Qta7Luo44n12u+8fLtffgLYqqRL9LDVYmzmtAuMr4JHwc4OIUizJAgXqPSTWD8QrYXWD
	rveQ/9f9C+k7umw13aFKGxtAQuWSsXOgTkspFTf05asquxt60cLK9wVgaIJ0edqq1qXVG68s=
X-Google-Smtp-Source: AGHT+IGcTClS0HlsuLDMWhbFrqidSZrUXl02eHSOq8Iap1JzeM2KzxLgijD6DBQiU8k1adtKZOCVWA==
X-Received: by 2002:a17:906:c10d:b0:ae3:63b2:dfb4 with SMTP id a640c23a62f3a-ae363b2e17emr1568424866b.27.1751364728984;
        Tue, 01 Jul 2025 03:12:08 -0700 (PDT)
Received: from localhost (2001-1c00-3b8a-ea00-c4de-d39d-05f4-c77a.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b8a:ea00:c4de:d39d:5f4:c77a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353659e12sm832466866b.40.2025.07.01.03.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:12:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 01 Jul 2025 12:12:07 +0200
Message-Id: <DB0MZCUM41RA.7Z6461I531VD@fairphone.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: remoteproc: qcom,sm8350-pas:
 document SM7635 MPSS & WPSS
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
 <20250627-sm7635-remoteprocs-v2-1-0fa518f8bf6d@fairphone.com>
 <20250701-melodic-courageous-mussel-0bed22@krzk-bin>
In-Reply-To: <20250701-melodic-courageous-mussel-0bed22@krzk-bin>

Hi Krzysztof,

On Tue Jul 1, 2025 at 10:12 AM CEST, Krzysztof Kozlowski wrote:
> On Fri, Jun 27, 2025 at 08:55:42AM +0200, Luca Weiss wrote:
>> @@ -91,6 +93,7 @@ allOf:
>>        properties:
>>          compatible:
>>            enum:
>> +            - qcom,sm7635-mpss-pas
>>              - qcom,sm8350-mpss-pas
>>              - qcom,sm8450-mpss-pas
>>      then:
>> @@ -142,6 +145,22 @@ allOf:
>>              - const: cx
>>              - const: mxc
>> =20
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm7635-wpss-pas
>
> Everything fits better sm6350 and no need for new if:then: entry, at
> least it looks like.

True, that seems to work fine as well. I can add it to the
qcom,sm6350-pas.yaml bindings instead of sm8350 in the next version.

To be honest, I don't quite understand what the concept behind the
different PAS bindings are, when an SoC should get a new .yaml file, and
when to add to an existing one.

Regards
Luca

>
> Best regards,
> Krzysztof


