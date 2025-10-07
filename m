Return-Path: <devicetree+bounces-224306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8782BC2A09
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 22:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BCC73C6CFD
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 20:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAED23ABB3;
	Tue,  7 Oct 2025 20:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RcGQHjzb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E6C19EEC2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 20:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868460; cv=none; b=QwqKbwIN4yKsxem47zwviTn+Qt0F9GRN3ykaj2Xw5xjeZrx7TNxHId0w8Q6fL4HYYvfJva0nvPW2RzRzcR24x7jXJWtzAjEFxEWysKmM2taQiX9vA8wvrwshkGN8CU+2Q70BWGM5JEb9DxaVW9+J6sWJ2Sx2aB7bUdV7tAATzSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868460; c=relaxed/simple;
	bh=y/TWEe/aEhKr6s5KMRouLoYYcgI2epSiBagA6I5SO6E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r1Iyv5xRQ5QoW8xLLEaOKP2sBDGoxNaUNlkzoWu/8Uv5MEYCCccYHHLEe6rA8HT+c7PC730aH5UHwsm9h5Z36eJEkqSlDMb8DVWej+YclpLDpWX4nKzeWxTtAJB7VJc1W2VvIPGweDIhgarUsdIXsPdBDonyDNRXn2BqcodXEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RcGQHjzb; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-649a715fcaeso1711164eaf.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868457; x=1760473257; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y/TWEe/aEhKr6s5KMRouLoYYcgI2epSiBagA6I5SO6E=;
        b=RcGQHjzbAGRrHPJEr+DWLdnoU2rfxNB/1+f3jUIU18Wqm2hO8HXSWKM+968sr974mI
         3AqSI36AL+0qpZJk4af5xGb6D5Ualc7Z/184RZO1wKK2PBy4q/AZA+dYeSlVzVRUi4bE
         8K+Wjz32+OoqjvYLmNlbFWlZ8l1pfb2J9B9/l564MgZNB+onHkDww4gyk5uIG4yYL6Nz
         15llv5nLVFN5J6pebfOFyq6jFrLKHiJATlW5NzHcc2JNmHx7fd4FEdJiJn0lLXiD9yLM
         QkT+bRjKQjSXpa+eJUNFj0eD7jZknplgpJT1boL9SV2twmRFJ9Fo1SRs2bdUC6rBlpNC
         wkiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868457; x=1760473257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y/TWEe/aEhKr6s5KMRouLoYYcgI2epSiBagA6I5SO6E=;
        b=tmR0AbeWCmiFzKw7w6mruXt/4i6Wirw1MY/XKeVSz/AQp+tSe9K0cMQ8HvUbInlHpF
         dNfXKBUEf/tN9vYB51km2fFPlMuuS8aeKu5qxYiVNyS/g9zrU+NC/9wrEplzWqpOV9eV
         NyR2Ia5Py15dHHbikNmG0BXpLXB4lVBBvB+lwzs7c9Algr0LPUw89pCWpenHIfDSuzc+
         7a8PwvUwbLqQjZpn7bTYPlFKJ8hZXG1vrO71IRq3jsyGh+Z17DWI4dhvuUAznFYw3snE
         OSERYuOUJtLUGB24i9sHrY+xkrrrsSY3f4g2UgMKtxIQ7JMvrjK+kI+cUpnkKHShtcjk
         1RwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXoqJyFYQ7D5/KfZacEc3zCFdEWI+/G+2xhF2xNQuDRZgRjvvB4S1XQs3yFG/YxfFJzdw78pjucEsW@vger.kernel.org
X-Gm-Message-State: AOJu0YyKFhreTUbBqrAjDMJyyjASzunQxe64A4Wa3GluKLuJHp9n+f2x
	K+8whFGZxQijP/6/xfRZzSPEzSzkD8p+DldE6MVaER6t4C8iaroyUPYzPTbIlvPTe5pAaIRFxbj
	KGBhPZ9VjW+EusLTDOvyxzzg1foLY5TcLtVePf54Ccg==
X-Gm-Gg: ASbGncsliVSxY4LJWoRiyi3LIHJVgrY4LZfubh3Vv6QOodb59BAefAj2VHoaFjj1On0
	YE2JdsrHqq1bUDlDpXO20omMSJaWNujRkh6PFH/7yyXaadN/QowMOzHHnE+Ud+xIRIjPiq01Kw7
	nTzceCIB7SKQfrrYoPGkLLdnbw0V5fHqGkO4jSD7APg/crKozqhdRYBRtstqCRnke2z61paG8kI
	2xsP0FJWWHc/JQ8Cp7OlquH1ife852m9GJJ4g==
X-Google-Smtp-Source: AGHT+IEyLeFs/tZrPpe8u5cykgOumU9CrjJh4fjO1Ik2uE9eU8H/ZkZq/fUMlKIiW99d1ig/gW3IYGMToD+2pUB6yiA=
X-Received: by 2002:a05:6820:4a14:b0:622:1a4c:ca84 with SMTP id
 006d021491bc7-64fffe46c1amr372637eaf.3.1759868457494; Tue, 07 Oct 2025
 13:20:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-power-domains-scsi-ufs-dt-bindings-exynos-v1-1-1acfa81a887a@linaro.org>
In-Reply-To: <20251007-power-domains-scsi-ufs-dt-bindings-exynos-v1-1-1acfa81a887a@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:20:46 +0100
X-Gm-Features: AS18NWBXzhclL12SN8KyOZlv89Zez5Qwco0h5Y-fiwtfj-_OtAAbqpmFxHR3Ve4
Message-ID: <CADrjBPo5F9H3BbxBBQmwmDUFnzibnH4hNkYMPTknOn8ZHH_Mwg@mail.gmail.com>
Subject: Re: [PATCH] scsi: ufs: dt-bindings: exynos: add power-domains
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 7 Oct 2025 at 16:56, Andr=C3=A9 Draszik <andre.draszik@linaro.org> =
wrote:
>
> The UFS controller can be part of a power domain, so we need to allow
> the relevant property 'power-domains'.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

