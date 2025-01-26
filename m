Return-Path: <devicetree+bounces-140928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 078BEA1C6A3
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 08:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 717687A14BD
	for <lists+devicetree@lfdr.de>; Sun, 26 Jan 2025 07:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E9019D07E;
	Sun, 26 Jan 2025 07:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LcGcUO2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235F419C54A
	for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 07:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737876600; cv=none; b=rW40JltcyBJSQ2obaSAYsK/1iJTI/q5xzNjaPalJHvB6erMaSQb5Qz/0VaXTZY01RsYwClV1I8DHu2fhdpjVuczaYOiO5IxIw9atPpXMwbq/NyoWphtz4vDoZqwmyLVPzXCVfPhwoUB5vB1ELPvPVqe5F27J4WI0b9JJkufDHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737876600; c=relaxed/simple;
	bh=Cj3am8EY8dyXip8njKWY5dUo1Uu06z/0Iuv1BTsliLM=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=R1izZvpK6YpghN2rdHXg/GiyC1A8nE5OSYHQGJt8yiJ7QTfSypFCcBtZ0tXJ0KyKOPPc0iOvB6mMmTzxGowWeSQCw3f0woH+PeTYwyHBPXy4isvjaGzLQCNDD+CPcnQjsINV5DPqsTMh+nA3FnMXWqxUnXSGHKEMwNY0ZONkFxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LcGcUO2e; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-216634dd574so40841835ad.2
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 23:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737876598; x=1738481398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lWEYm1Wvugz22VZTmmCSh9dWYssFgpGfT0lCZXzX6jQ=;
        b=LcGcUO2e9+mTI3hvOkjXTMttCUujWo0ylX/oJuGLzmrluT9zZFrFv3PA4yuhXJpuGt
         Fk02yhn1AYhl1z4UUXPhPgoF4spu9eKsP7Q2SCSX1oj5mNqiTbyy7c13rPGf78IoRLBU
         V48mhwYJUt1U3E+bHmOlixyXK8rCdQvxrYklYFSJAXlgUIgW+vIxpwNRFnwYGDVcAyy+
         CHICGq0UesWGb0c21WEgZYuFO+UBguNvEwrCbGtWSbfNU59vzE77z2Pc8dhujrFbKqqL
         4LwAjRsWwBLON0NmvsJPaGoWil6Zv1Sgr81h70JSam6zGA4S7cLjE+kj/xgESTRTyThj
         wTJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737876598; x=1738481398;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lWEYm1Wvugz22VZTmmCSh9dWYssFgpGfT0lCZXzX6jQ=;
        b=NDcb/C+l72vS3U8XVMT4heSGYAonqww9N92J4579V5YZKTQ68kNMXSRVntJkI/hGp5
         YAoUwtylymTAH3xeeznhif/s3so+OM1GlKGVdtosLLWEAZ+ti0pocSPzZ377mwQBtnGQ
         +V3S/3TaGMwIFQhJCIrRjd9uABAazKeGFhpC8QPGNTxuVrXcAyHROlsYtQx3hsSpnfs8
         f0QfK5HTPnzdJuOsZ6Fnqau+1DLeDVrmpbibMPntTAzkWrO0IXcBCCqCtLQqfQ/DW4RO
         lTqv6KfgN/z6Avyt8eK5h8bgGNMM7CQ46o+wTZZVCf/X8XcVtgBmBgDY7WpN6c8IRwqP
         mAhg==
X-Forwarded-Encrypted: i=1; AJvYcCWwO8wKZUavCelilMwEPIgclZiswTHKL144XTask6pf/SVrepIcna9XZXO5Sfaax9xnWQvU3GOK7Oc8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5bjmCbxsx6af/4GjbQEwqC0gfFrXInzj0XG2TMwt8JZdqTcKG
	sh2BXKsqN+lddYA0fp55OhtJkbRzRuqcy62olJ036Mo4SJa9tkulamcd7I1/VQ==
X-Gm-Gg: ASbGncu/PSPX9z7fJ+1t221jV2sWdFkGwS7nbvP45/qUUueBOTkoKlDW/VmHaI4z2Sh
	AdIIEltnrTOerWsWQ2wDqLo/5DTjA/1wbtbPlcvTahB/fnZ2Gl2maTbz5jh0g9iLw3duZsiWFcZ
	jJq+GKn5sK69YVNx5Z61CO9x5HCAWyLAANogZeF05N99PLI4fI12ahzjDTrpAuH4RLjXKuE5upq
	yUNSwNiislNC7IDCkejKz3i5+FwrnU63B+R0/ZbK0uJ3Od2f5yQbKaPzXSdaHulTx79kIiWwanC
	lV59
X-Google-Smtp-Source: AGHT+IFD0g9cKNN5kJkF+EtlX2a/2RSBTYh3J6vZZB5CmCmj+BPQyEJoszp2cnYSPKR9enWkHM+YrQ==
X-Received: by 2002:a05:6a20:9191:b0:1e6:8f10:8ba2 with SMTP id adf61e73a8af0-1eb2145eab3mr55988433637.9.1737876598420;
        Sat, 25 Jan 2025 23:29:58 -0800 (PST)
Received: from ?IPv6:::1? ([2409:40f4:3047:1c2c:8000::])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72f8a78ee7bsm4940924b3a.170.2025.01.25.23.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 23:29:58 -0800 (PST)
Date: Sun, 26 Jan 2025 12:59:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
User-Agent: K-9 Mail for Android
In-Reply-To: <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com> <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com> <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
Message-ID: <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On January 25, 2025 11:00:23 PM GMT+05:30, Dmitry Baryshkov <dmitry=2Ebary=
shkov@linaro=2Eorg> wrote:
>On Sat, Jan 25, 2025 at 04:31:19AM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad=2Edybcio@oss=2Equalcomm=2Ecom>
>>=20
>> Add a new, common configuration for Gen4x4 V6 PHYs without an init
>> sequence=2E
>>=20
>> The bootloader configures the hardware once and the OS retains that
>> configuration by using the NOCSR reset line (which doesn't drop
>> register state on assert) in place of the "full reset" one=2E
>
>I know your opinion, but my 2c would still be for not depending on the
>bootloader=2E I think that was the rule for ages for many possible
>reasons=2E
>

But if Linux or other OS can trust the bootloader, then it makes perfect s=
ense to rely on them=2E Obviously, the question here is that on which platf=
orms this level of trust should be established=2E And the answer I got was =
starting from the compute platforms (atleast X1E)=2E

So let's take it on an experimental basis and see how it goes? If at all a=
ny problem arises, we can always resort to in kernel sequences=2E

- Mani

>>=20
>> Use this new configuration for X1P42100's Gen4x4 PHY=2E
>>=20
>> Signed-off-by: Konrad Dybcio <konrad=2Edybcio@oss=2Equalcomm=2Ecom>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-pcie=2Ec | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>

=E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

