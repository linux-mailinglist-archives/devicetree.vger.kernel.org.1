Return-Path: <devicetree+bounces-273819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDsHMybusGkaowIAu9opvQ
	(envelope-from <devicetree+bounces-273819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:23:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5A225BF0F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 810EB306A90D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 04:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586AA2C1586;
	Wed, 11 Mar 2026 04:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DX7+ggyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE62C0299
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773202977; cv=none; b=O0GVtRp8P2NTSkZ9UX/Da4B6LuxDVMjbTnxeyQeXrDgmjNWFc2Ps5yPlCK6Oej7vN06kNYYmK30ucWxknXraz5yEXgTNEGx42OhsxhfkMUTKJKK7zgfefjLXR8sJY/5vxpFtg1w6gStujXe3+sdpiUdlXlQBx98K3IH54vm8ojM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773202977; c=relaxed/simple;
	bh=mBbE/zKBLrYn8rujMkLRaCpcpIa4S8HOBGzlFgBZKaA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cSotwxRbG7br2dVgpNeBquf8ERSfoZfhL0FPz9RfI8s8Gj3LT0YSG/dzlRmBsooQJHxvcj+uOKD8sdnnpIWAqBm824fOGbZUo1U4aCeaDZa/MeaCOF1J7kWJX6Ykf8TtjizTkPF3LvhIHlxinXfmjj8LKDLsQ9iDZ+QYk7KpQmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DX7+ggyd; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-35a03da7bd6so170372a91.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 21:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773202976; x=1773807776; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mBbE/zKBLrYn8rujMkLRaCpcpIa4S8HOBGzlFgBZKaA=;
        b=DX7+ggydU2OtpbcszMQPoJqAOK8nu/gHfnYMQUEUftkjpk2HvK4p5qxLRHHHPz1J0y
         2I60PMXTAgGXoQQgcggz5G8Nx8mb2XfS1C6Ib84LxdJ2LLoCBSMJn0jsmgzOi/lVS7a1
         8fstk0rFrGsQHJtv1yjaXVK+VwOD9KJiCCgkFvW+Xki6Iw+nRJnUDKveiIjDlJl8mh2X
         JEMaTqS/mj+xCMRyaBIxjWH5eNP5cZyWOzOTHzDNToGnOJUK3hiGGQkMeNQaOt6cwrzC
         ckL5q6DgUx4wuO9lK2igCWiVga6kC3mlXFvXlE03ZyhJTiIr1h/xY85fHLTgUuTcWwth
         K9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773202976; x=1773807776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mBbE/zKBLrYn8rujMkLRaCpcpIa4S8HOBGzlFgBZKaA=;
        b=TovdG5xqNuTQlTlZpWSmzmOzAPEe5N7qWLZ5r5DxpLsG+Hq2a1qJhk1BhTLWEXTN1u
         FsyNf7D/vWqVOvUDUzkdNVZeNu57ZObJcFCKGczVbzjxzskHPn0vulpcOBDv4hN3R2kN
         kWbK9ntnXM6QbxbaCGn/lCXP+Fj8d2vZtZez52af250IElwPwEg4ONjJL2qRyIymRkA2
         TzaR5zDWUQecD9qaXb21iiDPJ7H2YXmzWVtWSX8eAr+CFlTk8QbJwjAr76gsvaku84hj
         WDPr82sLKymOfGnjDbCeQffGXawT3crwzNruRywd6CFHvr5iSly6OFIAAQBXU5Vg+itQ
         JWpw==
X-Forwarded-Encrypted: i=1; AJvYcCXJmbp/cCsIoWpj4JFVjCxjJes3euhKKRb51b2E5wuWHTF/iQ7aAgVXbCuU5V6E7vqdvjJ/LOdn8Lu5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2lXUUDgPB9tfkL+BoRKe2ioRv/L3qssuBeUplPCqAzaKcFbn3
	NXAmCBsW/44O2iAejA4kHzfwKt48sTdKzw4wGXIl5cMAgmlq9FYWd4TW
X-Gm-Gg: ATEYQzzJMNxxMWekjM29E2kKpAWB5xHDgChToKL3hhP9+5a1QEBbYe9UYTNmsfzeBxN
	R9iy6MPU9tL+s2X8xq3eN2Y1uL8/yR9KRcjV/t4+rWTGV29Mcm/Q7zYJIXvYofhlG3c+3DbWTQw
	dUcnmT4d7tRXUXErMDQwv/KsBYsPJwz3JBU6WuMt6eOggkkLJX2Djd9+90HeHEyaYCz/TwfDYjI
	5vRpTty1ZaJVLrNiA11JToVTdnUbLXPnTjHQB/TXWILeitsLF/E4ZKoXGDFe17sLVFRZUaQQ+X8
	P68uFz1SJIQcvaZ3iGIuYobna/VuRgGZfwiZRQb8Wr4SMqtDJ8Yb4SNRx++dEQ/6LckWR8YbZSc
	GKKW5ub7XO71fnndlZfZSbaaF7SLB1Ph9COSSSG7tsl6+bye7FSbtbveJtiVC1cpKXwsdGNbKYN
	EcQcAZEv9p6nO0iEi/tE29S7kBYw6ow7Rjn/OF9aTJoNI6RPk+a3qtFEizrXT0Wnb1J/TNrsluT
	BOSIdogiLXSw1B5/5r8ug==
X-Received: by 2002:a17:90b:3d0f:b0:359:b7a5:21a8 with SMTP id 98e67ed59e1d1-35a011d3905mr1172850a91.5.1773202975638;
        Tue, 10 Mar 2026 21:22:55 -0700 (PDT)
Received: from localhost.localdomain ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359fe40bed5sm1241924a91.5.2026.03.10.21.22.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 10 Mar 2026 21:22:55 -0700 (PDT)
From: phucduc.bui@gmail.com
To: wsa+renesas@sang-engineering.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	geert+renesas@glider.be,
	hechtb@gmail.com,
	javier.carrasco@wolfvision.net,
	jeff@labundy.com,
	krzk+dt@kernel.org,
	krzk@kernel.org,
	krzysztof.kozlowski@oss.qualcomm.com,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	magnus.damm@gmail.com,
	phucduc.bui@gmail.com,
	robh@kernel.org
Subject: Re: [PATCH v4 2/2] arm: dts: renesas: r8a7740-armadillo800eva: 
Date: Wed, 11 Mar 2026 11:22:49 +0700
Message-Id: <20260311042249.2380-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.37.1 (Apple Git-137.1)
In-Reply-To: <abCkX_oyqaa9jM5F@shikoro>
References: <abCkX_oyqaa9jM5F@shikoro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 7A5A225BF0F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,glider.be,wolfvision.net,labundy.com,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273819-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Wolfram,

Thank you for your review.

Best regards,
Phuc

