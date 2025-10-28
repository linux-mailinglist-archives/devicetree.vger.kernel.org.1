Return-Path: <devicetree+bounces-232203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22860C15832
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 20364544692
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C1B734027C;
	Tue, 28 Oct 2025 15:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcmPIK+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58235340A67
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665539; cv=none; b=jBcTOcRVlsXo31WHJ6dW3r/IxuCm5MbEUxrJ59eLjMSJYlHoSOKlGLwwsXohBPUalOG1ancCjExMxda0Zp2iVXTu1NeMwgAwEkLMI3ALxW79/VSJnah3HI2YCKEF+zBHIOK8XvL1dCqKFqDvVMmDEoXl7A/qw/ArFBfkojLASq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665539; c=relaxed/simple;
	bh=jHlDAgCUcYD63kwaEY1pmO3dD2BE5jK1MCET6sAnOU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qYUhJcNsmJSiaORmZTQD36EBciQ+z4Ymh9kZspSWA/pBsOFH2GBL4sti9oK0wEBdHahQ+o0EetaX5DkeqUcxYX7uAzBQ+ggwPcY3dAG7806mU5AJy1foF8y5GHmpuSxOfTOZFkaFzp0DIr+M+DFsNEIC+o9yk/Z93ukit8Anua0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcmPIK+C; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42855f80f01so881889f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665535; x=1762270335; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aC2/7bpg8G2o5qe60+KYExE03W06UZRjcwgPkNC6rgg=;
        b=hcmPIK+CHg1SVjS25NnCfk5kFzJXAHavZaS4gbbIr+W8NTlkUr1CUYSZLhp1nnFMVC
         PNuR7QRolNgmsqm+OUBEM+OSe0AAhYCm3abo2viilkE/1VwO/eHS25Nw+Z07QAK7Y+76
         hcoSpjfTVB7KslLwV4Q+JO3HVw0h1IaF0+Kc7tNWU4v3v/BPsAKR0H4vtF0nfCxQxeU3
         NUwrIeFdjZ8Sp7ED6NErN0nsBJzbC8waafacY72K1Pz4PAfjKE59C+dcxb6vNlprhgbA
         lffmvCwXyRpFcBs2MoAkaOBgtOlqAp3316xa/3St/PgflyVVSYgwfMEC/KwY8PojqktT
         UFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665535; x=1762270335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aC2/7bpg8G2o5qe60+KYExE03W06UZRjcwgPkNC6rgg=;
        b=qLOEiIspUlqLDWHPVNzhBU2Pv0PEO+Fs34g3z4Cv4Ik4M2pCL+pOYEM0HR4bEX1eW9
         1PmXvZTdmyNkXq5KsVtMOYCvSWhqfyDOPKEaU+zRdTen2lreJPcQE/y3IlKG0ZgK71sR
         h7raXVvG07yHiDfSgBsVDXxMbomTx1kORLAvEtlRu6jw/TDSBiGSl50/X7/IbBzKSqEI
         O0afn9DMJMdPZoLSSL9aooI3GS+CT44VQeCNQeCCmtk+80n4A43D4nLrhph/daeouk14
         47wJJckCdwfQJNIJXMDUrnlAAzcCD25s50y9wsPU5dsR6NLZbOFFqEDPfSU4c1P+JvvL
         jBNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVttrtXz6hppGU5e9IB8Tu7/w4lixWQlwuUkYjTULUmfK+fgLkBU5txSHja9wg0C7zaVcgN4Py5CQL1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6gMugNPz2P8N4bXA6cUD4I6RyY+IBajJEDXIITiZW2ePOPYGz
	eq4te4CozWZHmCiH4Vx888nWL8vWtzibkGbg2H0l0FGeGfxlKbKPfEpkKqDOh1ACUfRyrelSLaN
	kpRoX
X-Gm-Gg: ASbGncsQXfoWPXAd8emFCxX2PMRDl2aMSLYEXcMZyJnsFF05BKLO4MYiLOXqvmGrZP+
	BRP1taDLqShf+7ubk/oQiwW1sFoKYorPpKAouu/uc+8dDmghI3jViha+hWcQc1M7pnls+KcTJFV
	LC+b+LVlQVvV4neKkylIHEySY7SLrOyVuRJBLmeMoJjbjWLPrE0XzDd08L8Dcf87E5AmgmtPcO8
	mfxu1s0rB39+43mNBFn6lMupNEcWrwn7UaLocqqa2Z1opJ0R8vCE6k7Q1sD6yEfCbHe4EEmE0J5
	pQQmrF3Pjd3LfvjgtVo7+/FFiNIUuvu0oemdPfOuUjUfs9dYdwW30CWnS+lPLLj7vSELJcXzQ0p
	QR/tXdNPRqOcCTpaaO8l55Q/1kihZUZD/qye4Uhl4WyyJlbGoraGiIusXrfEoGpZVqd+VAzMpd0
	CdW9kpiIDHxwXmdiaK
X-Google-Smtp-Source: AGHT+IF2dWta0afPVUf/CFnCKQd1Gr3gEa/5lr0iHnTH3wK4xPGlWaHUfGIaemzNI8UFlSZ2p9yQLw==
X-Received: by 2002:a05:6000:2892:b0:427:401:1986 with SMTP id ffacd0b85a97d-429a7e8683dmr1919010f8f.9.1761665535518;
        Tue, 28 Oct 2025 08:32:15 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:31:50 +0100
Subject: [PATCH 01/12] Bluetooth: MAINTAINERS: Orphan Qualcomm hci_qca
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-1-524a978e3cda@linaro.org>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
In-Reply-To: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=756;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=jHlDAgCUcYD63kwaEY1pmO3dD2BE5jK1MCET6sAnOU0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOHx+nX5MgClyEZDdSfP7lbNIR0KKnA4BSVjN
 GDxO//+3lyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh8QAKCRDBN2bmhouD
 13LiD/9lBNMsnzHPq8ELAUm/rVGE9l3aQa2Hib0XDc/h2AohzaFbQKB0Ruw+JHSqpN6algBAEKY
 44U2H2pxrVat4KKFKis4hdXel0S2GAC+JCpkdEqEKa/27J1kMT+ujP4I1EcTLYjSjxjOTVAbaot
 5NbqnD44twb/Gb6YZtIXTYjFxPw6MWX85dNQh6qDH47B1PQparFHNpaobrRHnge/G4tXqBjSB57
 kuskq/DhAGeSjV7I60WdvNPhICxq+HVdwVgGAy2Xwsb6DGEoNAgQHN1vjEcgXzY8NVrEzy3OJN8
 JK3u9NE5oG2u28RdF3ZqPn3bVafh2IqtpNNaxbGnoH0SCjbQr5qk41m+oRNEjC3RcaNgfu0e0LI
 VCTkpfbK4j0BllE0MXJGB7+rr0MsI6yOM+xWPwHVfObwBX4oY+xD49rG5vZ0ZTr7Yfy0JBvcI5i
 rL+l6ctLioLoCjreVXfGmK4HkZBHpQ1G4swg9XQVr3ElZpXH5dUOI6z4U5OTE+r70YNI/eBQ3F7
 N5Oxdah3E6TLLccUPsmASIka4Ax3z3NCkkz7niVJU+j6n7ZZW5msdXaFxK2A6H3MEf6KmcXzk5F
 INxN8b/aSoQVHk1Q3XP31Z+Yp2JQNaOmPgfaWj0gIh66E1QktIcZFhyEoROriImK7PlE18yH0Gf
 RGsE62a/gVQ6zOQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

There are no maintainers of Qualcomm hci_qca Bluetooth driver, so make
it explicit that driver was orphaned and no one cares to keep it
maintained.  That's also indication for future removal from the Linux
kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8abdc0e50699..be637b9dc7c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21146,7 +21146,7 @@ F:	drivers/net/wwan/qcom_bam_dmux.c
 
 QUALCOMM BLUETOOTH DRIVER
 L:	linux-arm-msm@vger.kernel.org
-S:	Maintained
+S:	Orphan
 F:	drivers/bluetooth/btqca.[ch]
 F:	drivers/bluetooth/btqcomsmd.c
 F:	drivers/bluetooth/hci_qca.c

-- 
2.48.1


