Return-Path: <devicetree+bounces-272156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMkuCM7jqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:25:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0AD2229CF
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:25:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35D98301F495
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:23:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D73733D6DF;
	Fri,  6 Mar 2026 14:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="02JLylCX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54563AE6E6
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806950; cv=none; b=QoLuuDPrh5p8SOPeVk0CTQl3mSf437m9XyUvbFbMdpcd9ttc/Zp+NxfG5NPn8JJZFeYZTv+5xVGU36BvBwut99Z3nkshP1JBv+9/3JHFMXqqLOh9aCLP97GvcXQ4Wqhltp9cYa54lhivWn2Oxfzn1Q73ZtVtH14ibAdPaqyyKx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806950; c=relaxed/simple;
	bh=OussAjG8fbFFqG3utkJvBKqk21rJMwTmbRmYRXniP1k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t/xnjzs624wMZOxkCgt5oAisJkq4TpIu1CS9h4w8w7yv9f+BObLe9vgdXDNYaYTlJygBs1QBbpC9HbiXwF8vb5k3h2yoLZPKTzTMDjgQkLA//kJG2G/VvToTTZY0uEtXRv5nT3Ty9mS1wLkhRhcOAJxRg+WfBS/ubO5YU6Uh3ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=02JLylCX; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-660d2e48383so6305993a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772806943; x=1773411743; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bRAg5T4pZtJKLQH2FWdjBQ+C0/ZtIItkMAKUEibNgc=;
        b=02JLylCXu3ArYlon0fZFqKnzhA8TfA8YEqxWSFFYqybwP9nKr8t1TqLNqUCzblDMjW
         SzkgU52tHjs1nw+qIiFmh5eY1vJWFDxVj5qfEf2AFPQOS9pXrB1UY0S0+pDxbttCESAE
         TqBUaTW+ZqA89DgHJ+HRnDWHMA/reOOMc/UsrjEaHJAqNnfiD9szfT7STnVRBFaj9DgE
         KZuJ4L7n7fGtqVOpxhsb8VQoXqGgZ7zCSXL0APZOjAIZPBs/mwKa456d32hlOFJLO6B5
         hlYkPvcWesPN8cb9MBushKg6InDyIGSbRdqkhaExIFSVSI9iyggU9tMTvrZrZmkLaAkp
         s1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772806943; x=1773411743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/bRAg5T4pZtJKLQH2FWdjBQ+C0/ZtIItkMAKUEibNgc=;
        b=WKsaGu9Zm5znGkvHUKNEE2EmT5ZciKNju2tfaTsRU27ewdf1rvr/im6cYOROCHG+tt
         OuRXriTtTApFTJVEeD+cXr1Wb8q7aDALFbE9SvFu3Al+NWe45czEtGY5UdAwIeBJj2jw
         J0yv59IPeTh3GKrYROZZziQdfE9qUw4T/Aide+rdXWmXqn9Kp4o+1Cos2Q7ng4ogDKPo
         VNmz9jn2qxlNt0L+NqVZVk7e0eBS5tYjS5O/rY5Yup1GFdf3zzLOA+dmZOpABtME0yc2
         IrAWGVuWDtwhv887jUlJSXotYYPAw/p5LHD2CgTvTEKrdzPPbe+1UA1xdXsxgUrR3cKx
         J0qg==
X-Forwarded-Encrypted: i=1; AJvYcCXLDfG8gwMMWtDd7+4lqs4wo/WFQXXaQ+0Kwg0v48kgEpgkJtrvZ0l7SPdOaEigUHbdzgTrrcC3DaE+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp1cDrmihalMH+B8z0maUIeeqms67Kr7p3F7c47P9IBLF+gysH
	RTcRKLrTnYdhQs9BrUKixv4RfNgu0ZA/yRkE4rFdveJ+WNJjBhumdXMHHtOYswNjpaU=
X-Gm-Gg: ATEYQzwW3Ja4pP1x4x0ThbQt0lzkTb+4CsUPvQa3Qcwj4cjgIrH/7wMFWMdVXNP7ePF
	WxKfOFjBF6unXfhnGHWI+p6bb7X4IzPYVue/DLb6gLyGMBOLywI3k6xTWBWF/CxEoxEacjNxUtR
	E8t4w2Ce7HdKpYCCTSQzum+hjghpYYVWtPLt0VohXiDSmSdS2d/138a0G2AUy+QuugXVRwHD1A3
	zbwWgLWGS3us4XabNHw50J1iHOsAxhid/mtr7q8LYRCfy6aSn2jUw/vvI5IBN3AlGWxBx9DxG1O
	c4Yf8CEfIRiwqDwRYLqxbbNk1M6ek6WXzln/uabU25aPL0GiP9BElev9Q4HGQSOTuILwoF9/z8Z
	muxGELpv3gkVP1RngWHqDw6eBHTKvqAw1M1bl7LPx2YB9rBPa+RmKCivvS0ikTEYLOYGS6GufR0
	afOcX7zIrM2TkVz95LfBjZuBqyXC57Ck2l6LD6V43eMprfl54SwJvUAncgtbfGQMOEeWmMjSTHj
	DddERpGGs/DQdo=
X-Received: by 2002:a05:6402:f2a:b0:65c:6d0:d9f6 with SMTP id 4fb4d7f45d1cf-6619d45a976mr1033867a12.6.1772806942847;
        Fri, 06 Mar 2026 06:22:22 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm517251a12.2.2026.03.06.06.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:22:22 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 15:22:17 +0100
Subject: [PATCH 3/4] arm64: defconfig: Enable Milos LPASS LPI pinctrl
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-pinctrl-lpi-v1-3-086946dbb855@fairphone.com>
References: <20260306-milos-pinctrl-lpi-v1-0-086946dbb855@fairphone.com>
In-Reply-To: <20260306-milos-pinctrl-lpi-v1-0-086946dbb855@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772806937; l=715;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OussAjG8fbFFqG3utkJvBKqk21rJMwTmbRmYRXniP1k=;
 b=OFivjjV4WyuTlJLQsk+h3UHX/H/piTEXQ86vP+pJ95fnEmqvIn1T4M7vpJDGZwBZDa3wHTkoY
 SJIFOZx3T5nDalppNNIRJmjHe6WL4qFhs6xu/xFRPrCb7jXsMlu9YsH
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: CD0AD2229CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272156-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Action: no action

Build the LPASS LPI pinctrl driver as module, as required by devices
using the Qualcomm Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 4ed70ab7ee85..c8e294fa4b53 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -693,6 +693,7 @@ CONFIG_PINCTRL_SM8750=y
 CONFIG_PINCTRL_X1E80100=y
 CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
 CONFIG_PINCTRL_LPASS_LPI=m
+CONFIG_PINCTRL_MILOS_LPASS_LPI=m
 CONFIG_PINCTRL_SC7280_LPASS_LPI=m
 CONFIG_PINCTRL_SM6115_LPASS_LPI=m
 CONFIG_PINCTRL_SM8250_LPASS_LPI=m

-- 
2.53.0


