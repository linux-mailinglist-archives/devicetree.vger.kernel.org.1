Return-Path: <devicetree+bounces-223397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE96BB3FEC
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 15:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABE452A134B
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 13:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB8E31195A;
	Thu,  2 Oct 2025 13:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="oNSIoVly"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF5929ACC5
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 13:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759410859; cv=none; b=uCbsr4GfZzeu3W910sA+rzILZjIqCRCORHs5j4Dj6lAyT32H2yXDxwG1TXu1XbG/EjqZ0l2bZSy4fWj1TzVPBLD+uYtqHlJhJcJG8434Wv+R8nKL9YPJW9ovOXcx1HC0v1OStVyKcPZYE2jmlAuQR8ko1dHmbsmbcu1pYQO12j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759410859; c=relaxed/simple;
	bh=abn3PG8XEoGYwcyzS9IOIA5hdgX+qSfZsqs7WVvuQUk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ThYH7qSWH3zUbIrV4+7gpCSiCnu2m2wZyWTmyx919hwdUaU0GJUgpj11uzaMY8bI1yfl4s4j9oXd7hgC6kWxYNvxxqzRIBicjxVGVH1mtz0vopBSkjqKoZ7o1eZRRJhAmRIVq/YMyWiKvz8lNOlEiU4udOiPaXfezCpBQsERvFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=oNSIoVly; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b0418f6fc27so159734466b.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 06:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759410855; x=1760015655; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yqfTggLDM2JL6k3wlUbLdqaGH8N69rA5/6pVtkxsZXM=;
        b=oNSIoVly8WAY8ECxlj73sDNml9qZPGLVVqB5sn5bHKVtZlVyfyaGy6bFKQz7ObjVry
         sDN2p0Ro6RMNzLgr17wcuFSrylh1l1POEvR1fuRhyWjbhrHnj5CilepQoBa+W3ZgDA4B
         D0m1f+l9VomdMHfHTaQLll7rify2cX56m/kFWPvXc1C6SCqnn2D1h3swKWA46m6eeeKz
         kI79JorICoNLqz+95+iWGI5RdIeeoZ6+nHZ2KB1A/+Cz2d8orkIRJpaaN3GqRV499Fx2
         R0M5SyPhxbeT7ErZ6fY2gy/j2Hg9OUihC+TQf7Gi05rlSUmRPX3xRxL8CIjOf9SyMSRa
         yESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759410855; x=1760015655;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yqfTggLDM2JL6k3wlUbLdqaGH8N69rA5/6pVtkxsZXM=;
        b=X6sByPwd8gn0zSljaQGYZULONDhNmNKfYkCdf8vKOJBvolIZPFMgq4cYHCGlyqFkAB
         FeCrmW3AGtyrEqfPV0hLjLDbmPTFA+Rq1i5MsSldPRInPNuWqidhrumdmibOE/7pm6bI
         Hz/fh83s+hxB5PtFlwZILSLL21QnKM9cz0dLyjNkomTU1u3OoDaLEMMekfF0wE3AepIH
         uCk0UEQ2VqChNodVFeXlYvgWlZGvZClA4BdjsTSppcWFFX744Dp7UdWu8kcp3LTXEMDH
         mMSFcAq5nMuuhsW96PuUuIGbWy7JCtApyRYnLH4qzhrvoEGII+jhj8CmH9G5LnVuSWTY
         qS2A==
X-Forwarded-Encrypted: i=1; AJvYcCUqU7umKpas2Remi20kofbGFHrQAoUjvrzOxm6uA3gqyjD/QX5P81BZ6R7PsaHprj91qnCmRKMNQ9m8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0zJ2RtWHrx073v8BDFc0J1DFmHVkXNg2onJEtEYWOZezrGY4e
	9G4kAh9+zAVBNYrY7mOApAyW+tkYyJy6Al02xCWtM5la5eerVX8hYLo8p/QmSHQmTKA=
X-Gm-Gg: ASbGncvWODosl9oF/QhGXFhzwdeMI6HX5pEcBSqJp22fBCUlpJV+YlKXcsW4M+ZBwMH
	lcWYNdfLo2f8hfHvySNVV5RwCm/TcTdzMjJpiz1HzHOx+OixlBaYf8hPC+ryP3mPB1nmLBPgU7z
	E6QDschDLL08V1gVQcc92zItayaiFDdLB2GVn2Rx/t3xOhfcQDGPl+lm7QGC3Cl0+cXI3MJQ0eF
	B58VS9H6Vg+prNABmr++sx1lkq/MtuyCyiGrjdJzEd3VimAa1U6qY4RvLli/uCAfwny3uYFp3/a
	+ZdkXfhkMzc1vAWDc/zS3Z+khVo0zNuBdqJnX1Bg1GjLoA/kawROWZXuwVlrkwR8jtE3gbGdyLo
	AF9H6uz/AiU0T2caelmtktvwfWIfTM/qyshsqBz/W40LuFk8rGpTttWZMJnvk05jUpzvCHuYzPM
	hy/OKQjo4/YBgHfSevL8fP6OMtpXo=
X-Google-Smtp-Source: AGHT+IHdC79LilPtaS8UDTu8UX4x3ltn3xPSSVu5zWW7q/miLeA66hPm/5CSpLhwtBO8hi4Phex1ug==
X-Received: by 2002:a17:907:3e92:b0:b3d:30d8:b897 with SMTP id a640c23a62f3a-b46e1767bf4mr871148066b.14.1759410854778;
        Thu, 02 Oct 2025 06:14:14 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4d9f5sm210176266b.66.2025.10.02.06.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 06:14:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Oct 2025 15:14:13 +0200
Message-Id: <DD7V3G4RLB2I.QYT4BWT1LA5U@fairphone.com>
Cc: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI
 pull-up
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Griffin
 Kroah-Hartman" <griffin.kroah@fairphone.com>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, "Daniel Scally" <djrscally@gmail.com>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Wolfram Sang" <wsa@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
 <20251002-dw9800-driver-v1-3-c305328e44f0@fairphone.com>
 <1be80052-3ba5-46de-804a-de995f8db5d4@oss.qualcomm.com>
In-Reply-To: <1be80052-3ba5-46de-804a-de995f8db5d4@oss.qualcomm.com>

Hi Konrad,

Answering on behalf of Griffin :)

On Thu Oct 2, 2025 at 2:45 PM CEST, Konrad Dybcio wrote:
> On 10/2/25 12:15 PM, Griffin Kroah-Hartman wrote:
>> Enable vreg_l6p which is used as a pull-up for the CCI busses, to make
>> sure I2C communication works as expected.
>>=20
>> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
>> ---
>
> Makes me wonder if we should maybe extend the CCI definition
> (or maybe the common i2c-bus binding?) to accept an external
> pull-up supply, as this is a common problem.. (+Bryan, Wolfram)

Yes!

Unfortunately though this effort has stalled some years ago. There is
"struct regulator *bus_regulator;" in "struct i2c_adapter" already and
vbus-supply is documented in i2c-mt65xx but afaik this not functional
because some code was ripped out ago because of some AMDGPU regressions.

> We could then shut down the regulator when cameras are not
> in use, preserving some trace amounts of power.
>
> Or maybe L6P is already used as a pull-up supply for more things
> onboard and should be always-on either way? Could you please
> check that, Griffin?

L6P is only used as pull-up reg for cci0, cci1 and cci3; and as power
for stuff in the camera modules. So if everything camera-related is off,
turning it off is actually a good idea.

Regards
Luca

>
> Konrad
>
>>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/a=
rm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> index e115b6a52b299ef663ccfb614785f8f89091f39d..2dd2c452592aa6b0ac826f19=
eb9cb1a8b90cee47 100644
>> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
>> @@ -749,6 +749,8 @@ vreg_l6p: ldo6 {
>>  				regulator-name =3D "vreg_l6p";
>>  				regulator-min-microvolt =3D <1700000>;
>>  				regulator-max-microvolt =3D <1904000>;
>> +				/* Pull-up for CCI I2C busses */
>> +				regulator-always-on;
>>  			};
>> =20
>>  			vreg_l7p: ldo7 {
>>=20


