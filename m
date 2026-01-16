Return-Path: <devicetree+bounces-255958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56661D2EDDC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06D4A30CC006
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DF73587A2;
	Fri, 16 Jan 2026 09:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CjG553nn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F5C3570DF
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768556223; cv=none; b=XmpW3WeSn3ISfactjEvpkfCfrB2T4brKDX2kqm0GiKN1dLxHId4tTOQ3p2RuW2QlJDjZnsrtOvBYypbWt16y5gFenyP/yoHeX623N394520nKjNt617M7KjhwfeGlZuFR7PuVwI8hG9zT5cDEFCkb2yr6Jz3xdhnDYTn0q/Elp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768556223; c=relaxed/simple;
	bh=veSWyZPxgBl3O2bkm46uT0hLgcL0oIcoN6YW7LLsatk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CrW1/x7Mfhsjm5o/3KQUC1/N1YVRgo3ITnkTAKaxDbK6uNsDKvadLq34weQOfBtCpzV7wT7VkriL+G2FUUvCiCeylBU0EP3Zt15wo/17ZacGd13o8XNun4mTu5xEWnrNfTOoq5ILeca9wbwIbNCONtMpFKfczy2QWWsrCMNKYA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CjG553nn; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-11f42e97229so3985788c88.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768556220; x=1769161020; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjevClhNecUKOFoTrhz/ZX3fWZv5rxd0vUGBfcrCQjY=;
        b=CjG553nnYGHK7mgY+zlkxJqS2e62QLfbigOBFJQHdqHvXkp18zjcvLlX5KSemotG4q
         QxO0otojHju//Kzs6JeyiO30CgK/zAmgfCjUEywhbvLyc8AZTRTs6hAV2buWRYHq0rtv
         5bJulAWudd3Wy2JZLeHWJLmgIYcnY+ruZ6kapmn7/nlzo8PetD5AatxK+08DOSQL9fRo
         QMf2dHT4eAKw2k0Fs7OVSp5isLz0f4WA6zgvIiFXK7cMdmJrYyQFk6a4YVm5Of5u6Tqy
         Di0MsNcS7Vpawby6RlWPhgAZgQ49X75JGsvW9aqfZCBxJvVIDPhluC9jYrDmkexIIJ5I
         CkRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768556220; x=1769161020;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rjevClhNecUKOFoTrhz/ZX3fWZv5rxd0vUGBfcrCQjY=;
        b=TgqEuRPYP93/84vj50SXD2Zog4X6uGybHG5PZrNiPR2aQ4jcRuOySMYG9sKwP5pjMH
         tb+dAqqoAshfOcQilnWZaPqqxtWIDkJyA98M2TJTw/GXeK/2WPnMOJgCGfqewjO2xLS5
         yEyQ5T+IS9Gj3wn89r/EHIo9Q1kvQYhrwP9aWb/2UZ9ENX1Azd9jlBdyu0umv98roYN0
         bZWFrTtY/myRRSWZrw2WezYRIFMPuBP0KoLyakDAGOvCiKmMOj7xItIsjq22Y1+VWuPz
         pTQlattI1a8gbX6fhf3vX5TGlhoy5+cltIfpNraSGtO94NV8b0DxlUWKKv5YpjnA6Xyf
         n7tA==
X-Forwarded-Encrypted: i=1; AJvYcCXJYsiBViOR8RQ6N/gS5QctTs9GE9hdLtte5MKMgSCS8pjjKVgbUTFBjzriQdqj0nLZXafCfNYIpSlz@vger.kernel.org
X-Gm-Message-State: AOJu0YyVSvPuTJBQBAm8RYgdth63deSctyQqtOM7QlxrF/fm2zLcv0J2
	Qq8jXikLJ7/2AJFLhwtlgwT/bj3MyBTxCi9pHy1waTK/G+n7eJSUYtJFnYXDp5JNsgfLLa/OB2q
	B4CewbHPX2Ue0S162SX4XaAhKfdloAPQ=
X-Gm-Gg: AY/fxX61LBtmnFcWOFAJkXautFE1vzx+0ac0RRjleJ0ebjPpDXHebzYyifigW943Je9
	qSYVMEZv5dpdIzCkOpUs9e1gm08QgmGx9jwkYAtrG1WxjOQUj1SRds7ppEuYz3wxBEmulmttT/h
	4mrIKYRwhicujO8BfuFFFeGLpIv8ElO1KifdbmbnozSs8MYmrLi85aiVzz188ATk1jkntB/PPmL
	7XApyrLnEI47txQ0hUm67LqmPIdo1HH3AiOuWE9H4u9hoCMaGivk+ldEpV2XoG9usdEA2rBFfDg
	hXa2IlfDZPPqmz4qmvzNkm2TW2QAoZimrCyIYNcpmOiTGoIa88Ud7dN7QoFlJA3zDJE86DOc22n
	oyji1K8oytNECQJTF6pAk
X-Received: by 2002:a05:7022:6182:b0:11d:c91e:3b58 with SMTP id
 a92af1059eb24-1244b381f4fmr1752175c88.39.1768556220218; Fri, 16 Jan 2026
 01:37:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116-127-v3-0-3dc49545a745@nxp.com> <20260116-127-v3-1-3dc49545a745@nxp.com>
 <94c920e9-cde0-416e-9b6a-16255eda2b73@kernel.org>
In-Reply-To: <94c920e9-cde0-416e-9b6a-16255eda2b73@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 16 Jan 2026 11:39:41 +0200
X-Gm-Features: AZwV_Qh6ntqhZTGdRL0PXfGXgKQs_rs353EC_4pMNSP4GTlexk3c6guYld7I3zc
Message-ID: <CAEnQRZDrchcDr51r7HWjq_=S184n2rq1o=XAnvQKVrXLxS+qjA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: fsl: Add compatible for i.MX95
 15x15 FRDM board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lei Xu <lei.xu@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, justin.jiang@nxp.com, 
	qijian.guo@nxp.com, Daniel Baluta <daniel.baluta@nxp.com>, 
	Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 11:36=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 16/01/2026 09:56, Lei Xu wrote:
> > Introduce a new DT compatible string for the NXP i.MX95 15x15 FRDM
> > development board, a compact and cost-effective platform based on
> > the i.MX95 applications processor.
> >
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
> > Reviewed-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> > Signed-off-by: Lei Xu <lei.xu@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documenta=
tion/devicetree/bindings/arm/fsl.yaml
> > index 68a2d5fecc43..4b6188d39be6 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -1432,6 +1432,7 @@ properties:
> >          items:
> >            - enum:
> >                - fsl,imx95-15x15-evk       # i.MX95 15x15 EVK Board
> > +              - fsl,imx95-15x15-frdm      # i.MX95 15x15 FRDM Board
>
> It's always surprising how many people need to review such one liners,
> but for more complex patches from NXP there are no reviews happening...
>

Krzysztof we are just warming up.

