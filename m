Return-Path: <devicetree+bounces-176769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE8AB5747
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C835E1B468A7
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE731ADFFB;
	Tue, 13 May 2025 14:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f6scww6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4815A1A01CC
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146952; cv=none; b=dYLwW2aNXwfJOqU3T8TSFsC1BmcXg4/qRRx1Hqa5Fxw7TbeuTxh5Pbn/m3ltSqPdVtORY6TwjUjOFo4IVWjfeoE8TbBd8/05jZgLyS8eoyWG9c+85zsjtlHuu0T9XDmGrq1thfU+aIEJaKBm5QoZK5kkJCDuQF49FqyC/nyMn58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146952; c=relaxed/simple;
	bh=K1Jt/PMyy3R9NjxblrEwux7XcHTEGSGgj5ti5f+Hh5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E58drbgglOA+IdBx3aFgjXDr/DZrumEViAn87PeyUyxyKgX5E1duXzanLGIVTkkyno0FMsWNcoq1ZRb4LrxgO/tWa+G2izj2q7chdsZpaRmPT19BBO8AAgTJg/Fsw3HyeSZ6ovS5lATpjA2lKyQPn3hyrIGLrlUhszsS8Xei/mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f6scww6H; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a1fb18420aso3779565f8f.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747146949; x=1747751749; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zgyk97IfeYVOskXq3/ZxZBDTiB8IvjRjENNa45XTzuY=;
        b=f6scww6HEtiLebqKoFy3diiwc+NdgKBHhqE+fD1j1tTTx0jCGDINFPKA0h4/Uy85Xw
         bl2he21NNgJQPZn5jJmvElJuVGq+yIeHBRo53Nl9uNBm4q6RbqH9TidPULR5PKMszjBo
         OHXw3EoSXDmslwoOj3CkmOMS5wj/Yfq3me00f3qXi9TFzutYJ9kZrpYKVzuKUazStDy3
         nbKMoseCQeu6xfU8pK2bksGWtc7wNKXuSrvQ183nCiAzGaeFT2tWx2j0EwrQ13+Dzy0I
         4ZyG07SvA1EGWCzIaeVJt14OOAbXoDK/xGXZaFg38aLl/TS7a/WEMoVonUMkz1+whvZS
         vt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146949; x=1747751749;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zgyk97IfeYVOskXq3/ZxZBDTiB8IvjRjENNa45XTzuY=;
        b=wjI3ThuKDgiTTCcKN/VU0a6IeOJLHz/2M9gZluyyy4LOdagcaoPgulpgzHqhgl6S8w
         LoHYymgx9iewoheyIMNiXDFkh+gcqEqqx9YjFb9BIhIqiRE/XYdxT+XkgKLHI/aeJmtW
         DVJ+ID3H82R2w+8c9Ih2UVTUFQ1YVz8sZa3143fl1NhEREuNfJXgJVHSrqGe83U2Lkac
         JYVbAC9AeJ9JRieo54XHcI3+xzxYnvyiL8lFxIKDSzaKVmO7jS3PBvkm+9dOXmIrcwJO
         wK4LNMxLPZYUUnVcKUwRnWJGyD79a5amOjdRPa3XAV6N1wGVbu75ZBajjc9DfS0gFR9y
         vO3A==
X-Forwarded-Encrypted: i=1; AJvYcCX3x8/+ygHCaRZFFMkYTgujnzif0/RObDXihouUwT/2J8WdSmRGmYay4ztg0WBvKQhoEC0dqb4SvWac@vger.kernel.org
X-Gm-Message-State: AOJu0YxDGKvdavXhepsaqmxrje8pUf5Pqp9j0wrWkoSszMthWJp85rw9
	2FxM+6ZBTUAs6IxHwMsCWfMA50LIjEGuKgBRadxIquJkwmscHJtip9iMwbSebXE=
X-Gm-Gg: ASbGncsMxY+lJ04RfBJHiWk+nGUVYmwlSRPGqxbMxEIg4vleD81mLAnVqQNWX6qCj6t
	ELXiVGW3FCRQhZoSWJuqKTbuLGPNXs5/V+qtNtyGgqzG8DN07urB6HMjBEY4PkSTByU/A1q1s+r
	9NJeMmq7Q3lF+G813jgeu/7UovCeT0SH6WJZN45OhIn3dONSzuvwnFv1r53k9MOYLaAvZJWKw1z
	cb9LAKoaxCIQ1f/BdTcZzpiI1fCLXyXYGCsEOfpxHPalUNYWuRtnZtK4aQuuPDee12sSzYh2sAx
	Qtk3RZ6LBbu0O/b1Ebxpfr2VbklM/V2VSnUzsmWQEeZOdU5/igmLCxoFQWUTWnuIrLsjNPEzjST
	nkBu9MXUWn4AAqw==
X-Google-Smtp-Source: AGHT+IECI9WPDGbN1PKQdBTuC0zojDWLobQgT9+jZfgetVRbIflVKBhtcHxhKo9cRWHWaWFom3XPPw==
X-Received: by 2002:a05:6000:40c9:b0:39c:1f02:5409 with SMTP id ffacd0b85a97d-3a1f6424053mr13007915f8f.9.1747146948656;
        Tue, 13 May 2025 07:35:48 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2ca31sm16559682f8f.65.2025.05.13.07.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:35:47 -0700 (PDT)
Date: Tue, 13 May 2025 16:35:46 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: timer: Convert arm,mps2-timer to DT schema
Message-ID: <aCNYws2IeRm-D8Fg@mai.linaro.org>
References: <20250506022210.2586404-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022210.2586404-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:09PM -0500, Rob Herring wrote:
> Convert the Arm MPS2 Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

