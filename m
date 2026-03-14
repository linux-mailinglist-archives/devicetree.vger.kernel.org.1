Return-Path: <devicetree+bounces-275622-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHtqEQQTtWmywAAAu9opvQ
	(envelope-from <devicetree+bounces-275622-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:49:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB528BF99
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 08:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B2283048B19
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 07:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C52B314A6B;
	Sat, 14 Mar 2026 07:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m8serjfu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BFD30F52B
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 07:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773474545; cv=none; b=F0cAs1GxcNeLAhnu854ScLWP2Z8BibH4HGIIZ5zVYmeKNMfHtcLECH5sUXu2TfW9rfbJJQUhc7fT5fHeD/mPFNTipE2FCFR6kUEvOS5YZ7LCUu7p5kfFPoJpNoiyneVPyHResuwNuV/ROeP5vJXqWyXUGEOYiDZXlcu1Z3EcABY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773474545; c=relaxed/simple;
	bh=YFooCXjY4vhrFjtrhO5Wz3YV0/8o9mH59H0qInQq+uY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rYjtxa6QINTBkSTFBawG4mYrOuAR/hY1fjj16D0kfHwzCYMqtj8gI4i0LGRB95E2u0ynxdhb4eq2TROpCJ7FU517ndCFS88iWCDXxNsLezbCfuY9OHnO5suvfXHJmfOmlEU/l78cPTIe0TQtv4MNW6ZnT47TOh8Kd/J/V2NOC0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m8serjfu; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439d8df7620so2132004f8f.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 00:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773474541; x=1774079341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrmvlVXN7ug3In87/IQy31mO0C0nCxbjUjauESYh8bs=;
        b=m8serjfuw4+WUV3vzsN221mKclmM4Y89DHJMl45WCrz9q83h3XqBMXYeJH/P9RCFQq
         hulGBE2RsWx/GRc5StAU+8EpZUwixOVz8cME8bbTfs/j+RvgmEXbgqtglIh1O2nvNG5S
         oFcdIPiBAa/D0WthsZte3gis7TaSi29qAixANxhbKL5Dj4p11dR3FTKaZpNVCAg/Wepq
         so0gHbZfiJkHuVH/Wm4zJuAtk+P1x8XjhzMcFe/yS/9QFtPsR67mYLYIFl3WUaj9o8C9
         gxFij1/Tkw498gsXXAXLyMB5O+NkWUrZnCvzKXntiePBgLMX1dbfomNXchSXkdEgDJl2
         xuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773474541; x=1774079341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yrmvlVXN7ug3In87/IQy31mO0C0nCxbjUjauESYh8bs=;
        b=ssjn0Cm3nEGn1dDCConYXAMTMF7Z2dLs5wHzIKtgwgSY75au0peiSQ7YY5lBuArQQb
         IDLA0qHAlLYIlqDUqWX1yYAfBkY6IuYnp8KWx3b+9FKTB0OkrlAPpLmmEPmM+Afqb5vN
         8DHmTcEIOWy+GIyrZ4AQoN3yvZ1FkjDEH56u0TsDaVg9ULJaID80IJ7GJrz1foJ+ZnhX
         qtTSChR/bxyOF1RVgf3qhXjO0AElv/MKxQDk18jqRdAno/FiO4UegE7W2kdzJCyrvB2u
         IOq1dYTs5sgaOwDJLntGxZPPl8z9wfn0g2t+PRNEY4ghvhm1zLQZTPf2+ZQd8z7o7uX4
         iGbw==
X-Forwarded-Encrypted: i=1; AJvYcCXUKtUnUAXgaRqZ9YRCVJyW2S6+pa6q+kzwTGaRqBNB8+FEbvxyJRXDnxRymnXMnOUvKNhjtskVjfri@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3H970PvWW2fqGN3GPF9dEBjkVr3ykHVAVNOQY0FMGtQLm1DcV
	HRgMrEa+oHMCIYKZemsEVzWqimHNOdM/VOFr0Aum5wpkwHsbaBJ6gqb0
X-Gm-Gg: ATEYQzwny0MMwWXGFBn8prImfQGkhbpL4U70zs3LuR4xRbn+mHybwql9OLCq6fSR8e4
	ozS1mYT9vAWxzVzS1A14JU5lVWjFwoUv5GNLyNc7wGgFVSnrNX64XGwcBRziZ7SUrMWgIWs/h2M
	xdVJ+1fMEG/Zhzs7UxkX68c3FnNq4T+3IAv2vM3IYn4uOqQ8yQgJgxn83VqiS4fa281LwR9X+7f
	2bSVsOfzMIi67uWj+nPkh7xTdEFBgWldqj9eYvJKujQetGvnLNx7yZStKR9acp0A2lLloj23xr4
	JeVCagFbFDpOyxUVzI86G3P18ywEbGCl+24fYNMNGGbX22wt46DvWm5usA1kIC5Os3XfFPdX/V9
	WdRiRSXdHlH3UKK5x1HTgE15lWaoyMOH9M5sKlXDzskAqMM7sVYGEE5szi5vfOY9L35njDOLsxu
	cpqUsIJlfK2oy5Kc1gVJODY/qaIiUaFcvEwm8UE+d445Ax7VQyl2gKFv+4nYqsdMDiqpFJ42Od
X-Received: by 2002:a05:6000:230c:b0:439:bf2f:123e with SMTP id ffacd0b85a97d-43a04d868d9mr11056665f8f.11.1773474541457;
        Sat, 14 Mar 2026 00:49:01 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([5.15.232.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19acc6sm24489760f8f.8.2026.03.14.00.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 00:49:01 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Flaviu Nistor <flaviu.nistor@gmail.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: lm75: Add label property
Date: Sat, 14 Mar 2026 09:48:58 +0200
Message-ID: <20260314074858.268098-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313-enthusiastic-defiant-mastiff-bfe8d5@quoll>
References: <20260313-enthusiastic-defiant-mastiff-bfe8d5@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-275622-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[suse.com,roeck-us.net,kernel.org,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[flaviunistor@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DBAB528BF99
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 14:26:35 +0100, Krzysztof Kozlowski wrote:
>On Wed, Mar 11, 2026 at 12:58:07PM +0200, Flaviu Nistor wrote:
>> Add support for an optional label property similar to other hwmon devices.
>
>I do not see any support being added here.
>
>Subject is not accurate either. You did not add the label property.
>
>Best regards,
>Krzysztof

Hello and thanks for the reply.
I probably did not use the best description and subject name, 
I wanted to be linked to the other patch in the series).
The label property is already added by you via the hwmon-common.yaml.
I will have to send out a v2 for this series so I will change the subject to
"Add examples for label property" and also specify in the description more clear
that is just a simple "Add label property in the two examples."

Best regards,
Flaviu

