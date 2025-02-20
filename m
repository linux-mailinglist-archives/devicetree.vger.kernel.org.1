Return-Path: <devicetree+bounces-148790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E367CA3D6B1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:31:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CCB37ABCDF
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F4A1F12F2;
	Thu, 20 Feb 2025 10:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="S5vEYE2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66CD1F0E37
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740047312; cv=none; b=pUBl7InuTjpkmkzFeYRHC6HohrmgAsABMODjvGIrG63VkA91wP3I6X2Paq3J54iVE2XofCDire70CQ0sMJl0Qqeng1n2Eovh+bHC38+yRzEd7fUeGdr0VRB96bD6JZj0qJWKJpvVkXfCMLOgpO1yXT/Ohka0RHtv1n/zcqaJXaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740047312; c=relaxed/simple;
	bh=pbqCbnn3949AQ4E9A+0vVRKzntefI3rHN0xAk0SFsaE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EFzoWr9M1ivKX3s1mlmE1v+BWshMiSs76N1nngL5cdxHbmdvjS3AMC3exWFSTa8Diwd8XcIrxP4Y0pXjODcxAvKWbnAP6270qqi5TUYgH2kFfm66tncdMTr7cp/R9CL1jNSwispXs3FYRvLwrSgEEDSO8FNqSJaHnurMlkwMRJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=S5vEYE2i; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-546267ed92fso943552e87.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1740047309; x=1740652109; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pbqCbnn3949AQ4E9A+0vVRKzntefI3rHN0xAk0SFsaE=;
        b=S5vEYE2iZs7zfqUnuG/NbJghV3PMYbcdJvqxWlGnw4mRohayyeJA27K8d6x4Ol8c/y
         SxlpdNnLKk7WTpzizGExJ0LS0EIvmdEa3hUiTQ6m2l5yvVEz4Cgs+V+uJvRR0PqOqiic
         5Uu4zOLPGjUXl6/uFcaMIBGlVqaPXMffdfxhiYJmQ11NtHt9rJqYZMsBdm9gY4cSb7cS
         1zHDYqYp/uV4rHU3acOrq2FptSB4ZjjM2v3UsjK4g9O59/M2IQ8dxHzcmySlT64K0nAz
         44DiWWYG/g8rfciYj3s6dXs68hDZqHMB7YidEIt0xcPmoh/gmEk5Opol8l7gIycX9OOy
         mKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740047309; x=1740652109;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbqCbnn3949AQ4E9A+0vVRKzntefI3rHN0xAk0SFsaE=;
        b=RXm0ADZ3qPEKpYoDt//wY6uWoTuTvdMrBQDi8lxwWpUC73P3jjcRwu2zX+e0LS/1Vj
         FAQo9rCFCLS/zC2bKqAYQSyf0d3JINzXDQdXdjDuoDCWL3GSHMdC12xq8KmcbcHqvD9r
         xt5xruGDqCZLDdYY0r4pe1IlQJIpKpYGXVtbGo3J1UPwndxCV5LROSJPvTSD6eXuxdyA
         mJkQQoBm2gCBIygk1kdqx/sKGBQDImq/jgDiHUlvsV6jht7KGJAtVKp5QH5nU2lZMsVl
         frdNZ8UwP9pA2JVuK6bYKNalGjQEg88BcsWFvIqSwoH/zrr3BYR38C5gk+FBSRGdrOaB
         scKA==
X-Forwarded-Encrypted: i=1; AJvYcCWCuU9amSUyh2h/5qh4JCtLtrLS1Wab2Dt3Xy7rMlgXDDIVlCRUcX6K3s7Ta+1Yu90NymPc/OKJmoSD@vger.kernel.org
X-Gm-Message-State: AOJu0YzZTQbEahBeM88gjWHK6yWP7nIALXfdz5CJXSp9JOKuBO2r5oIg
	2E/wnHcfVM/CpqMVDq9TD1Jchq2F7XxI7kt86vUkWfsUgx6M5UQWQ2l8ReTeTWma5kf+9vtmrLM
	7RRzqGhhhTtsQH5f0qirNXaKzyQc1jEd8njX3OA==
X-Gm-Gg: ASbGncsho6Mewwu7OP5nVrxF7ytqgzLE0IlqLeOE2wQt4+XnbtqJ3YvwUzt8FBdGcUi
	WV6Tb7B1Y92VtxbypWi3X8S34qKR8/vELpqwqLqdEPvWIjQBLJKatwgE8LXWlFOaD+4V0mXDTve
	JxdHMIE6rI6Nv0/WowvGEFoJ9gGpU=
X-Google-Smtp-Source: AGHT+IF0hQZ/o7X6oVYIqlG9AO4qIYWcUHjPU9+7r0G2SjwNswpvYumQDzBci9SP50JD992GaVeG7nqS05hEGDgUTbw=
X-Received: by 2002:a05:6512:3d15:b0:545:ae6:d73f with SMTP id
 2adb3069b0e04-5452fe71c09mr7419846e87.46.1740047308933; Thu, 20 Feb 2025
 02:28:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-x1e80100-pwrseq-qcp-v3-1-a0525cc01666@linaro.org>
In-Reply-To: <20250217-x1e80100-pwrseq-qcp-v3-1-a0525cc01666@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 20 Feb 2025 11:28:17 +0100
X-Gm-Features: AWEUYZnBe24sPzSNetob_Hp5SUYrijNXBw3LzypTXZXkpFm_3GC1U29Nl3T-Itc
Message-ID: <CAMRc=MeAYTz-z6PK8U9XmEdaxXNT2zN_sc+wybdp6GzxTgksBw@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
	Johan Hovold <johan@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2025 at 6:55=E2=80=AFPM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> Add the WiFi/BT nodes for QCP and describe the regulators for the WCN7850
> combo chip using the new power sequencing bindings. All voltages are
> derived from chained fixed regulators controlled using a single GPIO.
>
> The same setup also works for CRD (and likely most of the other X1E80100
> laptops). However, unlike the QCP they use soldered or removable M.2 card=
s
> supplied by a single 3.3V fixed regulator. The other necessary voltages a=
re
> then derived inside the M.2 card. Describing this properly requires
> new bindings, so this commit only adds QCP for now.
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

