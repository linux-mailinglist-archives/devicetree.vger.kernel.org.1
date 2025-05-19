Return-Path: <devicetree+bounces-178329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 697EDABB6B2
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 086F93AE55B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6E92690D6;
	Mon, 19 May 2025 08:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GhVXodyB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57B8266591
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747641857; cv=none; b=q4Dy71BxdS20kyYl0AMWgAFYqobTkvIXpF96yuG2lPMmP4G5GaDBvnYIgSZ+YSusn9xXeJqUoexr5P9XgOBf0ph0XZ2WmGep52FL7doA7ubUJP1MaF7RcRKqDPpawFs7SfK3/+FPyfoCfIN3iOlQlUjS3E4d1neHuCPDtzJatxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747641857; c=relaxed/simple;
	bh=VUdwMl2EDx/kLd0p575B5cQxJDHQqyuqcSnezXdDKmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vFuw+DBc78uPHagpWw5YbpbG/2uZ/glvT8ggUVeBbeYBTurkBfBSfkiVLYZCSQnmbykmCgxSprERvr3lIiQvl8jOzqVxeJs+SmmWT7uzXJvz+EuZkpQYvzfJL78ccOvSjfsr33F8nGCr/R13FZZZ63j/PhVl6Rqjh1EefhwLAw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GhVXodyB; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-85e46f5c50fso408695139f.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747641855; x=1748246655; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5dWiTSlIihNPV24ZOdK3DTwhr4M0WoIPXXLyt2EfOMo=;
        b=GhVXodyB0TUkvwY252M3K32P2qG2K2qUut14J5bZq28wfkvAaT5wbyUhFd23q6jpgU
         48M66eAWxkqdfqNqWMqpwuRbQSRT+QwP/2E95l/DAjqBuO3yXRezCBXBGobOptEVGTUa
         MFPP+OiccCq8eN8p7jA1FNxnr/qyW3YAZEnW8Y8wgUWgUo+6MO0LW0n49qG+t6YILhAx
         Em46Wprp3vl7RrKc+WhSwbsDhBIuFbeTAzMHF/d1APUS9HErfqDssVi92lJlMCj9Yrzv
         01QM5IXukVunXOkDZmBq7iZhQvvaDioqzqEasdh1pxgvro4trCDzwT54MNIeNAHp8qoP
         7JXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747641855; x=1748246655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dWiTSlIihNPV24ZOdK3DTwhr4M0WoIPXXLyt2EfOMo=;
        b=ctKtiV99W4G74UjKvOUWWncEZ0dg40xtDOP5swyuLzaJfZYge+j9IfkW3Ym5wRDYGB
         qw2xmiEO+37utOwqwui64NQbrfTXLiw/w/PAANZI6TtyynEEwb1azV9NrOykDbIjE2fI
         EQ4ViP+tu4ktWt7qgEKmPQJ1Wlb6yjYpUHPkZ3yUbNvvRVTA0TC6Wr6wq8x53VuSpRfb
         zeIX7mFCVUFv13xeH6znszW4lLoMjAwTqkgeJXMZQOC/a/V1H2hf7fN8xRzm7lU1y8Jc
         7In/JrbFJaB7RuSfjh20YJfTV+5jIj+j7O4WHnuhjg9k9j42hyd0f7sPOm19Q2SBRdRk
         mP9g==
X-Forwarded-Encrypted: i=1; AJvYcCUz/aLMpoMn8uTLCC4GkDjO0BC8LeJSf4bxPtPw6J5Ziq5hXcXtBtZcwT1XCy2TJroWzBr9ruqXglrt@vger.kernel.org
X-Gm-Message-State: AOJu0Yya1FURF6zL/WGia2aLFZ2UgAOCP9qavcYYdbcaMpqCHI5673C1
	M9QrNVtjytigezLLE6z8+7+echvbFhOT+Zs2Gl+oIdAV5eJYxuc543lWg/ReyzOZzUs1J+Ddfds
	z2U5O
X-Gm-Gg: ASbGncsy9jbnRvEJ91CYtuRN7dJ/Tj4NuA1ewPZ+K1tPbhOjw1MhhJH+jdwgIpcIG6C
	yj5kPMF50o05wGLBwsIXZekKrZGFq64uGJmwvzf/25mcigIV5y6Cl36Q+mdjrczwYOLY+agucbZ
	bsm2MSeLXPJLqAMcK7Iu0fwsLdaBE2zUdq2QebwvuaWrfseFkGntUq2X36PhesU/YPm1Iv3edRY
	Gs4YblU8vYOlX8cRXLstbJs21Zi/a2PFU4mKP+xvoBihrJIz/ShZNzvF1/8igUhfbFZtZ855e0c
	3U/K6Qf24yZf77L5ULeZoqliEHkiAdvfSigaqARq99v/vm1ZRi8pZTOxy+93710=
X-Google-Smtp-Source: AGHT+IFiygUcuvV8c/dwB0jF8vCoHy5520l6844k6wdSN3SQZcjM1VDME1146PS+wxk6VHlMkCP5Vw==
X-Received: by 2002:a17:903:228b:b0:231:c05f:29d5 with SMTP id d9443c01a7336-231d438b54emr137262895ad.6.1747641844321;
        Mon, 19 May 2025 01:04:04 -0700 (PDT)
Received: from localhost ([122.172.81.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebaf53sm54244945ad.187.2025.05.19.01.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:04:03 -0700 (PDT)
Date: Mon, 19 May 2025 13:34:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert
 st,spear3xx-shirq to DT schema
Message-ID: <20250519080401.u2xnw7tytywh4vdf@vireshk-i7>
References: <20250505144851.1293180-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250505144851.1293180-1-robh@kernel.org>

On 05-05-25, 09:48, Rob Herring (Arm) wrote:
> Convert the SPEAr3xx Shared interrupt controller binding to schema
> format. It's a straight-forward conversion of the typical interrupt
> controller.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../st,spear300-shirq.yaml                    | 67 +++++++++++++++++++
>  .../st,spear3xx-shirq.txt                     | 44 ------------
>  2 files changed, 67 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/st,spear300-shirq.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/st,spear3xx-shirq.txt

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

