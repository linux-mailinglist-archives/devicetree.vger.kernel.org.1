Return-Path: <devicetree+bounces-244955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E19CAA767
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 14:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E2DD33048D1C
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 13:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611D02FDC59;
	Sat,  6 Dec 2025 13:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TuR/Fmhl";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="NN/3En+L"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5682FDC53
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 13:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765028750; cv=none; b=BqH+6wEz07GadFjwyNO+qefyowVuKr1s7eA7gMKEJncBo98Nrap3Iagoli95zzVDjXm2GvEd8PMFxWyOOByVtod48qxuFDC1ve3VOTVtq+u6TcIPUpjjr4uJwmDft6aol0qpuEtEoGXOcy6P4XH+2qCMybs4N6i/XUBxEksiyQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765028750; c=relaxed/simple;
	bh=7+AslydEz8tbIwfpmc4WKUHRvN7NmneaD5WL6Wnp0x0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XL9bD1xSVohM9UTcS+RZdZE/bzKJC2hdF2YieSqaoT4vEfWS7JfQGFCsFnody2bmZjZPwMlo5zyp9+GN786OelBTpN8Tq059gy7M6gvFoaclVCPfzcHm3s6IAy3ppRLQpGuI75E9qJe0K9TMaiqOWLaLIWrGdhGF2dAb51MEgQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TuR/Fmhl; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=NN/3En+L; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765028745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SGJ/YBkwQ5juZyABcErVQlUL02+/JW8TWX/SMrvHfxQ=;
	b=TuR/FmhlIiMIWVof350q9YhkjESGALOiwrZCyv+Ws/VDuxl04Cut0MkvNX+09ZSfK7SxSh
	A7ddtC+sMGoIHKLiXHogShAShdUYUPcx2GkbyyNGUWWZRCfX8ckoWL8XrcxXfUjggKNriu
	holN0bs89hKN6ykLJD92lEBAr+Vniz4=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-286-lj2VTz9wNUSzCJfXo3vncQ-1; Sat, 06 Dec 2025 08:45:43 -0500
X-MC-Unique: lj2VTz9wNUSzCJfXo3vncQ-1
X-Mimecast-MFC-AGG-ID: lj2VTz9wNUSzCJfXo3vncQ_1765028742
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-42e2e50cfaeso2839810f8f.3
        for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 05:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765028741; x=1765633541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGJ/YBkwQ5juZyABcErVQlUL02+/JW8TWX/SMrvHfxQ=;
        b=NN/3En+L++X8siMlLZfdjAzTy8zKq3IIs1lfh1LuEfyV48qDsVXK5u+qo1lZJ4JPAr
         YY3aM+fi1NXtmt2dSCcTGDJQI6qRqYSvXeTZ8aem0sBRjjZmpctr1wt4kLM5mwm2B72c
         hJERN5avL/jz8UqldGR6cVuH/b11KU1eIK7G+bIFNSMLfYj7q/HtcA5O+zUvtTG0dBBM
         BXxAIkScbqE8u828Q9p/QA/Z8hrFJf824//fv0AaQmx7DMLovZkBN9EPMqMFMLMQB46q
         iFMTFXifWLzBdx5dkxQHYzPYNpghhM8gPZsPrPUIyrC5QGO8bsCzcNg+PMRKe0nxFhe1
         qb0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765028741; x=1765633541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SGJ/YBkwQ5juZyABcErVQlUL02+/JW8TWX/SMrvHfxQ=;
        b=JSWGZCA+Hm+3ebzj5iTr7Gxv8XVl6FTKuDY92+1fZvjd81AJn/AOTnB+OOuDIFWYrG
         cz6l7xQvwt1UHlXhiSD/N/5Yc8YGfMbTIIQwOA+8/oImP5obMpAk/xFEqDRvgnCShVio
         YQwhmBhGBE0LR5kNCY1ccTg7f1BnEVpAcWQE7mvBoBcjW2MxSp0fQxxo4/HO/DNtxVOd
         7KXKuXxhatxYytoAeZsAw/zjTmjlichf2I5NQSCUE5faqdpYZxly0IZEc9zF0juUT0kW
         Wt/dKoT1Lggvrg5tzntSdau7sUEYlD1O6obKu4jpWuvakl088oWBA3f9pKwb4tl13FZg
         HMgg==
X-Forwarded-Encrypted: i=1; AJvYcCU/Ih6Kp5jOxyjcbfPHFtvKJZhAzTyqnwy59NUNZGDiHZKzWrk28C7Kxw37u/pi237pH0rTdwO4WrHO@vger.kernel.org
X-Gm-Message-State: AOJu0YxStP98HldamiHnueGJkofQcn0+AfXTjut6szooxJ273gMVX9RZ
	DSZu8F7w3RrSFkiroG7GJYf4SS4NIVshQ47P2umn4AOpCdGU8YuyIQ52GbwRxK5crh5EUMF13/2
	593tszqrmCpWUDnd8E8rQqWjcFWO8yKc50r1MeahfMxyjEd8VHNK107TB9FCV498=
X-Gm-Gg: ASbGncsXy8SzyoPOil0wUyTMn6PP5Zh+E68h7lxgQtmMqgOSSEHPKA+/BFKTgreExwy
	zM6q0hzaljETvVL2AVvNUbi83Y6kYV+EJW8ZJtP+9uyIvSAhoMqfu53OuBUEoO0E4lIaKqDguYz
	axyx+RY6oGGvfmcFHxskcjBmEgjZ4kc7GTOeiFmMTQFE07CkQHWroJs+X8Y1zraZPfsa9EulRH4
	hnRcfbgKsbkMp/6+oo+uGqtikmixvFH19iT7G4uNEwWtUozjyAkW5NNRY5cUJvEThP2JNuwShb4
	+kFsJRa2YUy1c5DxtwljmdP2rIn4c4yLBt5gZ1+oSbLKOOwUwNxKB5Spaeuk0sf8iZ5JCS9Qhw2
	sLbHoWstd0eWfK2eKXhQxE9USmBuntTjNlSM=
X-Received: by 2002:a05:6000:1863:b0:42b:39ae:d096 with SMTP id ffacd0b85a97d-42f89f093b8mr2876371f8f.10.1765028741665;
        Sat, 06 Dec 2025 05:45:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF8K8x9eGlvEeI5+9B89BZvFAXX9KzP07SGmLffrHPHT6uNDDPlREapDk1gOmKWFS75ycvHSQ==
X-Received: by 2002:a05:6000:1863:b0:42b:39ae:d096 with SMTP id ffacd0b85a97d-42f89f093b8mr2876336f8f.10.1765028741201;
        Sat, 06 Dec 2025 05:45:41 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331af5sm14206871f8f.31.2025.12.06.05.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 05:45:40 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Alex Elder <elder@riscstar.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 1/3] riscv: dts: spacemit: Enable i2c8 adapter for Milk-V Jupiter
Date: Sat,  6 Dec 2025 14:44:53 +0100
Message-ID: <20251206134532.1741648-2-javierm@redhat.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251206134532.1741648-1-javierm@redhat.com>
References: <20251206134532.1741648-1-javierm@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The adapter is used to access the SpacemiT P1 PMIC present in this board.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 28afd39b28da..aa425f02c1f4 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -72,6 +72,12 @@ &pdma {
 	status = "okay";
 };
 
+&i2c8 {
+	pinctrl-0 = <&i2c8_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
-- 
2.52.0


