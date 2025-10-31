Return-Path: <devicetree+bounces-233662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C28BC2472A
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E5161B24D7F
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12CAB334372;
	Fri, 31 Oct 2025 10:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BP2RTyp2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB133E350
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761906200; cv=none; b=ZoUvbkNIJnR9tkiMkPla9FlMcycdlswdCY/32Lfd6ZvLMJK/LXaFsABjgKErBFcO0zm2tf/uKziMW9UiI2lhLtEXjVY37vhw3mvg77hkdBEE3ZtaJDFiZG6a/wMXlHwge5CAWo6SVbIuxIDJYSrxcxCMV2NgKkueo2C/MJAAsRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761906200; c=relaxed/simple;
	bh=s0mJfHAmF5K/DF69vj899rOYl11nAz6rTKz41ii/zGE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=sWIg9KH9o5PTxYIeS1S1GLzNoYqr9Ab2OH+Uj7iszmIB36j9ZcU1MK9IkEH5xZvCq50Oicd9YxN+arEiG21700s7hyIn1yezZgUFYH6Rxmnh4JK+Z/4pEoCHYePRJEFIFeO2reIfL73txnse1z2DUTkgdioXSw4/96AouaquA34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BP2RTyp2; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-475dc6029b6so21074495e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761906196; x=1762510996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iXMKN/f3hPlGQyBPZaLnadEppjkwbleTDBKw/agnyeU=;
        b=BP2RTyp2bCi/ezZ4l718WESIK/v+hXG5vDNEMv9MAnTvUaPSJ0rTAEnDgHrvKy/cXD
         gIIwwqXOYFF7fraiuKObtiinPdtfAfnF8C9FwE+tcnWz2EcsZQGQkPMFaYFiQisLB93E
         JKegkvnpcaqCFgc34vA8LBxy/45Dk44S5mbiDmPvfQWnEP6o0fgK8b+F0C9IFxaij23R
         Lr4nyAwzypxs/ZGrmHYSdc3rDrrJMXlrrwTzlD+FDCpMx7LQ8dfOQifRZPhsrZzJn33/
         ZvNdkUOnkd2akHX5pqR5/m9HefKq2uLiTxQdYKcq67Vyy4b2iEffT7m2iEMJvnxAPTmp
         M5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761906196; x=1762510996;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iXMKN/f3hPlGQyBPZaLnadEppjkwbleTDBKw/agnyeU=;
        b=dDfsJvoAs6uqyRmk8oa7byV0Rdyu/uzILnTJBB4lxig2cGPL6SXchZK0og74dajBEp
         BwF0cbtMOj3NCscr5tfM5IpUTNuGh2BV6sC+ehx/1IAr4ai+fz1RtqQ+iF6xQx9n6vp2
         /CukyGPLYSXMCDYuEMhfwjsQmpVyLoijmPwwayJy3SOfSdUeZwxTVyQrDv2E4xq9LRgL
         xDcetCvQdLc2/hIyfdi5vnKWItGYpRqm88ou8neCCAVXamjcQ8IJf6Wm8/0yHDWIEDrc
         htcNQR5MUKHHBUHVSPG/25uIufxxPohLFF/ixIBJS+10MtRcpWZt5yCpmHuG4dBWoRYI
         jRfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUG1ZU3w7xtDE1iTZoG/BbRa8Q5fg6/o3ta0RCt5sTbCVKVnhHml6BUb2yzSMzSUqlauZziDvl5DXWR@vger.kernel.org
X-Gm-Message-State: AOJu0YxyA0rcmkHKH0aSriJl0mAkL0Pg2ZltSjy/vitNLbWwKSzFufYc
	lPZjCePcr176H4TtseMw0UajaqXKdomJd2cmyG2BntamxoPN7q9S1eeg5DnL/ZInOsw=
X-Gm-Gg: ASbGncszoOJgv2Qw9uzf+KCnIcgirwleiayNo+XwgIsObJgLR9/dApW5Bi5B0PeadWm
	FjbDYkL9xm3NlZ30vXsWdtqKpRjHTf/teyO0Ipc3VUTYBZI3cOgHKIm15pMiK31Bih5TsW8L7hC
	LfM2Aq3VMMnmrjlGdiMdlAN20OeAXxwKNo9hcHllvyhYTceojKnyfSU3T9vKLx+WmTzPS95QuDL
	sdufABSwe01xQs7agwP08+2ZvXUZzB+oLKDmjIbUChu5mIQ3i4Y4XXfhA2+8gYwwLy1XVS2bi44
	tEGsjG5xrNw4ImNMZW1v/VAPFsu/1eDypWtdSDC+LxOOvnbjGhSe0t2NZ215HWWw7XaZL0VOUD4
	IjrXnNmbszVgyZwQ/MwgeJXROFphlJUtOfP4/o7XrHYpFXRQauwUMBhdEY/d65ahDC4hoBwIwJe
	M1Ulx0WiwTTAwGJo5C5P5G
X-Google-Smtp-Source: AGHT+IHuvEibfn7tsxClW8DlHuT+oqRrLGx8+6cBjm1BnQcfhVjHOD/UlqB22n8dAmDrfxw2hKQRZg==
X-Received: by 2002:a05:600c:1f91:b0:477:e70:592b with SMTP id 5b1f17b1804b1-477305a7cddmr27504455e9.2.1761906196326;
        Fri, 31 Oct 2025 03:23:16 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728a96897sm87112355e9.11.2025.10.31.03.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:23:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, dianders@chromium.org, 
 Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251031100447.253164-1-yelangyan@huaqin.corp-partner.google.com>
References: <20251031100447.253164-1-yelangyan@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v5 0/2] drm/panel: ilitek-ili9882t: Add support for
 Ilitek IL79900A-based panels
Message-Id: <176190619569.1659489.7212460878951359541.b4-ty@linaro.org>
Date: Fri, 31 Oct 2025 11:23:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Fri, 31 Oct 2025 18:04:45 +0800, Langyan Ye wrote:
> This series adds support for the Tianma TL121BVMS07-00 panel, which uses
> the Ilitek IL79900A display controller.
> 
> Following review feedback from Neil Armstrong, the IL79900A support has
> been merged into the existing `panel-ilitek-ili9882t.c` driver instead of
> creating a new one, since both controllers share similar command sequences
> and initialization behavior.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/e147c472fffcdaecf27f4eacdc2ef48623867bdb
[2/2] drm/panel: ilitek-ili9882t: Add support for Ilitek IL79900A-based panels
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/2b1ffe042c4767c569bfff852f34f357817738f2

-- 
Neil


