Return-Path: <devicetree+bounces-163112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 112E1A7B821
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 09:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B95BF176C07
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 07:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9687818C031;
	Fri,  4 Apr 2025 07:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="CG8dWdLM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DA318C034
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 07:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743750729; cv=none; b=HileVsKQFhpROMrLr/86qYG572wg17hQsiMma/GtwLQGf6tVy94BQDBjm/KMqhppadfmJyGhAJzWXb7U3rO9vYIXz521o7I7sDSyT5yB6t2neqD+GPpf6Jo7PRhD8KpMa37KnWjeBEO4Xmycl0z74nQmozJU1by0Qxprm9rwyOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743750729; c=relaxed/simple;
	bh=U23hVQDvBPnjEz1wdi+mc/GNtiHL10BsAGjmKYpM6TA=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=KEPYZfHmMVR8e3E1U+aTT1tdWhmMenwdQGSc2rV/g3ZMBwPeeZkTacs9gqncdu0QuanHMt2mgisEsNRwCEY+zgjSi4svdkskE3P3YUGt4INrgq+re4RAM+LlqDEQgt2rvID+e1IJ31YNfdzZqzX7KB/K6tUGytRc9a4u9VXf7tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=CG8dWdLM; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso308801066b.3
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 00:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1743750725; x=1744355525; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U23hVQDvBPnjEz1wdi+mc/GNtiHL10BsAGjmKYpM6TA=;
        b=CG8dWdLMsTxbZTBlmZmH7+lJRcBpTSOrE+yAZKODTsIQQQ7rCx/hwFYGwe86eUjrsf
         GoKSsBFpx/os0Fam6hkuRVwJm9m8l/Tpm/KCYCEKz7ia2DyiuYBvEpNySIom/2PzrDW1
         C6qwjki37n/PeMyxr+bR2l1hQ5fYv0ktARX/AtWMZYOoLuO78LBTRv2QqoPzgHPChDHO
         4PM/4VX6jScS17JYmp1kjhefgcm8tjRmOO86D97FlGQbFjQx4tvrCuCXM0Gykjsw/dIe
         719KxaKA4s41OxaU3Gn0OIm2d18PB/x6pThlrcf8bF9KMXzZj3DJcORg2Gn2fJr9BY8Y
         PFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743750725; x=1744355525;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U23hVQDvBPnjEz1wdi+mc/GNtiHL10BsAGjmKYpM6TA=;
        b=jgD8ld2QLs4/lKM8h7pJCw8ZU67nqbNzg0OBM8HElrNlRKjCyq4S47mlvpQbY0PVlC
         TrmyJgE74PHPIvO3NoHdeRbqMLwt2ahO71R5dVpih7dwSfatERQNsU/dzYxl9GdU+ll9
         K5uCY0tzCynImDNJTQ+a/oEP25fdlSnhjId2Yl7m9tRCb0Tq6X+dzr2i/ZmbpNNrA1x9
         oRmxEdzUgUMlAHyShB/bQIK45vo3LMJHjU8oVTKi+uXqQ4R41E+t8zHB6XSCH4erpyKs
         ZEKhI8FlzEwe+hoSXg9dJuhsmpg8aLi8LGvbwzkavMsG9vRPnD9QRLPoAp5aT7U/CwsL
         J8fQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxCxrQQzD2BTfQ1J68btB8goDWp4TTXJzs/kqDumupXmCf4SSPHo5znN8DdMxXjIxJe4hA6ucAqBWc@vger.kernel.org
X-Gm-Message-State: AOJu0YwWxyWQ39GoL95wr/G41HAtIInsKs7XA4v/brkGXtiyubanuEJl
	uGNgd7jbCgHm7DX4/7YWLSwGRKenLndLClo+NAb+/0QxRdo/YLQxQupYQgjHAc4=
X-Gm-Gg: ASbGncvYUFArqlYZISMrOAnneRRORZEgVYizLTr4kKJZAt9HBXbz5tjrKBJVZi08B6Q
	M4MYoMAcFkVFHvTJhrUINYH2b8B1YJcmisv2EVsEXX/ES37St/V/Uu+K09AoolBDyIR6UUFPj5e
	jOM8pRlT55fWbaFjV1JA4jtyH8g9USP04HlDxPwSeL+1C7GecjFw/0AkVc9sJDvJ6hUgAJXBJbR
	OZ25WY4Nm5nv14jC7o6QSWXkIPYrkqmb/c5QHm4r2K3ChYx5hDCJsO+A5p5Qs50VFEL1lgLyaSZ
	96Y6IKIxsvySngYWfr7v4B0bvanTvoYV5/sQupVrn3GgR71cfY6GVJ7w+jBrN4hRUwx5qMlKlXG
	MuHclXDNZhiX2Tw==
X-Google-Smtp-Source: AGHT+IFN6J+KZNpV9GFYn4RUt9e/peo9TpSfWt8AYxwIXQxs3kWCtPSeLrpO1q1TafhsMbSbK20xMA==
X-Received: by 2002:a17:907:da6:b0:ac3:4487:6a99 with SMTP id a640c23a62f3a-ac7d1c39469mr190978066b.47.1743750724902;
        Fri, 04 Apr 2025 00:12:04 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7bfe5d44dsm209663066b.13.2025.04.04.00.12.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 00:12:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 04 Apr 2025 09:12:04 +0200
Message-Id: <D8XO1JU37NEV.YN595H7NEOU7@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Prasad Kumpatla"
 <quic_pkumpatl@quicinc.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Cc: <cros-qcom-dts-watchers@chromium.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <kernel@oss.qualcomm.com>, "Mohammad Rafi Shaik" <quic_mohs@quicinc.com>
Subject: Re: [PATCH v1 3/8] arm64: dts: qcom: qcs6490-rb3gen2: Modify WSA
 and VA macro clock nodes for audioreach solution
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250317054151.6095-1-quic_pkumpatl@quicinc.com>
 <20250317054151.6095-4-quic_pkumpatl@quicinc.com>
 <4c27d6b9-781b-4106-8165-97c9750cf99f@oss.qualcomm.com>
In-Reply-To: <4c27d6b9-781b-4106-8165-97c9750cf99f@oss.qualcomm.com>

Hi Konrad,

On Tue Apr 1, 2025 at 6:05 PM CEST, Konrad Dybcio wrote:
> On 3/17/25 6:41 AM, Prasad Kumpatla wrote:
>> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>=20
>> Modify and enable WSA, VA and lpass_tlmm clock properties.
>> For audioreach solution mclk, npl and fsgen clocks
>> are enabled through the q6prm clock driver.
>>=20
>> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>> ---
>
> Instead, put the inverse changes in sc7280-chrome-common.dtsi please

How are we going to handle other sc7280-based platforms, such as my
QCM6490 Fairphone 5 needing to use q6afecc instead of q6prmcc which gets
used in this patchset?

One solution might be to put q6afecc into the base sc7280.dtsi file,
then we have a sc7280-audioreach.dtsi which overwrites q6afecc with
q6prmcc which then gets included by boards using audioreach.

I also don't think we can split this across sc7280 vs qcm6490 vs sm7325,
there seems to be any combination possible on any of these SoCs -
depending on the firmware shipped with it.

So somewhat similar to the current sc7280-chrome-common.dtsi but just
for audioreach.

Regards
Luca

>
> Konrad


