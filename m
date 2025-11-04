Return-Path: <devicetree+bounces-235000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 667C4C33574
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 00:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 596E33BD300
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 23:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0900A346FDC;
	Tue,  4 Nov 2025 23:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MfeTqO1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46833F8B7
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 23:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297623; cv=none; b=AAOekpcvGRfSG7t0VHLTSRAqMdY2y4+cWpaGHJSq7dZx4eu0PZhK9yjf8LDj9b6KeUh293wai3jq10lFT69jlRngndpI+U4gv77sJwP179ylhQGCU8zKR+Piy1DdteqRu43SabAoiPOPIPiNvLjSYJqeesflkyDvabkgtG81QtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297623; c=relaxed/simple;
	bh=yHkKXPbR33zJA3OGgfovSgAEgZn+oC9vSJyjIjciccM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=h8/UjNA+uy+/4wJl6FFzyQIbT17y3Ue/JRiAxDYTyoTGlAkAfKBU0w6Palqr7kVpPz1iLSupx7TfCAQfe25gNc47JhKIfl18cwr+mScPQkGdlpy+BSo1GPUEWXeiGWjf24O+lb4VN9wzXUZoAF3FlCsqDXQ2OgxczUSLqPT3084=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MfeTqO1D; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so298110b3a.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762297621; x=1762902421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jIQrxW79ZVgRUN8Wsqvx7zHmiYo35lAP7L+li0aZHjA=;
        b=MfeTqO1Dvc8gouY2B2MNvQcXsm2O8X03r/Lixk7jAziZuiOeFhg1SyTpjWVkEfhz2c
         ykr5/EWl1hFW0yrRt4PwJSX0mQM41w0zLhfHoSCSnTsyOdbTo1cWUwTVDhaPTjEKLh/z
         ePtdeekuC4Izp31jNFWLrTMOhjG45oNDA1nWzLqSH50VqtF2UvWck1mM8Ovd1eq9Vl+m
         Spg/mMZhTfOC0Hsjeluohu0OthqwbSBMu1AtrV9WlWt6DmZs+wXruxjfvw33I9DYuuyy
         dEX8kbwO+W7F386i6Yy5GaK5ir8IowSDJypN+Jmvih8uFABlGmi8V01o9QBNC8IidIOT
         J9Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762297621; x=1762902421;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIQrxW79ZVgRUN8Wsqvx7zHmiYo35lAP7L+li0aZHjA=;
        b=Cnq3HqrEWFNGYgjyrbcga3/V3byI538x+Qn9XdCJ4AsDtgUH0joKEf8dtZQwlR33uU
         I3y29Mlf4EGrVlHm/93rVVC2e6Edjo5Zp3pcm6nkmkX2UzfB9IT04kUQW+zhhYJh8jvb
         v1lJzXhQxV/5qt/2uB4ugrnW7Td75QpL1piJFrAny/6ywPhWyfcUgA/HvYdo2gYG6us6
         u8MsaM818w2xa7olstqoVrh9WGwc9F/K4eFcejUW86vWy5qi+wh7SjPbrkHXBXyN1Gty
         R3ttcK5XGxPgzyub9kv9dx+08yn5vXH/sarWcBxYF3oKWIoQjmHj3w59t/PpeTFfEEux
         ZLtA==
X-Forwarded-Encrypted: i=1; AJvYcCU/qUrcCSiQgxiydLReE4fLMmv3zdkvowx+dcdG6sw6uIaM9A9t+BEAlq/eBZUcNY4+jUeU602T/W0x@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3PwG8oM6fu/T/aT/ZoRezWptYRp5y4V3tp50H/4hn6WVr0Fg2
	EVS0AQ626J+cs1jVfb7vRYOS3KEsAQir7jeMI07PIPpPJZXS41XPbAXkKxfJhnCAU14=
X-Gm-Gg: ASbGncv2jcjkQ8cZ0l7h0BfA7taGmpJMIfLw6EXaIRKsDTohaOvJDlX3h8vs/20HZxX
	JYyp8SplL3bokXUmd4GhlbZLOGXHXLV5m4gR4swHk2q+92fCV/3Lkj/HJguNYuGrUixxcq3QEk+
	02CXFbdMLdor1fG4WC6drUzfrAwz71jGfjq3yGmOg14QhoMP2cAqdt5aCAu5BZWB7PpBS1Zrdsq
	FnaJXQuMB05wt0MPsqR2kiWpiGSpquUv8wam4U0H2ty0OHwDgRZxt8BwDaRTPX2Z7JWVbRPGM3z
	r0+ArzEuvgYYTH9UzrUwZ/Wcxk1jmlkplYDp64+/uYDLbhNQ9Ar/3Y6QwDwKirWGcDBqtrCYYkF
	AQDYR+pfhM1jG5I8BpCWcXddESlmkiSZYUbrfno8m7+HePLffDeWJ2OVIjLATOh+TlT0uk0eiYA
	==
X-Google-Smtp-Source: AGHT+IGGdQvgI/Vf/KKbauI1cOuwqSxlp39uLs0QpL5udfp/2y8wBHW57wYN3h5DJcHi+fIfaHZvoA==
X-Received: by 2002:a05:6a00:9515:b0:7a9:7887:f0fa with SMTP id d2e1a72fcca58-7ae035df724mr1524948b3a.1.1762297621600;
        Tue, 04 Nov 2025 15:07:01 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7acd5d5797dsm4147472b3a.49.2025.11.04.15.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 15:07:01 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20251024-ti-sdhci-omap-v5-0-df5f6f033a38@gmail.com>
References: <20251024-ti-sdhci-omap-v5-0-df5f6f033a38@gmail.com>
Subject: Re: [PATCH v5 0/3] dt-bindings: mmc: ti,omap2430-sdhci: Add json
 schema for the text binding
Message-Id: <176229762078.2840692.12323662945445152208.b4-ty@baylibre.com>
Date: Tue, 04 Nov 2025 15:07:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Fri, 24 Oct 2025 07:57:07 +0000, Charan Pedumuru wrote:
> Create a YAML binding for ti,omap2430-sdhci and fix vmmc-supply
> property typo for a DTS file.
> 
> 

Applied, thanks!

[1/3] arm: dts: ti: omap: am335x-pepper: Fix vmmc-supply property typo
      commit: bb2ffb47d82229a4f54ca6a83784fa288914803b
[2/3] arm: dts: ti: omap: Drop unnecessary properties for SDHCI node
      commit: 9485ba8ab325c4b420ec92661f15ed14741bb9d1
[3/3] dt-bindings: mmc: ti,omap2430-sdhci: convert to DT schema
      commit: 333fa35fbd1f20b0d8a4af3b236fd9f52f3431b2

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


