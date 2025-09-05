Return-Path: <devicetree+bounces-213722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C011B46693
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 00:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 275C11CC16CF
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 22:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32CCA2882A9;
	Fri,  5 Sep 2025 22:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JRpQGtsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E5F28506F
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 22:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757110935; cv=none; b=EUhRSjEv4yREPzmpmlARzeSYMzb0p1cIslnPUnfV+nYuD6ktBE+eiibRFRcUoCRVltrt76mhiakFlLI7fe9piD8EohH1H3pMNsiNN+nacNbmNIrbqPem13bRMF3LTWPHAKhr+8O/qaXJMR2mPcTDJPsBa2Tro8w5fOfTEBHRXj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757110935; c=relaxed/simple;
	bh=jn+MZ5+d97lgrG+nL2EHugJJgZgp2bHPyDe+yYWp08k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=oUhXddALrkx87c2eWw3jh+DtubsJDJeMaiEV95EcDyCRouoj3xuKZ3MiPer8YnV1CF4xhO/y3BNGKqSWQ8+Pg5tYnm22DdqaVXYXgXWXRPkqR+Bh8uZJ3+937ujCVw8bwSn4RjxWnNLR/QkoVk4GuhsHdAe9ANdouVAlVllwoao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JRpQGtsL; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-76e4f2e4c40so2157678b3a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 15:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757110933; x=1757715733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHO3loFaMTLM8uFwv63bYVveAEYQx6NyvCeDA98Eah4=;
        b=JRpQGtsLRA1eMOq4JaVIyk4mcM/BmTzW0MKOG0F/6ylDwpjfdaVZ5OH0rteKrRWASf
         oTE+v8+uHd7joQyEiaaiOWLu41eEbgSFA4eiBMb7WH3+O7YbeGjhafD60dreKBAOWNAg
         JIllxR9QUjLCcmDOeGlNWVWjKF5hD53DeSyw2JTXGWzydalTvPrSxJfLb1xpex+8nI6Z
         uepsRh3Rk//6L262YEngz4RvF34d+A20Vlqw0LqL7+JHvcHRzUibLAm/IJbQwPf5R8vu
         kV07izRDFsIi537dQ+bnXeyOWvS8F8lAh3rGoS68K2UAm03TrFedFSgiZdNcCnfzbSBK
         qFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757110933; x=1757715733;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UHO3loFaMTLM8uFwv63bYVveAEYQx6NyvCeDA98Eah4=;
        b=PhYcs2rO+s3fYTvfRnYaA0kf1u6toqJ3I0I9xcvPQfemqACleq4+n065+ChTj4abz7
         Ym7QtDcZ0GbBwT5/wpKkK48nvrzYwF+t+2GoC2E44su1GjLrZeUvmQLZdaKjhh7udjXd
         woDSikXP2XZgFSQBwOcb+3cuapIBtbR/XatjGc8dUuR9XQl0UNXLRK3nhNsJ0ILIFCl2
         E3B3vt99QwhW/ho86Z64mz8VMTyFaoAWIzwkDMCo1ttxkKQtA862KopRHRr9kClkhpAi
         0sag6J3ZuE2z6yWXqSSHw63j6Kqedkn1DsS19oYiycSaqi8lgAWA8pdfV/QIgM+s4vSV
         Hfkg==
X-Forwarded-Encrypted: i=1; AJvYcCX5OR3vOa5XQkX957Nhgf9G4nqoQ6sLACmC857K1VNc+BDGjoUHc07Rr9EHQJxkU2Iz/rY1w9WJ6xZA@vger.kernel.org
X-Gm-Message-State: AOJu0YxejNvtO5Wn2gmUahVhQRbOBl5c9bsKjoZIoK46yeDAYUgLqbVt
	KplMJ9ztRxiBY5RC1IzgwCGxlsebQpOvoV5ADQ/LfkWg70Nxt9WnOB6TPN+e9u3WiHs=
X-Gm-Gg: ASbGncvU6Z6VNJr1RSMgLoTK6Cro6l82oSBIWiZKsFNKf1Oxr90FQgGi6OrMrufHTCK
	PnQdV32Xi64Qm2yGHrjUsLypI80BbOkh1SrVCCTT0idFz8ewZnBm401ICe9aYdb8QCDUuVZdACx
	BLB4WV+GlfhW67Y5pG4l2ESk2C6jsx3X2taEWmdlM5/alWOo1/LCjAWBirB8+gvyW/Foo3KYRn+
	m5ey3cNSSfw645lF6VAODBJ/bm782ZW8DpBOyv+q85FIjpHzn/yXlH6fod2RPVd35BWlVaRyfZ7
	rLIy3AOxgkoBoLscMFfMuJG/smh2tyrhMT3p0vowp69hWXNqt9eExTLQcCb+WQzBOVvLbdkv/e7
	CTm4pdrM8GJvE/HAKpd9yqyxVp87MKaw=
X-Google-Smtp-Source: AGHT+IHbdxqjETLKCIYsM+vvWTUBcu92bCBkA6QMHPw45DcnfwpGvkag6fr4ck8750NnNpRjOpQxSQ==
X-Received: by 2002:a05:6a20:a11e:b0:249:3006:7578 with SMTP id adf61e73a8af0-2534338b099mr567181637.36.1757110932917;
        Fri, 05 Sep 2025 15:22:12 -0700 (PDT)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b7d10sm23116992b3a.33.2025.09.05.15.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 15:22:12 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 Bruno Thomsen <bruno.thomsen@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20250721173741.6369-1-bruno.thomsen@gmail.com>
References: <20250721173741.6369-1-bruno.thomsen@gmail.com>
Subject: Re: [PATCH] ARM: dts: am33xx-l4: fix UART compatible
Message-Id: <175711093199.666031.10782227973545303080.b4-ty@baylibre.com>
Date: Fri, 05 Sep 2025 15:22:12 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Mon, 21 Jul 2025 19:37:41 +0200, Bruno Thomsen wrote:
> Fixes the following dtschema check warning:
> 
> serial@0 (ti,am3352-uart): compatible: 'oneOf' conditional failed, one must be fixed:
> 	['ti,am3352-uart', 'ti,omap3-uart'] is too long
> 	'ti,am3352-uart' is not one of ['ti,am64-uart', 'ti,j721e-uart']
> 	'ti,am654-uart' was expected
> 	from schema $id: http://devicetree.org/schemas/serial/8250_omap.yaml#
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: am33xx-l4: fix UART compatible
      commit: ca8be8fc2c306efb090791835acfb5b33542ca1d

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


