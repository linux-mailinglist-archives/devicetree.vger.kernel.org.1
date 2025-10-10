Return-Path: <devicetree+bounces-225404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 209B6BCD795
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 16:19:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D9D90355D54
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF742F7471;
	Fri, 10 Oct 2025 14:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AD9QMaiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF1A2F6599
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 14:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760105819; cv=none; b=p2dLRWbt9WlNKsvrqs/XeUiyVU0ODK1l4E6wDctd1X70KK+myLhzdGgCgQnGWgf1lkfkqIhMEnoMM0bCasljJMtsqaUr/LfCLtLD2EeUaRy+LMSi3Pd/tzO82HYU+VZutiGgbx9t3HPYa4JY4FXns17/dYmp2rqsW8CiEsbxC9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760105819; c=relaxed/simple;
	bh=qAfkS0FALkninDpobPdDXMtt67Z25RcuAR5Qg6PQot4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MbqAMDowZvqvuaRtEGNaW29Ycac5TdnzDivZGx6qDIM7APgvzcs4jpsGewpfSgq1EfFQfanegiic024lpYBU9Dw1chuN53s2PxbhMGVjGJ3a2XuFtp8bOzJVRE87GltgsD13TR57lGh4F+u0cZLOX43d1CtNMmr4E2HrMtKczfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AD9QMaiM; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b3ee18913c0so334770366b.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760105816; x=1760710616; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9ETTSmzMEMLXYvaO7iiXW2H9dZ8Hr5VPzXraeMoXOYA=;
        b=AD9QMaiMR2R8edJNlxM5EiPgUp01Z+D755TSj9KpQxVuD9640FQX9bsaLo7sqobeuu
         vuJRu+11YdJVJhXfI99dYwyKq0KFQa+uavwKfARP79LiyRO4aroQMWT9XrLTSPIg9+Ev
         FN8jZZhyfZkDJWOogq2lpLsKlgGGwcVQsQyjVyfXYK0u0hd/bIFKN5ixzLWWLboU5/PY
         WRd3Lx9mbKLPdMpkNKlWH2Gl7cC2nIJelAffmIktbTQfB0I7IEGmT+v3v6x7VCnNiS9s
         nbQXgrvD96F3TQqi5HY5z2scs2EI4lzVNRzi26rOZAGC2cDfZy02KaIOxWGN6sq9H1Z2
         chVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760105816; x=1760710616;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9ETTSmzMEMLXYvaO7iiXW2H9dZ8Hr5VPzXraeMoXOYA=;
        b=SOMNKNBIPDiAilWG+OIhT4vvCcxiPXLPYhjc8Fmz8kFe2ik0U8HnFpGvk3+UvYVF5V
         C5JGxZpU2bMeLtDV/xkSqWBi+T5WLWbcsMJ9Fuy7yei37vuKgHPEMmqRC6wsAU8aSrDm
         RDbAyRL3N6HpWuYfctM7e2JW5TeHKiDT2O/h9Fb9Rf1tz6SVJrQxZtNMsd1Jr4xPZ8d8
         DpkyKVg/8+rkNxqiJwCRzdoOx36Rpbw6wn3Giw6oRlK7RcMBjaUiJ9gRNoQfyx5CT20m
         MG0bAEnmNwR4XKjAaqzfhxQ0z0oKDXAPx7WEmO4Yl1LkgIC94uM435yZ27A6ItgA9NfO
         qY9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3u4C0TVPOTLPNPcqpvtY1LzBxlQXHoz8Q5ebWP1W/RrZYkmgF64uojfeM8xzaJSDjUAX/l/7nirrf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbtw5sGxvrD4poUYKkVzmyd1GNKy6tMvd8huN96BRaRSPAD85c
	E8ASIoqmaZrJADofbNtZMwW3Q9KYrvMfAOC6G5iefoTLjsqQfQKHp1dSlLfwY5Ggm0k=
X-Gm-Gg: ASbGncuv1aQleA8h2N2oG1HOwh8V5FC/PKyk7TNQd1AKKC8vNw8KrNLpl3ukt/d8Iy2
	v3PKsUVVUH8JtQij01ppJZ17LcDqDBRU5swOmECmAfZ0fqcJJI0fnka96Zn+ExFHDngrND7aakH
	Nvua0XFa+HZAS+wyrABuq89qf+51pBF+7teLfsnIOU+hwfEtv0/QKnvcExlp5CFAafkxglw/ECm
	TZRq1RUn/7WglSHxiApJ3+yjszabWUlWZkjg4yqkMsN/yjiU4piUXM+t6h9jOu9I5JL7pGQbWT/
	YvkCElIhnvOa2TaYP7/vgLtbZIXN2IcoxhPoOlbaJUflpceImuePRtv/ZB1c79bQLA1SRB2DVIs
	9p0qQr8gazhX1K5JxKdNclPRjls79bdC7dGe7BT9U5aNYrekL
X-Google-Smtp-Source: AGHT+IHEAsH6ZcFu+OEyw3ew5Qe/YQEPpYcPrHdEy87KxK9nyj76/ZCLGpnuNV/60Jx9Jzca5xe2iQ==
X-Received: by 2002:a17:906:4795:b0:b41:1657:2b1d with SMTP id a640c23a62f3a-b50abfcc8dbmr1274289566b.50.1760105815884;
        Fri, 10 Oct 2025 07:16:55 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d66cc4b8sm247352066b.30.2025.10.10.07.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 07:16:55 -0700 (PDT)
Message-ID: <ccd3c985a202f3fdbead41fcb3f0ba45950f74f6.camel@linaro.org>
Subject: Re: [PATCH v2 02/10] dt-bindings: soc: samsung: exynos-pmu: move
 gs101-pmu into separate binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Ulf Hansson	
 <ulf.hansson@linaro.org>, kernel-team@android.com, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof
 Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, Marek
 Szyprowski	 <m.szyprowski@samsung.com>, linux-kernel@vger.kernel.org, Conor
 Dooley	 <conor+dt@kernel.org>, linux-pm@vger.kernel.org, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Date: Fri, 10 Oct 2025 15:16:54 +0100
In-Reply-To: <176009895995.7689.883182155048414797.robh@kernel.org>
References: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
	 <20251009-gs101-pd-v2-2-3f4a6db2af39@linaro.org>
	 <176009895995.7689.883182155048414797.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-10-10 at 07:23 -0500, Rob Herring (Arm) wrote:
>=20
> On Thu, 09 Oct 2025 16:25:04 +0100, Andr=C3=A9 Draszik wrote:
> > The gs101-pmu binding is going to acquire various additional (pattern)
> > properties that don't apply to other PMUs supported by this binding.
> >=20
> > To enable this, move google,gs101-pmu into a separate binding.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0.../bindings/soc/google/google,gs101-pmu.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 | 67 ++++++++++++++++++++++
> > =C2=A0.../bindings/soc/samsung/exynos-pmu.yaml=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 20 -------
> > =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 1 +
> > =C2=A03 files changed, 68 insertions(+), 20 deletions(-)
> >=20
>=20
> My bot found errors running 'make dt_binding_check' on your patch:
>=20
> yamllint warnings/errors:
>=20
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/s=
oc/google/google,gs101-pmu.yaml: $id: Cannot determine base
> path from $id, relative path/filename doesn't match actual path or filena=
me
> =C2=A0	 $id: http://devicetree.org/schemas/soc/samsung/google,gs101-pmu.y=
aml
> =C2=A0	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetr=
ee/bindings/soc/google/google,gs101-pmu.yaml

I moved the file ultimately but had restricted to samsung using DT_SCHEMA_F=
ILES=3D
during my binding check run :-(

A.

