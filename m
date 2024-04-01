Return-Path: <devicetree+bounces-54978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFED78936E7
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 04:23:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74F1F280FDA
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 02:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DB31362;
	Mon,  1 Apr 2024 02:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B++V6pKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C8B10F1
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 02:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711938218; cv=none; b=OKmV3e/KyiGCmvm1qdVu8qR5r4nn4hIowzQCIhMaWsr7iGXtfy76h8cBYlFKC3WDksRfE5RiWQTLzB2YdbdOyeTLiXQF68OlJ3wEoNy6NhvzSzH89MonSuDU0IxL9zKiI7sNKw7oLraIxAWdBvqo2N3RlNKxDG+DWpo+oQH5KR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711938218; c=relaxed/simple;
	bh=j41BO2dds6Fv38WNeZ85tSAZZ0NU5bCk5e9Xy6YPOvk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mkfFD+3eWloOdVQmgFl/PjSOgxGUyIOJtbiqZ7YcLpqcfZVTYsJ7mtQOZDkQlotGFxbhlfLWGdVBPJPWj4wbgHx1wdeR6+f7NC4jX2NfOXHnywmMPI2+VT/6sV+TFkOZNdTzt63tqB6tsT5CKEAUOSpS8E8rWPvKW/XQr4+LGY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B++V6pKj; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d68c6a4630so38046291fa.3
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 19:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711938214; x=1712543014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aXfMuGsoJ/atd6ywH2U36Cddge1WO0AgRUSU8JyF+V8=;
        b=B++V6pKjnrKbvxb0bdnHNvsH3umBDCY0NXtjYBxvJ+4agFPDESx70CeB7OHBRBPNMO
         u/cwSYC3ybdBcNighhcWdJYl5a0HdXsIYf9Fmj/UbcUY8emk4VjC2M71lh0XoR86InmS
         /sKyB+ACPPkAUAemX1FCnZbRgKUJ/RontcS/W2dTHNtNThnGf388MpTJZNoH2IJab5z1
         ts//zl301tW+c/uMaQ/fQQeSan437kNip1S5YHRvhtIFLQpNVjttGxTYKWyPICNZ9jBY
         zGyEez3AaBrOYf8rUn8r+OHAU2IgW3xnxQ2VRkiDguj3x+4nwoNwM51fxCACXR4S6jq0
         0w0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711938214; x=1712543014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aXfMuGsoJ/atd6ywH2U36Cddge1WO0AgRUSU8JyF+V8=;
        b=qHj+9rD+dFkhYSfECqZf8+kP0y75rz4hrgvgBJ3k31FZM/C1BaYw70dU2UGorAQNdk
         16nr8VQHYmbPaVRVrsq2j7JsAEaLVIStOBOeIahO05SGKHnnC/t8cYtfh5I+3WJSG5yA
         i/JDHIdYdn9tYqeLR9WphqKCmJ2HMthcVxBGQa/PUrVlo7VPu5Cg7DbqvISUiDW/f0NQ
         VVHat0yLBpXqCWJNlJevo8Dxrh7/s1P9DI6gGpcmW5eSA2Fsews1RwDyKHMfYW/r7Gwz
         LqaGMoKPJ+pjxW4lBO5IhpPnVJCfUg3XwSpYbSut/JtpqQv532/aA0I468HPj6eUlPy1
         BPOA==
X-Forwarded-Encrypted: i=1; AJvYcCVsxcPKOHNc2f16jvRV/nSh0yLMJuWM21HvpRJfAEiJYd3dzJxsE08y7Q8+KuddTikR1o+a65ehQHNdgPmMW7bSA++HjDSpUIcVUA==
X-Gm-Message-State: AOJu0YxA61zkQ1Hw1n88+umD247mU7RPsMrrvnEbQPVfstlRrwo7So0h
	XMhBF9R9xpTb/fmDfOc0d2L3a/4J/aCG5i294k5E8TYhc2TAW2SaAr7P1Xyjoyc7ALDsNkRlPzl
	RUVFD9Gx6AAkY8iqnJx1Jn5yVmdtxw/s6iw6aZA==
X-Google-Smtp-Source: AGHT+IGYmZtdzOWFfR0vTWyRYyRt7t6Ny+ula3JSyIJ78UHqJttV707k8TBzXPIipjhpUNAlaXV03FimDjkqSbpIieM=
X-Received: by 2002:a2e:964a:0:b0:2d6:d4ca:fa8b with SMTP id
 z10-20020a2e964a000000b002d6d4cafa8bmr5023108ljh.34.1711938214572; Sun, 31
 Mar 2024 19:23:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240318-topic-sm8650-gpu-v4-0-206eb0d31694@linaro.org> <20240318-topic-sm8650-gpu-v4-2-206eb0d31694@linaro.org>
In-Reply-To: <20240318-topic-sm8650-gpu-v4-2-206eb0d31694@linaro.org>
From: Jun Nie <jun.nie@linaro.org>
Date: Mon, 1 Apr 2024 10:23:19 +0800
Message-ID: <CABymUCPqeu=41=jTnTLKkERRG9PMaqsmfyq41TDa43kNvjxEcw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sm8650-qrd: enable GPU
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Neil Armstrong <neil.armstrong@linaro.org> =E4=BA=8E2024=E5=B9=B43=E6=9C=88=
18=E6=97=A5=E5=91=A8=E4=B8=80 18:12=E5=86=99=E9=81=93=EF=BC=9A
>
> Add path of the GPU firmware for the SM8650-QRD board
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
Reviewed-by: Jun Nie <jun.nie@linaro.org>

