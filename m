Return-Path: <devicetree+bounces-44423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 970BF85E28D
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B50961C22DFE
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 16:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 574688528F;
	Wed, 21 Feb 2024 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="exOr2bH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FAC8062F
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 16:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708531373; cv=none; b=J7RpvS2LG0F3yvXaJv6bnz7UxREa6EJx+7fYYUeUKVVgiNfQtrgWZzjU55uRep2TXXsSb6W302W5vEiPDvTu3BVU5wuYcxZTo9bXfT0MUnkW8JLG/VHbSvnnqvuThff1PlhRtGixg9iXvLwqEoWtmU+PjKk2OT2X7WvTK2Rc/1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708531373; c=relaxed/simple;
	bh=xjBdKRP1SvS/TeZ2e8wCD9zf/HvE8sljbpOrt35UqzQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Q6Kg2GIHU9TZRrnTc+sy3r0oOVFjdwq7NsfS4qR2WeI80uIZuvHlYyyWQog95gs3CyMCCp+kb/kcpr8V2FU4Anf3eXJbirvmR0BucDodqJ/Gcey404jbn5DZ88cmigP71jh/Dk1Uq3DmF8rRrhd6nA0xb/vnJiGplmrW+vf4bdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=exOr2bH6; arc=none smtp.client-ip=209.85.128.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--panikiel.bounces.google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-40f01cf71ceso3988755e9.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708531370; x=1709136170; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uJcFO/xGgbOVSQxGadPSKw44B07ENxOsKQVgT1VUOcI=;
        b=exOr2bH6x2epR+DcORNM3n5xYR1si8HSjMd9vbTua875WW4MlrW2zk8btZOs0VZEpw
         ORVA08cbTDsmGgc4kysGK+5Cee4QH0tk7T9cPyScHWJ4wrHoi+W2waDgfPdrWhCrwNaq
         y3O7py+ErbvFcs0HremU85xjfdiFCTWCkVvGtRSStSCE9tESEh0lemoG0jHDqe6zmm/q
         qMyBtGJC9JbE1AIXfnLbEBySPSdsAOyeP/sdCxR7IaolgmmO4D1SVF+MKOsNtecgAaco
         N9IRCHjbTtITbLJRyXRnbNdoYEZsk4c3QD1sOZ/DypDSAVwYdEGcz7wDyc0jm+pEKWcH
         AXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708531370; x=1709136170;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uJcFO/xGgbOVSQxGadPSKw44B07ENxOsKQVgT1VUOcI=;
        b=iVQ3BDFIoMbDTMsjO9BmDVUEb6JQ8IQXbwML4YZqWLTl5f8IKproSgKpJsn+E0T95H
         N3bIblW15pa/gUVqW0YbO2Sk1bUkpdEiC1cdCEq6AE8cEZK7xQXUeF8mKTffJ9ToT/f0
         eAkc/wSYEpN9TNJaN1gbdiNLQUfRkDkpLGXgLjK0O27LGwhxr0U8xArHYEytpNhiQ3//
         bJDIfM1FLFcAIONXQ4gsuqHy6GnOyLHBrvfQyk4UIWNAQdQfj8yOUSaratSrwFKQJz0h
         7vNCug3JFJ6Y6kPQcZr6q/XkeXawm/sICbVHxeSfjbmh3UJDESzxtF2RXSOSD7DBvzVo
         1OVg==
X-Gm-Message-State: AOJu0Yzu5iTTyhmqPXuwYsIzyJp80fHXWDYbM0DQ2k5wIRRB2zDdOTNV
	7yCMkJSrIHSfpwg/Da8KiofCFl9vFwLf0RAARjOV4hiMrnVCokLklMosHsBDyjiA/knSgc1hTaS
	kSlcSZAYlhA==
X-Google-Smtp-Source: AGHT+IFnMaUiTT10wCVZyUhR3i9pyygKGuccyDW9jYOcsfg+eIDrv/na4oAAuxTKgYs+YCfAOgNSqDiyggHsfg==
X-Received: from szatan.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:2d83])
 (user=panikiel job=sendgmr) by 2002:a05:600c:54cc:b0:412:26f1:1d9b with SMTP
 id iw12-20020a05600c54cc00b0041226f11d9bmr116452wmb.0.1708531370075; Wed, 21
 Feb 2024 08:02:50 -0800 (PST)
Date: Wed, 21 Feb 2024 16:02:15 +0000
In-Reply-To: <20240221160215.484151-1-panikiel@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240221160215.484151-1-panikiel@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Message-ID: <20240221160215.484151-10-panikiel@google.com>
Subject: [PATCH v2 9/9] ARM: dts: chameleonv3: Add video device nodes
From: "=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
To: airlied@gmail.com, akpm@linux-foundation.org, conor+dt@kernel.org, 
	daniel@ffwll.ch, dinguyen@kernel.org, hverkuil-cisco@xs4all.nl, 
	krzysztof.kozlowski+dt@linaro.org, maarten.lankhorst@linux.intel.com, 
	mchehab@kernel.org, mripard@kernel.org, robh+dt@kernel.org, 
	tzimmermann@suse.de
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	chromeos-krk-upstreaming@google.com, ribalda@chromium.org, 
	"=?UTF-8?q?Pawe=C5=82=20Anikiel?=" <panikiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add device nodes for the video system present on the Chameleon v3.
It consists of six framebuffers and two Intel Displayport receivers.

Signed-off-by: Pawe=C5=82 Anikiel <panikiel@google.com>
---
 .../socfpga/socfpga_arria10_chameleonv3.dts   | 152 ++++++++++++++++++
 1 file changed, 152 insertions(+)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dt=
s b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
index 422d00cd4c74..2f48f30cb538 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_chameleonv3.dts
@@ -10,6 +10,158 @@ / {
 	compatible =3D "google,chameleon-v3", "enclustra,mercury-aa1",
 		     "altr,socfpga-arria10", "altr,socfpga";
=20
+	soc {
+		fb0: video@c0060500 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060500 0x100>,
+			      <0xc0060f20 0x10>;
+			interrupts =3D <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+			google,legacy-format;
+		};
+
+		fb_mst0: video@c0060600 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060600 0x100>,
+			      <0xc0060f30 0x10>;
+			interrupts =3D <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+
+			port {
+				fb_mst0_0: endpoint {
+					remote-endpoint =3D <&dprx_mst_0>;
+				};
+			};
+		};
+
+		fb_mst1: video@c0060700 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060700 0x100>,
+			      <0xc0060f40 0x10>;
+			interrupts =3D <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+
+			port {
+				fb_mst1_0: endpoint {
+					remote-endpoint =3D <&dprx_mst_1>;
+				};
+			};
+		};
+
+		fb_mst2: video@c0060800 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060800 0x100>,
+			      <0xc0060f50 0x10>;
+			interrupts =3D <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+
+			port {
+				fb_mst2_0: endpoint {
+					remote-endpoint =3D <&dprx_mst_2>;
+				};
+			};
+		};
+
+		fb_mst3: video@c0060900 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060900 0x100>,
+			      <0xc0060f60 0x10>;
+			interrupts =3D <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+
+			port {
+				fb_mst3_0: endpoint {
+					remote-endpoint =3D <&dprx_mst_3>;
+				};
+			};
+		};
+
+		fb_sst: video@c0060a00 {
+			compatible =3D "google,chv3-fb";
+			reg =3D <0xc0060a00 0x100>,
+			      <0xc0060f70 0x10>;
+			interrupts =3D <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+
+			port {
+				fb_sst_0: endpoint {
+					remote-endpoint =3D <&dprx_sst_0>;
+				};
+			};
+		};
+
+		dprx_mst_irq: intc@c0060f80 {
+			compatible =3D "altr,pio-1.0";
+			reg =3D <0xc0060f80 0x10>;
+			interrupts =3D <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			altr,interrupt-type =3D <IRQ_TYPE_EDGE_RISING>;
+			#interrupt-cells =3D <2>;
+			interrupt-controller;
+		};
+
+		dprx_sst_irq: intc@c0060fe0 {
+			compatible =3D "altr,pio-1.0";
+			reg =3D <0xc0060fe0 0x10>;
+			interrupts =3D <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			altr,interrupt-type =3D <IRQ_TYPE_EDGE_RISING>;
+			#interrupt-cells =3D <2>;
+			interrupt-controller;
+		};
+
+		dprx_mst: dp-receiver@c0062000 {
+			compatible =3D "intel,dprx-20.0.1";
+			reg =3D <0xc0062000 0x800>;
+			interrupt-parent =3D <&dprx_mst_irq>;
+			interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
+			intel,max-link-rate =3D <0x1e>;
+			intel,max-lane-count =3D <4>;
+			intel,multi-stream-support;
+			intel,max-stream-count =3D <4>;
+
+			ports {
+				#address-cells =3D <1>;
+				#size-cells =3D <0>;
+
+				port@0 {
+					reg =3D <0>;
+					dprx_mst_0: endpoint {
+						remote-endpoint =3D <&fb_mst0_0>;
+					};
+				};
+
+				port@1 {
+					reg =3D <1>;
+					dprx_mst_1: endpoint {
+						remote-endpoint =3D <&fb_mst1_0>;
+					};
+				};
+
+				port@2 {
+					reg =3D <2>;
+					dprx_mst_2: endpoint {
+						remote-endpoint =3D <&fb_mst2_0>;
+					};
+				};
+
+				port@3 {
+					reg =3D <3>;
+					dprx_mst_3: endpoint {
+						remote-endpoint =3D <&fb_mst3_0>;
+					};
+				};
+			};
+		};
+
+		dprx_sst: dp-receiver@c0064000 {
+			compatible =3D "intel,dprx-20.0.1";
+			reg =3D <0xc0064000 0x800>;
+			interrupt-parent =3D <&dprx_sst_irq>;
+			interrupts =3D <0 IRQ_TYPE_EDGE_RISING>;
+			intel,max-link-rate =3D <0x1e>;
+			intel,max-lane-count =3D <4>;
+
+			port {
+				dprx_sst_0: endpoint {
+					remote-endpoint =3D <&fb_sst_0>;
+				};
+			};
+		};
+	};
+
 	aliases {
 		serial0 =3D &uart0;
 		i2c0 =3D &i2c0;
--=20
2.44.0.rc0.258.g7320e95886-goog


