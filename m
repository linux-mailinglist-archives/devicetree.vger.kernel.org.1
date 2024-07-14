Return-Path: <devicetree+bounces-85569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD0E9309D2
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 13:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2049A1F21587
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 11:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E04453376;
	Sun, 14 Jul 2024 11:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RYP2EXGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6704F44361;
	Sun, 14 Jul 2024 11:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720958161; cv=none; b=YZSgq56P+K8zrMxNj728LJjBBqJetkgFXPc/h7delgH+xWrKcx641aW9GTLnfYNlRy7dkkZudY2I/Owy5YCLCcU4+YrRRdCjyQwJEOZu/7d6PkCDs/9wPrxqZui6SC3A1YA3x/DjbRp4K50fZwXVNrXKsW7AUYzMMpEm1gVNLBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720958161; c=relaxed/simple;
	bh=kBE2d+T50inc3iRRDa+UrIulKWSgYOIzmujTdDnRtHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=q2VWCZF+ZaNyMqmArqww1gYw7wczSZTfi5Rtgo0R0zMCfnKKbkY01HyO29z3wOn13sDd3JWVM69j8iy/Oa2eCra+8TfkZobyPEZ3wYJGh21IBJW1wNXFiGzVCs2LpuV6tW7yshRnbIO+qrLJBB+7OaKDXMOdqMbrv7s3AA3mVqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RYP2EXGp; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eaafda3b5cso35116741fa.3;
        Sun, 14 Jul 2024 04:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720958157; x=1721562957; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVChRf9IHf7yjvnfqhKSBqOA4um7vjTbsZlNcS8UTMk=;
        b=RYP2EXGphBLyR9ACwTJe3o/aiRC0zXFnj/lJ9pKHTkV4gaWJ+gAdxVi6o+KW43nuUc
         P8P9IUiOfns8JfdpL9cjXYQT/d/+rctL/KGHOqkfvAOKbLi5kmDGf0MRbe5M7zx2tlcR
         nBHQzfcT2boTqKScpxM67j0VrXhIaAmN37NrOZlu8EvP1boZ6vSOHGcEuTN1A/anvsCT
         tBFT8YeIToemDFk2KsPvs/Kbk5MxKM/Y2lT3e3teVoBCbJb3WHRUrKFA9MypTYRchC0L
         gyLVJikadGDWY3ykfX0L7LiClkmWmwnipb/hveHVPgogdioSIKrfUppxUqN0XO4X7CJK
         8q+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720958157; x=1721562957;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVChRf9IHf7yjvnfqhKSBqOA4um7vjTbsZlNcS8UTMk=;
        b=HxUGFMXEFAWCCScpJ/QPev6JEUVYKnTowxtVsNVLPMNtX2n7l96al/St+lGXoUU5cX
         9o5nLcWltN8jtv+dmCjPeiRdg+qKnxPWxMCjrjOVuk2JgjxrZlaXgxRbLgj9yVz0VCfa
         B/YgtUMMc9rjFWeyRWf0o/+eYiW7zfNhpkCeNKwE9CDuz6KO+5nZAJGa7IwF55tEtqEG
         AJMbHZ2GgHFKPkStXiTR+0G4jTeh8s8lMJEQ/FG/pxWta9IrmSe5OZXk/tSPDJeeBYJy
         zLf5d9qKN3u6j0ITjQMLi0XdhBMUnP5VeyDzxwrS+NfSB6P8J6FA1x0ilZBjeTpkXu/i
         Mcbw==
X-Forwarded-Encrypted: i=1; AJvYcCVR8M7RWmjBe1Pd9NxHvNWeGqtGIfTGwJl+dXvsUXreKGtV9nOVt4G5+y8fZv24YKlZgPc5wyKojzDWYqnRTkLV8fEFsHdGbhDyCoT+
X-Gm-Message-State: AOJu0YwuAhBTe8OHJ5+6+8yxLovZTyovAREpCWUy/sHZLA3TP1M5sqyE
	8ZS3IIK8KpfcEJhioe6M/G0VRLfebff/rBVuo624YN3gnlX43QzN3xatog==
X-Google-Smtp-Source: AGHT+IHjhf49NvYAnVcHP0VoXvduk5j86Wc+QHnDaGHfzyQ2dVDduu8Pe3En+9+PG1Xpy5EhsuGYOQ==
X-Received: by 2002:a05:651c:90:b0:2ec:5b89:871 with SMTP id 38308e7fff4ca-2eeb3188df3mr106650161fa.33.1720958155255;
        Sun, 14 Jul 2024 04:55:55 -0700 (PDT)
Received: from standask-GA-A55M-S2HP (lu-nat-113-247.ehs.sk. [188.123.113.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e774c9sm49803105e9.6.2024.07.14.04.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jul 2024 04:55:54 -0700 (PDT)
Date: Sun, 14 Jul 2024 13:55:52 +0200
From: Stanislav Jakubek <stano.jakubek@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Baolin Wang <baolin.wang7@gmail.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Spreadtrum SC2731 MFD cleanups
Message-ID: <cover.1720957783.git.stano.jakubek@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This series is a preparation for converting the SC27xx PMIC MFD bindings
to DT schema.

Stanislav Jakubek (2):
  arm64: dts: sprd: sc2731: correct interrupt-cells value to 2
  arm64: dts: sprd: sc2731: rename fuel gauge node to be generic

 arch/arm64/boot/dts/sprd/sc2731.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.34.1


