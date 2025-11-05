Return-Path: <devicetree+bounces-235413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22644C380A6
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 22:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF85846303C
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 21:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0FD2E7BC2;
	Wed,  5 Nov 2025 21:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E9e+3DCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43BB2E7193
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 21:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762377737; cv=none; b=Luzv22PfO3KoYRyY2MxJYmExrsHVJpBlSfRGB2e/Hg3dE+5KHwKWvgwx6kG1nQRCWRUDYOb6A679McSROUliJNx18D2KztgPn+SgsmHq/81hd80wK954jtN9JFe28FYieDhNCMw/PtzvzItgTHthWU2mRFyMFPPsHWLbxS5nWEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762377737; c=relaxed/simple;
	bh=Lafdol5XjqXTtVc0qIPRZEgOnZ0fzaAxiat2QX2gQzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DzDxKlfIRrKyqmEK+gZby0teNPdvwggHsUWhXzv931/kobsq5HQmiJS3iGHraPzaW/epLhvfSqIVg9TjQcAX7Xd8ozZpwL13YTncrD2N9xZERacQIRO2YKzv8FIhDwQM/RXUax84VsOGsgRB2qg27O6JxMc2O3pqvphk8U+3Bw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E9e+3DCJ; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-3c9991e6ad1so221641fac.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 13:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762377733; x=1762982533; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0/FBmebtO0Vkrgh/mrFAUBv/BWvq5VVY9yGcMnDDP8s=;
        b=E9e+3DCJ0j5sfxz499Vg7oEXRwgD6fQAAyNuumlwkbVIkJk6WLW4evKbElH+pG+Z9x
         OTsXGP1EVRQKemKgVfTCOla+zxG/thdtf1Rh1rqxRgMyqRlrew6tr2oOFHM+o3CDik5+
         rk+sc2XcwQ4YapCE7NC9ZcbR347xZHaSMijpxotGPvid3RZwgqvyx44djkMHOTP7TXA/
         YZNMiUBmxSwDvupSrRxnFGwSvrhj7bc1KUKah7ZIW+rEGLhaH1ZsaixodVu/3eNZOznA
         phq4xuWAbpzIH+Ac+HBvFubaj2BXYYAystNgPfYd8YU9muNWgzo3a5dGfx/ptDWM70o3
         Y8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762377733; x=1762982533;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/FBmebtO0Vkrgh/mrFAUBv/BWvq5VVY9yGcMnDDP8s=;
        b=LDu+eeR24m1znoyr4jaGtD3WLrv3LAHxd5sr9ROSzkPnJ1FM+S8/Z7FtAFgL/nEBYE
         cShyqoT6eamfUk0gryQNB8rwZGVuYO+2Q+Be9Tsj8mFL3A4EOnsROKrnGbpxfdAgxpue
         AgD6P8YpYzzOU0PaCLkwzE5igdr2XDJuPw6Wtk8NF8B5uxRckW0OLK/1MVLIleRzSaiH
         xEgONV5KKb/pmSbWucU9cWlSlg9H+ZBTZfPqoh8Xzevy6qZHrZ065G3Nh6HvgPEC9sc+
         sHYPGRGIFmNIP8gcVn0/0DfFG5fx7DrH3XHJb9tDCnBDaD9KOYX4le1ps4MX9RQAo/rc
         lH3w==
X-Forwarded-Encrypted: i=1; AJvYcCW3y0AoC9mU/IlPYfUicuoeV0fhnIR/PEMq0uHqf73ayQcM19oqPiUYRu3VCw4PIjz1DJm6KyVB1HkW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1L3731MlPo5y5p2ayuXpecYhCQFPFat46t9JjMyweJ1w8nFQ8
	awZGnCz9OFqnP25/4SKXUhPQA0AOs+mq/QrfJb6g8+gMKUQ9pWv5xIGW
X-Gm-Gg: ASbGncvx+10jQPIsQs+pJuIVP5Ke7h0xlCqj5gUS28RKC068zKJRoRBcnbukP04lZ+S
	lqac//xTQG9VI12nHaAd+etOgLeNBiSlj7WapKh/+wEUPnLUU+XvD8oJlgn1889dT6LYEjzjUCj
	mqT9f6LoOZyvLjFm6IFDNxpqlSiA6+DFkl/DODnrsnytW4VJqvnfqvhm1NXCAdd5vHJLCxVXw8h
	SKzV2EP4/aeDa09PPSQoqwrZjbVhDJKisRXPFqqzrcpswav9YS5qUcXMrYiNArmlLTgHOwk5In7
	C+xSXmT31xr0hIU4ja3czHBorE71YKIQxUxdEPAqhhrfvN2FlIioCu/4wNwFJAgUuk6nzmcrhh9
	fydPNJlN2I4QinXwya3BTPM+lMq7C/p0sMecPvZ0aI278ItBa+AJDCxCZCRJCcoAMfFDo6Zu89J
	z2vmy4khFW
X-Google-Smtp-Source: AGHT+IH6bmLILBlZkClZJKGGVOQMJ8uDofSrhNGHs3xLSaav5plph/1k0YKtCJFMX/UFHGhYB7B7Sg==
X-Received: by 2002:a05:6870:1484:b0:3d2:e6a7:e938 with SMTP id 586e51a60fabf-3e2e3d8c98amr572130fac.15.1762377732693;
        Wed, 05 Nov 2025 13:22:12 -0800 (PST)
Received: from geday ([2804:7f2:800b:2ebb::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e30847fe83sm153392fac.6.2025.11.05.13.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 13:22:12 -0800 (PST)
Date: Wed, 5 Nov 2025 18:22:00 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 2/2] PCI: rockchip-host: drop wait on PERST# toggle
Message-ID: <aQu_-JDy7qqeviUm@geday>
References: <d3d0c3a387ff461e62bbd66a0bde654a9a17761e.1762150971.git.geraldogabriel@gmail.com>
 <20251103181038.GA1814635@bhelgaas>
 <aQrKtFT0ldc70gKj@geday>
 <DE0N4LA8MOJD.236O12UZ3I3C4@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DE0N4LA8MOJD.236O12UZ3I3C4@cknow-tech.com>

On Wed, Nov 05, 2025 at 10:06:53AM +0100, Diederik de Haas wrote:
> I have a Samsung PM981 (without the 'a') and AFAICT it works fine.
> I had noticed that the PERST# (pinctrl) was missing, but 'ep-gpios'
> was/is new to me and I hadn't had time to research that properly yet.
> Good to see you already found it yourself :-)
> 
> Cheers,
>   Diederik

Hello Diederik,

Thanks for the heads up!

Would you mind testing the following DT change to make sure your PM981
continues to work fine?

Thank you,
Geraldo Nascimento

---

diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index aa70776e898a..b3d19dce539f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -383,7 +383,7 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
+	ep-gpios = <&gpio0 RK_PB4 (GPIO_ACTIVE_HIGH | GPIO_SINGLE_ENDED)>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";

