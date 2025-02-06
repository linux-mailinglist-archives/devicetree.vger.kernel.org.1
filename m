Return-Path: <devicetree+bounces-143437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B25BA29DEF
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 01:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 871201888D53
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 00:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C7342AA3;
	Thu,  6 Feb 2025 00:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="stmo4099"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA921B59A
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 00:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738802236; cv=none; b=ZPie+Yar2f49G/T4QMOYKDnsbxKeI0ZkpyE2DTL9zf1NcArqLWmRuwoBmt4UxYCE7oxCkEc/wP46hNWq5X0P7fYvONtczfmoipD9jdfgDJkZeojmrvDCh/4VIAmbjJRoTUXoALnKQ9zm/LRLimaAk3u8vxl4mCyU26wimjZlqy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738802236; c=relaxed/simple;
	bh=nOPgqH4lhiAM4OWu/qIJGrbWH9VXRKT7m22Jc/D4Ss8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CBcHoi9sNWYJhCmh25/bU31adNAn//Ejp5VdRESzl7r/SbapaIvhwEwK9NDq7pxnBoQnZ2T6cDZXGUeohqgtqspVF87Xwt//oouII6DTFuBd+V5zJe691EFKjP646VyvqD88qOpjKul6MKFp6MnAKlcavNQ1gXKJIDc9MyV6RfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=stmo4099; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21f0b5d6c6eso5170765ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 16:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738802233; x=1739407033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zzIHkh0JWr0k+Vy4PcXdrqiu6lb1v5EsnhvqxVQ3do=;
        b=stmo4099NOPLysGubhkrcLBFWWz5loMEr2psuQsrLJFll/4G6Yw2LVU6Tbq9kZ1glJ
         OLn0Je9TBN9mPkdDbBkDpbE3G5rFDekXpBlTyseSrysNGnknzRGJOJDAgv/Rd/Lsh5VR
         1hkr5shDvjeLqQaBN/eTFhK4sHPEqxn3W/ddij7ZQ519fCJuhOnR/Iy0wBeTFV5VFZpv
         5JTYwQ/hIiuMnENyM3JLRwcotNnKANDmHsKGZoYsSmgG5NyiVV7YEUuEpDRsC2BSkt3U
         qqrVN1Mt822M51HWAcwzjqeSsfpXiuZwVtVTQB2Uv4DaYy8zeNH/Enpjou3CJxuiOyVB
         Qo+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738802234; x=1739407034;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zzIHkh0JWr0k+Vy4PcXdrqiu6lb1v5EsnhvqxVQ3do=;
        b=lnjTEMzM25Oxf1AU+tsqvg5MrnOwGlANqSYzUv8UviSFA/NUkUYOWwzFXINRP58TFy
         gGW+PFnC526/uRMwM5/nzz52VkMAXPPbnqCoWMr6OaLBtzViCTzSaAkEFfwqu7NxMbKL
         B5me+SOgKO4N/mEiqyU132jzlmSRe69v+qBGmLPGeLuKIFs4fVUSEP2A7t7KOgh5RImC
         atALcyoAL4V+kQ4OxpCD25YB0Ut7KAV1fmXLdCN0boiWmUpkNFvoZ+7tU4Va9frHYiQB
         W3CDuORqmhCKpAqJhgPIM3WgKgIMZ2dxR4hQ5/AZj+IwKAFJ81GD40o0giLYseskSCIt
         7VCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSq5DZuLVgRsue7yVnNPuVyLvMZgjeKaF0hZSur6wv8jxW84lDwObLAYaGy1a7ulAPUUwr+NA9hSeK@vger.kernel.org
X-Gm-Message-State: AOJu0YylzrGzGdUcbRaqfVfORIA0C1N++TfwCWdr8pC458xNiCV/fnwL
	7oKmpgFRNBPX7WwbXm0JRBSmBtpDcaYg3yess/hE/Nk/YTq6mK+lQaPMWMSGWqcyj5bweHQTMrD
	A
X-Gm-Gg: ASbGncvhr2Q8BVeeX9mT6PBjAUuk/FuVVCo4ZudZGRB8hSuqB9wtgYtg0hSqjSiOw1v
	FDOrlS1Kr4xVkTVDW9ww/4f+u95NB1le3D7s7xdQih47dd59G85w+/1a5VkSDg+DGrBzL4rg0Fl
	gSbCfpY1+N25TRYxNhoXAenAU3tXdtXYrYjbd+fO54c73/y/7l3lfv3dP+aD94Pda8Z4Dx3byy/
	RRMOcPniPhoX+pSmPNd9yz3gWJozgYgX2QbBHQli2pAU+Xz3tBvXfcXtUG7qwLeOQIn0HpgHqMo
	iYAtKgXXWy+mGA==
X-Google-Smtp-Source: AGHT+IHeAALMMN6rEjNsIcgDHE6izQCRHL2t1ia7J5PPMNZzXVn0e++b281jLiI3GTn7lM9t/PY1+w==
X-Received: by 2002:a17:902:e809:b0:215:b1e3:c051 with SMTP id d9443c01a7336-21f2f173840mr22559485ad.11.1738802233665;
        Wed, 05 Feb 2025 16:37:13 -0800 (PST)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3683d8desm49515ad.155.2025.02.05.16.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 16:37:13 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-kernel@vger.kernel.org, Tom Rini <trini@konsulko.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 Robert Nelson <robertcnelson@gmail.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org, 
 linux-omap@vger.kernel.org
In-Reply-To: <20250123174901.1182176-1-trini@konsulko.com>
References: <20250123174901.1182176-1-trini@konsulko.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: omap: Add TI Pandaboard A4 variant
Message-Id: <173880223301.2488567.10858467099491839208.b4-ty@baylibre.com>
Date: Wed, 05 Feb 2025 16:37:13 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-94c79


On Thu, 23 Jan 2025 11:49:00 -0600, Tom Rini wrote:
> Document the ti,omap4-panda-a4 compatible string in the appropriate
> place within the omap family binding file.
> 
> 

Applied, thanks!

[1/2] dt-bindings: omap: Add TI Pandaboard A4 variant
      commit: a4ec13e6101ea750b17dc23f49f21d3f57623099
[2/2] ARM: dts: omap4-panda-a4: Add missing model and compatible properties
      commit: ea07a4775df03852c353514b5b7646a17bd425be

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


