Return-Path: <devicetree+bounces-300186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Gu1C3GADGpfigUAu9opvQ
	(envelope-from <devicetree+bounces-300186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:23:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFB5581596
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CDA0E3097B2E
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3001B4EA395;
	Tue, 19 May 2026 15:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OkOw7HDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71EA4E377E
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 15:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779203609; cv=none; b=ihqDdULEhfDfRxnoaRPg+wSIOSSQaQqz2R4KE6wzwRowlYyHHp5pAiSe19hKrWzcETbJvOx0hWLjh2c3HgU27YvjrqW1v63W20QHcvDj7Om6i5lh9MVl898lakjhKgjtM89iw6cz9++qDnKJBAGR5QpnIYJs2MjT6xScswv1sS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779203609; c=relaxed/simple;
	bh=U2Bp/Xc0dTJFjq2uSqbXXCvsJyGOH0R6f9lCOAE7i+c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tNr1120uBgOMVSqIjbwYsxGF+0sLN8VIrRJgPyS+TGSblJ7hvplPtlR5Jhpsrc6rZHY+BkUPiinzLqhCV43ieuFNDDumP8+vUiunC20DhUZ6W0hF4VgfoYKIhZDq1b+9WAKD/PxdfBn362zGx0MqmLbwmw6NTacAby3GNAiDMMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OkOw7HDb; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-67c3cb1433cso7817513a12.0
        for <devicetree@vger.kernel.org>; Tue, 19 May 2026 08:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779203605; x=1779808405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C/v05q6UOvuJ4DYkluO9mWC+JtH7XndlyQ+TlGglxGQ=;
        b=OkOw7HDbEdUl7wB5wpkAQUXhhtbnB3+YiHNuBflnr2F5XYojoBmtx2DnCziaeuZ0YO
         4nMkSf7ncTPAl6tpPWHXFQbyFkFprzU4Xg84CuWitE97QYn65zIMUk9P5jv0PpOw445y
         eak5jZOoRK3wrPj8X37Dvf2a3tD78wlg3NPj2aW1yVFiagmTVyfUmwZA/dCe9jaWm03r
         o8X4fqhiBozPjwXX5AjW48GhwMAIoel1C/GwvymBSKLyQTM5Ch7b9xUg3B05o2sWV0fr
         nmlN8Ya0mgrgKiINVM+aHLf2Rqs2oc8t0aBvob/BHCozJjbcuAFMrzLefXHHvu6AFdX4
         JFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779203605; x=1779808405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C/v05q6UOvuJ4DYkluO9mWC+JtH7XndlyQ+TlGglxGQ=;
        b=jmk4GY8G/TQlaFcHanqdL7Jtk7DU7bez/aUTka7wj4Rch9513Zs6b4xeIyokMMXuk4
         MzdnStTy/JMLcRitlVDDj4IHD6rLLfGM0KXZxqe02rDPsOnXFgMZu2Ci02UN1razmOhf
         PwHsh9r8A+ousBkepFyec8L+TWhnju/AvzD5aB2I5mzFccl74G1kCK6NLHQTB0q5o4eO
         rbHs1M4oPKC156keMem1/K2H+QwGdcGieq8vq+h6kT8fexjMQ7wxCtAjM5XpazrCIRFV
         9Hq0dAP/RrH5WWudNj8Zoqe7918CuelIBHOjaOFH5g2/f7655Y/kQBD5BLoVGI662Iud
         Htrg==
X-Forwarded-Encrypted: i=1; AFNElJ8CQeFAzP4XpUiYhNHXgktkqnabCwPPA1KcuueqwEbaHqKRmLCu+suef/TVursBYnvuMVu9lVQ6CVPm@vger.kernel.org
X-Gm-Message-State: AOJu0YyDwwkObUyjJntB0zRPEZBAja0mhdWy4M1jP4kmFAjnErSoyuC7
	ElcfJZf3A+0AVyEZLY52SyszISiUv05qMeqx/iDqqR7iBs3Y/KLUt1dq
X-Gm-Gg: Acq92OGGfwzDa1yXKYjQ6xYuzBzKNrKfb8Ligsgee1S/GzjP+7CVKECl/kneN7MrxgG
	SZOrM5eusfbJojH4PxzjlrSGqiRHBgMYgWeyHD0RbUOli4yzZn4eyBelV0GVqn95YeSqzgYD945
	KkdL8lsYP6M+kekm4ecUuiZuFq8jesWIo3+0r570g4s8pcRrhGtQhqWz+NCsnWh+PxpC04Fs7UQ
	DTf8tvhomi+lZqTUBt7JQidV1DoTDET0e0VaH9HvtubQ+wxOth+4bKw7K0b9g/UOe4KJxjefL3N
	OHS9N6U5uBOkiXkNQhOelD6aODd+c3tbr3k/FdsPDjkV709+FtFD0RL/Wzb0dcRWjlNiQ2IyiwV
	3aaJk3Ls2NdzMEHJnHNvLHsXBGFp5/NOr2o6rPk4Kf655t3t3jJn/CDFL+zgc+OWSuo6eXvJE84
	Bcwd7CiE+SKNWkUSk3Arh2jT7FbiO8Hh9s/lwY
X-Received: by 2002:a05:6402:1357:b0:680:ccda:55bf with SMTP id 4fb4d7f45d1cf-683bd095c51mr6997580a12.16.1779203604701;
        Tue, 19 May 2026 08:13:24 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-68310b52675sm6697700a12.8.2026.05.19.08.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 08:13:23 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Tue, 19 May 2026 18:10:47 +0300
Subject: [PATCH v8 2/9] clk: qcom: gcc-msm8939: mark Venus core GDSCs as
 hardware controlled
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260519-msm8939-venus-rfc-v8-2-542ec7557ebc@gmail.com>
References: <20260519-msm8939-venus-rfc-v8-0-542ec7557ebc@gmail.com>
In-Reply-To: <20260519-msm8939-venus-rfc-v8-0-542ec7557ebc@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.15.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Queue-Id: BDFB5581596
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Allow Venus core GDSCs to have their control passed to hardware, so they
can be powered on by Venus firmware.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/clk/qcom/gcc-msm8939.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/qcom/gcc-msm8939.c b/drivers/clk/qcom/gcc-msm8939.c
index 45193b3d714b..243d31a32e92 100644
--- a/drivers/clk/qcom/gcc-msm8939.c
+++ b/drivers/clk/qcom/gcc-msm8939.c
@@ -3664,6 +3664,7 @@ static struct clk_branch gcc_venus0_vcodec0_clk = {
 
 static struct clk_branch gcc_venus0_core0_vcodec0_clk = {
 	.halt_reg = 0x4c02c,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x4c02c,
 		.enable_mask = BIT(0),
@@ -3681,6 +3682,7 @@ static struct clk_branch gcc_venus0_core0_vcodec0_clk = {
 
 static struct clk_branch gcc_venus0_core1_vcodec0_clk = {
 	.halt_reg = 0x4c034,
+	.halt_check = BRANCH_HALT_SKIP,
 	.clkr = {
 		.enable_reg = 0x4c034,
 		.enable_mask = BIT(0),
@@ -3753,6 +3755,7 @@ static struct gdsc venus_core0_gdsc = {
 	.pd = {
 		.name = "venus_core0",
 	},
+	.flags = HW_CTRL_TRIGGER,
 	.pwrsts = PWRSTS_OFF_ON,
 };
 
@@ -3761,6 +3764,7 @@ static struct gdsc venus_core1_gdsc = {
 	.pd = {
 		.name = "venus_core1",
 	},
+	.flags = HW_CTRL_TRIGGER,
 	.pwrsts = PWRSTS_OFF_ON,
 };
 

-- 
2.54.0


