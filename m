Return-Path: <devicetree+bounces-278379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNbNGAB8vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4002DE107
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C84A6307D4C6
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258053E0238;
	Fri, 20 Mar 2026 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f+nEe1f3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E313DF009
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774025153; cv=none; b=Rsoak4C4GX24/2830XT8+xDYpbyDSjzeif4zElPcYPGTPu2tR9GsglrsXQpJZLXKYT5C0JbJsQbgG4fH96dCtjHIei1li5GYWQKlrLtaiz6lyxvS/uXQXdebDHj4L+ixuyFWa0EZhf3iapKL9+SiYKJChl12UPh6iVuiD5Xm01Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774025153; c=relaxed/simple;
	bh=F8JhpNRtISwTJCZ0mFH9huui70rVNKoYVUHt0NiS600=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JkhAFKiV4OL8l9FYIU6v0l6wqLITmuNS+t3sTVSMK3jdSJMf3wwSiPRkIqNzwotX94aE373duYuf51GqqtPrpv6SRF5JnmFIS8lTbbxbMk0w45hYlQJheKQgWJ0W5h1oVlK3DqoLXPksr1XtHen1romORDIce95Q9XsKuuy9VjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f+nEe1f3; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b9382e59c0eso120914866b.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774025150; x=1774629950; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=f+nEe1f3ErO1LIWPXRYEoiq23dPDAGj4OPXPaRSy7c38rdcD8XFurp84DcTYUvdloL
         Et0OqPT64yw6/cOsj/sMQPA8Pg6iRH3aq5HY0IKgfq/ej8H/MnO0/tohbPTv0wPB+mN7
         VHqap9T9fg/+M/Ei3HVkQkaazhYjoliXSEZrAbKisba9cCt5C53jmKcYYKKegIEHFzZZ
         lHJVmF9SmUzTLNWNdtrgCN13loIaTPcbi30Kz7kv6a+LE+DmOFaZ+wtTfAN2xC3VB3mW
         c/1O9iKPgeFeGEyZyY9LxLZkKT4Dqiphm5fzGSwIPVkS0LlHkUE3IMmJuTaS0cxFnIqs
         qv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774025150; x=1774629950;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=O3kXcnLdWBQtbHBKMkwWMCRpCr/yRJYx6m7hCHUvH88EOvIdmgmhMy/WvI9roK3wl/
         qY5pcnCpf/QgW+s7NGvCwuhNkfe06ESnX2aa79uzXb5PJIRr0TpQIocqW6chJinwlZ1M
         oOIiAPVkiVhfegyqh2Qhm+cX1FFZ3J++I6czik5SPdKUEr7/qcuzXRofM8DHOsJwxWgz
         x1EgXnW/lGMwWGSc0uQiLxZCRf3U8q5q4Y6roai37TmAOZemdX4+Rn9HdP1G4BXZDuHj
         GJnTHXymAf2+P8mW1k9WCGlE8R8Set4/9QD/uubM03esw9CM3T980XWNjLimmb7opFdS
         Q7yA==
X-Forwarded-Encrypted: i=1; AJvYcCWFeBk+eN/flfSCMK2KmCBL56pbkSOLUvEZt1+oWw7O9ZWeTfgIv8218Wtb8kiLPX0xrr2EMvnZmZDD@vger.kernel.org
X-Gm-Message-State: AOJu0Yxij6lzXkbahsPMHiQH8H6OYc1tUTtp63Rh/huxJqQ84wzUv+XA
	4Wz4SeNaxEzd6ecmAWGgdWHmIooBSsMmtay2GLIh/Tv8WXmfOG8gO3jM
X-Gm-Gg: ATEYQzw38GruNSRC+2HjLB/UYDheFvLN/rq/SEQvOkdAsJyD12yUileDqSm/FkyEtt9
	6wR1teqXlHBxHMSfRbR2yt95RLoMSeG/22AMQG+67wuXeUJcQq9k9GyQlbcQ4m9/CSO6FcMf6kG
	McWExmNxIYh2if+8TfzFdLDvuBVpE58L1uWjgBEDYEjlWbZitXjEb98weGaUjXoNdAQ+v71wCUk
	9GzX4345McCqNVW5cYPaC6CINeBTEKbQmU+XvZNsfbnB6gCb//Y2uDLYUTMP96fA5903CxlCJca
	aVHFVBZJNcSNpwZJX89utoyGUp8L+oMCe3xXGW1yrraHe7oDJoElXGraLMbRMrLFnUN/m/mrR7g
	sVVyJDLX8ttQ0lhHDgHJx52046GpxbRTmBxpt3r9+ugqXBPvuCHyxtxMdWZA58VQNfnStwYnkqz
	9jv4d+rdj2F8iKGuK6yijERBMjduCvCeyggyBp
X-Received: by 2002:a17:906:4107:b0:b98:baf:638e with SMTP id a640c23a62f3a-b982f220a6emr206784666b.13.1774025149534;
        Fri, 20 Mar 2026 09:45:49 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b98335f1747sm176730466b.33.2026.03.20.09.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:45:49 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Fri, 20 Mar 2026 18:45:40 +0200
Subject: [PATCH v6 5/8] iio: light: vcnl4000: remove error messages for
 trigger and irq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-vcnl4000-regulators-v6-5-0d24d20b1a5b@gmail.com>
References: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
In-Reply-To: <20260320-vcnl4000-regulators-v6-0-0d24d20b1a5b@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278379-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EB4002DE107
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The error code is available in the log after return. In our case,
attaching a triggered buffer can only fail if we are out of memory, as
no other buffer is being attached. Remove duplicate error messages to
reduce noise in dmesg.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index cd7e6ee42cc5..76aee16d479b 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -2033,11 +2033,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						      NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
-		if (ret < 0) {
-			dev_err(&client->dev,
-				"unable to setup iio triggered buffer\n");
+		if (ret < 0)
 			return ret;
-		}
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
@@ -2047,10 +2044,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
 						indio_dev);
-		if (ret < 0) {
-			dev_err(&client->dev, "irq request failed\n");
+		if (ret < 0)
 			return ret;
-		}
 
 		ret = vcnl4010_probe_trigger(indio_dev);
 		if (ret < 0)

-- 
2.53.0


