Return-Path: <devicetree+bounces-243948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDB7C9E993
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:54:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B7F43A334E
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A45A62E0922;
	Wed,  3 Dec 2025 09:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gJIc52Cq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4823B2DFA25
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764755640; cv=none; b=RGvqevAIVVDUYgS5HHTRyCvXvQoYT7AlqMsOGtXUMda+FFstyUj5WKg67dMdqZ1o7IT/6Fye8yNn8uacCrwWkOrnb4+wnlogbxrXkY+Ye5ugc0Ns65NY0QvmQBgCOHDNKDdKANB/wbccasplZiXfSaTnBoTYMFYvhKVaaX5cr2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764755640; c=relaxed/simple;
	bh=8nEqLHF+CqyXKlF1XNZ7kaW3yqu7m2xLMRFyungjcvA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UhJJOpBkAIwkN962NtIPWcz/eOvOmGLDkn22u9VnX0zvyGfeLofVAVgQKFdoLuniuVhWsjE2EYVvWxXytvgmSYvwIgSUbY/+9wRkiuAxDiof5xVhNLqYCNK8nm6IHHOgpF/emWwfrQwthiyd8PPfjhVcC8AhGP0grxKKkJScsrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gJIc52Cq; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7ad1cd0db3bso5217807b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 01:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764755638; x=1765360438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nEqLHF+CqyXKlF1XNZ7kaW3yqu7m2xLMRFyungjcvA=;
        b=gJIc52CqROvrQhXtRi13JJFVgpSJlxK3fzBcbZlMmb+tFIAASFpSTNs9by85cAOAI3
         +YTW0gPVQNB0OnwyD02WGE17weDCQZiriUeqr02bm5B66dIE8eB3uJsWkMOPeQad//nA
         dwo+AjxqgUofQU7+Q6hlXb0/PtQlL42TSApWkw66793SQJR/hxAtzqeRgVQtSLL2vPBH
         l2J0ynGG3dyjuitg21uI/4zf4cc40j47Y2MiBY/cIpW/W9ihCKHVqGk+0TDf5wWOOQm0
         R713rVkniFaFQXbWug3R2962p+9ZGasq3lHUpGAgArQGrHXSv4yeIFFTYm0a2UU39ZL5
         klcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755638; x=1765360438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8nEqLHF+CqyXKlF1XNZ7kaW3yqu7m2xLMRFyungjcvA=;
        b=FVnPVsffIVpGZe+Bm2GmuK034IANqnd1pZEqAZ7GoJAveFouzMXKUwjMueDQWDXgNH
         U5pSZjYp+NSSFrYuTNrClTYAD08FuCC+unwFAvx/cTHeltLS4VspUjHnSr5gqlEiR3kz
         aXKfd/Nk+t10YYOykE0CU5bjgxWqtDkrX4IqS5DP0Wrc8VmyUwZtbcnXQTPrxqaF4SJR
         8ShgOwTopsZn4Y/8nGRcbcom5MJTJUhJEPiPfcHhxxmW3mnLy//Zn9YxZp8Ll3cOi2Ts
         pm5nmSKVQ6m2wfS04e+XoPJQUELbo+X7ubm4U4Z6oosCamlrP1LuwNS3YT3U5CW776dE
         3wPA==
X-Forwarded-Encrypted: i=1; AJvYcCVLypw+H7PyerwlnVTyl/L0Iqp8q/yuGHNK5acOXb3D9rFQSE4mvMta922pj+RUuUO0rIH1aoaOfRw6@vger.kernel.org
X-Gm-Message-State: AOJu0YwztOdKoKrYyQ4/eTvmJ2zO/fDeX+niSZ9xU93PqpdG0KtGxFLa
	AfT+Kp9OoffLxysU06V3u2s0zrWchpBc4HnmHrpBhpDd1VeIuiQK6F50fNYTbpH1D3jqVSDtgrO
	8Ja8lrXtfjdPE6gn735nf1/KqVuEsB68=
X-Gm-Gg: ASbGncvjhHIMMhYSNX0S2vbxFi0Tq3Rp1kOxOHpJAvXS6YNklesZFxKtU6ViGt32oJD
	/S7QxJHQBgoeiun/lmuzkwUWIA92Tc9SqG3j+YJhvTnhDh9BDuY9DWB8ajeWmKGHTpk53C/GaAO
	kqNaEDOIi1mSIkU5J/NXhCP9xTxVqURwQ+HTtB4amTkAhOwAL0uI9/xRAlsv/qftYfO+ttWA7SB
	IfhfNrRX+MLMVBYyMhKjOzCaIZwdwknIBS1fM8dmJjB3dA6kSBSt6OxdT6YEllD3BROZ82qacTy
	dqYXG8gUTNdL+df3rwMlvCPfZ2fLIqEZwzy5tW2P/Yfqcus9tFsweJm4JHE4YREkSHZ8lyiHc+j
	XZ/jrWr4yvQ==
X-Google-Smtp-Source: AGHT+IFzArW34PLOuMOqsY2Mf51Xf3abtZlLQpsJqEX+QB1I/ZifDd61nnFzkTDL6Eb9u2KQsY33FhUiPJNwz3uxy8E=
X-Received: by 2002:a05:7022:f204:b0:11d:f037:891c with SMTP id
 a92af1059eb24-11df0cedae7mr1266205c88.44.1764755638420; Wed, 03 Dec 2025
 01:53:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251203070605.1868821-1-chancel.liu@nxp.com> <20251203070605.1868821-4-chancel.liu@nxp.com>
In-Reply-To: <20251203070605.1868821-4-chancel.liu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 3 Dec 2025 11:56:31 +0200
X-Gm-Features: AWmQ_bnfHQXGg8duSmQZFhswRPptS5H3VYBS3CWyQw8E7GoI6MsPER_sOfjPYMI
Message-ID: <CAEnQRZAJuVq_HnNE7pZkJ6O04QgE0K=AzmmyiREaVxzzL4QNEg@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: imx91-11x11-evk: Add WM8962 sound card support
To: Chancel Liu <chancel.liu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 3, 2025 at 9:07=E2=80=AFAM Chancel Liu <chancel.liu@nxp.com> wr=
ote:
>
> Add WM8962 sound card support which connects to SAI3.
>
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

