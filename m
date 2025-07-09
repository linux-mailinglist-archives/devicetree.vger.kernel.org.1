Return-Path: <devicetree+bounces-194574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 954A9AFE870
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C707A1C81426
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45342D7816;
	Wed,  9 Jul 2025 11:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Nk5LU/un"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABE32957CE
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752062173; cv=none; b=WYKmxR9QUMNor+JJVWmnEbJsbfWxdVrbiYZoo66nrOmHyu+hOOM1Ge5VxM893f2m0816tzTjhH2JjRtslZRkh4Zlk14qUJCGwvWAZcj43B8fCnfx2vNG475BO8XepG6bV8ntsp+WIwS9hFvB5vroRNIdMoD21uW02TSyncsUScw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752062173; c=relaxed/simple;
	bh=vq5TdR2eOaZQq4wzgDb/MUODx9FACB9AhF7YRu/UXj8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=dpMiIxPcvheGqYrxe9yLYmTEI0AlMrjgqqtXFJ5MqBzuBnt8bfcVtFKi4ZNHk801/RosR/dlowqzmqjxMVJhywxkJ5Y5yQ8I0RJlUb4qnzgr8dlPWqFfUSf/A+hW0Wuwew3DVA84ow6Y3ZFMWUnYywZEBaBkBgkWoCihNV4t3rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Nk5LU/un; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ae401ebcbc4so915913066b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752062170; x=1752666970; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vq5TdR2eOaZQq4wzgDb/MUODx9FACB9AhF7YRu/UXj8=;
        b=Nk5LU/unA3B4/PoWsjaeQ0G84+QYetFfFXNnyM2xLEPwM5f44Ekf3SBvG97fEPruyw
         D+RMfYu3yYQf5yl1InGmEwWF86oEw96mDQaHWLPDCrt3GwThX64lC/hG9HX3ke/nRj4k
         JafEfprqmZRDsoRsQOD1orvsXmm85bKd/xZUHELyC9kjAMVsfx6SW1jYi89wiQO8ePp5
         BuJG0Zb6RGPSz0+b7jLlZ93sJ0oAOpel6SDgiRlApvgYII1KBqQh+zvwIqrRB19Uocs0
         2l6jMoFTI+wV/9XHm5PZW/mHKi6aDUFBMkk5Vh8xwfPPh0tDebuyjsnCvmakbZ++iWrJ
         4GiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752062170; x=1752666970;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vq5TdR2eOaZQq4wzgDb/MUODx9FACB9AhF7YRu/UXj8=;
        b=Dwwi5fwsZjE9naCHE5qUAoP5orgW5nZt8fVM94oS5N6khZxzfK6LBNDm4xHAzfATqe
         EPUcMngC6mYoNgZjb4lqyqfTbf2GIwr4Dfahtod3EJNDBhlo22hweO+7xDcG2fAXzlR3
         xaj7lhPW+DFW/sDvcR/DrhSDa4wxWFwgfWK9nXGoRpYB+qeU3+eVkTU7Bb3Ui4UwE+Pr
         ow0M1mLI8MDtDvrmOLg8RwX1l+WsB0B9fLx6O5WMBVaM6oj8zqAqaLJ9PMcXinnn0nn8
         NcGs1zGdHBleiHyKvsp+dgHqOB7XHHwgGuSHmTYrKQ/H77/2Pb212NmUgSzPkzdLkECW
         H3mw==
X-Forwarded-Encrypted: i=1; AJvYcCVw8I1BZh04Y6+ROArKJ2Yl7XN+T7coi89VfiBVQbJp7eZhpouIGzfyXPOZdxGwisKnlNgq9UGuJ93t@vger.kernel.org
X-Gm-Message-State: AOJu0YyuUMG9uHkwsKuxd0G056bJQyuOb+7ST163zqOFFNA5tzK3oeSR
	obIXNH+H+61LZKzEDeXjFEBkdUZr50/Ie4I+gcrjDLMaZcANLPjinA0L+smhLUywWGU=
X-Gm-Gg: ASbGncvFalWEgSHWUdVbdTMNwynLSVHVdQ+R2vofFJ9mstnATDeKdF5YyXmtm7v5XLy
	OcsMtF0NnsrvNDk+oCEPP4byMUFIY/NVJtAbkuQZaIUDsNWdLn5yMXR8hXsjUNe12Vq9tidj9cB
	NerzNF0zuxcoh/xQTQ9L8XbNByUTjJ4p1dml5IePBxxcWtaPUfOt4rq4DjV4XPStFuDtEXNYPmq
	yoe2QugaNb02Ajz+t9um2wiQ2cO5UMyE3FuQXArH12EtPme1nHHb42NdyN07sDTw5BTpnMCWuL7
	5DIWTIoTefKVJM8HhBHeHLWp2iNrFANWL9pC1SGYB0AV1Fl5RWqLG/0cJbNZpKEBf6+bZr++DZx
	vDbla3NeJXiXh2tRIcJEybQHTlyvVk10=
X-Google-Smtp-Source: AGHT+IE2lZBOcPVAhbCa9Rpom0DV95oxei90z5HkhH9xsj7T1YUJ++qd0fI4HdkMjuB4B5bxAz52+A==
X-Received: by 2002:a17:906:c152:b0:adb:2e9f:5d11 with SMTP id a640c23a62f3a-ae6cfbe874bmr232648366b.37.1752062170333;
        Wed, 09 Jul 2025 04:56:10 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6ac460dsm1094703366b.106.2025.07.09.04.56.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 04:56:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 09 Jul 2025 13:56:09 +0200
Message-Id: <DB7I7D3P01FF.3T5WRSTJIWLVK@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com> <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com> <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com> <23ae6ddb-682a-4c4a-bd63-f0a1adb6f4f8@oss.qualcomm.com>
In-Reply-To: <23ae6ddb-682a-4c4a-bd63-f0a1adb6f4f8@oss.qualcomm.com>

On Wed Jun 25, 2025 at 4:20 PM CEST, Konrad Dybcio wrote:
> On 6/25/25 4:10 PM, Konrad Dybcio wrote:
>> On 6/25/25 11:18 AM, Luca Weiss wrote:
>>> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 PMIC.
>>> It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
>>> L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
>>> LDO512 MV PMOS.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>=20
>> FWIW everything you said in the commit message is correct, but I'm not
>> 100% sure how to map these LDO types to the existing definitions
>
> OK so found another page (also made sure that the supply maps are
> indeed OK)
>
> SMPS is OK
> L1-L11 is OK
> L14-23 is OK
>
> L12/13 -> pmic5_pldo515_mv

Based on what are you saying that?

Based on 80-62408-1 Rev. AG for the LDO515, the Output voltage range for
MV PMOS is "programmable range 1.504-3.544" which matches "pmic5_pldo".

But yes, in the table next to it, it's saying 1.8-3.3V, which matches
"pmic5_pldo515_mv".

If you're sure, I can update it but the datasheet is a bit confusing.
Let me know!

Regards
Luca

>
> so please update that and add:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad


