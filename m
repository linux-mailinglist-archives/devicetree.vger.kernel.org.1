Return-Path: <devicetree+bounces-246017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1DBCB7C65
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:34:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAAC030221A7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8585D305E00;
	Fri, 12 Dec 2025 03:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R6vq12U+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AA630505B
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 03:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765510458; cv=none; b=OuSMKbsjIHWgu5ibUMMW2vXuQhjeJrTEYeL5tb20u5d/VSrCs5CcHuBWleUEQa+5DWLhyWyRGJcnZ30pPEVnN/2kvIJB6Z+64C24+Yf2VdQgG3UmgheYm3W+rJI897Ghpl9WoqhEZGQSHxXd1vuoqoibg9Pzu6NhjMNgQdoQNP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765510458; c=relaxed/simple;
	bh=HsbNc9NhdAR/LG1ML5qxg47G4bhkbg0BKoPAGiEnJGc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jJAUhYWCiM6W2YmblTwdT0eUX0Mmc8T3QSWFC4epak3UiDJoHBm8tOWRUz13+d6ELUNczTl+n0oYM8LJ2LyPmD8KYpq8f497cJgTmdDHPrz+oPbsS7l0KIss76TtyzCWGxG/cEYzrdAxNcEZVliUpj+T6Uu2LFP8tNa4mm7Yjx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R6vq12U+; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34abca71f9cso64900a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 19:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765510449; x=1766115249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DI+KXchmH44mUxxpsbUV6PudffQTHA3dEjh5VjxDDHg=;
        b=R6vq12U+6TQVWy591Ul6kCAgKRnvWvZVeZvNMANwlOQSMTVFOI57VzVepAiFfEbSut
         szcqXcL2/HfPDZkURge+l9Y5z8dpaqxsSQxYiw9AGej9kYFZUqyUDX/A+DgEnki2tfPL
         T2BKUpfQb7h6CPPgfy4uPmxK5ax2Y7fnu3Ddpzol8KxHPQ3j/Reqk2kef1sO745dOheK
         cx8me85Mx7KRr+xSwpjYpJ/Gw18KlM9YL+k9hKolr0Blx454DgctzgEquvsMA+F3JAL2
         WT+XPWWX60R+sXsZ0/CeYV0uMgDjLkgOgUbFIzxGNb36UQ5m1sH1AL77q+2fxc9Rl1gP
         COXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765510449; x=1766115249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DI+KXchmH44mUxxpsbUV6PudffQTHA3dEjh5VjxDDHg=;
        b=ExDdtvxw8m5HefsdOa5QHroXD6iazOoM1BoNfSsLF53immrhPrGIaT2szFOpCg4LZP
         xtZ2Xvv+GiGNXJsDOqQZsL/qKiOOPfALl30XOGn8RUtZsdGjqWJo3VPYkkhI4KeL4yY8
         1TOuueWlPeaLyauh9bGDbQ/4k/dF8inXH02a9lppHqmHLDRL8IcZA93zWc5EyA8s7Ewg
         +e7ZW5J1opkTdA5oTNZuvWAL/fCulnb7uDkR+lS84i/5MbKPwXQvAFXnwH+T/RJD+AgA
         i6GWVEbx6VrI7xRfy0Gyg28WWR35VAeOwzUo1/mPpfkvS/Rvq8TOnypZ2jxy9OSlKoK6
         WqGg==
X-Forwarded-Encrypted: i=1; AJvYcCU9ltAmA8p+DFD5wBMgUg7zEYzs/WNXUphVCVt/bwJDD4POG/b+yNalRvYtqk3aK5ZUp5vtrXe2r9O3@vger.kernel.org
X-Gm-Message-State: AOJu0YwPevQQCTcp2yPUFW/k0mn8i42msh6VhviIzdN8KyfIR/XNWOG3
	Ik5FpLoEj5myMxyk7u599kG5BKZHVxzeSGUgq13M7mgZSDfGrZspeVIA
X-Gm-Gg: AY/fxX7R+wBnzibKodPuaJZfttwUORhhLfT8ZEnQ3AOoPTT1eYGpPfEwAih450qQJjd
	VaI7wy27RNhliqop8Z4XuRy1DFImFT8+iSzRuzmjdt0XbOBEejQSAAYiKS7XBI4F0B3l6RPR0P2
	jnSupySMrfknuyMMyreA0DlNammfOtWlY46wBIF/ndVOJwyh0jrBG8hNmAMyVhx0kBJkC3lQehg
	n4K+RqwxDr2o9VBq5Dm2E54bTxi40m2dpA2BufbXccqklflbLGQhRYN30h4M48I9xRRzg4t1KfL
	jt1Jj/KpWts35V6Ms7AUaEwAhR1QZ7ijCo0IkHV4jwe6WadrfD9FoILPUzwRB4dx8rDwuLZX/RM
	a40t0U46KwlTreBlkWqTLbjmWD6vsCcIJRZL5Sy8EOQ3C3TaCh10BF2RYzg0ofOArQyodvIFN3N
	pUEBkERgh3aLlsvRs=
X-Google-Smtp-Source: AGHT+IEq2LErwdAEYXkfS1MvdZpjTJctOQkyTkNrB4+pZbLaSSuDnUfhZAotu6OCfqjLgju1qwGSvQ==
X-Received: by 2002:a05:6a21:3397:b0:342:d1c5:491 with SMTP id adf61e73a8af0-369aab23434mr604352637.0.1765510449357;
        Thu, 11 Dec 2025 19:34:09 -0800 (PST)
Received: from rock-5b.. ([27.17.162.110])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2ad5996fsm3575764a12.22.2025.12.11.19.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 19:34:08 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: benjamin.gaignard@collabora.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jgg@ziepe.ca,
	joro@8bytes.org,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	robin.murphy@arm.com
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Date: Fri, 12 Dec 2025 11:31:57 +0800
Message-ID: <20251212033157.3036182-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911155720.180465-4-benjamin.gaignard@collabora.com>
References: <20250911155720.180465-4-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

On Thu, 11 Sep 2025 17:57:13 +0200, Benjamin Gaignard wrote:
>+#ifdef CONFIG_VSI_IOMMU
>+void vsi_iommu_restore_ctx(struct iommu_domain *domain);
>+#else
>+static inline void vsi_iommu_restore_ctx(struct iommu_domain *domain) {}
>+#endif

After applying this patch to v6.18, I get error when building this driver
as module:

drivers/iommu/vsi-iommu.c:541:6: error: redefinition of 'vsi_iommu_restore_ctx'
  541 | void vsi_iommu_restore_ctx(struct iommu_domain *domain)
   |      ^~~~~~~~~~~~~~~~~~~~~
In file included from drivers/iommu/vsi-iommu.c:31:
./include/linux/vsi-iommu.h:18:20: note: previous definition of 'vsi_iommu_restore_ctx' with type 'void(struct iommu_domain *)'
18 | static inline void vsi_iommu_restore_ctx(struct iommu_domain *domain) {}
   |                    ^~~~~~~~~~~~~~~~~~~~~

I have to use:
#if IS_ENABLED(CONFIG_VSI_IOMMU)
instead.

Best regards,
Jianfeng

