Return-Path: <devicetree+bounces-222099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 987C4BA5E20
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 13:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC581189DD12
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 11:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E192C2DF124;
	Sat, 27 Sep 2025 11:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B8DBl0JA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DB2DC32A
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 11:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758970997; cv=none; b=GcAZr6lhssjCv2Bn/nlSIJxtZIQeoIzrkSTy6uh3BnLagsgeOArl7o0SMw1fhsmimVH8/9SFhbHlhd33jBMIGkM7DnnGIBYs/fBTrX2djgppwKs30QMoz3VWs2PSkW7RHN1MWJxOHBt8fdqMO3cOl78BB76O8g1DfYozvoF3FlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758970997; c=relaxed/simple;
	bh=MEPk8mF0XWJhaPBW8X4rO7lqawwu25cscAs0P6vTG3s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=b2YWLxOLO9FrLf/UCLbRWqCPMFRhyJHlDcCnfg9ieVtr5GCE5i/rsuS6nmCb18qe1NJU+MRWQqUS55K5KMVJG9YFNbb0Ud8/AUkVApatPnX7KummnLh0jXvU58nN38LxXmfXpwgnYRcjPZERBSDMptIce/5Iqxq5n8o/LAuanrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B8DBl0JA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46b7bf21fceso23319735e9.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 04:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758970994; x=1759575794; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tkNWDYlAClljJacvPFHJT9/32vyeFE8E70qgHvwmkb8=;
        b=B8DBl0JAKft7KS0mBXk4ZY/ok6mJDWMh2p+a5mIpvq0gcIDr/nrOcKqyZZpb4sEwsn
         0JvCxISZgsr2Y6Com5U6VjlE8zGBC0ir58SwzAVi+kaOBqi0LcziH3q8uwCxP2kfY2jf
         oZ7zw1MKqyWSqsxH3xCjcxxgYRAiEEsYTDw9E1YXLmvMm3u+NRE7s3Xw4mrNsX3oBMD9
         YEVlT/0fJil/YiUuHHGONX2ymzrPDhHDbfn5rPwaPpLZxwx+TuBR2hFju6qEKe2uTsgY
         aCeRYI6sqWOcBkoVzVMeQh3k/9rZGfxTxFOETegROEUGv6k6i0PKaJEC58q2hRISmilt
         mzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758970994; x=1759575794;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tkNWDYlAClljJacvPFHJT9/32vyeFE8E70qgHvwmkb8=;
        b=H1QF/pUcC7meUbfQRgZfNeTLd5m7SFdGOJgH1/dcGW53fV3P1SW7dM+63EFY8ZYBf2
         NDOYKf61i8o0Bv2eqxs5Rgd94ZnzlfWhZhkynQQcLmz7IzEl7bloo04d8YK6ZDDvITrk
         V9KuvKXzx39VIC6TDKuWsvlprTD8HAg4wY7doAArEGBmbeyVJNZW/D57s6rK6sP775Vm
         uBSILUiZbqoFKiiiThabyi30WAR1ssaA/irQdIgUM08dtR0EeiCr8+ljC5Lp27l+Ki7a
         fWdIe5I4akP78M/J2tMU7oTFB8O29X5h01F1OsII31OuOR+neVCcqYWnKIS78NEJWrA3
         w6sw==
X-Forwarded-Encrypted: i=1; AJvYcCVCnByy1f1WpeGSB2ffhLiMOIdsCFyEmBhMwcF/dMTT4184jOUBWPVMtUfvwUrxUs8YtruEQFR8yi2K@vger.kernel.org
X-Gm-Message-State: AOJu0YytrsNtOHKnI9teBjlv2ysI5nWuKjRevbZKsbXDj0hQigT5z92X
	Jh41dDI/HdwhCWt/STpXFb16zWaV7a4aUUK2w1qP+g5euDMQHWcl5+kv
X-Gm-Gg: ASbGnctrcTPSvdDDyns1nBFwfX690OB3ygBTHAxyHx8BhPTYyf0DajCCaCguLGE1JZa
	YXPbk7jplHgXdOgaosRYsyxrh21rt/rUSqR063peSEXRDrHbz/GiqyLAKm5oLNhnVhMpOR83kcB
	yyBpmwqyuLicThQneA1/oXK54NL69epu3/E82dRSiIisIhqkHq8w44RFloekbdgWJCUgXvFOEuF
	viZ+ntjT9hXiCMnpDvrZJhHgpP4muLeOvvBubRq70PTd7FBDUkoe2XYEbpIuemsIljwpHlV68sL
	84zhokFnI4P0ivOOXveZVht9vAKtzRS/bQ5XZilYFhaeU1qfvbLia1pqVx1eqNmlAWGOdSAFqsD
	N/oEfdMQ7b09MShamPwdXEhVQ1o99akhWmYjaPhgSrEnCAMQd1NvH57TSQeersNCNAyJAZ3hiLp
	sABO8fQTto1vFlqQ==
X-Google-Smtp-Source: AGHT+IF79XdU3MiveCiJWHuSLef1NIT2fZqNrN2anDonGJumcYidxmAS11xssMvpXUUEBE8RsYnPGQ==
X-Received: by 2002:a05:600c:3e86:b0:46e:4784:cdf5 with SMTP id 5b1f17b1804b1-46e4784d03cmr11911565e9.15.1758970994270;
        Sat, 27 Sep 2025 04:03:14 -0700 (PDT)
Received: from Radijator.localdomain (93-140-175-232.adsl.net.t-com.hr. [93.140.175.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33bf70b5sm106190035e9.21.2025.09.27.04.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 04:03:13 -0700 (PDT)
From: "=?utf-8?q?Duje_Mihanovi=C4=87?=" <dujemihanovic32@gmail.com>
X-Google-Original-From: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje@dujemihanovic.xyz>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <dujemihanovic32@gmail.com>
Cc: David Wronek <david@mainlining.org>, Karel Balej <balejk@matfyz.cz>, 
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org
In-Reply-To: <20250913-pxa1908-genpd-v4-0-55e4cf32f619@dujemihanovic.xyz>
References: <20250913-pxa1908-genpd-v4-0-55e4cf32f619@dujemihanovic.xyz>
Subject: Re: (subset) [PATCH v4 0/4] Marvell PXA1908 power domains
Message-Id: <175897099249.11004.17270115916151643401.b4-ty@dujemihanovic.xyz>
Date: Sat, 27 Sep 2025 13:03:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2


On Sat, 13 Sep 2025 23:12:47 +0200, Duje Mihanović wrote:
> This series implements support for the power domains found in Marvell's
> PXA1908 SoC. The domains control power for the graphics, video and image
> processors along with the DSI PHY.
> 
> 

Applied, thanks!

[4/4] arm64: dts: marvell: pxa1908: Add power domains
      commit: 1ee5305033c227610c072f32c4ac8ba0adbd42bd

Best regards,
-- 
Duje Mihanović <duje@dujemihanovic.xyz>


