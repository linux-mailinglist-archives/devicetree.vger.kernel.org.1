Return-Path: <devicetree+bounces-178679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 685ECABCD34
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 04:22:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CBA71B62CE2
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 02:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B3071C861F;
	Tue, 20 May 2025 02:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="XWlhl9Pg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26F4642D
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747707745; cv=none; b=LczlHBjUxjYtCN+kW8lwHUm38qZtkHI1N9Q4smATaC68U2y/2UcRL6Qwv9AhrNGSQialyDbSW8DA/RogLGpY8lTT+Ce29Z91r2UpuLbbIDCX8TRVw60VPQNIAav7LCRIQmbk6omA1PeapmnVUh0uv0uF3DM6tc2jV7gWWNDKIlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747707745; c=relaxed/simple;
	bh=jmXrTHnVLLq/i/PxF7Fe3GkUyb8o/LpC3K9yRXSmslk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cjmOlHCCRokficGcNyTT5JdXvWSJP7hSCCsRtUuSU1Ieaetjl1jEkXe8GzYZD3r3dEvUg28bKIxB4ZQGlZERAhz6PV9v2hS8IPElyOSUkPSLeQBiyDW0roZBDirRM3sLN5A9sj/1rJqoClxFyhbJAZ9D+xmZMqrVF6j0oq0p7kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=XWlhl9Pg; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22d95f0dda4so54668655ad.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 19:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1747707743; x=1748312543; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0x1pMRaRiUXRU9jlmtdQiRSbIB2PaGoK9fRSAZ7jcdo=;
        b=XWlhl9PgT15OvnVBpTll3nfdFsLod01sSLXyT8JDu4pjvsjNrSHBH8hCzVr94TgrVW
         ioNm3CXwxbEQB5HMSgaIiw67sX1Ndhuk+lojiwXUe1J6aYqf/TMdFLMK+x/efSYjMZHd
         0JMvI0E0K2S0f3aRtjiDDyZ5Su4OAPzlOpcLCCMN1CGwC0QloBsYo++pS8trchWoUbyu
         x6QI5oNJF5N/YyQ1E4Ct83BoqBKCXl1Olbts10FAZpkfWda3VRLkSd3zKbLw4ak0by78
         5dtjiYR3PGw55tij8qWpHjaPcQhlMnLKRx4Un6t1CCAD8KY/itAG8p7dGjpQGe/wDlTF
         N/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747707743; x=1748312543;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0x1pMRaRiUXRU9jlmtdQiRSbIB2PaGoK9fRSAZ7jcdo=;
        b=YA0yoKl0elqVKRcJwuVNXlgjxCeGDaxxu9RZvJGQjNkDujw/1kZcIGxLYeemkdxQpy
         MB2fnhAhcJrfZTleld3yB3QncP1CXk+x5SCqZ5HJ+ABJPN7OuCpw8Ts+apEDe1JNUnJE
         /APzNidKfWCsR/Y53edvpAbj/7Vj+Gryh7uWlPa1fvqLhCvvbFU/2CGP77+1ptD30yBB
         mCRbyzBnESurW4PZ3HX1Rvx6N5dPwq9PztA+35ghZQs/QhPQvOuKQdNi4h0UbKChqsBF
         ac+HO+TUGWcDYZsf+1b88eQwCxOVh4qpaGhRL9ReZ9NHapGfkG/fukjl7hzvNJYUOgH1
         Q2Cw==
X-Forwarded-Encrypted: i=1; AJvYcCX0is3sD0RX7C1fdA7Cdj6eMNTNcjcwLmyyskWpgg5LNkO/6VBHAJIvmt7WuT2xKsmI9sHHvhHF/DRp@vger.kernel.org
X-Gm-Message-State: AOJu0Yys+iqpWTBU5M9X00l0v5Hfh+muXi/2GG7ADiEDH2BY+h2MKV0X
	eOwgs9ncSGf9aHgLGSoP7J5UFpMRbZPMp1xVHgdpbQYEuBHLEPtgcMH9EEuAH5Eb/Q8=
X-Gm-Gg: ASbGncu8th+nOqXSmSd1Qt3NzOHA1/3NniFHXbt5QwkEEEzzTofkXvtBah+Rr00G9Sm
	UkKzH0LMyMVAe/QuKMGKgzUjyY1lrz2QD6SirslHnR1EFtN0XkbNxgRvCP3IVCBOXuCLDag0Mx+
	U/IRqkbYwuU7+8iYMa+jqraBsO2qjVs4B2vGdNyW7HeZFPMjd3xnPcv5+4ABBUS2O5nI22M4oUv
	Pumth6E5ryE/BYYfygv4k9TPq4N5FzsBv9snAxJS9qacb62cW67RWiJ+8CfMb0vRCCQpoJyX2XY
	VKrl1yuFF5IijefG74zxEz6UoEJz493cPgqO46kc9ttzoRfI4Dr/2jQ9Gdq4fgYlfsRj1qFzeg=
	=
X-Google-Smtp-Source: AGHT+IFL505dYK5kP0RzEBvKLWhjueG80hANUDXQg8Vm6xat3akzB1GhSjsarMMmvWhb64KnIqDstg==
X-Received: by 2002:a17:903:b8f:b0:224:c76:5e57 with SMTP id d9443c01a7336-231d459bee3mr202331325ad.39.1747707743271;
        Mon, 19 May 2025 19:22:23 -0700 (PDT)
Received: from x1 (97-120-251-212.ptld.qwest.net. [97.120.251.212])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4adb71dsm66926355ad.62.2025.05.19.19.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 19:22:22 -0700 (PDT)
Date: Mon, 19 May 2025 19:22:21 -0700
From: Drew Fustini <drew@pdp7.com>
To: Oliver O'Halloran <oohall@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, nvdimm@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aCvnXW12cC97amX3@x1>
References: <20250520021440.24324-1-drew@pdp7.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520021440.24324-1-drew@pdp7.com>

On Mon, May 19, 2025 at 07:14:40PM -0700, Drew Fustini wrote:
> Convert the PMEM device tree binding from text to YAML. This will allow
> device trees with pmem-region nodes to pass dtbs_check.
> 
> Signed-off-by: Drew Fustini <drew@pdp7.com>
> ---
> v2: remove the txt file to make the conversion complete

Krzysztof/Rob: my apologies, I forgot to add v2 to the Subject. Please
let me know if I should resend.

Thank you,
Drew

