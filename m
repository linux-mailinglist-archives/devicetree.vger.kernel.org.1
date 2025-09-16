Return-Path: <devicetree+bounces-217735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E99AAB591C2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C676F484192
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C8F28C85B;
	Tue, 16 Sep 2025 09:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="FT/W+ex6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082D72877E7
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758013676; cv=none; b=EskiU4xtcoIJuaQoBf9MbxRgWGbAxKgu5Hkz4J2VFi8RlR0bkBjRLCfQ8dLRFDA3GBt6fYlSJS3sk1Pj7h9eaUivyOmq2SnsQEDOQ7OgjSns1vjuV6bJ+88yR2z4xTgbqbu3AezmPp6ZalYTMZYM0ZSwUQ6oO52BEeDfCvUGqYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758013676; c=relaxed/simple;
	bh=fM1QW+UFz5zHOwXNyLvYeTnh6QmXecM50gjhKcitTM4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=a680wZhikH3Dx8xRLAMmYYqpZDMYiLqUDd8RAUDYu+7jLgFezia9W5Qjbcfrfv9wtEmappFMzahzgudS6jqUbD1i4VPN36yi3UrwLrb3tlnB0McQwzZEKYINH8wWUAVJq+tFAxqkaAK8eT7ReED+JI+QlSn8ZOJb/oa8tR5G9gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=FT/W+ex6; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afcb7a16441so778414966b.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758013673; x=1758618473; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wGPJfwEdnpfBh17k0uP4IdtgceOjAvM9dH/m5dD76YA=;
        b=FT/W+ex663OkQapBdsdZfiqLbYPbkbzVnog3Xs3mpz4Xgconp9x/dpGRHaPDtPNLW9
         ixh2cYtm4JWK60nHEFL7C90FMizD4O9NDpm0XgjKKbAKa6MQGVYIZKXtIyVNXEvXdPll
         xO78MacI3EikAFs5oCbgOJss/QVWcWRQP37/48n+Z1+GtSUaCGDnsrnrlVrWG8si7O1r
         94TOul6Ohbll7vJbAvAdeUmX/1lwebJ6Um7OcSVt28412nyHT+Czd6S3q0zXW3S+rlON
         zm0+nbxhnU6V+vNzOee64mcGan0mFlRda++wgZ4vaBj70pcHlZQrlVQPf/U9b0edpf2T
         khMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758013673; x=1758618473;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wGPJfwEdnpfBh17k0uP4IdtgceOjAvM9dH/m5dD76YA=;
        b=DqPZHlu1JcZLpP4bPJL4A0hdELpN8TtUowg6h2CXj/G7cwt4rvDpeNn/BR87ixFEt6
         6anW3U77xrrlyqbo+JTGvM+McZ7TDx5rOfW+UZTU7I+DSIkdO23eZ+WcCAxkN85e07wf
         5EfUO4/YzyCpkoxiUEBZoaQv/IMBlVBS0p+Qmb+VswO3G6XGV5tP3a1Gztndayruc6xn
         cvh0EbavaibvPXoTO5H68m4f9gDHfqghvXGh+84Hr9BsuSsi1wyDDWvQeT01M6Q6Zltp
         fFahYZDIrw+wkB03q6TWuh8zrOKlIGs4b91/5Tam7hUyl5oAWtWpMGeV/to643P431rI
         LTFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuUpJkuBt05xSifGPbS4TQVCA00VoxHQ1t3SGvr6x9Rxv+HyHQURFDSBbr8QUJML3X/TPGkxQ4iphV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7eIylrUENR6Xd1QfhGPdLJoVWoS5ROY9CC5BEGj+myH/72Rwz
	cCqdR2shjiNwAnkwtQDpioMy8aKuOlyaL/mAkm+SmpqF4WjXggyeZSdXWqR7w62anG8=
X-Gm-Gg: ASbGncuC1sMv0bof21Ggxos5do6S04+3YU6DNMFeSAEd48kHsLDE8aap8WaNKfu/BA2
	xY91EgwRiQxkcyVaJMZcL7bVIpEWRUoG8GqP2L2yeNSn43SQPWhwFlgDyB55xj80llf2ph+kSGN
	i93UySdb6tWOSMwA8lVap6uaz8dp/9O/dT9qIq7Nh9JTY4tHLOHAyOWabtPMxufeF2KA9NjmtSO
	2yX+xTckRB397HqcRMhdZZRJObhBGLKhKbsUV3mHMKmSEF9O8k+E0bNBkXISCMtIT0129jXq6Bu
	MlGtlyeBefLmarxp3KkbBEBN0IwAAobkKLKWigGYubOCeDHof0I1fu1N7HhsPtxEKqwS3KqH2qI
	qBHZ2aYz0XtGv1LHstuyot5L7fMOIi7IVFdawZgdzBcsbqZx5QXMQgrWFoAoUzeiNPh8A
X-Google-Smtp-Source: AGHT+IEnV71DLjZiRWk5j6jXx0pnqls19vN1Qen2T1tQxSI6t57/t1s9FzfJ1We13UaEvDdr4m6msw==
X-Received: by 2002:a17:906:6d13:b0:b09:c230:12dc with SMTP id a640c23a62f3a-b09c23013dbmr778396666b.8.1758013673277;
        Tue, 16 Sep 2025 02:07:53 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07c7159e6csm899506666b.33.2025.09.16.02.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 02:07:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 16 Sep 2025 11:07:52 +0200
Message-Id: <DCU3U3SF3ZRT.ATK17JG93309@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH 0/3] Fixes/improvements for SM6350 UFS
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <DBDAMGN9UQA0.J6KJJ48PLJ2L@fairphone.com>
In-Reply-To: <DBDAMGN9UQA0.J6KJJ48PLJ2L@fairphone.com>

Hi Bjorn,

On Wed Jul 16, 2025 at 9:15 AM CEST, Luca Weiss wrote:
> Hi Bjorn,
>
> On Fri Mar 14, 2025 at 10:17 AM CET, Luca Weiss wrote:
>> Fix the order of the freq-table-hz property, then convert to OPP tables
>> and add interconnect support for UFS for the SM6350 SoC.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Luca Weiss (3):
>>       arm64: dts: qcom: sm6350: Fix wrong order of freq-table-hz for UFS
>>       arm64: dts: qcom: sm6350: Add OPP table support to UFSHC
>>       arm64: dts: qcom: sm6350: Add interconnect support to UFS
>
> Could you please pick up this series? Konrad already gave his R-b a
> while ago.

Another ping on this series, haven't heard anything in the last 2 months
on this.

Regards
Luca

>
> Regards
> Luca
>
>>
>>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 49 ++++++++++++++++++++++++++++-=
-------
>>  1 file changed, 39 insertions(+), 10 deletions(-)
>> ---
>> base-commit: eea255893718268e1ab852fb52f70c613d109b99
>> change-id: 20250314-sm6350-ufs-things-53c5de9fec5e
>>
>> Best regards,


