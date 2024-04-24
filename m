Return-Path: <devicetree+bounces-62160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C098B02A4
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C93662832F2
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334CF158D8D;
	Wed, 24 Apr 2024 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kqYiAK/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818F7158D92
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 06:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713941673; cv=none; b=diUYBIy0Jg9orOSUtwbpRdXUPTeezm65gObSybcFWuIKI3NwkyMqs/H13n8odh5Xw9G5BymeKFZ4CNR9utExrEkeb3Wi5INFMyMuZgVeVSnAPK8VqUsiy9D6u/Hh7zHPoGZOOoCs18TBc/ssnN9d1RxboViS5UY91UxStEittoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713941673; c=relaxed/simple;
	bh=Ij0PSBZ8E9UaPhgx7rwqWFpYjimGFBxe3+e9OBCn1Dw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=N7FaCh7JdI1TbBo0IEMhDdCh8PELOgU1fqP5lEoQMrXnhNC0jHXaGUcowViYDiihyY0obKlrFf1wGXcs+OIBL1BfUHxOgSkTzsCLrbTsgvc4M0S3ABvWpAaPMfmAakIz2sz+a7sEuXbGFJ8DwI4gXzBO9IGSKtF+b0kt/HVds2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kqYiAK/a; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-345522f7c32so3094343f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 23:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713941669; x=1714546469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YYan8zyCM+sDKAjVWEQoJ8F9XKpm76EgewGmFtWSNtM=;
        b=kqYiAK/a9C2kssmdVFO4/cwXWLg97nBMSKWSQ67VVTA6kAOcDpxrFD2xBvx9sJdqct
         rtAo0fjSLLmrGDBW+vanA9zZUfyisRwejb2PGFOSpnLUlIsVk7jKmbTFTsV/zB1VwOcX
         F2E1iMp//lEI9Zv8EYAImq59zcWFCGPnJPVuTRE5pKPlm+bgbtZpuTMlfgLm9Z8GISpK
         69wctJc6q5Vws+AvtbI4b7M0KhGvTz50X0jnLXztX7bpB9jEjhLeTj+UCvzJqUf9Bow2
         q36XiEOIVtAyL5tNF+l3wbH11fXPG6t6YymyjK6hYTR3p3dQv1Cd6xz60LhB8q0wr5N5
         GL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713941669; x=1714546469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYan8zyCM+sDKAjVWEQoJ8F9XKpm76EgewGmFtWSNtM=;
        b=W8HO7rI+TG+AJFPJcjJDXFUtWT+jb/fw97mEpYBMEVDxEuj2XFTcBaCE/IgfdHFhcZ
         1ad/1ZYqpmsUounQqNVYGXVV/2s+lcb03Nj31TEC049gCz30jtRkZDepslqZLBtnOHOF
         pJg7Xj7UM/wg1PQzgGfAWKsDpXBA64KkhkKrcphNn0o6iRPq4uxBb8WSSt4xSZlPvP1b
         kUXa3MWlCCwMcyk6xYuE7qLSIvIANp3AV/L24NmemoGiUsR5hr9BPOAw5WeE1GggR/nV
         F/lERWWhCD0Sz4VscIUde4LAQ/Tfcl9awr6R3JUY+4QCmWkmIue8yL2QLifLCPNwJ3RG
         H+JA==
X-Forwarded-Encrypted: i=1; AJvYcCUo4LqoRxiZl+GdJ73cSBQDQIWyY4za7FnjxD4SweHbgadrZl9SLhIHI6V+gxc+KhaPxtMQDm5u5DCTMLsgEdpIjaU9imK5TGG4bQ==
X-Gm-Message-State: AOJu0Yz+qKpVJF1P5yNfca+Bz3wEG+SzLPhnM6BOLc9MQ8EewNfFjcNm
	chwjtlPbOhPbWT8c8Eo5POgs5+gMPxG5fn5iw9H5fT60slrCCxoa/HXlsj8vw98=
X-Google-Smtp-Source: AGHT+IHjQD8OJ2pxqi17s3Z8zh2lMSX0ZMiS73SZ5iq95+P7Fp9Cs5G45IFUfSPrE04jmna+zEZcmA==
X-Received: by 2002:a5d:4bc7:0:b0:34b:ec8:3967 with SMTP id l7-20020a5d4bc7000000b0034b0ec83967mr895889wrt.53.1713941669650;
        Tue, 23 Apr 2024 23:54:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id t18-20020a5d6912000000b0034997769ae4sm16338534wru.15.2024.04.23.23.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 23:54:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/4] arm64: dts: uniphier: ld11-global: use generic node name for audio-codec
Date: Wed, 24 Apr 2024 08:54:15 +0200
Message-ID: <171394159879.43787.1190606574458902919.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240401140952.97923-1-krzk@kernel.org>
References: <20240401140952.97923-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 01 Apr 2024 16:09:49 +0200, Krzysztof Kozlowski wrote:
> Devicetree specification expects node names to be generic, representing
> the class of devices.
> 
> 

Almost a month passed, no replies from maintainers about picking it up. Dunno,
looks abandoned, so let me grab this. If anyone else wants to pick it up, let
me know.

Applied, thanks!

[1/4] arm64: dts: uniphier: ld11-global: use generic node name for audio-codec
      https://git.kernel.org/krzk/linux-dt/c/345531df1cf864bbdba8d5a31c0b5519296c39cc
[2/4] arm64: dts: uniphier: ld11-global: drop audio codec port unit address
      https://git.kernel.org/krzk/linux-dt/c/2e2798377b8b086832512dc4826b1b4c6a59aa2b
[3/4] arm64: dts: uniphier: ld20-global: use generic node name for audio-codec
      https://git.kernel.org/krzk/linux-dt/c/e505949abaa4f616b166430719767867ce26bdc6
[4/4] arm64: dts: uniphier: ld20-global: drop audio codec port unit address
      https://git.kernel.org/krzk/linux-dt/c/63252893550f75389616d24731c0c6051bb16a77

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

