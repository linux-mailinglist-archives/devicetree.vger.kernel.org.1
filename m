Return-Path: <devicetree+bounces-267368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOk7EZk3nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:18:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E49175601
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D27AA3024BD3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E703612D2;
	Mon, 23 Feb 2026 11:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AnYtmzHS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE0D3612FC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845485; cv=none; b=OVHRRgnNaesd2AQnOEexjXtz0/0540Uv4q5qOULbWyWzKRDXyJ9Q0kYT/o8gJvd2p2ydJW4ivER3UN51gLWdzeUjDsrQr3pvJUzVxVHB1FiueV8TtYlpGQN1Bo/wvss1Cznd6KLySlqgWU+dOg+qDwS6LsGRUaXwGLTYHVZOqg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845485; c=relaxed/simple;
	bh=qeVbrH9h2lP2i/7VhrZSt6TtWWoZ4Z6EMuUxjGVFuDU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UXpBYq0KTxptWBfXTa6GtijV9sCa/e2AOeia8iWjdE1K5BebdBW24I5MBImN9N7UOQ4FzfGVu69FIR+hXjDTrAXppt1yWFQI+t4gAE+RXOENQyouRfRFavzHZBk69F56Ttm+brSTqczD6XTFKluXwj55Y2qKL+yrsz3PQbibGbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AnYtmzHS; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2ad3f12a496so22897285ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845480; x=1772450280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDyXUHId1Z/nYWBwHmfSalP2sAsbJktA9TnrtpJPbyI=;
        b=AnYtmzHSrhexYLm0CHQndcWGV3uOgxOZYFPajJVUXxekbxCUcXWq4Ou1nwkqTarSqD
         AjvH2jRYcvzQqSw8aGsg4vtkC1MZkLW7f/t7s5GjucgrMZtvb4Bu6ZXr2JMp1sbmGLb6
         t14zA/iLOpt226+UBIbH4hDLJ23kiEw7CfizdyikMiq6h/FRvmZYA8jdchQfa58dJMOH
         3bBMu/irp0qH1lc70SCFDnDgNjn3pkrM70BtQ2VVLw+wFoMtJfS2ANF/KSk73oXXhB6S
         gyGKGy0fVoAaB0LZLrbpPnmMLfhk0T/yeM0fGs3QsSImT0dGUwTIJyzQ6qVSwNV/MrFR
         nUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845480; x=1772450280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DDyXUHId1Z/nYWBwHmfSalP2sAsbJktA9TnrtpJPbyI=;
        b=BXaw3vXrNMDUArBOt0Ev1b7giX5y5FbPswzjPxmYn3GL71IH+uhVf6cPlhgnHKebHE
         SiQIbABBvZmTbxA/lZPqX+nZk9zUxkT8EOnqcCXL+arAQif6knGkHv2ZphLcxaynIdeL
         UMvnyzRhH/a9ARYNYDQ3AC52Hs4EN8e50Ii4mwPvDtxPVi3bTogvBifGRxvk+qOyFSjk
         G5dcrVWk4zc1mhlGZqKdu3D63KBKR/F7msObBcMi4yGTuHyxxKz74qlPT15Rmkui1v4M
         k4ynWjlSissJyd3p/N8ZCkqsZlbUAfMyZDzq4+q5Hr2kwv4wCWCkTxSlXKMFrpjk/LV7
         wQ/A==
X-Gm-Message-State: AOJu0YxlbH9nB6n26Edg+v+sCM6N72ItfvD+j4htX9eef6HJkzP8h8oA
	pGumcUTPG7tRXE4vVgzR77CLODYfZ+//WXzEEmoJbxK/ndKCezvPYEjN
X-Gm-Gg: ATEYQzz6XDbBGWmToBSBmNQp7fT9hg5PgR/BpB15y8vprVF5cDgvLZyq7xflIOtw7tv
	e3wJd55NMUsiLQpvfBb1FKxGSAvjd5rpoIfO4OgnqcoJZq4Ygz0yZgbVpXB8Jc+C69rhIBByUay
	2u972p0YW04Rr2l1M7TCJg75aTfoRqjC47iK39XOmf4i5zhz41EMw9smNKLl3Rbiqvbfue9GJoq
	lzFliV0WOgC7WUyuS4h58oanDFidgZV3fd/DR75JYYwvjCAg2yGdM57SJu0xt7v0LvLWPJCFsQz
	hpg606vNgtTl2CMfRJYZI6hYyD5eKXAUg2xdOr9ubxhzw4EX5cyOKTPkuh6KyzIaxsLAMLaNwNh
	BoWhxMGYZViQT4UwHMcV2jWKnJvpMZNMB3eZqLw7Qhvk2kqg/GILqtlZkze8WuGXPtq6Z5gKdR5
	3s8uZvXChmUraD/KgBqmm9xqCEad+hwvZFp42thOGZF3GW9/WiERKsPfXZTqigEO/FEdUF2bipR
	qNQKAQKi4NNKmjuxB0S4qNK/aC/wpRgtHg03bfrEnsg+4GL1VWMGPM661UUGDgQeaC2MMY0lswR
	i5pxjmNZgXXuwmeG0Y9mAlqvAojj2jQ=
X-Received: by 2002:a17:902:e851:b0:2aa:e238:e20c with SMTP id d9443c01a7336-2ad742acbf0mr72695315ad.19.1771845480316;
        Mon, 23 Feb 2026 03:18:00 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:18:00 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:39 +0800
Subject: [PATCH v5 7/8] ARM: dts: aspeed: yosemite5: Add debug card bypass
 GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-7-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=1580;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=qeVbrH9h2lP2i/7VhrZSt6TtWWoZ4Z6EMuUxjGVFuDU=;
 b=mtYdAN+CZ0MwbFt5rxjjKWwOf6MvRuhPUHRoV3l41gXRNKMx2aSxbUh/32XmK+5CAo20PK5fo
 UkRZzzPDHZVB69NS1UQa42rokr1SCrzd+oEjqC0iUwPy13XEEn8Wneh
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267368-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 85E49175601
X-Rspamd-Action: no action

On Yv5, the SCM CPLD bypass OCP debug card commands to the BMC.
These commands share the same I2C bus used by the BMC to access the
SCM CPLD for firmware updates, which can cause bus conflicts.

To avoid this, the SCM CPLD provides a bypass control GPIO connected
to GPIOO7. When asserted by the BMC, this GPIO isolates debug card
commands and prevents conflicts during SCM CPLD access.

Add the DEBUG_CARD_BYPASS GPIO to support this behavior.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 30fb41fdaeb7a2276cdfe98654696a16cf1de5fc..f590ec6e00c48afe4ade1fb98011780ac0570e7c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -166,7 +166,8 @@ &gpio0 {
 			"led-postcode-3","led-postcode-4","led-postcode-5",
 			"led-postcode-6","led-postcode-7",
 	/*O0-O7*/	"RUN_POWER_PG","PWR_BRAKE","CHASSIS_AC_LOSS","BSM_PRSNT_N",
-			"PSU_SMB_ALERT","FM_TPM_PRSNT_0_N","PSU_FW_UPDATING_N","",
+			"PSU_SMB_ALERT","FM_TPM_PRSNT_0_N",
+			"PSU_FW_UPDATING_N","DEBUG_CARD_BYPASS",
 	/*P0-P7*/	"PWR_BTN_BMC_N","IPEX_CABLE_PRSNT","ID_RST_BTN_BMC_N",
 			"RST_BMC_RSTBTN_OUT_N","BMC_PWR_LED","RUN_POWER_EN","SHDN_FORCE","",
 	/*Q0-Q7*/	"IRQ_PCH_TPM_SPI_LV3_N","USB_OC0_REAR_N","UART_MUX_SEL",

-- 
2.53.0


