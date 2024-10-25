Return-Path: <devicetree+bounces-115498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E10D9AFCE1
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F4EA1C20EBE
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 486891D2716;
	Fri, 25 Oct 2024 08:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YTRZbnzd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398421D2234
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729845877; cv=none; b=U58UXl9+rDCoai7q+f3NByhEqVQ85tR1KEXsFAVGwiY7iYnCyuqxHyzIOttxWc1JVTJBkog4x3okZY2KVa01NiDFhhxI/qVBu3qux69XHiFmAhu1rtLz+6b7QvKjCepixsw09tLfAZ9TqrSx18hCh7R6muc4di2gNbcgMbfFQQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729845877; c=relaxed/simple;
	bh=4qWYQwpgnp9wGLrZEx7eNUmfV0DYrzDjQkJ7UWokRTI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AgiFqtCPb2szH0RvJBZPBxpWkMK79LNxLGhHTt1RUxuq2PntSu44M1sEK4b8vdqOO8B4BCn11Xu5iEJ9/MF8i7hPgr9dc6/8VQLKwK6jb1dYee0/VuyFmzBCTbVNsELJdhsh50nNX90gL7PSUpu78XO5IqtOY72kGVUgJ//jTvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YTRZbnzd; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb58980711so17179961fa.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729845873; x=1730450673; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qWYQwpgnp9wGLrZEx7eNUmfV0DYrzDjQkJ7UWokRTI=;
        b=YTRZbnzdqrDhKLNFwlehYySWp8Hrf3WswYrs9cVfhiHZvLwo7xd9TNbQlXYdSA6iGg
         YIc6PoCJpziYe4sII/E7HYA3MmAN24h48eGebqPq71ToPNsGJysyhyhJiZ8k+NN/4Pd6
         jn8zStEsm59zmAwmo9u3pDB1OoV5iNkv5Oomho5PNfwKDTw7tA1/wp4iGcbdaohhLKx1
         BROkfhjtnIN079QsTpDZ0KQNbgzZeuKXXjoGQncf7VTeNX+QlEr7HBytl7h5WZoev5t6
         MmDsMTd3FCC/HYZdU+hDaxl41SJEVLvOqVofomzhq3DuW6XeEmk9+cfSRgLHVWwVIjgH
         1LTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729845873; x=1730450673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4qWYQwpgnp9wGLrZEx7eNUmfV0DYrzDjQkJ7UWokRTI=;
        b=qDwhMsLQEN45fpdhg7PGJSduTr49rQ81RJF/Yjaqpb+EoohxsWgaQmya7IQIzJk0QW
         jYV2cbFq9Eu8qE0Wi9SFWcV83VEJe4/bGadOWkOy8L6/4qXveh+1CQmCydMWGA4mqyPA
         6HFnNDywOOlMTvfQXazSByihgRr3vmLMC03naF1vKWKfg1VeLlFG6INK3qMEaW4pmq84
         K2uB9ajkiJQ2ZQj5P2pQO3JXRiXPlvLLJLEM3ULMceH1/OQCaLuJ3vbXkMM9ufMimRZy
         zf0FnPU6melFqe5Y597yxqBHJ7WeXizhg4PeedHSPyv7py67FH/kAyx0j0+dbserb1aM
         ZX2g==
X-Forwarded-Encrypted: i=1; AJvYcCXv2ocGXNi051xP39SNx6fJWU5ILNXJVJWkk3tTI86hFwnGF42unfuzSlCkTXU9achB4gy8srKR+V3E@vger.kernel.org
X-Gm-Message-State: AOJu0Yy39qhwL30SbkPY9Pkpw2VwJvIhnm+boUiNlSrE6vPAIw1jQqsm
	SnjQxsBkuPxJLWa2ccg8i7oNyjP3w4NHxS39gUqpVDxporVg2pA1ljjQVP6Nlf/bOmJJHMVmCgD
	Z8KX5XqKWQVCzq8bJfzrSetXwfXw+GUCJM0zP+Q==
X-Google-Smtp-Source: AGHT+IGM8SVFA2+ONvrSEBYQyTktV2bCRrYinDhFgybJMVbPg6fS8Zwi9AtvDP/3Lg36VB3SvrKMD5hmMAsbxh0UbD0=
X-Received: by 2002:a2e:4c11:0:b0:2fc:9b6a:a894 with SMTP id
 38308e7fff4ca-2fca8209a92mr22092931fa.17.1729845873286; Fri, 25 Oct 2024
 01:44:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022064245.22983-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241022064245.22983-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 25 Oct 2024 10:44:22 +0200
Message-ID: <CACRpkdaoVksj5V=wqnf-w+LK8fi_mS5-MXgPHo3Ecsu5mRnd+Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl: Add SM8750
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 8:42=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Document compatible for Qualcomm SM8750 SoC LPASS TLMM pin controller,
> fully compatible with previous SM8650 generation (same amount of pins
> and functions).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied!

Yours,
Linus Walleij

