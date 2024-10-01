Return-Path: <devicetree+bounces-106681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3366798B502
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 08:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65C961C23636
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 06:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB9351BC08D;
	Tue,  1 Oct 2024 06:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u3Z7m3OK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2181BBBCA
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 06:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727765798; cv=none; b=SYyNqv4NmYVjY62/iCr8c4NNTLzumFHoHgxP2lz9dUxmqFzgq6e6lTv9aA0HLFUwdGT8Var/FME2YaQsRLs7KPv0LNiS2Wov9BTMD88XFwj9LbeY/qlIx9mdyert3/REt7DGG2mT2nIwtQxBhnOwTxWKgi5RHbUYJykLSiPt4M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727765798; c=relaxed/simple;
	bh=P2iz+8xGuqHWu/q5RowKgPmgCIQJNV10OcVir0GCkb8=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=k2b9Lkm/bmRjFT+/lUx4XViE1gJrmDGJdQhlZukurN8WsUnJiGOI7jAXILhYUwQXLnvePx3kzEr1aHWZ+CJvDC08AwCquUxa8lbRBqqqxb4OhNSHXNVJfdwn7CYircp/w2TF6Y+0QsC2FFg/GO+L4/PmuNUCxkqecIKr4IiAed0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u3Z7m3OK; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5398e3f43f3so2834649e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 23:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727765795; x=1728370595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ryx/pMOkdMVMTPBu2h9pcD06K8eaJT9I2qHgxYrkpHU=;
        b=u3Z7m3OKfcGpX8tDingpXUYrr7SDOyZHtqgtfUBfAcZ2nrZQtHSXNgvQMpjUGySsF1
         2uNCThU+Z14/p3VRb89DHfqpqURPUP/sq5dPUfV6UUTl8wP4X5JIRxzfzO+wuV0qm/wE
         JZBLtLPzc4QYOKVLM52+c29g/4sLMzQTFbPHhj7V4jh8BPdSH3rVt0UBmfBV8Zi0QdQN
         iSel9Xe6887hhbNE1TiuxL+indVNXW0XGK/v38iyxW9zx8Ch4kKR2cKPGI0PwgfU8B9o
         RRtzQycK+l5crnx22oA7ztZe26gfnQawsLUVTYAwBe5Lk4ULaNXg2LCaGpA66Ef092PQ
         I6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727765795; x=1728370595;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ryx/pMOkdMVMTPBu2h9pcD06K8eaJT9I2qHgxYrkpHU=;
        b=M4CMPq+9vmUhH37bIK3AiC0AqirNgF01hD79MhKsPmkX9XuVVnmn1/pJ6V8DUqXiw7
         0ggHRmg7HAtZQZ6dTlxGigHZCP0CE5+pLBHGn4AZ+y2AUk/eszyC8C8nj/v8ybOYEvRK
         6LCylgdxH0QszIjcXDb7ssRwJapiDVUCk+cy3madBW5ERl7uxMYziWKwFGbeAffMrW1O
         zgLYorO7t3tytPOl/+b0VBzdxYPkjIVghA5VKyMbfzZmw0hQcV3PDiSKqrq/UzoMR657
         Jz16iPJiSh1AsDxW5N7mYYO2gVJWXxXFCJfdxqTErberxcVYwPI+Q+so4nHSt030l5Qn
         CrdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrujh9zqcFwJtpamVI6sgrKMWFXUn5lOD44LZz3tYS8Yl9dWMN3NYpmZpluxOVbB0vzkXSOkXrMP1y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2vBElyfCGzwMWV5+49nQz30aHBQNqsJoQjX3RC9OGmnll/RVf
	p56GA6HzcOgYDufMRDd2takUxp5tTh6r68ejGt02qpjlO7yumXBB+3GLxH/3kUKe/NstPyvnRaP
	l
X-Google-Smtp-Source: AGHT+IGmpVzWubILBrr/NVsOGugY2yx5KSFiqaVKZfoYXmMzEejhXHiw9mEnypO4ONCw02IXyohG0A==
X-Received: by 2002:a05:6512:3d93:b0:535:65ce:e901 with SMTP id 2adb3069b0e04-5389fc32b7dmr7801243e87.4.1727765794825;
        Mon, 30 Sep 2024 23:56:34 -0700 (PDT)
Received: from [127.0.0.1] ([37.155.94.96])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c88248af1bsm5618973a12.75.2024.09.30.23.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 23:56:34 -0700 (PDT)
Date: Tue, 01 Oct 2024 09:56:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
CC: Sibi Sankar <quic_sibis@quicinc.com>, konradybcio@kernel.org,
 krzk+dt@kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_2/2=5D_arm64=3A_dts=3A_qcom=3A_Add_?=
 =?US-ASCII?Q?X1E001DE_Snapdragon_Devkit_for_Windows?=
User-Agent: K-9 Mail for Android
In-Reply-To: <eqy4yicgeqlgaytgzybnitvbrdr7jmjjk5k2swmadad6scwk77@ubaf7a2kgmdm>
References: <20240911073337.90577-1-quic_sibis@quicinc.com> <20240911073337.90577-3-quic_sibis@quicinc.com> <pt4wtycddqhcvw2iblaojmzsdggmlafft4vu6lg5j2vstbhbqj@acenyi5k3yeq> <eqy4yicgeqlgaytgzybnitvbrdr7jmjjk5k2swmadad6scwk77@ubaf7a2kgmdm>
Message-ID: <1BBC34CC-92D9-4F6E-8DFA-1F2DA36D545A@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On October 1, 2024 5:42:35 AM GMT+03:00, Bjorn Andersson <andersson@kernel=
=2Eorg> wrote:
>On Wed, Sep 11, 2024 at 10:55:05AM GMT, Dmitry Baryshkov wrote:
>> On Wed, Sep 11, 2024 at 01:03:37PM GMT, Sibi Sankar wrote:
>[=2E=2E]
>> > diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit=2Edts b/arch/ar=
m64/boot/dts/qcom/x1e001de-devkit=2Edts
>[=2E=2E]
>> > +
>> > +&pcie5 {
>> > +	perst-gpios =3D <&tlmm 149 GPIO_ACTIVE_LOW>;
>> > +	wake-gpios =3D <&tlmm 151 GPIO_ACTIVE_LOW>;
>> > +
>> > +	vddpe-3v3-supply =3D <&vreg_wwan>;
>>=20
>> Please use pwrseq instead=2E
>>=20
>
>What benefit is there to wrap a single 3=2E3V regulator in pwrseq driver?

First of all, is it really just a 3=2E3V? Second, is it actually powering =
up the host controller (as expressed in the device tree? Is it a power supp=
ly to the slot (in this case, I think, it should be expressed differently)?=
 Or is it a power supply to the card itself?


>
>> > +
>> > +	pinctrl-0 =3D <&pcie5_default>;
>> > +	pinctrl-names =3D "default";
>> > +
>> > +	status =3D "okay";
>> > +};
>> > +
>> > +&pcie5_phy {
>> > +	vdda-phy-supply =3D <&vreg_l3i_0p8>;
>> > +	vdda-pll-supply =3D <&vreg_l3e_1p2>;
>> > +
>> > +	status =3D "okay";
>> > +};
>> > +
>> > +&pcie6a {
>> > +	perst-gpios =3D <&tlmm 152 GPIO_ACTIVE_LOW>;
>> > +	wake-gpios =3D <&tlmm 154 GPIO_ACTIVE_LOW>;
>> > +
>> > +	vddpe-3v3-supply =3D <&vreg_nvme>;
>>=20
>> Please use pwrseq instead=2E
>>=20
>
>Ditto


Same set of questions=2E

>
>Regards,
>Bjorn


--=20
With best wishes
Dmitry

