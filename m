Return-Path: <devicetree+bounces-219185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A12BCB885B2
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:12:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DBE558160E
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B70F3054F2;
	Fri, 19 Sep 2025 08:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YJBB1iDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEF9305058
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758269544; cv=none; b=bv2fb4mKeHv1Y/ZmMnnhbj/To86WeS6HxTdmpi3p0DR31s7DVkRqPxkwkGLEiG7Yiv5FSe1XygAdV6cXzAG1tIR40n9j46abt/WGB9kdNdeTHXF0B/p3I6WWvBSXTC1jIrbJ47W6rMJnZN/gipulIAj92IXhwYl3SMrJtA+lQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758269544; c=relaxed/simple;
	bh=NpaY/s4HIMDt0+2Bxnt8uJctQlICgEp1j3rKlIvDyLQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=sYMuMcFJsphaUnHsXCfnNaB7QZgTIDR/65d5SGzINW7BfzlR0/TncYAGV6pBDOMnbMQSCsgxx7h5wMEJT6OmMz9PflkfExVrJmaEI+bRZNHagnMHdBShlyn5vj5S+8n+qGTNuAH3tgAUrOUAXYAP60t+ttcJLbYa7lJr7Tu+Zyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YJBB1iDZ; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-62fbd0a9031so1102176a12.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 01:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1758269539; x=1758874339; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NpaY/s4HIMDt0+2Bxnt8uJctQlICgEp1j3rKlIvDyLQ=;
        b=YJBB1iDZ2SM/3fNTx+cKBUR2i3rVdSHcZQhcVOc1zml7yyFnwsG0wVbwtYUdJwiyR8
         meRFgoRJiFhqJn5lbG1V8ayujsMpvqErsq29EiWUXCFSqAJ9TRqEZ/cHTtL/Uq1IsET9
         pFB89G2kRXutIzdLi35DWtXcnZGuBSO4P4fC3sHteLK7ubTeFS339Yu40ZY89Nckj7KG
         lrkqBiSxw6EyFPcU9IrRPyaClQLfPTi710tAxkBySmh2HWH7C14f/YREbthmwZZVUJT5
         3jSBcypiUAXvqeXaISKYpAjFrTUFLXauCYnCp4IQ2oZn6RAT1ctCuJ2cPXoC9IuJKBJk
         MucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758269539; x=1758874339;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NpaY/s4HIMDt0+2Bxnt8uJctQlICgEp1j3rKlIvDyLQ=;
        b=ekinD2OSzUzOA26Y4CL5yKrFXJPM6UhwLG6ZlSgAOE3WZYwfd4nYGfm06VeaiCqJ+4
         y9LWqpX2Qij5SoXw/dZdgYeSmDNOCFAjN4EtAdNakG5emn5Ox9Qou+cnHu6aHY6uN5BE
         l94WJATf0bww+lGlvyaGZfg5r4MD4qqhSxX+HttbY5ZEUaRxq8/r9TDueeuP3fvCRbMN
         jHsNrt5lxll0jybQc281ImwDfcEYusoqV/hkwOSUlJC2xGZM5SUQkbIbAfFVe3E6tNYq
         ypxkwTLUC0wTeH26v8B7imOZbPN+Fv+zwRxVXKCS8KUJIB2Mk9xdcPRhfAlvO3W79Axz
         r+NQ==
X-Forwarded-Encrypted: i=1; AJvYcCUm6IxQuIqQsKrhQWALy+2m8HADZgzz/CVdCHz88L0D2nVdWLGqNi+qf1KpMaZUzdhL5X8LVQqb+D2D@vger.kernel.org
X-Gm-Message-State: AOJu0YyFPATaN8n52LGDtpq0Vh/efsmCHu3NBsFloGtuEXNy63L9Fmgj
	CKR6tt8btlrtGK4tEiSzQ+qujqDgpGRG3pLTSNDCHehNUECc4UagvqAkhF7gXd2m4xU=
X-Gm-Gg: ASbGnct6TpIkR9M6IT8FbjGGfkniAbIEGs5VN93sRkOr5BmP1kAGUaXCxqwjWTdrdxW
	5e5duRwFUyYjz5PrXpqGWhTs/rxMOjDfJIQEKPx5TKHzCAeZp1CsJYBE73F5ZzqJTmHdURAA/Cv
	P9+BG2XNqHi9Lhuup3GCl69DMbiFP/IDJs52C+byj8T1G6vDzvw5rKC4g31IfQfhW8Bt+4OuMj4
	q05rRpMV/98XXD0/kv6HQJ+MlyTux6QJt6bGFKS1Ov9UO3vBFpb8t4Dfdj1cw7rk0yEd2YsLVvT
	Bpf1twomKOS+QEB0ThNTyoLLjfaOTI2uYT3nZzdcB8aHthLSFwDVXtQWLN75YRKGoG8Jt9dIDsN
	XzTHymmAV5fG8m7e0IZAmaFeMx1ZuVq90+xJJCe4vTOgIvVyUrxX8OUl6ls5d7ASOZEEH
X-Google-Smtp-Source: AGHT+IGH2L5Cs1Yr4IicnBQLWLPnN2LIXEqc14EimrkOsvHCK05Z8Mf+Sxf46z58s1gpwiushS71dw==
X-Received: by 2002:a17:907:849:b0:b0e:8cd4:e2e8 with SMTP id a640c23a62f3a-b24eedc3122mr252009466b.17.1758269539368;
        Fri, 19 Sep 2025 01:12:19 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fcfe88d79sm378700866b.65.2025.09.19.01.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 01:12:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Sep 2025 10:12:18 +0200
Message-Id: <DCWMJ6YDI2GA.EKTOE6UN9HNQ@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-shift-axolotl: Fix typo of
 compatible
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Joel Selvaraj" <foss@joelselvaraj.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Tamura Dai" <kirinode0@gmail.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Joel Selvaraj" <joelselvaraj.oss@gmail.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <4ae418ec-5b84-40b5-b47f-ee2e988d7e99@joelselvaraj.com>
In-Reply-To: <4ae418ec-5b84-40b5-b47f-ee2e988d7e99@joelselvaraj.com>

On Fri Sep 19, 2025 at 8:23 AM CEST, Joel Selvaraj wrote:
> Hi Luca Weiss and Tamura Dai,
>
> On 9/12/25 02:24, Luca Weiss wrote:
>> Hi Tamura,
>>=20
>> On Fri Sep 12, 2025 at 9:01 AM CEST, Tamura Dai wrote:
>>> The bug is a typo in the compatible string for the touchscreen node.
>>> According to Documentation/devicetree/bindings/input/touchscreen/edt-ft=
5x06.yaml,
>>> the correct compatible is "focaltech,ft8719", but the device tree used
>>> "focaltech,fts8719".
>>=20
>> +Joel
>>=20
>> I don't think this patch is really correct, in the sdm845-mainline fork
>> there's a different commit which has some more changes to make the
>> touchscreen work:
>>=20
>> https://gitlab.com/sdm845-mainline/linux/-/commit/2ca76ac2e046158814b043=
fd4e37949014930d70
>
> Yes, this patch is not correct. My commit from the gitlab repo is the=20
> correct one. But I personally don't have the shiftmq6 device to smoke=20
> test before sending the patch. That's why I was hesitant to send it=20
> upstream. I have now requested someone to confirm if the touchscreen=20
> works with my gitlab commit. If if its all good, I will send the correct=
=20
> patch later.

Hi,

As written on Matrix I've confirmed the patch you linked works on v6.16.

Regards
Luca

>
> Regards,
> Joel


