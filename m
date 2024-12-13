Return-Path: <devicetree+bounces-130716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE829F0B3D
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:34:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C20BD16AA42
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A8F1DF98E;
	Fri, 13 Dec 2024 11:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="h0+UIcqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB10B1DF960
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089602; cv=none; b=QJp19E9M48VUpOKMR5aomk8J8f6h8Ef3jIVERpaVq5DqR/dkBuTPguL2KqhEIDs37VpUZa50GZCMBJCwWP67FIFkn6tNu9P76HaCEsIlkXW5ZH480GFw4Tt2Pkaimu8SgIBdSHUyTM3HFKv4xQtOsS/cZfhhFILg8qdwz5ncR6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089602; c=relaxed/simple;
	bh=xbIhDp8oO/WOy54HbWEh0DC1K4YkZwzlD2oINXShTDI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eRhs6lXperhMrXWgecdtwrtZ/C0uCq0PELRVBfHHHvpMAb/vkc8e/WSDD7pJco1iM6JIt3dhqurxVnZN6FWXgnIlPsTDWeZcKt+nexwkNeuWgELIrD7yJTPTGLt/rOotpZbEO6Qx9fZgk3HJxEqK7uZ0Voc35Ph+j+B131y7Lbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=h0+UIcqJ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2166651f752so17351985ad.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1734089599; x=1734694399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=icgAGsVOjevpWNQPqv7Ss8LxbqZxAhRJ45E0lQlPi0I=;
        b=h0+UIcqJeL6avbhJmsL2RWM6yBYea32f5AvroSCAZYYqcTFiKgzRsRasy71LKq14Db
         CRm/SJkqMv6mIXKN53P6JGOk9pwFK/z17sQFC+2xAEgLdMDo69Uvwcv5YXhTyolM8gtk
         Lj828gDdObZdoSkEiOx0NcDufAJ0DjQW2ejlgcFWVzJDNgF9KOWK4+yBvW/7Aw1rnueo
         VyX43YK/UJp1ONmpf5xmtZSK9UV7m722C3JE230BTCM0yI6SNUB9ht3KgnAK7N2J9v2H
         HwoCMgbapUtFf8siKGnTCLMTPPfov1zDsPG4QLP5CRoiQB5k6ggJIVc5nuUZ7/pozWdF
         Q6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734089599; x=1734694399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=icgAGsVOjevpWNQPqv7Ss8LxbqZxAhRJ45E0lQlPi0I=;
        b=i6hG7pwlcr/AoWcUU4DEt5WqouGI20MJC9vFtrUA3f3+huWYBAV4FFTstjDiueFFRG
         P2nhGLBCvaTd4OPvFoKZYFBdsDCTZ/ugTJwcScv6D1FJTDUeBwq+YSlmByXH4u4Okq7w
         j38DPMjfGFP1nTVX0Agu9uVWSD6ZC7qCZxAdYbVoz7kYUUqD8VTcMYZ1eX6dpqX9qsOv
         yQ6AiOqV7ReAP9XUZj8FGW/JawfZSwIBfSUzFxbuc9vs2Fbri9bXr3ZkBXgXFxwoAtN6
         AhvxAljL0lZYKDLthnXwO0fF3TEa5eGLpL73I3UAszxrjcco9/q9mfFWlqR5JDK8Ff2o
         y5rg==
X-Forwarded-Encrypted: i=1; AJvYcCW24CZsuPePtBRGe4eV1kCCQ4J8XOuYJsw9mCC0rdv5z8q0Wcz2wtzOICvT0UwQuEqITIqlTvJHd4Jl@vger.kernel.org
X-Gm-Message-State: AOJu0YyZwjvri7kw6Wm6xopw94Hk5CJtPyDlyfoxsFTNPS+Vl3KcWwZZ
	7kMgghENXsA/yUWMg3N6EHOEPYKFUaBRFUIiP16V+UiiFb8A3PVcIBH2Zg/OaQmsLs+hCtVyKV4
	Q8+E=
X-Gm-Gg: ASbGnct+90syxRcMJ6zD8MsZ1trKyJxKVl5NGuujzcRNSnKrR8Ab8A91CApolXUbt65
	G2XCDWhwXP/2FJE/IyEMb5yiRV7ZH6uPZ98b/rcfu91qRsuRMl7RJjS+F6T+DQ5rDMS5+IxuaAp
	GhoYv9ZBKldkI43F9os5YUos4H3VBwPKEQh3JFM1o8OICyw2Z28rtnzD+qhBYQymgb84mMvD5aN
	MpPnR1KMeFjFAl0tZ9aFpSNzhI/qCFGbvvfa0us6qTg/ASbWkZUCXk=
X-Google-Smtp-Source: AGHT+IH2nEHURvGX68aXCJdkw52YFqLvsUkNAPq2G06B97z/rQ/3gyN8DcjgMGnawbesNCdYSpjEag==
X-Received: by 2002:a17:903:944:b0:216:356b:2685 with SMTP id d9443c01a7336-21892997a65mr37133475ad.11.1734089598772;
        Fri, 13 Dec 2024 03:33:18 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21631bd2c2dsm103327125ad.263.2024.12.13.03.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 03:33:18 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 13 Dec 2024 19:33:07 +0800
Subject: [PATCH RFC v4 1/3] dt-bindings: riscv: Add Svukte entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dev-maxh-svukte-v4-v4-1-92762c67f743@sifive.com>
References: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
In-Reply-To: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, Max Hsu <max.hsu@sifive.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>, Alexandre Ghiti <alexghiti@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1527; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=xbIhDp8oO/WOy54HbWEh0DC1K4YkZwzlD2oINXShTDI=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBnXBt33aT8cTBv8JfrlGJUVUqAqLodDIB5ZxZhE
 4P4NvcJji6JAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZ1wbdwAKCRDSA/2dB3lA
 vQgKC/0X8yRuSVKFECTI3UVo5o8Yu8z7bDY6iBTo9p0YPcST9UEA2hm3B1sYvcLLIPqJfY/FHfm
 fDxqXZbAHlkAc9PlOwh13cx1ruE81roJ/R0HQ+cwtti1f63c9NKk/j6+jUZa2vc3WV58HGhR2ia
 +75mY06ejduOZ5ZIZOzxsQb5zRV6MHMGvYZEE/6jlgImAIKuiPjk+jPlNPRKvQ1hgej0mCWsDeo
 2EBIaKveoleQgmZOH9bTY/AiU6QtofpWkhUCjKyMWVgSpRzvKEAMSS/e4FiVPNRagaEjZMUSKPR
 nNZADAPlSHPkXUqZ8IiCyaTC2CgzPqLG011MoG6NF3foWxxC3uUWITrw4V0wX7LhuGRsN1Da3b4
 7SxHbyHtkMzmlqoVc+QfBpB0T9klnw/P91dVZFAXotI/gM4mQwPk40KLHBvwdJytvabCH1ZWvs7
 5NMae2znE4oN066eZIGKaIZYBHUC9VSkEEpSJM4fGNrnsYrd3sgCSaRHh4t2pUZqwtMA0=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Add an entry for the Svukte extension to the riscv,isa-extensions
property.

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Reviewed-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 9c7dd7e75e0ca35f76eb666cdacfc297a7570958..b5d90765a376e065797ffdddf35302ed51ca7df1 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -217,6 +217,15 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: svukte
+          description:
+            The standard Svukte supervisor-level extension for making user-mode
+            accesses to supervisor memory raise page faults in constant time,
+            mitigating attacks that attempt to discover the supervisor
+            software's address-space layout. Currently under review as Pull
+            Request number 1564 at commit 932cfa4 ("Move senvcfg.UKTE to correct
+            position") of riscv-isa-manual.
+
         - const: svvptc
           description:
             The standard Svvptc supervisor-level extension for

-- 
2.43.2


