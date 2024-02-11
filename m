Return-Path: <devicetree+bounces-40548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FC4850BA0
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 22:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07F901F221C4
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7633E5F481;
	Sun, 11 Feb 2024 21:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PDXpBlCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983B25F479
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 21:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686674; cv=none; b=SOuXM2kaWU3znz5XHXth9iHOXDHwwlMjoL2S+1FbUoUT4/nXd/y+tXdEHRoEcPDQ4sozXMZbxpL9cptwqLFz7K7KN+S4GvUSSgVB+2hvdmuGuQtuZrEmQKxKAgYxCaHunvnAr3j2TFQ5wXBZthFSyLC0mN5SRoOhtfMgYaOqhUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686674; c=relaxed/simple;
	bh=98yZP338tQqWx0GijR5ah87bnOWBJYX+tkjQDDLkbo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kXoNO+7WNK44B2H4ogH2x9XqC3m6uXXW0hYX75NUDUajwHhwxNhVEnSOevhk5py/dZBMr5BTb9tQs4HqFot6R7LhmJE4+LUremsUQhucdtRmaVZ8qZZT7WT09G9SOsP40goNKlsm+LnCl+PBZjQVFauSFlaledEoWgwqbib0Pd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PDXpBlCW; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2cf206e4d56so35825761fa.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 13:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707686670; x=1708291470; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SpPoAHSPLW8YMujkw0W6zINo/VdyrGjtrtRnN92gB/8=;
        b=PDXpBlCWBek0XFcqxkur/58sfS5fQ0AvTKsyCIvE1SXAeAlsmuz1+SW84npzDiERem
         wRyQbRwIVDVhZk6G2462Ls9Zma8DQJZzYXJVuREP2ffgn7ZuTKWFF/ZTN/eAaCb3B/Jj
         7ashPfTbhI/yKelU3ZT8Pf5aalVRt1diV7MQktZKMi0rh0H03bonWbfOTTv1EEJyzKE9
         l0rc0c12csihSgX/1DF2UUFmCzv+Hlce0LweNs2S9FHbygaZhx9sgKS6E/dxIT4azznT
         8cLgWQ2UyFgAWhAAOC7ULJB/zDiw9UueLbPeqTbNlEOFWPNMDU0N9fJi/N+pUuFXDvFP
         gdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707686670; x=1708291470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpPoAHSPLW8YMujkw0W6zINo/VdyrGjtrtRnN92gB/8=;
        b=jpBu5Rt4iGZ3ats9p72RwhmPzKup6t91neoFtS/NwdlzSsgNPf5o0qsdsMX9lA51uo
         Xy1758jA7A+FVoogNOZnXeA271P10QWvu8pGJfXG3H2xmBkxGO5JxHBAKLUJMgf93Wg6
         oxhuUwBYtaouj1ejTJgGLIqaphHYakddwnsyHG39S2VtjtlQa+AAeDcKPPqmaBN6bLZQ
         aOm/ZCDLSUNgi0LWVrEfoB98e/U16AJqY03FbszoHisaC4vNe96pqmrdKsesr2fXRoHl
         T/4YHk4RWQFj+MZcSca4a/jkVwP2gO+LXa96ZsTpEcPPUy8uR+0JLbJXg+O25q5rhlUu
         PoPA==
X-Forwarded-Encrypted: i=1; AJvYcCWgSmwgyrEwou/8zCU+9lLq6nhmqrIDVNcRMBUk2oYgrF2leNgwcT6Y9PljQQKWG65xYBkkwZT5MeKIjyw4bHNnPSq+BbM2gJchUA==
X-Gm-Message-State: AOJu0YyVl++DXH8SGB9dfC0LPFwUg4naemb11A17LjejMYK1j9svnhPC
	1wgLPpXQQfwIPN1x5sQlbljpFA+fmd6B6kPQzlo88yZ5fM4AZMa7JeYaVWg1tTUN1oNfEwxJX/V
	9
X-Google-Smtp-Source: AGHT+IGgkx9mhQ5Us/zTWdGH3t5j4Spncszt0JUMVFtF1LwFW1m7mDQ3QkcTNodenK17f9DTPPRanQ==
X-Received: by 2002:ac2:546c:0:b0:511:8ce8:c38 with SMTP id e12-20020ac2546c000000b005118ce80c38mr1036274lfn.12.1707686670531;
        Sun, 11 Feb 2024 13:24:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU52kukOH02TuLx2HJ7aleBCpSnYJkTU08Xl7pZa0nM/WKM6OAioCtwx2Q/zlYvco8V7rSILqSacd0/JD1I90kFfv/byuR0opMWeNwlYIfVQvB2+Uc3PjRMoUDeqb1pIK2CMrC4/AToX7vogDKtsTxiNTH5KmQoZiRmbar1O2kYL4Jjoi5nNCX5D3jLTnjhPH5Gwz36cvvBzplT8moUw4/alf7wMK/dWjbtqickAPnLHQ==
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id h8-20020a056512220800b005115edd71c9sm623684lfu.165.2024.02.11.13.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 13:24:29 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 11 Feb 2024 22:24:24 +0100
Subject: [PATCH 2/4] ARM: dts: gemini: Fix wiligear compatible strings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240211-gemini-dts-v1-2-6c09adeb4c2e@linaro.org>
References: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
In-Reply-To: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

These board strings were deprecated in the bindings ages ago,
switch the boards over to the real names.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini/gemini-wbd111.dts | 2 +-
 arch/arm/boot/dts/gemini/gemini-wbd222.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-wbd111.dts b/arch/arm/boot/dts/gemini/gemini-wbd111.dts
index 3c88c59ab481..d4038930c70f 100644
--- a/arch/arm/boot/dts/gemini/gemini-wbd111.dts
+++ b/arch/arm/boot/dts/gemini/gemini-wbd111.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Wiliboard WBD-111";
-	compatible = "wiliboard,wbd111", "cortina,gemini";
+	compatible = "wiligear,wiliboard-wbd111", "cortina,gemini";
 	#address-cells = <1>;
 	#size-cells = <1>;
 
diff --git a/arch/arm/boot/dts/gemini/gemini-wbd222.dts b/arch/arm/boot/dts/gemini/gemini-wbd222.dts
index ff72bbc4db3e..a503bcff5f4a 100644
--- a/arch/arm/boot/dts/gemini/gemini-wbd222.dts
+++ b/arch/arm/boot/dts/gemini/gemini-wbd222.dts
@@ -10,7 +10,7 @@
 
 / {
 	model = "Wiliboard WBD-222";
-	compatible = "wiliboard,wbd222", "cortina,gemini";
+	compatible = "wiligear,wiliboard-wbd222", "cortina,gemini";
 	#address-cells = <1>;
 	#size-cells = <1>;
 

-- 
2.34.1


