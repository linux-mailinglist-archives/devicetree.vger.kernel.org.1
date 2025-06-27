Return-Path: <devicetree+bounces-190422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46852AEBB6A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 17:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CE777AC9E0
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D982E88A2;
	Fri, 27 Jun 2025 15:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="I2YkeXsc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEF72E88A7
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 15:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751037277; cv=none; b=h6H+D4+Mwg9J1Bvvho93Kaud3lkVRXIFVfKCpkYHIPMy6gk++oSNVwRk2GU/rxxPAlh+yXQNB3/MS+4Mr+h/sboVEKOCGODGwgQSJoXLRHA3AAP7ZA2HObSMZYipachm+C7KtITDJKP6WMKWfR8oBhTw904T+ZxD2DyEKHfn3I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751037277; c=relaxed/simple;
	bh=9xXvH/B+/8ovxyiaGuMlHCWofUTZqieLqJyknmO4BWc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=g6vrFllj1jktPwBthsAPqBhIhSa6VLxIGlkFgK6gaspV5uj+Va5epzJNO3ZJy+HbeQiaeXwvQpO0Q53BgTSW51YYJG5UCcR9S/GTw488bYY5AaK6zwmy67r3fr+HbQmqhdQt9OBIBbtWc0hqUfz2ir/Hei4m0BqpqnsE43LAsPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=I2YkeXsc; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-608acb0a27fso3679944a12.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 08:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751037274; x=1751642074; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4YdwBq8x/9yTkh9TL6YeeP2ANBhnQ2yJ1UlsY3OJMpQ=;
        b=I2YkeXscYPiN5DOWsol9nyFJ1uwD/uU109bB+OU8zaelyHH2VWoPjPmrhpNIw8Feff
         +TYD95Q4jwbMd8jh5wC+f8tZ4P2kW7cKtHtDq2q3oZW6uLy+i7BC/ihEBlJbPeRWG1YJ
         ZHVr2VXNytYyN3YvjxAKj4+2HJWy+hmsb9qhj1jglrigO40T1ABM8VhfX61Bb/9eowtd
         oNjj3LTj4IdICvQHQ7s40CBDMh8geJsuoT0XTIFV/yflmcZFW/OINt59Ez4JfuAP9CdL
         JjN8CyWCMPYbBHu1VrRPe0UsX4TnPbxGHzjzhzN6P6rD/3E4O88bJslKCmKbf1jp1kUk
         Qn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751037274; x=1751642074;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4YdwBq8x/9yTkh9TL6YeeP2ANBhnQ2yJ1UlsY3OJMpQ=;
        b=tU99TtwlhaTyHqicNH/yS6fQIpm1t2mod6DFxhRvG16/7goe/7Gn/4PDT+lZXA8mb0
         F8c/tRY9qo8D8+2mPK/SZ8SuhjGqIl9HMxO2CLsFo0cFZ7iHNRsNr25eKqbEbLn98sIV
         TsNq+PeFtMZoSGBrgOl/8R+oom+AUxcFeozyibjIuYxYKbaZ1aCagjkZbNhlOnt0l1PD
         QyanUtFVQQVZJn36BgdkYDxRvA+cpopJDN6foKu9S8JmJCvNNglhlSxWtx1DnodyQtbU
         +3Yrvpb1uqJ/rlqMJCiUuxGIWDwLYmYImvjEk6nh/oe6XBNdcSWBFW2dBgKn9ULcXyfG
         Y1eQ==
X-Forwarded-Encrypted: i=1; AJvYcCViATZzUd5MaHNYGz7WfDno0FmXoICb2jwWtrU29lpAgv9FwZeKtCD/NHHX8UJrjDPLXp8wd6IHowiU@vger.kernel.org
X-Gm-Message-State: AOJu0YwriMyth0iKny+eutDFT2M1YAcomzln0n3GTAzL6GlwlOzjEmIh
	geAd7QDFTe3gtsZdVeOoww6KvR4advzhSB/twMO3vjf0d4GiCAvUNMnR7Cmn5LGBKTk=
X-Gm-Gg: ASbGncu+dew4l7Q0QPV54WX0uqq+E19jiigHVvchFhv9pE7DAbpaJNiZWjwjS1PPqZZ
	Je5zOSAtiQYLVyqMFzQHmHIw7zuDF8dat8bhhI8kTAh+CZmnbbiR+jtpWLq2uFZoiLM0fC8ZXB9
	CJWdLKwFOY66eMdRw7THO6SD5Y8+4OXUQyB1dWpQIl1FvIQ3Rye7K3EZ/peiHwHKSC/SVhcolJ0
	StH+b7ox0W8dh1u3iPJ2v6zBNv0HfTwTAxJkCa1pKpHVdOeEfgNgHz+19MedROvNojo88llywim
	vfbzPzfVnLwRkwec1G6QDUUV6caqgR7PsYeEKMEs3pnC6HJ+EPKay6jGs5tfoCFY1JZAoryMIum
	eve2L/ciX/I7iqQazqwXkNaY2P4GgR10=
X-Google-Smtp-Source: AGHT+IGXK10sOdRHQiQDlGMMOAu00b6+1HTHgeTGZsSXRorQQ5K4SHjAIMDlViazK5Rw9QI+EWq3mQ==
X-Received: by 2002:a05:6402:2063:b0:602:36ce:d0e7 with SMTP id 4fb4d7f45d1cf-60c88dd63d7mr2289708a12.14.1751037274070;
        Fri, 27 Jun 2025 08:14:34 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c828bbea9sm1617466a12.1.2025.06.27.08.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 08:14:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 27 Jun 2025 17:14:33 +0200
Message-Id: <DAXEWQ93VELV.3HJXPNWASYBT7@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 00/10] Add clock drivers for SM7635
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com>
 <68056b4a-b1c3-401f-8720-8e0c3cda6249@oss.qualcomm.com>
In-Reply-To: <68056b4a-b1c3-401f-8720-8e0c3cda6249@oss.qualcomm.com>

On Fri Jun 27, 2025 at 5:10 PM CEST, Konrad Dybcio wrote:
> On 6/25/25 11:12 AM, Luca Weiss wrote:
>> Document and add the clock drivers for GCC, CAMCC, DISPCC, GPUCC and
>> VIDEOCC on the SM7635 SoC.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> Luca Weiss (10):
>>       dt-bindings: clock: qcom: document the SM7635 Global Clock Control=
ler
>>       clk: qcom: Add Global Clock controller (GCC) driver for SM7635
>>       dt-bindings: clock: qcom: document the SM7635 Camera Clock Control=
ler
>>       clk: qcom: Add Camera Clock controller (CAMCC) driver for SM7635
>>       dt-bindings: clock: qcom: document the SM7635 Display Clock Contro=
ller
>>       clk: qcom: Add Display Clock controller (DISPCC) driver for SM7635
>>       dt-bindings: clock: qcom: document the SM7635 GPU Clock Controller
>>       clk: qcom: Add Graphics Clock controller (GPUCC) driver for SM7635
>>       dt-bindings: clock: qcom: document the SM7635 Video Clock Controll=
er
>>       clk: qcom: Add Video Clock controller (VIDEOCC) driver for SM7635
>
> We had a massive yak shaving patchset go in this season, please move
> the magic settings in .probe to qcom_cc_driver_data {}

Okay cool, I found them
https://lore.kernel.org/linux-arm-msm/174970084192.547582.61230540758298270=
6.b4-ty@kernel.org/

>
> Konrad


