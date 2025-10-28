Return-Path: <devicetree+bounces-232218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD285C158E0
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:43:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B497D4659DB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 916B934321B;
	Tue, 28 Oct 2025 15:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g9UfqnBS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D65342C81
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665814; cv=none; b=ump9F7Rr1j5hHWAOPg9P1wiKEiU1NMbpWGdsLC7ggU9vPGLpLX4azUZ8V6ZQjiypGCeRXhDvUGZLOSQUp1E359oExhU1p6327LVKdpCoZFHWrg9gsBDlBq5VudBpfXyF9Pf1DtWRjF+/Soq/5HRQ/g28WMcOAy4/xaETMstHMvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665814; c=relaxed/simple;
	bh=bRHCOkh4N5PCb53quDW9/VegPwopMuUXUgLMaF1jWbo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LByoeIYv1013GzpSSZOmaCNoe/oJVUiZslTZtHWG6tBo/AmQoVAB5qDqwz1IqzukgLhP1n7as/l1ND23hws6cmmQI1fziII5WHFb8WghXVoO0OzedJHQhOLYX8F+8SLn97eEL1KC0iBsolrefgluOxpcQ0GjsJmLdOlTF9v/+Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g9UfqnBS; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-475dbc3c9efso25975305e9.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761665810; x=1762270610; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bRHCOkh4N5PCb53quDW9/VegPwopMuUXUgLMaF1jWbo=;
        b=g9UfqnBSN0rNsPCMkSQE3hRKe6HubhK3jeudcp7j65DqLDBY+2nLQDpWVPXRf2oDqd
         Fs7EIhEzc3OyTsxQPvi+jwg2NKRfk1TH0EsjhRyWP53hxHthtm4FlI7uY8CWkh5bfQuX
         Rfi9/bwAom/mZ/REz/MCV4awhfEdZuQd2j1l5LjJHhSMvkLzOtFeixOIUnizaxclv7De
         P9TXfrB1E9YLNNbGXAXw9SQt7CgodlRVB7PsbtZBWsitqHRzYNOqhSfDXIh0yNTOuBfI
         0n0WChaPUrNw2bafpGlixtoB19MC3JfwltHVP4S1Iga9ml6pXtq0BnZdmkkNjSFaMIRd
         q+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665810; x=1762270610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bRHCOkh4N5PCb53quDW9/VegPwopMuUXUgLMaF1jWbo=;
        b=Qvb4wLzMtEw9CcOQM1EQTrkOcx8BwemCuDxfP9ZjXvSwqV+s0703WoAJ3611HiTwyV
         x9KbCv1cXSdW4wk6EHuAIl76IYOsC+Xmnbg97X35wTqj0xZvomABZHlSnooqYV2yyraJ
         wM3n6ejIR8fvR5xel5zswmUrHX/EB56GQYmws1TW5NtI2dqllAO7mfi3OczFXAXQ486l
         DTIZa2J5Jf5a0fyUfKBI0RwzGO9qi64yfbnR2oYMAI5rs6T50y+I9lXnFrb/lOB2J62Y
         deGJ7F5o/QYpTH7K90H4+57WFGMclgtahTJ9PlTeeOoYF4F4NXTNDP9q7ncfL7wG0n2A
         ysRg==
X-Forwarded-Encrypted: i=1; AJvYcCW77qXCK8ZKOcTX0ZmV4gnCdy+pzaAHZHi4YJtd7iDQqKWiXYCShiDefSGeMFw19yM1YXYrCbwixtVK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1fIZ7btcNDZgg1Gzaupl/OiSWQwPf2hdeE3SgmvLSlPjZm/NF
	Y+t9WtonTfSnxkToLT6Rfx7pC2FSPoTQuQC1K7Li+HpAKvo6d4YMU1DC
X-Gm-Gg: ASbGnctRML6ReI4AeJdv0Xb+qryoR1wzw7vBP0yVjDzrk2CP4QY0Q+ErMwB4b2GgxW7
	EzvrGXmwBov64t498ce3oZBRutcmpx+ay4mZLXdsUqcpDG8UeQj+AzAkKarIMCAnzMEcGOHIzII
	Sc1Wa7dvimYu7ocrJ4evLTDc6VwgK0KpnICpypXuuYa9oxTgwCUXgomsAdzSAWRR2nmVdLh5/JP
	Bh0jXM3uhROYomdrzNcq/JagKkv1yDe9cF9HaD5aY2TIbgNj7oFDeWc7HXO8zw5I2TIo38S9uyT
	XV8mqmF/aLKPXzL84o7qRUYzvl4AGhSG+zxQis3TKpsKdg9vL6JYJVXLAA43gABQyQRvDrNY/P8
	70S92PksgbVaVc3z/ufBGMXdGJ8obkbcoSh5EJjGH2SVRryOkbN3xYXALfvmhOBjIV/WNFytsBW
	g0LlzIDsk1ysQtsidOz9dJSLTQNHLxP8YYEXEtjTMwT+1FOPEyaEhYvieB7g==
X-Google-Smtp-Source: AGHT+IHcEqxrDGNbCr9Qf3fhYUvlJSJPyM3H2iUm9WQHT2tvvW1arfoNj1Bg06ZOGX1vRi4tbPm82Q==
X-Received: by 2002:a05:600c:8216:b0:471:d2f:7987 with SMTP id 5b1f17b1804b1-47717e30970mr33449425e9.26.1761665810438;
        Tue, 28 Oct 2025 08:36:50 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd374e41sm202105775e9.12.2025.10.28.08.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:36:50 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Richard Genoud <richard.genoud@bootlin.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>,
 Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Richard Genoud <richard.genoud@bootlin.com>
Subject:
 Re: [PATCH v4 05/16] mtd: rawnand: sunxi: introduce reg_ecc_err_cnt in
 sunxi_nfc_caps
Date: Tue, 28 Oct 2025 16:36:48 +0100
Message-ID: <7866116.EvYhyI6sBW@jernej-laptop>
In-Reply-To: <20251028073534.526992-6-richard.genoud@bootlin.com>
References:
 <20251028073534.526992-1-richard.genoud@bootlin.com>
 <20251028073534.526992-6-richard.genoud@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 28. oktober 2025 ob 08:34:58 Srednjeevropski standardni =C4=8Das=
 je Richard Genoud napisal(a):
> The H6/H616 ECC_ERR_CNT register is not at the same offset as the
> A10/A23 one, so move its offset into sunxi_nfc_caps
>=20
> No functional change.
>=20
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



