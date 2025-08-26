Return-Path: <devicetree+bounces-209418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943BB370A2
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CCF717CDEF
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 16:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D3A936CC6D;
	Tue, 26 Aug 2025 16:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JInviKDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25162D191C
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 16:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756226302; cv=none; b=m3WbY7F/hSu7A4JCHg3CxkPUXSPu+KM5Iq0lleK3V8HXFbcMP+4WJFv0uB474wRHCp/UptN6KyT5fkNkZ/6he1vNkKwSLDDhKDb80yJRVhtnHRXMBPRY9IFsw87yzJMB50SJGhd+u01ZC0lkBrdOJS+5Fvj+SU9EBKL0g6S/Jeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756226302; c=relaxed/simple;
	bh=809NI1CN0NNuV9uuoAaLx43aJ5mdVRKJJ2h/czEopkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BQeMA70u8MuNfeueVrzWRVmhy/+zw2jqrzGtUS4eMVMVh0Yo3fdhsGeT3cGp8EPPuvEwujScD/T8qUV4ug3BlGdvRCSBFbrp1vfAJyFYDjswM/TWVj7tUVEbVG/LYpzE39e504s1jc3YvKK88/6qR2uvRaNZ5HYhZ3WcrsDSBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JInviKDf; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45a1b05a59fso45450375e9.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756226299; x=1756831099; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gd5/9IeQ4uKOEKZif/xbCKEyzAUuhNyeB7aYV5jW8jw=;
        b=JInviKDfwUhUh2NhWaStd6vyiYori4QfVywMHWF127KH1kP7fUqV96wrDNFMTDtnmL
         eV+XsXbYTsr27jbmBZnrY32HIa2gFluVvfZJiLjWt/xkpMELW/M0rErp55H1PDlGYgHl
         O+vdOWgKgRfywe9N26nMTznAGHmUEcKuCnWjNdpWz6couBISl4zJ+GAQVxplWuHq4xtw
         v667X1Bm7Nf7PqbfR4CK84Ot/fYvAnZqkSkCQx3WZVr1Ob/yWQUFfqzSfsfJOM6QbWyV
         kXb2jxpctmIH3IcmG1qLLubdVyQIKpZu+90Y+a2g2T9Gq10yfWulfAY7ka1B/LGii7iQ
         zyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756226299; x=1756831099;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gd5/9IeQ4uKOEKZif/xbCKEyzAUuhNyeB7aYV5jW8jw=;
        b=f+3uT5Pt9KpCOAzhLpKO8w0DvcqFwEtK6id5BKkuzPeOhbcByuF/ieIS5NVJYG3iRs
         OlCadfUsnPrVv/1Gdg9FIU2yH9B7nWnvkfILXXep0OTRhWIDfxShtEuLI8T12WEdbUyZ
         M2/3sKf6sUSFslVePJVyc/v/l0EvRV7P6PmXhZXh+Wgc8RaXvXTtxkwrGPXEMBg/cY3+
         fs9cxYS2cx2LNgIfpeeVHytrwR+GmV3Wbhc9X5H26c3n7R0fOVpuRqiOR0vifCUIP7VE
         np1QVG/I+Vg3T03KN/6FzAiegijFrZ77JSXZsCNkW/Wy8emU4L+IOehsKg9ouXP3yUvv
         9Q0A==
X-Forwarded-Encrypted: i=1; AJvYcCUZdqM53QoSQuIHCpFZnxgUcuizv0h6CfdoRZyzVmSOGNZ2B8POfU4uPEEa5DH7oBU0B4fEQqwcekHa@vger.kernel.org
X-Gm-Message-State: AOJu0Yzns3ajFRn6DlQeO8Ro2xaabDxFVziw3tnd6tdoSFmi7X0FRz5B
	Qy5VbaGZQWwYaI5ITadOVmzdIcBOsKEFdXY/5aCCFdL54HJOlA4Aq9QAQ+nJxs9+cog=
X-Gm-Gg: ASbGncv0d50fjKvIV4a+HODOrkw25zM7+0uhDcLkfpPYIOhSB+4wvB1/7Y8umy6KtSQ
	1yEZFiUmqmMNE4WlXSx2iWDHkAYEyBuaxILBrW1HlovG8Gi5TnUbj8HpJ99tDjMe7124dHIhqap
	fA18P/kfiWg8VxXkOD/6aUjHZaUpyfd1RfzqaBb0No0ke9Xd5hOz+Q9tXoCGkKLb/r5wX61tHEM
	lsuxwiwkr3Ps6I3wtHQ83KUS2jqDo+P6qscZOQ9NNiaYmnbuj/ezXbqj2qYhOHBqqUJJOMtLAnw
	fRSGyb9kso0uTBgfIg12/J3YT9sxFJP3hNlFwOkUUpVYBKDL4F+gPFz3JIz9ij9k3lnmLKGfl1J
	uq3sCTN2l/roP8eV+oUFtmQZbRro=
X-Google-Smtp-Source: AGHT+IEfMOhKNGsk41+Pcjyd5bE18lIO9+Ehqp0eXFZ34jr9cFr/SUU8ndr/Fb7qeTETY3P4lllXjQ==
X-Received: by 2002:a05:600c:1c13:b0:459:d709:e5d4 with SMTP id 5b1f17b1804b1-45b6baf1aadmr1321925e9.0.1756226298932;
        Tue, 26 Aug 2025 09:38:18 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b6c53e210sm34705e9.20.2025.08.26.09.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 09:38:18 -0700 (PDT)
Date: Tue, 26 Aug 2025 19:38:15 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chester Lin <chester62515@gmail.com>
Cc: Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	NXP S32 Linux Team <s32@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linaro-s32@linaro.org
Subject: [PATCH V2 3/3] arm64: dts: s32g: Add device tree information for the
 OCOTP driver
Message-ID: <ebb194fc26ee6aa7816f07ea891469ecb780d106.1756219848.git.dan.carpenter@linaro.org>
References: <cover.1756219848.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1756219848.git.dan.carpenter@linaro.org>

Add the device tree information for the S32G On Chip One-Time
Programmable Controller (OCOTP) chip.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: change "ocotp: ocotp@400a4000 {" to "ocotp: nvmem@400a4000 {"

 arch/arm64/boot/dts/freescale/s32g2.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index 6a7cc7b33754..e8cfddabfc24 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -701,5 +701,12 @@ gic: interrupt-controller@50800000 {
 			interrupt-controller;
 			#interrupt-cells = <3>;
 		};
+
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 61ee08f0cfdc..8fe1fa35e9ac 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -765,6 +765,13 @@ gic: interrupt-controller@50800000 {
 			      <0x50420000 0x2000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		ocotp: nvmem@400a4000 {
+			compatible = "nxp,s32g3-ocotp", "nxp,s32g2-ocotp";
+			reg = <0x400a4000 0x400>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
 	};
 
 	timer {
-- 
2.47.2


