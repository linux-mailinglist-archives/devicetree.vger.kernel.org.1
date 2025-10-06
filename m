Return-Path: <devicetree+bounces-223785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8272BBD7B4
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A04BB1882F74
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:45:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687A11FCFFC;
	Mon,  6 Oct 2025 09:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="a5mSsHUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C621A58D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759743880; cv=none; b=kxLENkDQNUm28++rN/Igdm3cvgNB1JBHGb7oX6BdOMCXdrQk2lyFGaR6nf2ALe4dmuXnYO8SKaCGa37ZqqL2ixN2Xp1lmYxk0cjjRljtyunnvPNqcq1vTq7FxyHbpBY5hUDgmnPUo5kekPYw2es9VCyIZd9KJ5M2lCrbH3O91DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759743880; c=relaxed/simple;
	bh=MvXtf65bnEuClKbWJkEN8SYPRB0VB5jdN4kz//IO70M=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=s4I46+H7D6Hygc9Mf325jCNcGWTBtOQNp9jrOMDVRZBgGhJRqZU9AqUhJPA1IUk69t4WCI5HCZ0fHrXC+rIpPxhVFvzd14y+X7kFYPegTeO18AVBvL6CWwab2X+2nnps8YQ81MmxCWiq7hZe/armo4iUQUv1IfwWzpzOOyUUiHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=a5mSsHUA; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so2296759f8f.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759743875; x=1760348675; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7CcE947gZ6W0sbf7VvCWTggrTIyTkHIFkzfAcLajFas=;
        b=a5mSsHUAfVXrAdz0NQmYHe8SrWX+c5qkCcozMg1TZewplpKuSVHgqnpz3CQBpubum6
         fIe1TSccmcNGZByoXPdJbXaFvIKCsWONbGlGk5rE+33z/vhCmhhGmRcKuWLuACrOCPLz
         8aY6Ye3R4Q59TzNYc/ffc2KL1fXNAbDFVQkP/46Bz5xiWSV4pNYi2tHwEphe+hfGzIUD
         NkAkl0MzJdvqdhuwdIOdi3E0XVtVCX5PQNYWa6Tuiy6Hb7sSbHiirar45gAVI84FTynG
         aIb2eOpwr9qEqDwA8rfBtytXraBewejQewHp3cXaAZSFCnTfxF7k9deYJv99OSQL6mb2
         ickg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759743875; x=1760348675;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7CcE947gZ6W0sbf7VvCWTggrTIyTkHIFkzfAcLajFas=;
        b=OHl31UcXM+Jbtu5WTVFIx5/HI/wCAidhG2xqJzLd2FC8JcTGyWswKLiJ2MnWJg4VbD
         8GwQLJoWNe4aKtTgwS0XM221J0Dq7F5rObJbavCnwVoTpkFfh1J7u8mOBZqHKKo94qt2
         nwynJSrV6I4timposvac3RCFUFCXXhzws7jhmsIjGlTGWe1QR6Wu/Fab9MtDIxQ4sJRK
         fmO3mHFpqUCfQnF/gTgu9HCQbeOGKqG2O3iQyyx4lsnT8ajZ2CiT7RUvCSeA42xBiBVy
         fJ5zEd2lelULZsA9q/6Cs3XAC/9yZ1aaegXmnOysCjzVjh7IxawkOzfH7l9JWDqRM/P9
         rM0Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4CViK5iCvvbMeAjs8gfEYhu5vrAN+He7O3lwVFtZQ30Gt774VLGRrQX+asByvNb15307Y+84Ff/QK@vger.kernel.org
X-Gm-Message-State: AOJu0YypYrcvDek9NztohZPLg9cZwVv2nnoOh3f7zbsdTM6Fubg/e7YY
	+iQUGQ1lZiEYFxZGA16AidmUTiU8kdWW3YYsJTRWY9xUo/qRnN2SfEOT7/q4AHGOpyE=
X-Gm-Gg: ASbGncvQ3P3T2dqt1UDer3Lay40/FACtZ3pyA06LJKFKEB0DE3PB9NbeXeKQyfPM/FX
	J5VuyA8wq3A4RAGS2Ns7tDifUdAt/PLww+LR6qfDDWdhPygUffl5Jz/IkISoU9Il7duEPSggjRu
	sehsUGKgUdRADg1J+yO6JtVzgWKRTa7hCFXWaU2KuFiblLxMyVXICrsCpHrjp0fg3sTPVsvKqpg
	8kM/pp4jBXSFvKreOkwgubJUhLmEz4hss1lKQ+b/8my/7UJx6AkBfAjElx6XliMarxHXp+Ol8DM
	gC+YiI6zC+RIzMGuWMYr1zMaecUIIwXD+JSZjcPoa3auM++/AaBMIdADz8RYG1mb1byxtYyuG3/
	OsXbIceNfCJTwVKnFfgLK6kV9AanBjFr704mrp4OghrFPvmKCjhGxDwom/ELp27csXxrDdEkffF
	1G1NJMfyujHwY=
X-Google-Smtp-Source: AGHT+IH9WtXT37tlC5B2tzxDbJy1Vvge3ED9gBQtVklsT4u+uNG3AW/fSGCPppGvpB9zN4GOAz+5Sw==
X-Received: by 2002:a5d:588e:0:b0:3ec:d7c4:25d5 with SMTP id ffacd0b85a97d-425671b27c6mr6490559f8f.50.1759743875402;
        Mon, 06 Oct 2025 02:44:35 -0700 (PDT)
Received: from localhost (pekko.lucaweiss.eu. [5.180.148.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c4dd9e4sm137604575e9.10.2025.10.06.02.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:44:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 06 Oct 2025 11:44:33 +0200
Message-Id: <DDB553DRF89P.15C4AKUO7IQXH@fairphone.com>
Cc: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Add UW cam
 actuator
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Griffin
 Kroah-Hartman" <griffin.kroah@fairphone.com>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, "Daniel Scally" <djrscally@gmail.com>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
 <20251002-dw9800-driver-v1-4-c305328e44f0@fairphone.com>
 <dfc093a1-e13b-4342-9015-5a896bf18d5a@oss.qualcomm.com>
In-Reply-To: <dfc093a1-e13b-4342-9015-5a896bf18d5a@oss.qualcomm.com>

Hi Konrad,

On Mon Oct 6, 2025 at 11:20 AM CEST, Konrad Dybcio wrote:
> On 10/2/25 12:15 PM, Griffin Kroah-Hartman wrote:
>> Add a node for the Dongwoon DW9800K actuator, used for focus of the
>> ultra-wide camera sensor.
>>=20
>> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/a=
rm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> index 2dd2c452592aa6b0ac826f19eb9cb1a8b90cee47..0e86cd5ff527925c7dba15c4=
e0ee5fc409fe4ce6 100644
>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> @@ -627,6 +627,15 @@ eeprom@50 {
>>  };
>> =20
>>  &cci0_i2c1 {
>> +	camera_imx858_dw9800k: actuator@e {
>> +		compatible =3D "dongwoon,dw9800k";
>> +		reg =3D <0x0e>;
>> +		vdd-supply =3D <&vreg_afvdd_2p8>;
>> +
>> +		dongwoon,sac-mode =3D <1>;
>
> This property exists, but isn't documented (you need to extend the bindin=
gs)

Please see the patchset this one depends on, which adds dt-bindings and
adds prerequisite driver support:

https://lore.kernel.org/lkml/20250920-dw9719-v2-1-028cdaa156e5@apitzsch.eu/

Regards
Luca

>
>> +		dongwoon,vcm-prescale =3D <16>;
>
> This property is neither documented, nor consumed by the driver (it may
> or may not matter to you, check against what your presumably-BSP driver
> does with it)
>
> Konrad


