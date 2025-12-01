Return-Path: <devicetree+bounces-243417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E027EC978A4
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D929A3A9046
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AD5316199;
	Mon,  1 Dec 2025 13:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YVz/m3AU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E04316190
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764594511; cv=none; b=Z0Q1fRs68tKuv3ShlyFAr7npI4zBCme+g/8CC3duAIdTWtpy1a0qE8qHiLlNlg+pkkArUvv1q95BwK7uvPN/4jhuPFExvzCnzGCrwJ7SYkB+yqo33A4fvSmS2S/4TPmp7P51xjf/tzR0YImGzsiv2MeqR+VVNH8xSithhatQSqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764594511; c=relaxed/simple;
	bh=EwJw187j9cdm2bpmVZ012xD20VEuv7BKAlz37H96INE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gra52ctihj1lSc8UdJQecQjjqTaBo9Yb461cbkVYPQgAGzukkom7UnSMHlE0LxY0EBkvBUwxJJX/nvn9xYLc9Gsm8nlsxEfdEQGDZeoIT1mmaS6IdSaLdVY08OcplKM3cVQ02VeBog+DaFvCTUzK60a40T9A1MmnR2Ktr29KWoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YVz/m3AU; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b713c7096f9so677679266b.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764594508; x=1765199308; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sc5Wlj6ItduRgdL4SQZ5Bi4Tnbg+47q3DG5slWvXx+E=;
        b=YVz/m3AUx7DyDDuGNOY97m1gCYU/CPRj14yOqIUFjVywe8AmBOLpak1HQH7DR/XbQM
         A6hTnvh4J5KG7AOKz+5GMpJektdBwnicmFiMVzs45BO/RR8qlzLQLSrKQ6CRFYIHKEt/
         EJhb+8cZEDeMnZJFD/Wo0993akTToylY4/sKsveJ4zi2N9WLw0gnPiyADvXIMRkUYuts
         Y7kXwIPx3YMG0OaRsGgIEYofZVbpERfQm6Woro5hgk9wtx09dA/sDzvWMIqWwD6TzE2j
         yRzF6XrUsfrEgiEoKVNpAyHrWwldE5XGOSrf2+nSI7EN8SFZJAoUcjtfZISsnLxR7rL1
         6wzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764594508; x=1765199308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sc5Wlj6ItduRgdL4SQZ5Bi4Tnbg+47q3DG5slWvXx+E=;
        b=bb1HgL0+8bblYWxaN2fKZwZFkKwIorIE/8lTkjuyQVgdpoWuoD75w63KTPf76RvfrD
         RwAIFZ6YSZls4kGM5jNNBUbIqovFXfxSmCFFAMIY2qNgXygXOqk8SdEPCwxEjzDmTS2w
         SQg/zLdCxEcHlNV0a7WCl8e7Ic5gMh2hawzob3f+3+gxdbXLkYtt06SKSFBreVsHi3lM
         HDrjaaTU5EkxB0G2EnbWtOb4/L4g+t3aZnZ9Vii7P9ngSRFLNBK22bsdgBKUuPCErGiW
         Wtz0g/TwgMxGMr7dhNYlAzpH4Sdzt55Ywzqg3Ut3nsAr65FJ88nkCBXcu03Wwv/sCE7M
         r5IQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7VtJeVVnQDmCMuJ3no7zIRiq0x2LIZuUiwrU10IjxNAO74PQs+oDvtPhBSuHnIU/Juaj/3yuoWPOt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx49s2yHUrxUv9pjOaCEn+GJyUOBzqd4G7UBVQC2dOhSaL8bZO
	JG9HnSDQ9IEKiIq5s7jjRL0rchorq/Gr1D22t8uOwE9umG8/B8pO8G322xDWCLd2wJQ=
X-Gm-Gg: ASbGncvVdGhdZ9fS9WbudtaPlJdzUIXY5MvnkM7UYLEqe4cw8cqH1h7o9GGpKneCa+z
	lgSJ4BLZnKWi5nVnQjP/wtYUxmFb9CEMqlyqZgmDKXGqnhb2/ZI1K2V9dLrQXh087YKjxX+UNTB
	H7boSLuoCggi1it4cRZ0DN3Blv+c6GU95IBYnAksLFLyoJ31cXLZyc5z9TQQ3uuGPs1jQr9YOkr
	25hehh8UO/ngSIx/kV1O2QQnuIeUy2qomtWnic7FQ/TjAzYuxCI8X0gpAoHopTwYIdt24mKAPnN
	9VrTkDAqK1DGk4ameqOwJy2TqfTJFe8qAIOAgXuHAYJvIG6f01E1gVjBy43hvSujsynpgnaUGzo
	yITppCMbkzreUjOpF3euiaKHu962beYKIIQx6GhVD55dzDDGH8XF3cPuE7nUZKht/bzMt10V7ie
	rgYLk9De6yQE6EnJ6L/gY46PHoFp0=
X-Google-Smtp-Source: AGHT+IG3GiipKR5PlzdZ7IIhOH+o1eJsieLHFIsrjYpkX6ye3VRmv3AOsC6BWmQjuKS2Zs2oBEfgyQ==
X-Received: by 2002:a17:906:fe48:b0:b76:5b73:75fb with SMTP id a640c23a62f3a-b7671549d71mr4182491366b.9.1764594507629;
        Mon, 01 Dec 2025 05:08:27 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b76f5a4b926sm1219241066b.68.2025.12.01.05.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 05:08:27 -0800 (PST)
Date: Mon, 1 Dec 2025 16:08:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>,
	linaro-s32@linaro.org
Subject: [PATCH 2/4] dt-bindings: mfd: syscon: Document the GPR syscon for
 the NXP S32 SoCs
Message-ID: <df275a4bbf3fa4d4f0a622cd06d00ebdf847563f.1764592300.git.dan.carpenter@linaro.org>
References: <cover.1764592300.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1764592300.git.dan.carpenter@linaro.org>

The NXP S32 SoCs have a GPR region which is used by a variety of
drivers.  Some examples of the registers in this region are:
  * DDR_PMU_IRQ
  * GMAC0_PHY_INTF_SEL
  * GMAC1_PHY_INTF_SEL
  * PFE_EMACS_INTF_SEL
  * PFE_COH_EN
  * PFE_PWR_CTRL
  * PFE_EMACS_GENCTRL1
  * PFE_GENCTRL3

Use the syscon interface to access these registers.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 55efb83b1495..6e6b92227092 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -102,6 +102,7 @@ select:
           - mstar,msc313-pmsleep
           - nuvoton,ma35d1-sys
           - nuvoton,wpcm450-shm
+          - nxp,s32-gpr
           - qcom,apq8064-mmss-sfpb
           - qcom,apq8064-sps-sic
           - rockchip,px30-qos
@@ -212,6 +213,7 @@ properties:
               - mstar,msc313-pmsleep
               - nuvoton,ma35d1-sys
               - nuvoton,wpcm450-shm
+              - nxp,s32-gpr
               - qcom,apq8064-mmss-sfpb
               - qcom,apq8064-sps-sic
               - rockchip,px30-qos
-- 
2.51.0


