Return-Path: <devicetree+bounces-78400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55478912322
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 13:17:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8615B1C22488
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9CC1171E6C;
	Fri, 21 Jun 2024 11:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U/xeOkmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B57F171664
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 11:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718968618; cv=none; b=fVHTtDoD0RouzN0SgBWNuiHBPlSQ4W6ZNXfI6sz+0HQQZIZtVYqY7jGZ8IXAtNXi4t/9gXlWNZTkKj0fEDfKgholPnCkwU48oLiKePWWSubsRnTLp9RkCMJ5gbt0TpjReCWkvFWNDestZ/tEkgGdJxMu0zoJMBWDEtMVJzIUQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718968618; c=relaxed/simple;
	bh=0PkvrwAYLugv99pm0z+AGMq/KSx7vmUchVeRRoaCVyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CxxtECbeA7Ba4BoK1/fYK0ziqJkJXGvvxswJnHV/1EjprsJfhc30xj2H62uY807NSaTZt8xlCuMXWS3u65E1Y71ftWsb9PMpHDJ3EHwW25V0d2F0ppNl6yup3xQmDRSxezgK4R2P+Ch8SQM1ooJs7m251bNiWsSP84w9jgAkME4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U/xeOkmF; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6f7720e6e8so225464766b.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 04:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718968615; x=1719573415; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=08k9pna/opWaEBAg76zcgK1RSow47jGdPu4ejDMD8xg=;
        b=U/xeOkmFtGgVC4d7imvD+qs6xTXaLLmcjtmR75Gn5MmsRIheWHvSEb4AY7JPaVYdzg
         nxaCbHSlJqbQCLA99nvr9O7vbKzlbYn55jyAYErlVC8vx38uhcfpE0zRVcIMsbFsol/K
         9aBFG56FX9lWnqGz3sjvERLSJD5GlH/6xyJKx6GEd/kfoBRgc2QWzmCwRmcHpNPYUR1V
         GLMvG2XTYpWbJEID8shxyBc3zD6Teskqpx4bgmvzLMiAFBKEpXDyQdirTvLaEWfJIPPX
         bPJ4kMbj1/oL6H9Qv0vlH8Lqb5ZSq2hoFHqhX+4z6UMYC2LI74NmQvkaNQ6YotiPtuxk
         qPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718968615; x=1719573415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=08k9pna/opWaEBAg76zcgK1RSow47jGdPu4ejDMD8xg=;
        b=cgY6JWWUEhGVlmOC/JBEPWQ79dXQEAr9URKFuh7idMOSAyYtTsPg17yJ5pofMPOahv
         OOdMIza4YRRa2AZAY6uY3ngtcLXdNPhhfr5z9aB0w5jJn2gouRcX8DBbFjLXcpOs3z43
         CU1j6O7YunZetXO3Ns/SNhts/NSD7Zhh/JKGyZ265vxwpXnMN65kAN7Wfd4A1oJ0FVyG
         8v0cki3/pEmyz/mLxg1j6dcOgpslzzd+OjlrS4FgowDPrcEJKdmeIUJEAnYPRqMujNco
         zqc3H4sEi2t9dxpk0SglfzVvvAzKJ/SHlAvBcTsSliNB26R+zWzGrs+Hle5w6niT0d1g
         nuQA==
X-Forwarded-Encrypted: i=1; AJvYcCUGJTJiRW4+ZwBf5A/PbA+hgW0KZjqeR0merKk+/BGtTDtEraWrqA5X6bMbVcm+W8xSeHtoE2g9X8IJ6CbZiqTxoIDt2sVtK3Myxw==
X-Gm-Message-State: AOJu0YxXuI+V/MlWg3RTgH9wSbFqCFjvJkBiqd6IiY0R1v/gDnjNmxVy
	FmFNvJldB+9KNCT7y7YG8OeG9WqUe1ut8mcvAaI9KMZ0vMK5kPlp
X-Google-Smtp-Source: AGHT+IEQA9JTSUlACGJxZV6P42mF5Qfs1km1bZk9sSrb3zLaZehHEY4QKzeHjWVfBYdo4222YzZQ1A==
X-Received: by 2002:a17:907:7625:b0:a6f:53f9:7974 with SMTP id a640c23a62f3a-a6fab7791a4mr539231866b.52.1718968614880;
        Fri, 21 Jun 2024 04:16:54 -0700 (PDT)
Received: from andrea (host-82-50-195-19.retail.telecomitalia.it. [82.50.195.19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf48b7desm73263366b.90.2024.06.21.04.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 04:16:54 -0700 (PDT)
Date: Fri, 21 Jun 2024 13:16:50 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com
Subject: Re: [RFC v2 0/2] riscv: Idle thread using Zawrs extension
Message-ID: <ZnVhIi0Jre77i3RN@andrea>
References: <20240621093223.37893-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621093223.37893-1-luxu.kernel@bytedance.com>

> This is the second version of idle thread based on Zawrs extension. We
> rebased our code on Andrew's patch series[1] which provides basic
> support for Zawrs as well as optimization for spinlock.

There's some feedback on Andrew's v2 [1] which seems to equally apply
to the later, mentioned series/submission, and hence to the series in
question (although only indirectly admittedly).

As an additional comment, please do add  linux-kernel@vger.kernel.org 
(the LKML) to your Cc:  list on patch submission (again, this applies
to both Andrew's and the present submissions).

  Andrea

[1] https://lore.kernel.org/linux-riscv/ZiWCP6f6zZ3dKXfN@andrea/

