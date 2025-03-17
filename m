Return-Path: <devicetree+bounces-158038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E595A6441C
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 08:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99CAE1891009
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 07:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C8B21B9CF;
	Mon, 17 Mar 2025 07:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SKEvc+fa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4033219317
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 07:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742197552; cv=none; b=WaAOTQk12aho5G9DSog/5js9+uQElZRtzEdNgi70x7RjfTqZ5CQzRH69Bff0u8HM4y/nYX7HIK494xe47RpD+OwbACaIdfXhy8ufOQvoydGOYRofEtqXNeukjUbesoZj3rydgjczH7qRpfNJiA2OUImm8eJGv+U5o8iPLhWwItQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742197552; c=relaxed/simple;
	bh=z/35C6OncKImSrzwCMGsv4v7SHuEIwjIRKaGVCMngMk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=rTdCkc1UhzJa8DExLuJziEdDPzknvmwQSRPpcUg+KYl26VRZqMiepaGtx/cf5MUeE+Ccn40kqqdVPfbTXaZNy2Mfng5f+AzUIN9qMXMof97me5pzNjSy4GNDNg7KCbGizxoXNXOd5lv0fQsVlsMiDJyOMpFoCQvBO8tOO4J0wPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=SKEvc+fa; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e5e1a38c1aso5044430a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 00:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742197547; x=1742802347; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gl7H7yZOIWFrlEzxdHx2ScaCc87hpAhwNF8CQ1QYBik=;
        b=SKEvc+faLEJJIRTvnn7nJyhuqtSC91fYhPUaM4EqY2EHC+FV2cPcLnlBagyvmEnv3W
         dG69pcspGSax0w4/OXWmYqyo3Oh+qD1h+n8MCf3k2daVrm5Jh82vxgkpgHFAPokeq3Js
         CaoqeTH4hS1KfpGm2CYmIaK8qiisMHd4FwCp4U0823sGqc8UgkDF41QiveiFD+zo4bPf
         04zWvXBLP8z8wVzIKds/n1A77x9A9SGZgB7UEvgWmEX9Sea0lYdFQkOTnkonRi3wNZvw
         51KUI07RWyW+Kct/edAQq/TuyYm3PvALwuZkI09dbcWRzXOBA9X3fDHyC8BrwBRtuZf1
         JEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742197547; x=1742802347;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gl7H7yZOIWFrlEzxdHx2ScaCc87hpAhwNF8CQ1QYBik=;
        b=RUfDLeG1WDHfhGKznw3Li1Vt7L9pQ7TB3dvzRSgZNS0uk0EOSGISh0isZo1kmb6itb
         IqrgdTrvQH7TZZBwaEBgquO/tRKzJUYXQpO7zaUqeX9xQgRn4z3uq3josS36XUkuTCno
         i1raz/bM67BZlKxM2cGg+/oaYdSIJJO5fqjcosuWDuxkFFdcfPK+E2FGlBmRzeLmtCyp
         7Gg+hK+XZfnF3e2YmA9w3RxdxbJiluu9Z/Ghu4VfynQQmh+4+eJwrvlCHY8rbjBlhNcT
         hbvw2sRba3GDaU0yxJsgMH/gvdniJ8D9NQZjbju6lMXNUDdE8DbSmI3a3he2LX10k9Z0
         ipDw==
X-Forwarded-Encrypted: i=1; AJvYcCXF0tmtkRd8w4eFa1J7++P1yUJ8PVfFPJsuKbDEChscyJ2bnKV4/Sp02Oltctfmbd7diR5R/6+eKuZr@vger.kernel.org
X-Gm-Message-State: AOJu0YwJCnpdg5RF29tcEuFrMjTPci+SRl3iUCsjRQIPq86N13JH4I1z
	+/YIg3R71YTjc/QQ9lzx9+ykuRH40bJyG4hz4KBfWpLYJIhp1ALGyc0nUVt1h3Y=
X-Gm-Gg: ASbGncunmW9BStfpSzc80GKjjjX5M9oIR9OUP914T8Lbmec4ezTDa2VV46jDURtqZbi
	C2zaZFQfNtwNCoXtAAgguA5K2g8dpoTSrNsr5n2mwpYWWaTervlhb990jrKPw3DXsS7b2jKuI5O
	Yvu5CrWS9Nc7TQ1IK6UJxI01ZzvoPNbs6hD0AvtpmW4D+w6HCKxrLDfau3CWtnx9Qcq44nA3NnB
	7yw4C+FGKvKFS0RyMCmCVqH1nXxC46zcE0CycvrBTVkJHpJWhfWZLDhQL5ZnSdIYodCSk0fH3qp
	DfoelaDMtR0NzVAt+yvPyjtDfrNJiKDz+qEOrnw7oQ6JA7KZ5TNrOttoSRSfali8RMGTcCKef5N
	rp6OXUsXIVfAmPw==
X-Google-Smtp-Source: AGHT+IGmNMHuunVdQSgHrKnOfe/ERZGsvr0xj7JwdS+NX5aLfGQnW8CH56uoLVrH9JWD/35XdRKpyA==
X-Received: by 2002:a17:907:2d92:b0:abf:6b14:6d00 with SMTP id a640c23a62f3a-ac3301e1e64mr1158441066b.5.1742197546956;
        Mon, 17 Mar 2025 00:45:46 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3147ed1e4sm623996666b.66.2025.03.17.00.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 00:45:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 17 Mar 2025 08:45:45 +0100
Message-Id: <D8IDHJAC4BJ1.WNTMQEJXD2R2@fairphone.com>
Subject: Re: [PATCH 0/2] Some small preparations around CAMSS D-PHY / C-PHY
 support
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, "Robert Foss"
 <rfoss@kernel.org>, "Todor Tomov" <todor.too@gmail.com>, "Mauro Carvalho
 Chehab" <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Barnabas Czeman" <barnabas.czeman@mainlining.org>, "AngeloGioacchino Del
 Regno" <angelogioacchino.delregno@somainline.org>, "Caleb Connolly"
 <caleb.connolly@linaro.org>, "David Heidelberg" <david@ixit.cz>, "Hans
 Verkuil" <hverkuil@xs4all.nl>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20241209-camss-dphy-v1-0-5f1b6f25ed92@fairphone.com>
 <D82FU3SIX5RZ.1Y525GJO0UOAA@fairphone.com>
 <eb06daf1-3cc3-4b31-a0bf-bc450cd0f041@linaro.org>
In-Reply-To: <eb06daf1-3cc3-4b31-a0bf-bc450cd0f041@linaro.org>

On Wed Feb 26, 2025 at 3:47 PM CET, Bryan O'Donoghue wrote:
> On 26/02/2025 14:13, Luca Weiss wrote:
>> Hi all,
>>=20
>> On Mon Dec 9, 2024 at 1:01 PM CET, Luca Weiss wrote:
>>> Since the hardware blocks on the SoCs generally support both D-PHY and
>>> C-PHY standards for camera, but the camss driver currently is only
>>> supporting D-PHY, do some preparations in order to add C-PHY support at
>>> some point.
>>>
>>> Make the dt bindings explicit that the hardware supports both (except
>>> for MSM8916) but also add a check to the driver that errors out in case
>>> a dt tries to use C-PHY since that's not supported yet.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>> Luca Weiss (2):
>>>        media: dt-bindings: media: camss: Restrict bus-type property
>>>        media: qcom: camss: Restrict endpoint bus-type to D-PHY
>>=20
>> This series is still pending, both patches got reviews and no pending
>> comments from what I can see.
>>=20
>> Would be nice to get it in for 6.15.
>>=20
> Yes this should be merged.
>
> Thanks for following up.

Hi Bryan, hi Hans,

6.15 merge window is approaching fast, I wonder if this series was
missed still.

Regards
Luca

>
> ---
> bod


