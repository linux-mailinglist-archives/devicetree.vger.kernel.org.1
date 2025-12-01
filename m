Return-Path: <devicetree+bounces-243215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6793FC9571A
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 01:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 23EC84E02AC
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 00:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3D41FDA;
	Mon,  1 Dec 2025 00:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NBjRy9BW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA68736D4E5
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 00:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764548037; cv=none; b=IyPrcJF0H+aPkWncleoXIHZnKfHmKs/hQoz4Dpffy5yXE4lQqMLM6mO3tzWG8amYnS2S/OwTSR2DgU/Oy4zn7Mqy1i71JKuEV0GdrkejexMXVFboxiA0QcC1XIGOb74HruD5bDOPFx5wXBZJDNwPzSFM8kUxE6oCI3PbwitTEVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764548037; c=relaxed/simple;
	bh=XZDBFeOSveiAVVICQYf5inaVTPvKwFEm+wic4vGe6gc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XyNwLC9qrr1GPjFJAYbAsjdgnbkmbGuiPOzKbEi/pr+XYqCdcXFkXRs+cLNJKUIapY0ekOXgJqxOB9fLOzWXkvxmMaTb8DF4UiosEXP44O+Ol6/CwWkg+vIM36qyYQEaFkBz51LZQzpYRzKEf+Zt8pfIMuepm6DA0gByaks3Bx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NBjRy9BW; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-78a712cfbc0so35341237b3.1
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 16:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764548035; x=1765152835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhgqPEHAVied+bvslO4D2+NiTeUca2gsxHO1K1xsBSM=;
        b=NBjRy9BWEDrXRjHdGuk75lW9yz3o504fyRgBULYY2AUCcHwQNLwAYAzKOYQijeitbR
         WsrWfO1MtZNQHB2UlerfP0ZKU/SfO5iGw/Hh7gFG+DnDM5fw7hog65C3TAhk4A8Mr9Aa
         rC2byC+CblZJmAqWq+rtJgwD1IxhUgNWuA8OV1Lw14sytaBD4k5MBoTqeS1Tws/SeA0x
         qx7rI/eRJCMVYau4D5LSlLHB2WhbpOvSK8QIg7az4mHFlzxK9EENlgpFpmT/DngHIs+h
         pYaU/zv2yt84vLxpCGXgZcfla3kABZ33x0jU0Br71d5DXRwewmTQ3f/ATBicfvgo+nL0
         B26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764548035; x=1765152835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JhgqPEHAVied+bvslO4D2+NiTeUca2gsxHO1K1xsBSM=;
        b=hl2jTtdOYp6yT+KK4pDx8Lrr7lWJIPw1dAAtSKAIPeY5xrbTOo1HcvcOibvZ2KjijJ
         WwVDTKhC+DFcaUwZWUSpwhVdCN0tnhOYGJ7l8JJi8FCv3POTJYkeVzLkJ6xYeVliZYBt
         8E1ZgzUANFBu6eY/SZfLaYXDZOoFxLFkrXh+ZcniwQ1OCyGH/cslNMniQ4/3qijDAvPU
         +wfTWX3zmoj96oxORs1WX7KO9JKL3Ffzvc/C/NE4jAyqKW+w5mBBLS+wM2EEqlkfedWz
         +/Mfyk4zo2ff8stEg4ZFnwzGaqdyWPcn6G8amnSGAf1dvqhGB+C7SIs42326qLCdvqtd
         JgaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4KhKF5wTBL92z+E7CFDkDa+iCPv7wDFf29mG2CSJRQZuUzGTWk56hbzhPzd6fhO9M4Pp9o1rE2SJI@vger.kernel.org
X-Gm-Message-State: AOJu0YyOJsUc8EkgW6b7gtJ8Rbb3V7H/TGdzGsQiO5/uv8nKrgUlmuUq
	emBZNIhLY9bnSDFveorri4YhWvxbIoAwjJHCu4ntGISlknimg0/eLoUr
X-Gm-Gg: ASbGnctEXlXvbqX2ogSaokRvfPl4fCvVTNz29bCH/Oo6qr7fTJXztF7NuXn3fb/XbAR
	Z3cGenHYbbqclbeT8KK6WBeMYQHcKGt0SoQ0vsnXyIg97Xvuqlpcq6F2W6q88V/henHEwqMU9G6
	NXnbVZJooRVhlXbDnFbJl+vePWTQwwhX7BOnZLlS8fSfkNXmCMtWgJ+ZAMH3L5p6ojTfg7hdvMa
	wRJxPZEjTkB8Ell+4WEXsKNkLKtuzNoSeZOa6ksuvJ6FlBFPpfvC+JK2w9N6SCtWQrQWiWkaJ1R
	cJsBLQUOh8CEtUwSIjE7zG9H6gnsmSKZII/DIhc0ehBxWJf0S6tDpbiFQFvyGChtew9Cd4+lPg7
	2JsOfMKTf8HunOkVJSKH5LBdHlnqUN/ZnOmiDnTBrKVI6WngLji+ZQFhR1DU5pp4LDicxuVj4wE
	PrWOgTRLd36fsGlTjzmQLH7dwy2Sl72g3wUFV9O3/fyjuCF7dNcOCi2WRIl2E=
X-Google-Smtp-Source: AGHT+IEmlgGyroXsPoYWC6AyXSzvWQ9UmiRkTlcECxYQVwBbbQRoUHXQg+OWZhfmwhS618cczeXgjQ==
X-Received: by 2002:a05:690c:368f:b0:787:ec0c:da38 with SMTP id 00721157ae682-78a8b577c22mr301740827b3.70.1764548034671;
        Sun, 30 Nov 2025 16:13:54 -0800 (PST)
Received: from localhost (104-48-214-220.lightspeed.snantx.sbcglobal.net. [104.48.214.220])
        by smtp.gmail.com with UTF8SMTPSA id 00721157ae682-78ad0d3f5c8sm42643627b3.3.2025.11.30.16.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 16:13:54 -0800 (PST)
From: Steev Klimaszewski <threeway@gmail.com>
To: jonathan@marek.ca
Cc: abel.vesa@linaro.org,
	andersson@kernel.org,
	christopher.obbard@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	quic_rjendra@quicinc.com,
	robh@kernel.org,
	sibi.sankar@oss.qualcomm.com,
	stephan.gerhold@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e: bus is 40-bits (fix 64GB models)
Date: Sun, 30 Nov 2025 18:13:53 -0600
Message-ID: <20251201001353.9852-1-threeway@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <35615ad4-5b86-577f-4695-c6cd85206334@marek.ca>
References: <35615ad4-5b86-577f-4695-c6cd85206334@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi All,

On my Thinkpad T14S OLED with 64GB, with this patch applied, I am unable to boot
the laptop anymore.  It doesn't matter whether I have mem=30GB, nor if I set
CONFIG_ARM64_VA_BITS_39, or not limiting the ram - shortly after loading the
device tree, the laptop just resets.  

I have tried over 20 boots with it applied, as well as trying both booting a
working kernel, and then rebooting as well as cold boots.


-- steev

