Return-Path: <devicetree+bounces-180283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F82AC32A6
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 09:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0A22172029
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 07:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFF118FC92;
	Sun, 25 May 2025 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gfnrMmva"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB31145B3E
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 07:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748156663; cv=none; b=rJsZ7Tuy7uCoEH1f6PIV1+OVpmfk9uhbl4EN0gui8JFrj4OwaiwyFtAoJi4ps4qyz8Ntylj5eryQZipq73ACZ8ChI+OmKiDpmmJNXRFE3XzPjOL2BtyCF8+asQtT+wMfgjD2AQhJmBG6/EMPegZAX/P6vyNArdRCA2sR/BdMU/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748156663; c=relaxed/simple;
	bh=NK9DHfY2dsc8jq9n6ZVImYQWBLnQJ77QjsmfzjQ2MVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GKsdnJ7UzLfMo7M2PlH8H4cJ7wf5jwofQUyg7WY+Ct58LcN+7+jKRfswotVjL0GXlM0XkVMZ3VKUq3TxxegfqI7ea/K4BDHNNGAG1FDCKg5cXWg46J7PBk7YZAzQ27MNSIaDvIT6ciOqtoj3NU5+TcjBJm50pdjcPi6adpP6AIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gfnrMmva; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-60219a77334so520074eaf.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 00:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748156661; x=1748761461; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NK9DHfY2dsc8jq9n6ZVImYQWBLnQJ77QjsmfzjQ2MVM=;
        b=gfnrMmva1AipO0tjHq7eaLh35PQMNDlu3LoWMoQs0ftHIkgXZULEaBufCfVEMyiot2
         vnRf78FHTJEBYGO0/KZw7MN/bgaVlfN8YopbWklrHBHHxC6PDcqu/Kzg3GWgZgsfQs0s
         TbyRrPt7QaDJL9JC7XrgXzXVmqmCPVITEgwhmyQEF2h428wQQZnImZGInoU8NAyaU/Cx
         9FS/Skg1yF2vnJszXgupqU5ErZvks6wpvaKF6kV5lx18J/CTJ8fkwWdzKF+AIdevCPcl
         7e7u03x1KPfDhvKM+o2V7n+DBZcKRelkHKuz3VxzH9JMXcmkN06dCl5H8Ct7oT79FrLD
         RBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748156661; x=1748761461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NK9DHfY2dsc8jq9n6ZVImYQWBLnQJ77QjsmfzjQ2MVM=;
        b=JBzVgOHKDT/drC3yuFk4aN0J62UoYsmlCnoIWscErrBMbIgspEMiV0rPbz3nHOC74v
         geOCyhVhfsEULeVpzFd7rHCF1HySZwDmkwETe1fMIQO/IWf3tVZ/BjWwRMbTC8iScVow
         4SvUNpMFRi6JHZSo4Oe4D/AvfxItAva10P49IFCIAABoYAH5vaVRxJVklmJpsuG7kA29
         Rq5ZkHlc+SKvBJj6XG5XGD3TfsWdELMcaCJi0z8mn4lacrJKJBnHrOfM5B4WanI0yfz9
         A1qBVK9c+ifI9dkaWLBkllw3xCcPLGAty4l7JmKMY5d0NqFud2YrD7jfWUSUoLEBRg5Z
         ZdjA==
X-Forwarded-Encrypted: i=1; AJvYcCXaRROp9kOMyeqe339jjZW8DiHlJzYyNOlrhRYHbiRvTBmTWjo5xU3uCq3h40Nfm+RiXkYGYXuMrcMh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkg/yuKMJUEHbOygIiSPlRrLZR0ttFB0Itq6uDDdPV0xW6tr+3
	Kixpz6lta+ddwKzr/5VxhihBZfRHQ4VAA01m0YeEo7gO0nc5pk/HgePPmiP6mSss7/mS8vmSHSC
	Fgjt2p3TsY1W37aN7IrSiB4vser5YXiuVv4xi0dvELqvRrU5T4C7YKMw=
X-Gm-Gg: ASbGncsaRzjHBVwwlfBX3HmRhLuQbo6Hrb731vHmXqm56LgkZE/8q/yQoWa+OmiFO8K
	eNspiUrWX+HrGiaZCN6ReU6liy6j49Jkbh9vZoz1OqIiHkD5oA2slJkdkea9m8O4jia1/EIQOIw
	I+sOeN2N7YjkzhCcIRyzwUHSN9Ts1EQbkQ7BL9JLYoomKEIH6xbt0e8lsBMLfN+Irw/w==
X-Google-Smtp-Source: AGHT+IEobv1MmUdm3OhF2+QlgOMO6v4WRzce7p+hyeEZuMdsOou9ZkqZae4dTJbR6DrzynyTOeJDFtFyhDMmxSAEcOs=
X-Received: by 2002:a05:6820:138c:b0:60b:a44c:e987 with SMTP id
 006d021491bc7-60ba44cee17mr2124135eaf.2.1748156661280; Sun, 25 May 2025
 00:04:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org> <20250524-b4-max77759-mfd-dts-v2-4-b479542eb97d@linaro.org>
In-Reply-To: <20250524-b4-max77759-mfd-dts-v2-4-b479542eb97d@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 25 May 2025 08:04:10 +0100
X-Gm-Features: AX0GCFszlaYSVG9g4VM6bmqpxuLkf0fqSSgw3AbEnkb0rK3QTfE_tt5gub6lw4o
Message-ID: <CADrjBPrvr3F+A-MVAB+BLriy5orCGvBJmqrw0LGo_BaRpQ2YRw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: exynos: gs101: add dm-verity-device-corrupted
 syscon-reboot-mode
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 24 May 2025 at 06:21, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On gs101, the boot mode is stored both in a syscon register, and in
> nvmem.
>
> Add the dm-verity-device-corrupted reboot mode to the syscon-reboot-
> based boot mode as well, as both (nvmem & syscon) modes should be in
> sync.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

